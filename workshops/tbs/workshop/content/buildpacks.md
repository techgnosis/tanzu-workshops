Before we talk about how Tanzu Build Service automates buildpacks, lets answer the question "What is a buildpack?"

Buildpacks are OCI images that contain all the tools you need to build your application. The alternative to buildpacks are:
* Build your own containers full of build tools. These will not follow any standards and will likely not be portable to other teams' automation.
* Build your apps on custom-configured hosts with build tools installed. This requires maintaining either pet machines or maintaining machine images. Building machine images is a lot more work than building container images.

You can learn more about buildpacks at the [Cloud Native Buildpacks](https://buildpacks.io/) site.

Before we can download a buildpack, we need to know their location. They are stored at `registry.pivotal.io` but you can't search for them at that URL. You can find the latest Tanzu Buildpacks at Tanzu Network in the [Tanzu Build Service Dependencies](https://network.pivotal.io/products/tbs-dependencies) site.

Follow these steps from the site:
1. Click on the `Releases` drop-down box and make sure you have the latest release selected. 
1. Click on `buildpackage-versions-XXXX.yaml` to download it to your actual machine (not the workshop container)
1. Open that file in whatever text editor you prefer

We aren't building any specific application just yet so it doesn't matter which one you choose. For this example I'll pick the Go buildpack.

The tool you will use is called `dive`. `dive` uses Docker under the hood to pull images.

Choose one and run this (approximate) command:
```execute
dive registry.pivotal.io/tanzu-go-buildpack/go@sha256:ed99e73df43380c86c983e09d97151caf1952e8f423053a6e0a15de526515f4c
```




