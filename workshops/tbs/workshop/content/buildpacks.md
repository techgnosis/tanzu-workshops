Before we talk about how Tanzu Build Service automates buildpacks, lets answer the question "What is a buildpack?"

Buildpacks are OCI images that contain all the tools you need to build your application. The alternative to buildpacks are:
* Build your own containers full of build tools. These will not follow any standards and will likely not be portable to other teams' automation.
* Build your apps on custom-configured hosts with build tools installed. This requires maintaining either pet machines or maintaining machine images. Building machine images is a lot more work than building container images.

You can learn more about buildpacks at the [Cloud Native Buildpacks](https://buildpacks.io/) site.

The buildpacks are stored at `registry.pivotal.io` but you can't search for them at that URL. You can find the latest Tanzu Buildpacks at Tanzu Network. Follow the links below for the buildpack you want to look at in the [Tanzu Build Service Dependencies](https://network.pivotal.io/products/tbs-dependencies) site.

[Java Buildpack](https://network.pivotal.io/products/tanzu-java-buildpack/)

[Java Native Image Buildpack](https://network.pivotal.io/products/tanzu-java-native-image-buildpack/)

[Go Buildpack](https://network.pivotal.io/products/tanzu-go-buildpack/)

[NodeJS Buildpack](https://network.pivotal.io/products/tanzu-nodejs-buildpack/)

[PHP Buildpack](https://network.pivotal.io/products/tbs-dependencies)

[.NET Core Buildpack](https://network.pivotal.io/products/tbs-dependencies)

**Note - If you selected PHP or .NET Core, click the "Artifact References" section**

Click the `i` icon next to the buildpack to get its location in the registry.


The tool you will use is called `dive`. `dive` uses Docker under the hood to pull images.

Choose one and run this (approximate) command based on what buildpack you want to look at:
```execute
dive registry.pivotal.io/tanzu-go-buildpack/go@sha256:ed99e73df43380c86c983e09d97151caf1952e8f423053a6e0a15de526515f4c
```




