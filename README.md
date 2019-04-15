# http-echo-test

An example of how routing works on CloudFoundry.

    cf push -f cf_manifest.yml

If you're using internal routes you may need to setup network policies:

    cf add-network-policy echo-base --destination-app echo-1
    cf add-network-policy echo-base --destination-app echo-2
