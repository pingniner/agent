# Pingniner Agent
The Pingniner monitoring agent

## Build

> This steps assumes you already have node and npm installed on your system. For more information on how to install node and npm please see [here](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm).  
> The minimum supported node version is 20  

To build the agent follow this steps:  

1. Clone this repository

```
git clone https://github.com/pingniner/agent
```

2. Change to agent folder

```
cd agent
```


3. Install dependencies

```
npm install --save-dev
```

4. Run the build script

```
npm run build
``` 

You can find the build file at `build/agent.js`.  

To run the agent: `node build/agent.js run <key> <server/workstation>`



### One-line Install & Initialize

> The installer will automatically download a nodejs binary, the agent and will run the initialization
> All files will be placed in \opt\pingniner or C:\Program Files\Pingniner for windows.

On Linux/BSD/MacOS: 
```
curl -L -s -o PingninerInstaller.sh https://github.com/pingniner/agent/releases/latest/download/PingninerInstaller.sh && sudo bash PingninerInstaller.sh <key> <server/workstation>
```


On Windows (PowerShell):  
```
Invoke-WebRequest -Uri https://github.com/pingniner/agent/releases/latest/download/PingninerInstaller.ps1 -OutFile PingninerInstaller.ps1 -UseBasicParsing; powershell -ExecutionPolicy Bypass -File PingninerInstaller.ps1 <key> <server/workstation>
```

Replace <key/>, and <server/workstation> with your actual values.



## Use

### Initialize agent

On Linux/BSD/MacOS:  
```
sudo /opt/pingniner/node /opt/pingniner/agent.js init <key> <server/workstation>
```

On Windows (elevated Command Prompt or PowerShell):  
```
agent.exe init <gateway> <key> <server/workstation>
```


### Deinitialize agent

On Linux/BSD/MacOS:  
```
sudo /opt/pingniner/node /opt/pingniner/agent.js deinit
```

On Windows:  
```
agent.exe deinit
```


### Uninstall the agent

On Linux/BSD/MacOS:  
```
sudo /opt/pingniner/node /opt/pingniner/agent.js uninstall
```

On Windows:  
```
agent.exe uninstall
```


### Update the agent

On Linux/BSD/MacOS:  
```
sudo /opt/pingniner/node /opt/pingniner/agent.js update
```

On Windows:  
```
agent.exe update
```


### Version information

On Linux/BSD/MacOS:  
```
sudo /opt/pingniner/node /opt/pingniner/agent.js version
```

On Windows:  
```
agent.exe version
```


### Paths information

On Linux/BSD/MacOS:  
```
sudo /opt/pingniner/node /opt/pingniner/agent.js paths
```

On Windows:  
```
agent.exe paths
```



### Run on demand

On Linux/BSD/MacOS: 
```
sudo /opt/pingniner/node /opt/pingniner/agent.js run <key> <server/workstation>
```

On Windows  
```
agent.exe run <key> <server/workstation>
```
