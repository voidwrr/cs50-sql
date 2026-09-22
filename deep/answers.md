# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

With random partitioning we would have the following problem: Everytime we need to query the database it would run in all parts (in this case boats), that can easily become a trouble. We also can't target a single partition filtering on some criteria.

## Partitioning by Hour

Partitioning by hour would be good to be able to optimize queries and filters running the search on just some of the boats (or even just one), but it would have the following problem: The boat that receives data from the hours where most of the observations happen would receive a lot more data than the others.

## Partitioning by Hash Value

Partitioning by has value would be good to distribute data evenly through the boats and also be able to query searching on just one of the boats by filtering on the hash value, but it would have the same problem of the random partitioning when filtering by date or location.
