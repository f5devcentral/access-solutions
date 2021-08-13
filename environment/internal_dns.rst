

Internal DNS Setting
----------------------
Internal DNS is currently hosted on dc1.f5lab.local


============= =============
         acme.com
---------------------------
    NAME       IP ADDRESS                
============= =============
app           10.1.20.6  
basic         10.1.20.6
header        10.1.20.6
kerb          10.1.20.6
mtls          10.1.20.6
ntlm          10.1.20.6
prebuilt-as   10.1.10.106
prebuilt-rs   10.1.10.107
prebuilt-idp  10.1.10.108
server1       10.1.20.6
server2       10.1.20.6
server3       10.1.20.6
server4       10.1.20.6
============= =============
    
     
================== ===============
          f5lab.local
----------------------------------
        NAME           IP ADDRESS                
================== ===============
adapi              10.1.20.6
ansible            10.1.20.9                    
bigip1             10.1.1.4                   
bigip3             10.1.1.5                   
bigip5             10.1.1.11                  
bigip7             10.1.1.12                  
dc1                10.1.1.7                   
dc1                10.1.20.7 
devportal          10.1.20.9                 
files              10.1.20.9                  
iis                10.1.1.6                   
iis                10.1.20.6                  
jumbox             10.1.1.10                  
jumpbox            10.1.20.10                 
jumpbox            10.1.10.10                 
portainer          10.1.20.9
portal             10.1.20.9                  
unprotected-json   10.1.20.6                  
================== ===============



================== ======================
        10.1.10.in-addr.arp
-----------------------------------------
   IP ADDRESS      NAME                
================== ======================
10.1.10.10         jumpbox.f5lab.local
10.1.10.106        prebuilt-as.acme.com
10.1.10.107        prebuilt-rs.acme.com
10.1.10.108        prebuilt-idp.acme.com
================== ======================


================== ===============================
        20.1.10.in-addr.arp
--------------------------------------------------
   IP ADDRESS      NAME                
================== ===============================
10.1.20.16         kerb.acme.com
10.1.20.6          iis.f5lab.local
10.1.20.6          unprotected-json.f5lab.local
================== ===============================

