[![MLOps test with Github Actions](https://github.com/StarsCDS/MLOPs_AI/actions/workflows/main.yml/badge.svg)](https://github.com/StarsCDS/MLOPs_AI/actions/workflows/main.yml)

# MLOps_AI
MLOps ACP AI


# MLOps DagsHub Demo
Step 1:
    Create Git repo
    create DagsHub repo: https://dagshub.com

Step 2:
    run make install
    dvc init

    configure dvc:
        mkdir data
        mkdir data/raw
        echo "## Data will be uploaded to this folder" >> data/raw/readme.md
        dvc add data/raw
        dvc remote add -f origin https://dagshub.com/sashicds/MLOps_AI.dvc
        dvc remote modify origin --local auth basic 
        dvc remote modify origin --local user sashicds 
        dvc remote modify origin --local password b194a6b2a093503992ab9f989d1f64c325274c3d

        dvc config core.autostage true
        git add .
        git commit -m "Added dvc"
        git push
        dvc push -r origin


        dvc pull -r origin
        dvc add data/raw
        git add data/raw.dvc data/.gitignore
        dvc config core.autostage true
        dvc push -r origin    


