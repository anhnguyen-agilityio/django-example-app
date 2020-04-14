
# Push trigger for develop and master branchs
gcloud beta builds triggers create github \
    --repo-name=django-example-app \
    --repo-owner=anhnguyen-agilityio \
    --branch-pattern="^develop|master$" \
    --build-config="cloudbuild.yaml"


# Pull request trigger for the develop branch
# gcloud beta builds triggers create github \
#     --repo-name=django-example-app \
#     --repo-owner=anhnguyen-agilityio \
#     --pull-request-pattern="^develop$" \
#     --build-config="cloudbuild.yaml"
