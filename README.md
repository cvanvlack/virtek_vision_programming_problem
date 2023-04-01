
Design Question:

Design for me a system to find defects in manufactured parts on an assembly line. You can assume that you are given a set of models that are able to find a variety of defects in an image of a part (so you are not responsible for designing the models themselves) and some sort of hardware that can capture images of the completed parts.



Communication mechanism to dictate "what" we're are assembling
- automated
- HMI

Recipes or definitions of those things to be assembled

Communication mechanism with the hardware captures images
- Hardware triggering



Mechanism for getting data into our system
- Hardware device does not have inifite buffer
- We need to 



Processing chain for our models
- 



Displaying results

Communicating results

Saving results

Controller







































Intruder in the Building
 
Given a building with a robot in some position r, and an intruder in some position i, the goal of this exercise is to write an algorithm to find the intruder. 
The rules for the robot are that it can scan any location that is adjacent (up, down, left, or right) to any location that it has already scanned. You can assume that it has scanned the start location. Also, it can not move outside the building or through walls (denoted as w's).
Please note, no part of the building will ever be blocked off entirely by walls, so the intruder is always accessible.
 
Example building: 
-----
---r-
--www
---i- 
 
 
//C++ Version of the code:
struct position
{
    short x = -1;
    short y = -1;
};
 
 
 
position FindIntruder( const position &robot_start, const vector<vector<char>> &building )
{
    position intruder;
 
vector<vector<bool>> hasChecked;
#set hasChecked to zero
hasChecked[robot_start.x][robot_start.y] = true

vector<vector<directionsChecked>> adjacentChecked;
#initialize 2D array everything in array where adjacent elements are false
 
 
    for(int i= robot_start.x;i<=building.size();i++){
    for(int j= robot_start.y;j<=building.size();j++){
        }
            if(building[j][i]=='w'){
                }
                   if(building[j][i]=='i'){
                       }
                       else{
                           }
        }
        }
    
    while(true){
        building[robot_start.x][robot_start.y]
        #check to make sure that we aren't going above zero or below max
        if(robot_start.y<building[0].size()-1)
            char val = building[robot_start.x][robot_start.y+1]
            hasChecked[robot_start.x][robot_start.y+1] = true
            if(val=='w')
            {
                
                }
            else if(val==i){
                
            }
            else (val){
                
                }
        if(robot_start.y>0)
            building[robot_start.x][robot_start.y-1]

        if(robot_start.x<building.size()-1)
            building[robot_start.x+1][robot_start.y]

        if(robot_start.x>0)
            building[robot_start.x-1][robot_start.y]
        
        adjacentChecked[robot_start.x][robot_start.y]
        
        }
    
    return intruder;
}
 
struct directionsChecked
{
    upChecked = false;
    downChecked = false;
    leftChecked = false;
    rightChecked = false;
};
 
