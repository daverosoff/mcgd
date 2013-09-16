% Module 04:
  Introduction to R Studio
% Math 251 Calculus 3
% September 13, 2013




Today we introduced the R Studio mathematical programming environment. Check out the [presentation][d03] for an overview. If you missed class, you need to find someone to get you up to speed. There was a request for a file containing some of the work we did together in class. Instructions on how to get and use that file follow.

### Files and directories

The R Studio server runs on the Linux operating system. Files are organized into directories (the same thing as folders, really). There is a *root directory* that contains all of the other files and directories on the server. Its name is

    /

Notice that it is a forward slash and not backward. Your personal work area is under a subdirectory called ```/home```. For example, mine is ```/home/drosoff```. Files in your home directory are private and cannot be read or modified by (most) other users of the system. 

We have an area on the server dedicated to files that should be publicly readable. Linux conventions led me to call it ```/srv/R```. The first part is evocative of "server". 

### Getting to the public repositories

In the Files/Plots/Packages/Help pane, select the Files tab. You see a listing of the contents of your home directory. 

> Tip: the tilde character ```~``` is a shortcut to your home directory. 

In the upper-right corner, there should be a button labeled with an ellipsis (three dots ... ). This is the "Go To Folder" button. Click it and enter 

    /srv/R/MAT_251

in the dialog box that appears. Have a look at what you see. Several files are available, including a file named ```FirstRScript.R```. If you click the filename, it will open in the source pane on the left part of your screen, above the console.

The file will be read-only, because it is located in a directory to which you do not have write permission. To modify this file, you need to make your own copy. This is easy to do.

<ul class="circ">
<li>Make sure the file is open in the Source pane.</li> 
<li>Use the File/Save As... command (make sure you are in R Studio's File menu, not your browser's).</li>
<li>In the dialog box that appears, type ```~/FirstRScript.R```. The ```~``` is interpreted by R as the path to your home directory.</li> 
<li>Now, back in the Files pane, use the Go To Folder button a second time to return to your home  directory ```~```.</li>
<li>You should see the copied file in your home directory.</li>
</ul>

Since you have full permissions in your own home directory, you can modify the new file however you like.

> WARNING. If you accidentally delete something, it's gone forever. No one has the power to get it back. Be very careful about file deletion.

### Reading the script

Read all of the lines in the script. Notice how even the code lines sometimes have comments explaining what they will do when they are executed. It's a good habit to comment your code as you write it.

Remember, you can always get a fresh copy of this script. So feel free to play with it and experiment. Use the Help interface to learn more about the available commands and their options. You really can't hurt anything by playing around, with the exception of deleting your own files and directories.

### Loading the ```mosaic``` package

The script we've been working with requires an R package called ```mosaic```. The first line of the script (that isn't a comment) makes sure this package is loaded. Otherwise, the commands ```makeFun()``` and ```plotFun()``` won't make sense to R and it will complain.

To use these commands in later sessions, you will have to make sure the package is loaded. This is accomplished via the Packages tab in the lower right pane. Scroll down until you find ```mosaic``` and check its box. This setting should persist across sessions, but if familiar commands begin to throw errors, this may be the culprit.


```r
plotFun(sin(x * y) ~ x & y, xlim = c(-2 * pi, 2 * pi), ylim = c(-2 * pi, 2 * 
    pi), npts = 50)
```

<img src="figure/fig01.png" title="plot of chunk fig01" alt="plot of chunk fig01" style="display: block; margin: auto;" />


[d03]: ../decks/03/Deck.pdf

