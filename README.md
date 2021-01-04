# CONTINUOUS-DEV-TOOLS

---
## How to install your AWS Cloud9 environment

connect to AWS console. Go to cloudformation and create a new stack  
to play cloudformation/init.yml.  
  
In Outputs you find usefull data for next step.

Clone https://github.com/continuousphp/continuous-dev-environment  
and follow instructions

--- 
## How to open ports from ELB

Go to EC2 section in AWS console and get elb security group id  

Run locallly :  

```bash
./bin/setup-sg.sh <sg-group-id>
```

--- 
## How to resize your small drive

Use the first parameter to define the desired size (in G). 

```bash
./bin/cloud9-resize.sh 30 # For example, 30G.
```

Use `sudo reboot` to apply changes.

Use `df -h` to make sure your disk is correctly resized.


> **_NOTE:_** :  You can ignore the following error message returned by resize script 
> 
> `An error occurred (VolumeModificationRateExceeded) when calling the ModifyVolume operation: You've reached the maximum modification rate per volume limit. Wait at least 6 hours between modifications per EBS volume.`
> `FAILED: unable to determine partition type`
