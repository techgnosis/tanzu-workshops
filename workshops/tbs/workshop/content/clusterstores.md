Now that we have a better idea of what buildpacks are, let's talk about [`ClusterStores`](https://github.com/pivotal/kpack/blob/master/docs/store.md). A `ClusterStore` is a Kubernetes resource that tells Tanzu Build Service which buildpacks are available to choose from when building source code.

Which buildpacks should we choose? It depends on what buildpacks you want to make available to your developers. Here are a few things to consider:
* Does your org enforce certain languages? Maybe everything must be .NET Core or Java
* Does your org enforce certain versions? Maybe all Java must be JDK11 or higher.


This workshop provides two sample apps to make things easier for you.
1. A sample [.NET Core app](https://github.com/techgnosis/product-api)
1. A sample [Golang app](https://github.com/techgnosis/test-app)

Whatever apps you choose to build for this workshop will determine which buildpacks you choose. The rest of the workshop will assume you are using the sample apps.

Given that the sample apps are .NET Core and Go, we should choose to allow the .NET Core buildpack and the Go buildpack.

Let's look at the structure of a `ClusterStore`. 

```execute
cat clusterstore.yml
```

You can see that all we need to provide is a name and a list of buildpacks.

**`ClusterStore`s are cluster-scoped resources. You MUST name your `ClusterStore` something unique**

Go ahead and name your `ClusterStore` and add the buildpack images that you picked.


Once that's done, you can install the `ClusterStore` to the cluster.

```execute
kubectl apply -f clusterstore.yml
```

