Given latitude and longitude determine the country                                                                  
                                                                                                                    
github                                                                                                              
https://tinyurl.com/y5ycr87t                                                                                        
https://github.com/rogerjdeangelis/utl-given-latitude-and-longitude-determine-country                               
                                                                                                                    
There is an example on my github site using SAS ginside to                                                          
get US atate form Lat Lon.                                                                                          
                                                                                                                    
This does not involve a limited google API.                                                                         
No limit to the number of latitude and longitude pairs.                                                             
                                                                                                                    
Latitude and longitude for 244 countries;                                                                           
https://developers.google.com/public-data/docs/canonical/countries_csv                                              
                                                                                                                    
Countries csv in xlsx                                                                                               
https://tinyurl.com/y67g9q5k                                                                                        
https://github.com/rogerjdeangelis/utl-given-latitude-and-longitude-determine-country/blob/master/countries.xlsx    
                                                                                                                    
StackOverFlow R                                                                                                     
https://tinyurl.com/y2tmtl4e                                                                                        
https://stackoverflow.com/questions/21708488/get-country-and-continent-from-longitude-and-latitude-point-in-r       
                                                                                                                    
Lat Lon repos                                                                                                       
https://github.com/rogerjdeangelis?utf8=%E2%9C%93&tab=repositories&q=lat+lon&type=&language=                        
                                                                                                                    
ginside                                                                                                             
https://github.com/rogerjdeangelis/utl-given-latitude-and-longitude-determine-the-us-state-mapping                  
                                                                                                                    
                           
*_                   _                                                                                                     
(_)_ __  _ __  _   _| |_                                                                                                   
| | '_ \| '_ \| | | | __|                                                                                                  
| | | | | |_) | |_| | |_                                                                                                   
|_|_| |_| .__/ \__,_|\__|                                                                                                  
        |_|                                                                                                                
;                                                                                                                          
                                                                                                                           
* save csv as excel sheeet;                                                                                                
                                                                                                                           
options validvarname=upcase;                                                                                               
libname sd1 "d:/sd1";                                                                                                      
libname xel "d:/xls/countries.xlsx" header=no;                                                                             
data sd1.have(rename=(f1=lat f2=lon f3=country));                                                                          
   retain f2 f1 f3;                                                                                                        
   set xel.countries;                                                                                                      
   if f2>.;                                                                                                                
run;quit;                                                                                                                  
libname xel clear;                                                                                                         
                                                                                                                           
/*                                                                                                                         
SD1.HAVE total obs=244                                                                                                     
                                                                                                                           
Obs         LON         LAT    COUNTRY                                                                                     
                                                                                                                           
  1       1.602     42.5462    Andorra                                                                                     
  2      53.848     23.4241    United Arab Emirates                                                                        
  3      67.710     33.9391    Afghanistan                                                                                 
  4     -61.796     17.0608    Antigua and Barbuda                                                                         
  5     -63.069     18.2206    Anguilla                                                                                    
  6      20.168     41.1533    Albania                                                                                     
  7      45.038     40.0691    Armenia                                                                                     
  8     -69.060     12.2261    Netherlands Antilles                                                                        
  9      17.874    -11.2027    Angola                                                                                      
 10      -0.071    -75.2510    Antarctica                                                                                  
 11     -63.617    -38.4161    Argentina                                                                                   
....                                                                                                                       
241      45.166    -12.8275    Mayotte                                                                                     
242      22.938    -30.5595    South Africa                                                                                
243      27.849    -13.1339    Zambia                                                                                      
244      29.155    -19.0154    Zimbabwe                                                                                    
*/                                                                                                                         
                                                                                                                           
*            _               _                                                                                             
  ___  _   _| |_ _ __  _   _| |_                                                                                           
 / _ \| | | | __| '_ \| | | | __|                                                                                          
| (_) | |_| | |_| |_) | |_| | |_                                                                                           
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                          
                |_|                                                                                                        
;                                                                                                                          
                                                                                                                           
                                                                                                                           
WANT total obs=244             ORIGINAL               FROM R                                                               
                               ========               ======                                                               
