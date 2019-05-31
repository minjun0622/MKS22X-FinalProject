# MKS22X-FinalProject

# Group Name: Dynamic Duo
# Minjun
5/16/19
Worked on the prototype today due to the fact that it was not complete. Plan to complete the prototype by tomorrow by 8:40.
Read over guidelines and tweaked the class structure. The stages and the developmental phase could not be completed because my partner was absent.

5/20/19
Wrote the snake methods and filled some in. Will work on more. Divide the work. My partner is doing Maze class. Also, edited more code in the experimentation folder of Processing under the repo. For the experimentation I figured out how to use keyCode(make keys get recognized in processing).

5/21/19
This README.md update got erased I think due to merge conflicts, therefore, I am not sure what I did. However, i think that this was the same except I worked further on the experimentation folder. I made rectangles using the keys and made them disappear. Will apply same principles inside the final project.

5/22/19
Separated the tabs for different classes in the final project. This meant that the directory had to be remade. Also, I further worked on the locomotion of the snake and how it moves. I am using a ArrayList of floats instead of an array because it's easier to add and get.

5/23/19
Today, I figured out that there were 3 authors that were writing as me. Therefore, I did git config to set my terminal to my git username. Also, I got the display() method and I got the move method working. The grow method also works (I hope). Figured out with my partner that a "maze" was really hard to make in this world with a snake. Settled on making a snake game that involved obstacles that resembles a maze. I worked on making the world and displaying the function. I slowly got the methods working and first completed the move method. I figured out that the direction keys didn't work because I assigned it to the wrong value. I then completed it with the reset and grow method.

5/24/19
A lot of things done today! I got the die menu working by using the isTouching(), therefore, the reset method really became useless. Right before the end of class, I thought of using a pause menu that will just pause the game and then continue it right after. Also, changed the color of the snake! (Green) Finally, I tried the snake with the maze but it becomes really buggy with both the features combined.

5/25/19
The weekend, got a loading screen working that was similar to the end screen. Using two similar features, I realized that the displayEndScreen() method should not have been in the Snake class so I imported it. I also used an int variable to keep track of which screen I was in. If I started, it would start with the loading screen, then I press the tab key to change that variable which brings me to the game itself. Need to work on the maze, partner is still working on it.

5/26-5/27
Since it's the weekend, I was busy studying for SAT. Not an excuse! Sorry!
However, I realized that something in the draw could be transformed into a method so I turned it into a method called playGame(). Adding that to my prototype.
I was thinking of a pause menu or a cheat code where you can instantly enter codes that will complete a game.
I will attempt to work on the maze. My partner didn't finish it yet. I made a win screen work when the game reached 15 lengths. Instead of loading another screen, I just froze the game screen and displayed text. I'm so tired lol.

5/28/19
Before class, I just adjusted the amount of moves maximum and just commented it out will implement if needed. I'm trying to get the maze working but I am not making much progress and I am just trying to get the snake to die. I have looked over the code for the maze border generation, I am trying to work on other functions of the game. Basically the minimum is done.

5/29/19
# There are some of the features that I would like the game to have
- Changing the frame rate (which is basically the speed)
- Changing the rate at which the snake can grow when they encounter the food. So for one food, it has the chance of growing 2 rather than one.
- No maze, not really maze, dense maze.

5/30/19
I am currently working on the feature that if a key is pressed, 'r', then the game would restart instantly without running the game again. I have put everything in the draw method into another method and set a boolean to keep track of the progress. Doesn't work right now though.


5/21/19
# Mihad
5/20/19
Started working on the maze class. Thinking of how to display the maze and it's walls. Used a 2d boolean to represent where the walls will be.

5/21/19
The walls make the borders properly and is divided up properly. Background and colors for walls are temporarily decided and set. The maze is made completely randomly right now, not exactly an efficient maze structure.

5/22/19
Had to fix the files since we were using different tabs. The main file is now the SnakeMaze one.

5/23/19
Made the Food class. Worked on a simple display that will be altered to something more complex later on.
Fixed maze and made sure any boxes that are walls as true.

5/24/19
Made the size of the food more optimable for the snake.
The colors of the maze were altered to something more appealing.

5/25/19
Changing the display of the game to show the maze at a constant.

5/28/19
Changed up the colors for the Maze and made the snake colors a bit more vivid and changing.
Made a coordinates.txt to type out coordinates for the game walls in there.
Reads file and loops through each coordinate and places a wall at that place in the map.

5/29/19
Using coordinates.txt to make the map. Planning out the design
