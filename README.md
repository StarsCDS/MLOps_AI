[![MLOps test with Github Actions](https://github.com/StarsCDS/MLOPs_AI/actions/workflows/main.yml/badge.svg)](https://github.com/StarsCDS/MLOPs_AI/actions/workflows/main.yml)

# MLOps_AI
MLOps ACP AI


# MLOps DagsHub Demo
Step 1:
    Create Git repo
    create DagsHub repo: https://dagshub.com

Step 2:
    install DVC
    dvc init

    configure dvc:
        mkdir data
        echo "## Data will be uploaded to this folder" >> data/readme.md
        dvc add data/.
        dvc remote add origin https://dagshub.com/sashicds/MLOps_AI.dvc
        dvc remote modify origin --local auth basic
        dvc remote modify origin --local user your_username
        dvc remote modify origin --local password your_token
        git add .
        git commit -m "Added dvc"
        git push
        dvc push -r origin


        dvc pull -r origin
        dvc add data/raw
        git add data/raw.dvc data/.gitignore
        dvc config core.autostage true
        dvc push -r origin    
