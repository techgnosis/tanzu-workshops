1. What is a buildpack?
    * You looked at the contents of a buildpack using `dive` to better understand what a buildpack is
1. Configure which buildpacks you want to use
    * In order to curate buildpacks for your developers, you created a `ClusterStore`
1. Configure which base images you want to use
    * In order to standardize on base images, you configured a `ClusterStack`
1. Put it all together
    * You built a `Builder` to link a `ClusterStore` and `ClusterStack` together
1. Build an app into an OCI image
    * You build an `Image` to build your app into an OCI image
1. Keep that OCI image up-to-date
    * You automatically rebased your app image by updating your `ClusterStack`