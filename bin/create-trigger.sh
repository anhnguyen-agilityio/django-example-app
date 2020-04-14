gcloud beta builds triggers create cloud-source-repositories \
    --repo=django-example-app \
    --branch-pattern=".*" \
    --build-config="cloudbuild.yaml"

# gcloud beta builds triggers create github \
#     --repo-name=[REPO_NAME] \
#     --repo-owner=[REPO_OWNER] \
#     --branch-pattern=".*" \
#     --build-config=[BUILD_CONFIG_FILE]
