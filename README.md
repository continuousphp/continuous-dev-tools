#CONTINUOUS-DEV-TOOLS

##install your AWS Cloud9 environment

connect to AWS console. Go to cloudformation and create a new stack  
to play cloudformation/init.yml.  
  
In Outputs you find usefull data for next step.

Clone https://github.com/continuousphp/continuous-dev-environment  
and follow instructions

##open ports from ELB

Go to EC2 section in AWS console and get elb security group id  

Run locallly  
```bash
./bin/setup-sg.sh <sg-group-id>
```

##resize your small drive

```bash
./bin/cloud9-resize.sh
```