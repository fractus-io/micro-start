# Config Service

The **Config Service** is responsible for distributing centralized external configurations for each service in the cluster.

**Config Service** is based on **Spring Cloud Config Server**.
According to [documentation](https://cloud.spring.io/spring-cloud-config/single/spring-cloud-config.html), “**Spring Cloud Config** provides server and client-side support for externalized configuration in a distributed system.”.
The default implementation of the server storage backend uses git, so it supports labeled versions of configuration environments with ease and is accessible to many tools for managing the content.

## Config Server

**Config Server** is core of the our **Config Service** which acts as as an intermediary between our client and a **git** repository.

Inside resource directory of the **Config Service**, we must define property file in our case: **application.properties**:

``` 
server.port=8888

spring.cloud.config.server.git.uri=https://github.com/fractus-io/micro-start-config.git
```

First we define **port**(server.port...) where **Config Service** will operate.
Then we must define a property, **spring.cloud.config.server.git.uri...** which points to git repo where properties for other services will be placed.

## Config Client

Once we define **Config Server**, in some other service(client), e.g. **Hello Service**, we should define file **bootstrap.properties** as follows:

``` 
spring.application.name=hello-service
spring.cloud.config.uri=http://localhost:8888
```

The properties to configure the **Config Client** must be read in before the rest of the application’s configuration is read from the **Config Server**, during the bootstrap phase.

We specify the client’s **spring.application.name** and the location of the **Config Server**, **spring.cloud.config.uri**.

Now if we have property file with the same name as is the value of the **spring.application.name**,  inside **git** repo which is defined in **Config Service** property: **spring.cloud.config.server.git.uri**, then our **Config Client** will use values from that property file.

Example, **hello-service.properties** file, under the **https://github.com/fractus-io/micro-start-config/blob/master/hello-service.properties**
``` 
message=Hallo
```

On the **Config Client** side we can get the property values via java code:

``` 
    ...
    @Value("${message:Hello default}")
    private String message;
    ...
```

or directly via curl:s
``` 
$ curl http://localhost:8888/hello-service/default
```
