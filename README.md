# sb3-commit

<p align="center">
  <img width="640" height="320" src="https://user-images.githubusercontent.com/20208339/119164337-38ece300-ba54-11eb-8a0e-0ea0b9dbaea4.png">
</p>

Automation of GitHub commits for Scratch 3.0 projects (with scripts converted to text)
--------------------------------------------------------------------------------------

WHAT IT DOES
------------
    Automates the use of GitHub commits with all scripts in readable formats

    Works with shared Scratch projects
    1) Uses Scratch APIs to pull the project.json file and all of the asset files needed to construct an sb3 file
    2) Converts all of the scripts from within the project.json file into legible text files
    3) Downloads a zip file containing the project sb3, the converted-to-text scripts and a few text files used for moving the assets into the current subfolders
    4) Extracts the zip file and moves the contents into the applicable folders
    5) Kickstarts GitHub Desktop so all you need to do is enter a commit comment

    Works with unshared locally stored sb3 projects
    1) Drag an SB3 file from the sb3 folder into the sb3-to-text converter
    2) Converts all of the scripts from within the project.json file into legible text files
    3) Downloads the converted-to-text scripts and a few text files used for moving the assets into the current subfolders
    4) Extracts the zip file and moves the contents into the applicable folders
    5) Kickstarts GitHub Desktop so all you need to do is enter a commit comment
    
WHAT IT NEEDS
-------------
    Windows 10
    7z
    GitHub Desktop (and path to installation adding to PATH)

OTHER NOTES
-----------
    The basic folder structure is -

        MyProject
            assets (used by tool to store asset files)
            bin (contains commit.bat and commit-local.bat which are fully commented in case you want or need to edit them)
            sb3 (for online project, used by tool to store sb3 file; for offline project, used to store your offline sb3 file)
            scripts (used by tool to store script files)

    WARNING: Do not store your files in the assets or scripts folders as they are purged during the conversion! If using the online sb3 project, do not store anything in the sb3 folder as it will be purged during conversion!

    Add any other folders or files that you want added to the repository. I tend to have 'source-graphics' for GIMP layered graphic files, 'source-sfx' for pre-squashed sound effects, 'data' for data, etc.

HOW TO SET UP
-------------
    Working with an online Scratch project
    1) Download the repository as a zip file and extract it to your project folder (e.g. into d:/projects/beeb-emulator). This will create several subfolders, the most important of which will be ./bin because that will contain commit.bat
    2) Ensure your system is set up with "what it needs". If you're using a different platform or different tools then the batch file will need modification to match.
    3) Delete the COMMIT-LOCAL.BAT file
    4) In the COMMIT.BAT file -
         i) Set PROJECT to the project id of your Scratch project - set to RokCoder's Beeb Emulator by default (531881458)
        ii) Set UNZIP to point to your 7z.exe file - assuming you have installed 7z then this is probably already pointing to it
    6) Create a GitHub repository for your project folder

    Working with a locally stored sb3 project
    1) Download the repository as a zip file and extract it to your project folder (e.g. into d:/projects/beeb-emulator). This will create several subfolders, the most important of which will be ./bin because that will contain commit.bat
    2) Ensure your system is set up with "what it needs". If you're using a different platform or different tools then the batch file will need modification to match.
    3) Delete the COMMIT.BAT file
    4) In the COMMIT-LOCAL.BAT file -
         I) Set PROJECT to the name of the sb3 file in the sb3 folder (no spaces and without the .sb3 extension)
        ii) Set UNZIP to point to your 7z.exe file - assuming you have installed 7z then this is probably already pointing to it
    4) Create a GitHub repository for your project folder

HOW TO USE
----------
    For shared Scratch project
    1) Run the commit.bat file
    2) When GitHub Desktop opens, ensure it's using the correct repository
    3) Enter your commit message and hit the commit button

    For unshared locally stored sb3 project
    1) Run the commit-local.bat file
    2) Drag the sb3 file into the drop-area in the sb3-to-text web page (the webpage and an explorer window showing the sb3 folder will open automatically)
    3) When GitHub Desktop opens, ensure it's using the correct repository
    4) Enter your commit message and hit the commit button

FOR OTHER PLATFORMS AND TOOLS
-----------------------------
    If you adapt the batch file for anything other than Windows 10, 7z and GitHub Desktop then please feel free to open a pull request to have them added for others to use

ROKCODER REQUEST
----------------
If you find this useful, please comment to https://scratch.mit.edu/discuss/topic/515487/ to bump the forum post. Doing that will mean other Scratchers might become aware of this tool and also find it useful for their projects. Thank you!
