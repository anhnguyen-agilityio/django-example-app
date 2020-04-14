gcloud beta builds triggers create github \
    --repo-name=django-example-app \
    --repo-owner=anhnguyen-agilityio \
    --branch-pattern=".*" \
    --build-config="cloudbuild.yaml"
