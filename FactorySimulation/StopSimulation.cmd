
@Echo off

Echo Disconnecting from networks...
docker network disconnect -f munich.corp.contoso scada2194.munich.corp.contoso 
docker network disconnect -f munich.corp.contoso scada1634.munich.corp.contoso 
docker network disconnect -f munich.corp.contoso scada8344.munich.corp.contoso 
docker network disconnect -f munich.corp.contoso mes0254.munich.corp.contoso 
docker network disconnect -f capetown.corp.contoso scadacp008.capetown.corp.contoso 
docker network disconnect -f capetown.corp.contoso cptw1634.capetown.corp.contoso 
docker network disconnect -f capetown.corp.contoso scada1144.capetown.corp.contoso 
docker network disconnect -f capetown.corp.contoso mes3221.capetown.corp.contoso 
docker network disconnect -f mumbai.corp.contoso scadacp008.mumbai.corp.contoso 
docker network disconnect -f mumbai.corp.contoso cptw1634.mumbai.corp.contoso 
docker network disconnect -f mumbai.corp.contoso scada1144.mumbai.corp.contoso 
docker network disconnect -f mumbai.corp.contoso mes3221.mumbai.corp.contoso 
docker network disconnect -f seattle.corp.contoso sea103.seattle.corp.contoso 
docker network disconnect -f seattle.corp.contoso sea102.seattle.corp.contoso 
docker network disconnect -f seattle.corp.contoso sea101.seattle.corp.contoso 
docker network disconnect -f seattle.corp.contoso sea001.seattle.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing103.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing102.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing101.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing001.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing201.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing202.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing203.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing002.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing004.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing005.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing006.beijing.corp.contoso 
docker network disconnect -f beijing.corp.contoso beijing003.beijing.corp.contoso 
docker network disconnect -f rio.corp.contoso rio103.rio.corp.contoso 
docker network disconnect -f rio.corp.contoso rio102.rio.corp.contoso 
docker network disconnect -f rio.corp.contoso rio101.rio.corp.contoso 
docker network disconnect -f rio.corp.contoso rio001.rio.corp.contoso 
docker network disconnect -f munich.corp.contoso publisher.munich.corp.contoso 
docker network disconnect -f capetown.corp.contoso publisher.capetown.corp.contoso 
docker network disconnect -f mumbai.corp.contoso publisher.mumbai.corp.contoso 
docker network disconnect -f seattle.corp.contoso publisher.seattle.corp.contoso 
docker network disconnect -f beijing.corp.contoso publisher.beijing.corp.contoso 
docker network disconnect -f rio.corp.contoso publisher.rio.corp.contoso 

Echo Stopping containers...
FOR /f "tokens=*" %%i IN ('docker ps -a -q') DO docker stop %%i

Echo Removing containers...
FOR /f "tokens=*" %%i IN ('docker ps -a -q') DO docker rm %%i
