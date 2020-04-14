# gcloud beta builds triggers create cloud-source-repositories \
#     --repo=django-example-app \
#     --branch-pattern=".*" \
#     --build-config="cloudbuild.yaml"

gcloud beta builds triggers create github \
    --repo-name=django-example-app \
    --repo-owner=anhnguyen-agilityio \
    --branch-pattern=".*" \
    --build-config="cloudbuild.yaml"
