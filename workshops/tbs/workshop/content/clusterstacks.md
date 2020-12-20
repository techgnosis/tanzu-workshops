OK, we've learned what buildpacks and `ClusterStores` are which gives us some confidence that we know how to build our code. But, this feels incomplete. What else do we need?

What we need are "base" images that are used to host the buildpack and to run the built artifact. 

Base images come in two flavors:
* Build images
* Run images

TODO: Build images

TODO: Run images

A pair of base images, one build and one run, is called a "stack" and we inform Tanzu Build Service of this via a [`ClusterStack`](https://github.com/pivotal/kpack/blob/master/docs/stack.md) resource.

You can create your own stacks or you can use stacks built and maintained by vmware. The vmware stacks come in three flavors:
* Tiny
* Base
* Full

Descriptions of the stacks as well as information on how they are made and hardened can be found [in the docs](https://docs.pivotal.io/tanzu-buildpacks/stacks.html)

For this example, since we have chosen the Go and .NET Core buildpacks, we will choose the `base` stack.

Stacks are stored in `registry.pivotal.io` just like the buildpacks, and we need to go to the [Tanzu Build Service Dependencies](https://network.pivotal.io/products/tbs-dependencies) page again to find the image locations.

Click on `Artifact References` and you'll see listings for `tiny`, `base`, and `full` stacks. Record the location of both the Build and Run images of the `base` stack.

Now that we have our stack located, its time to create a `ClusterStack` resource. Let's take a look at the structure.

```execute
cat clusterstack.yml
```

We can see that the structure is very simple. It expects a unique name and the location of the build and run images.

Notice that inside `clusterstack.yml` you see the line `id: io.buildpacks.stacks.bionic`. Buildpacks and Stacks have to be "compatible" which is a loose contract defined by labels on the stack images. All of the vmware-provided base images are (for now) based on Ubuntu Bionic Beaver 18.04 so the `id` field reflects that.

Go ahead and fill out the values and apply the YAML.

```execute
kubectl apply -f clusterstack.yml
```