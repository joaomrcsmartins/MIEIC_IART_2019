from graph import Graph
import argparse

def validate(state) :
    return state[0][0] == 0 and state[0][1] == 0 and state[0][2] == 0 \
        and state[1][0] == 3 and state[1][1] == 3 and state[1][2] == 1

def get_all_operators(state):
    cl = state[0][0] # cannibals on the left margin
    ml = state[0][1] # missonaries '    '   '   '
    bl = state[0][2] # boat '   '   '   '    (true/false)
    cr = state[1][0] # cannibals on the right margin
    mr = state[1][1] # missionaries '   '   '   '
    br = state[1][2] # boat '   '   '   '
   # print('state: ' + str(state))
    states = []

    if((cl <= ml -1 or ml == 1) and cr <= mr + 1 and bl == 1):
        states.append(((cl,ml-1,0),(cr,mr+1,1)))

    if((cl <= ml -2 or ml == 2) and cr <= mr +2 and bl == 1):
        states.append(((cl,ml-2,0),(cr,mr+2,1)))
    
    if((cr <= mr -1 or mr==1) and cl <= ml +1 and br == 1):
        states.append(((cl,ml+1,1),(cr,mr-1,0)))
    
    if((cr <= mr -2 or mr==2)  and cl <= ml +2 and br == 1):
        states.append(((cl,ml+2,1),(cr,mr-2,0)))
    
    if((cr +1 <= mr or mr == 0) and cl > 0 and  bl == 1):
        states.append(((cl-1,ml,0),(cr+1,mr,1)))
    
    if((cr +2 <= mr or mr == 0) and cl >=2 and bl == 1):
        states.append(((cl-2,ml,0),(cr+2,mr,1)))
    
    if((cl +1 <= ml or ml == 0) and cr > 0 and br == 1):
        states.append(((cl+1,ml,1),(cr-1,mr,0)))
    
    if((cl+2 <= ml or ml == 0) and cr >=2 and br == 1):
        states.append(((cl+2,ml,1),(cr-2,mr,0)))
    
    if(cr <= mr and ml>0 and cl >0 and bl == 1):
        states.append(((cl-1,ml-1,0),(cr+1,mr+1,1)))
    
    if(cl <= ml and mr>0 and cr>0 and br == 1):
        states.append(((cl+1,ml+1,1),(cr-1,mr-1,0)))

    return states

options = {
    "dfs" : lambda graph: graph.dfs(((3,3,1),(0,0,0))),
    "iterative": lambda graph: graph.iterative_dfs(((3,3,1),(0,0,0))),
    "bfs": lambda graph: graph.bfs(((3,3,1),(0,0,0)))
}

parser = argparse.ArgumentParser(description='Choose the search method')
parser.add_argument('mode',choices=options.keys())
options[parser.parse_args().mode](Graph(validate,get_all_operators,5))
