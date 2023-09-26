# Matrix-Style Game using Bash Shell Scripting

Welcome to the Matrix-Style Game, a fun project created using the power of Bash Shell Scripting. This project allows you to experience the iconic Matrix terminal animation right on your command line.

I contributed to the development of this interactive Matrix-Style Game using Bash Shell Scripting as part of a team project.
[Click here](https://docs.google.com/presentation/d/1g3Gan7oUB3WltLICa4VaT7QZt4sqFs4XnMovN9P2ino/edit#slide=id.p1) to access our presentation on Bash shell scripting.

## Getting Started

Follow these simple steps to deploy the game and enjoy the Matrix-style animation.

### Prerequisites

Before you begin, ensure you have the following prerequisites:
- A Bash terminal.
- The `cmatrix` and `zenity` programs. If you don't have them, you can install them with the provided commands.

### Installation

1. Open your Bash terminal if it's not already running.

2. Install the `cmatrix` program by running the following command:
  
      sudo apt-get install cmatrix
   
3.Check if Zenity is already installed using the command:
  
      which zenity

  If Zenity is not found, install it with:
   
      sudo apt-get install zenity

4.Once Zenity is successfully installed, create a file named "matrix.sh" using your preferred text editor. You can use Vim with this command:
   
       vim zenitymatrix.sh

5.Copy and paste the script provided in the "zenitymatrix.sh" file located in this repository.

6.Save and exit the file in Vim by pressing "Esc" to enter command mode and then typing:
   
       :wq
7.Return to the command line interface (CLI) and grant the owner read, write, and execute permissions for the script file by running:
  
       chmod 700 zenitymatrix.sh

8.Execute the script by entering the following command:
   
       ./zenitymatrix.sh  

#### Gameplay
Enjoy the Matrix-style terminal animation and let your imagination run wild! It's time to experience the Matrix in your terminal.
