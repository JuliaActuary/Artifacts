using Tar

dir = "./mort.soa.org_raw"

out_dir = mkpath("./mort.soa.org")

# create tarballs from the 
for (root, dirs, files) in walkdir(dir)
    name = splitpath(root)[end]
    println("Directories in $root,$dir,$name")
    Tar.create(root,"$(joinpath(out_dir,name)).tar.gz")
end