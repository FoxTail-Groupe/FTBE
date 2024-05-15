<h1 align=center>FTBE :fox_face:</h1> 
<h3 align=center>FoxTail's Build Environment (Docker 🐳)</h3>
<hr/>
<br>
<br>
<h1 align=center>:one: Features:</h1>

### FTBE can provide:

 - [x] Ubuntu Latest on build!
 - [x] Pre configurated environment with FTG projects!
 - [x] Cross-platform support! (achieved with Docker 🐋)
 - [x] Adjustable CPU core count and RAM amount!
<br> 
<h1 align=center>:two: Building:</h1>

### FTBE can be executed different ways:

- You can do it manually by using `Dockerfile` that provided in this repo:
```shell
git clone https://github.com/FoxTail-Groupe/FTBE
cd FTBE
docker build -t ftbe . && docker run -t -i ftbe
```
- Or you can use our script:
```shell
git clone https://github.com/FoxTail-Groupe/FTBE
cd FTBE
sudo bash ftbe.sh
```
<h1 align=center>:three: Goals:</h1>

### FTBE exist because of

1: Get cross-platform reprodusable building environment for our projects.
  
  - It becomes necessary to have stable and cross-platform environment such as Docker container. 

 2: Faster deployment and less time consuming moves for testing projects.
  
  - With FTBE we can just build and test projects with ease. No need for bulk copying, no worries about space!

<hr/>
