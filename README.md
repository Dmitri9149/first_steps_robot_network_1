### Robot framework, follow the steps from 
[Robot Frameworks](https://docs.robotframework.org/)
[Robot Frameworks Guides](https://docs.robotframework.org/docs)   
[Test Automation](https://docs.robotframework.org/docs/getting_started/testing)

### Install Python 
```
sudo apt update
sudo apt install python3 python3-pip
```

```
(.venv) dmitri@LAPTOP-VNT3PO3A:~/robot_frameworks/robot_frameworks_a$ python3 -V
Python 3.8.10
```

### Install Robotic Framework in Virtual Environment   
```
cd ~/projects
mkdir MyProject
cd MyProject
python -m venv .venv
source .venv/bin/activate
pip install robotframework
robot --version
```
```
(.venv) dmitri@LAPTOP-VNT3PO3A:~/robot_frameworks/robot_frameworks_a$ robot --version 
Robot Framework 7.1 (Python 3.8.10 on linux)

Exit Code 251 -> **_251	Help or version information printed._**
```
[**_251	Help or version information printed._**](https://github.com/robotframework/robotframework/issues/3759)   


### Managing Dependencies with poetry     
In this project I use the Poetry.   
[use poetry][https://docs.robotframework.org/docs/getting_started/testing#install-robot-framework-in-a-virtual-environment]    

```
(.venv) dmitri@LAPTOP-VNT3PO3A:~$ curl -sSL https://install.python-poetry.org | python3 -
Retrieving Poetry metadata

# Welcome to Poetry!

This will download and install the latest version of Poetry,
a dependency and package manager for Python.

It will add the `poetry` command to Poetry's bin directory, located at:

/home/dmitri/.local/bin

You can uninstall at any time by executing this script with the --uninstall option,
and these changes will be reverted.

Installing Poetry (1.8.3): Done

Poetry (1.8.3) is installed now. Great!

You can test that everything is set up by executing:

`poetry --version`
```
```
(.venv) dmitri@LAPTOP-VNT3PO3A:~$ poetry --version
Poetry (version 1.8.3)
```

### Virtual Environment Folder    
```
Poetry will save the virtual enviromentson in the .poetry/envs folder. You can change that setting and store your virtual environment in the project folder by running

poetry config virtualenvs.in-project true
```

```
(.venv) dmitri@LAPTOP-VNT3PO3A:~$ poetry config virtualenvs.in-project true
```


### Initialize a New Project 

```
(.venv) dmitri@LAPTOP-VNT3PO3A:~/robot_frameworks/robot_frameworks_b$ poetry init

This command will guide you through creating your pyproject.toml config.

Package name [robot_frameworks_b]:
Version [0.1.0]:
Description []:  first steps with robot frameworks
Author [Dmitri]:  Dmitri
License []:
Compatible Python versions [^3.8]:

Would you like to define your main dependencies interactively? (yes/no) [yes]
You can specify a package in the following forms:
  - A single name (requests): this will search for matches on PyPI
  - A name and a constraint (requests@^2.23.0)
  - A git url (git+https://github.com/python-poetry/poetry.git)
  - A git url with a revision (git+https://github.com/python-poetry/poetry.git#develop)
  - A file path (../my-package/my-package.whl)
  - A directory (../my-package/)
  - A url (https://example.com/packages/my-package-0.1.0.tar.gz)

Package to add or search for (leave blank to skip):

Would you like to define your development dependencies interactively? (yes/no) [yes]
Package to add or search for (leave blank to skip):

Generated file

[tool.poetry]
name = "robot-frameworks-b"
version = "0.1.0"
description = "first steps with robot frameworks"
authors = ["Dmitri"]
readme = "README.md"

[tool.poetry.dependencies]
python = "^3.8"


[build-system]
requires = ["poetry-core"]
build-backend = "poetry.core.masonry.api"


Do you confirm generation? (yes/no) [yes]
(.venv) dmitri@LAPTOP-VNT3PO3A:~/robot_frameworks/robot_frameworks_b$
```

### Poetry add dependencies 

```
dmitri@LAPTOP-VNT3PO3A:~/robot_frameworks/robot_frameworks_b$ poetry add robotframework
Using version ^7.1 for robotframework

Updating dependencies
Resolving dependencies... (0.3s)

No dependencies to install or update

Writing lock file
```

```
dmitri@LAPTOP-VNT3PO3A:~/robot_frameworks/robot_frameworks_b$ poetry run robot --version
Robot Framework 7.1 (Python 3.8.10 on linux)
dmitri@LAPTOP-VNT3PO3A:~/robot_frameworks/robot_frameworks_b$ 
```
Add Selenium: 
```
pip install --upgrade robotframework-seleniumlibrary
```


