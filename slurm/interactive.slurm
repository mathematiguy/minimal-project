#!/bin/bash

srun --time=00:10:00 --ntasks=1 --cpus-per-task=1 --nodes=1 --mem=6GB --pty /bin/bash
