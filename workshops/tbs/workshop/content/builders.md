We now have a `ClusterStore` full of buildpacks and a `ClusterStack` with a build image and a run image. The last step before we can start producing images is to tie the `ClusterStore` and `ClusterStack` together using a `Builder`. A `Builder` is what you specify when building images.

We've already done most of the work here. Let's look at the structure of a builder.

```execute
cat builder.yml
```