bs       LON         LAT        COUNTRY               FROM_R                  STATUS                                       
                                                                                                                           
    1     1.602     42.5462    Andorra                Andorra                 EQUAL                                        
    2    53.848     23.4241    United Arab Emirates   United Arab Emirates    EQUAL                                        
    3    67.710     33.9391    Afghanistan            Afghanistan             EQUAL                                        
    4   -61.796     17.0608    Antigua and Barbuda    Antigua and Barbuda     EQUAL                                        
    5   -63.069     18.2206    Anguilla               Anguilla                EQUAL                                        
    6    20.168     41.1533    Albania                Albania                 EQUAL                                        
    7    45.038     40.0691    Armenia                Armenia                 EQUAL                                        
                                                                                                                           
                                                                                                                           
                               Dissolved in           New Name                                                             
                               10 October 2010,                                                                            
    8   -69.060     12.2261    Netherlands Antilles   Curacao                 NOT EQUAL                                    
                                                                                                                           
                                                                                                                           
    9    17.874    -11.2027    Angola                 Angola                  EQUAL                                        
   10    -0.071    -75.2510    Antarctica             Antarctica              EQUAL                                        
   11   -63.617    -38.4161    Argentina              Argentina               EQUAL                                        
   12  -170.132    -14.2710    American Samoa                                 NOT EQUAL                                    
   13    14.550     47.5162    Austria                Austria                 EQUAL                                        
                                                                                                                           
'''                                                                                                                        
                                                                                                                           
242      22.938    -30.5595    South Africa           South Africa            EQUAL                                        
243      27.849    -13.1339    Zambia                 Zambia                  EQUAL                                        
244      29.155    -19.0154    Zimbabwe               Zimbabwe                EQUAL                                        
                                                                                                                           
*                                                                                                                          
 _ __  _ __ ___   ___ ___  ___ ___                                                                                         
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                        
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                        
| .__/|_|  \___/ \___\___||___/___/                                                                                        
|_|                                                                                                                        
;                                                                                                                          
                                                                                                                           
Does both country and continent;                                                                                           
                                                                                                                           
%utl_submit_r64('                                                                                                          
library(sp);                                                                                                               
library(rworldmap);                                                                                                        
library(haven);                                                                                                            
library(SASxport);                                                                                                         
library(data.table);                                                                                                       
have<-read_sas("d:/sd1/have.sas7bdat")[,1:2];                                                                              
                                                                                                                           
coords2country = function(points)                                                                                          
{                                                                                                                          
  countriesSP <- getMap(resolution="low");                                                                                 
  pointsSP <- SpatialPoints(points, proj4string=CRS(proj4string(countriesSP)));                                            
  indices <- over(pointsSP, countriesSP);                                                                                  
  indices$ADMIN                                                                                                            
};                                                                                                                         
                                                                                                                           
coords2continent <- function(points)                                                                                       
{                                                                                                                          
  countriesSP <- getMap(resolution="low");                                                                                 
  pointsSP <- SpatialPoints(points, proj4string=CRS(proj4string(countriesSP)));                                            
  indices <- over(pointsSP, countriesSP);                                                                                  
  indices$REGION;                                                                                                          
};                                                                                                                         
                                                                                                                           
want<-as.data.table(unlist(coords2country(have)));                                                                         
want[] <- lapply(want, function(x) if(is.factor(x)) as.character(x) else x);                                               
str(want);                                                                                                                 
want;                                                                                                                      
str(want);                                                                                                                 
write.xport(want,file="d:/xpt/want.xpt");                                                                                  
');                                                                                                                        
                                                                                                                           
libname xpt xport "d:/xpt/want.xpt";                                                                                       
data wantxpt ;                                                                                                             
  set xpt.want;                                                                                                            
run;quit;                                                                                                                  
libname xpt clear;                                                                                                         
                                                                                                                           
data want (rename=v1=From_R);                                                                                              
  merge sd1.have wantxpt;                                                                                                  
  if v1 ne country then status="NOT EQUAL";                                                                                
  else status="EQUAL";                                                                                                     
run;quit;                                                                                                                  
                                                                                                                           
                                                                                                                           
