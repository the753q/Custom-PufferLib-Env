# Easy Custom PufferLib Environment Setup

Blueprint for a stable **PufferLib** setup. The default breakout environment is used for demonstration.

**Used PufferLib version: `[4.0]`**

## Getting Started

We use the **PufferTank** docker image as the backbone. Local **PufferLib** copy is mounted onto it, allowing us to modify it when needed.

At last, the custom environment is opened in the **PufferTank** container, run by the modified **PufferLib** copy.

### Prerequisites

Running on Ubuntu 26.04, with an NVIDIA GPU (pre-installed NVIDIA GPU drivers):

1. Install **Docker Engine**
1. Install **NVIDIA Container Toolkit**
    - install the Toolkit
    - configure the Toolkit for Docker
1. Install **Visual Studio Code**
    - install the **Dev Containers** extension
    - (optional) install the **Container Tools** extension to manage docker containers

*Note: NVIDIA CUDA drivers don't have to be installed, as the **PufferTank** container has them ready.*

### Install

Before cloning this repository, follow these instructions:

1. Make a main project folder:

    ```bash
    mkdir PufferProject
    cd PufferProject
    ```

1. Clone the **PufferTank** container:

    ```bash
    git clone https://github.com/PufferAI/PufferTank.git
    ```

1. Clone the **PufferLib** library:

    ```bash
    git clone https://github.com/PufferAI/PufferLib.git
    ```

1. Clone this repository:

    ```bash
    git clone 
    ```

### Run

Perform the following to open the **PufferLib** library in VS Code:

1. Open this repository folder in VS Code
1. Press 'Reopen in Container'
1. Test correctness by opening a new terminal in VS Code (``Ctrl + Shift + ` ``)

You should now be seeing `(🐡)` in the terminal, as well as the repository files in the project explorer.

> ***Note: the following is done automatically at Reopen in Container:***
>
> In order to let our **PufferLib** copy know about our environment, we link the environment's code to it:
>
>```bash
>bash ./setup.sh
>```

Now we can build, train on and evaluate the environment:

```bash
bash build.sh my_env
puffer train my_env
puffer eval my_env --load-model-path latest
```

> The extension **Task Buttons** by *spencerwmiles* automatically adds custom ***Build***, ***Train*** and ***Run*** buttons to VS Code statusbar :)