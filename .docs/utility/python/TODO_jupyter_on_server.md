## Ssh protocol for sequoia
ssh sequoia (sequoia.paris.inria.fr)

* ask for ressources
gimme_cpu

* lunch Jupiter lab
source activate main
cd /sequoia/data1/vcabanne/code/<path>
jupyter lab —-no-browser

* redirect ssh Jupiter lab port (8888) of the node (<node_name>) to sequoia on a random unused port (9123)
$ New terminal
ssh sequoia
ssh -nNT -L 9123:localhost:8888 <node_name>

* redirect sequoia port 9123 to the local machine port 8888 
$ New terminal
ssh -nNT -L 8888:localhost:9123 sequoia
