# dashcore-docker
Docker Repo for Dash.

## Usage Instructions

**Mandatory Requirement**: Must use a local mount volume and config file.

Example:

```
sudo docker run -it --name=dashcore-docker \   
-v /path/to/local/dashcore/dir:/opt/dashcore \   
-p 127.0.0.1:9332:9332 kp666/dashcore:latest
```

**Config file is read from**: `/opt/dashcore/dash.conf`, i.e., `/path/to/local/dashcore/dir/dash.conf`

##Storing of Data

You can store data within `/opt/dashcore/data` or any directory within `/opt/dashcore`.

This will inturn store your data within `/path/to/local/dashcore/dir` described above. 

Hence, to store within a different local dir, create a hard symlink for any other directory inside `/path/to/local/dashcore/dir` and then use that directory as `datadir` in `dash.conf`

###Example

If your host directory is `/usr/local/dashcore` and want to store data in `/var/dashcore`, do the following:

```
mkdir -p /usr/local/dashcore
mkdir -p /var/dashcore
ln -s /var/dashcore /usr/local/dashcore/data
```

and use `/opt/dashcore/data` as your data dir inside the `dash.conf`

```
#dash.conf
datadir=/opt/dashcore/data
```
