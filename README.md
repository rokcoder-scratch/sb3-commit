# sb3-commit

<p align="center">
  <img width="640" height="320" src="https://user-images.githubusercontent.com/20208339/119164337-38ece300-ba54-11eb-8a0e-0ea0b9dbaea4.png">
</p>

Automation of GitHub commits for Scratch 3.0 projects (with scripts converted to text)
--------------------------------------------------------------------------------------

WHAT IT DOES
------------
    Automates the use of GitHub commits with all scripts in readable formats

    1) Uses Scratch APIs to pull the project.json file and all of the asset files needed to construct an sb3 file
    2) Converts all of the scripts from within the project.json file into legible text files
    3) Downloads a zip file containing the project sb3, the converted-to-text scripts and a few text files used for moving the assets into the current subfolders
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
            bin (contains commit.bat which is fully commented in case you want or need to edit it)
            sb3 (used by tool to store sb3 file)
            scripts (used by tool to store script files)

    WARNING: Do not store your own files in the assets, sb3 or scripts folders as they are purged during the conversion process!

    Add any other folders or files that you want added to the repository. I tend to have 'source-graphics' for GIMP layered graphic files, 'source-sfx' for pre-squashed sound effects, 'data' for data, etc.

HOW TO SET UP
-------------
    1) Download the repository as a zip file and extract it to your project folder (e.g. into d:/projects/beeb-emulator). This will create several subfolders, the most important of which will be ./bin because that will contain commit.bat
    2) Ensure your system is set up with "what it needs". If you're using a different platform or different tools then the batch file will need modification to match.
    3) Edit the commit.bat file for the project you're working on -
        i) Set PROJECT to the project id of your Scratch project - set to RokCoder's Beeb Emulator by default (531881458)
        ii) Set UNZIP to point to your 7z.exe file - assuming you have installed 7z then this is probably already pointing to it
    4) Create a GitHub repository for your project folder
    
HOW TO USE
----------
    1) Run the batch file
    2) When GitHub Desktop opens, ensure it's using the correct repository
    3) Enter your commit message and hit the commit button

FOR OTHER PLATFORMS AND TOOLS
-----------------------------
    If you adapt the batch file for anything other than Windows 10, 7z and GitHub Desktop then please feel free to open a pull request to have them added for others to use

ROKCODER REQUEST
----------------
If you find this useful, please comment to https://scratch.mit.edu/discuss/topic/515487/ to bump the forum post. Doing that will mean other Scratchers might become aware of this tool and also find it useful for their projects. Thank you!
