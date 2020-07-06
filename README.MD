### A job scheduler that executes non-interactive jobs

**Project Description**

A simple job scheduler that will execute non-interactive jobs (for example, jobs that do not have direct user interaction or jobs that can run in the background). At any given time only a fixed number of jobs(P) will be executing and this number(P) is provided as an argument to the program. If more than P jobs are submitted, then these additional jobs will wait until one of the P executing jobs is completed. As the jobs are non-interactive, the output and error streams from the jobs are written to separate files - \<jobid>.out and \<jobid>.err, where \<jobid> is the appropriate job id that is associated with a job. The following commands are supported by the program:


<strong>Commands Description</strong>

<strong>1) submit \<program arguments>:</strong> Creates a new process that executes the program specified with the arguments and prints a jobid to standard output.  

<strong>2) showjobs:</strong> Lists all processes that are either currently waiting or running
(only those processes that were started using the submit command). The output should include the jobid assigned to each job and the status of the jobs (whether it is running or waiting). If the job has been completed, it will not be listed.

<strong>3) submithistory:</strong> List all the processes that were executed by your job scheduler, including the name of the job, the jobid that was assigned to it, the start and end time of the job, and the status of the job(whether the job completed successfully or not).

<strong>Getting Started</strong>

1) Build the executable file by running the make file
  ```
  make
  ```
2) Run the executable
```
./blazersh
```   

Run Cases

```
blazersh> submit ./myprog
Job 0 added to queue
blazersh> submit ./hw1 1000
Job 1 added to queue
blazersh> submit ./hw1 1000
Job 2 added to queue
blazersh>showjobs
jobid  command       status
0     ./myprog     Running
1      ./hw1 1000    Running
2      ./hw1 1000    Waiting
blazersh>submithistory
Jobid    Command            Starttime                   Endtime                     Status
1        ./myprog           Fri Dec  6 20:59:34 2019    Fri Dec  6 20:59:34 2019    Success

1        ./hw1 1000         Fri Dec  6 20:59:34 2019    Fri Dec  6 20:59:34 2019    Success

2        ./hw1 1000         Fri Dec  6 20:59:57 2019    Fri Dec  6 20:59:57 2019    Success

```

Author: Chirag Shetty

Contact information
Email: chirag24@uab.edu
