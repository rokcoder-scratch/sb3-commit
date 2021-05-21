# sb3-commit

Folder structure and batch file for using GitHub effectively with Scratch 3.0 projects
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

HOW TO USE
----------
    Assuming your system contains is set up with "what it needs" then in the batch file -

        Steps that need performing only once per project -

            1) Set PROJECT to the project id of your Scratch project - set to RokCoder's Beeb Emulator by default (531881458)
            2) Set UNZIP to point to your 7z.exe file - assuming you have installed 7z then this is probably already pointing to it

        Steps to perform each time -

            3) Run the batch file

FOR OTHER PLATFORMS AND TOOLS
-----------------------------
    If you adapt the batch file for anything other than Windows 10, 7z and GitHub Desktop then please feel free to open a pull request to have them added for others to use
