# n8n-render

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)


### Important
This n8n instance will be deployed without database, you need to create one (free on SupaBase.com)
You need theses variables to configure your n8n database on render.com
- HOST_URL
- DB_NAME
- DB_PORT
- DB_USER
- DB_PASSWORD

Make sure to choose a database connexion variables compatible with iPv4 !

### How to install n8n on render.com for free

Follow these steps :

1. Click on the render button above
2. Choose a blueprint name, for exemple "n8n"
3. Click on "Create New Ressources"
4. Apply
5. Go to Dashboard > n8n (your service name) > Environment
6. Edit varaibles
7. Copy your URL (purple link in header).
8. Past your URL as value for WEBHOOK_URL
9. Copy and paste your 5 database connexion variables (HOST_URL, DB_NAME, DB_PORT, DB_USER,DB_PASSWORD)
10. Wait a minute for your instance to update

Enjoy ! But:

As you are on Render free plan, the instance will always be paused after 15min of inactivity. To avoid this make sure to add the workflow "Stay_Alive_On_Render.json" into your instance and activate it:

1. Create a new workflow
2. Copy the content of the file "Stay_Alive_On_Render.json"
3. Paste it inside the empty workfow
4. Open the "HTTP Request" node and enter this url : https://[your service URL]/isrunning
(Your service URL is the same value you copied in the environement variable WEBHOOK_URL [******.onrender.com] )
5. Rename your workflow
6. Save
7. Activate


Now Enjoy for free and forever (If render.com and SupaBase maintain their free plans)


Thanks to Antoine Deschamps for the inspiration
