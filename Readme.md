This is a simple demo for using Razor Class Library projects in a Asp.Net Core MVC web site, as either a project reference, or as a NuGet package reference.

This solution built using:

     .NET Core SDK Version 2.1.401
     Visual Studio Code Version 1.28.1

To build and run:
```
1. Use the default build hotkey, CTRL + SHIFT + B  (OR open a bash terminal in VSCode and type ./builder.sh at the prompt to run it)
2. Debug the web application using the .Net Core Launch (web) configuration
```

To see all routes:
```
1. After the site loads, go to http:\\localhost:5000\routes
```

There are two RCL (Razor Class Library) projects.  razorOne.csproj is set as a project reference in the site.csproj.  razorTwo.csproj is set as a package reference in the site.csproj.  The builder.sh takes care of packaging the razorTwo.csproj and dropping the package in a "local-packages" folder.  nuget.config at the root of the site project determines where to find that package during restore and build of the site project.

This project answers a stackoverflow question posted here: https://stackoverflow.com/questions/52451475/partial-views-in-a-razor-class-library-arent-found