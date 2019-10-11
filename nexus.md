# Nexus

## Retrieve asset based on search
```
wget "http://repository.sonatype.org/service/local/artifact/maven/content?r=snapshots&g=org.sonatype.nexus&a=nexus-utils&v=LATEST" --content-disposition

  r = the id of the repository or group to search (Required)
  g = the groupId of the file (Required)
  a = the artifactId of the file (Required)
  v = the version of the file, this may be "LATEST", "RELEASE", a version number like "2.0", or a snapshot version number like "2.0-SNAPSHOT". (Required)
  c = the classifier of the file (Optional)
  e = the type or extension of the file (Optional)
  p = packaging (Nexus will resolve known packaging types to the correct extension). (Optional)
```
