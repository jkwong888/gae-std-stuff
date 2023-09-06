# gae-std-stuff

Some Google App Engine stuff

- `default` - has a completely static serving site for hosting (with a reference to [https://github.com/vusimb313/dynamic-page](https://github.com/vusimb313/dynamic-page))
- `terraform` - for bootstrapping a project with app engine enabled.  note that you might need to go into `default` directory and run a `gcloud app deploy` in the project before you go back in and re-run terraform again.
  - of interest is the `appengine.tf` has IAP settings there, and i've allowed everyone in my domain to access my app.  This can be used to publish static sites with authentication in front of them.