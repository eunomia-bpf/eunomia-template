# A template for eunomia-bpf compile toolchain

### Compile and run the ebpf code as simple as possible!

## quick start

Download the pre-compiled `ecli` binary from here: [eunomia-bpf/eunomia-bpf](https://github.com/eunomia-bpf/eunomia-bpf/releases)

just write some code in the `bootstrap.bpf.c`, after that, simply run this:

```console
docker run -it -v /path/to/repo/:/src yunwei37/ebpm:latest # use absolute path
```

you will get a `package.json` in your root dir. Just run:

```console
$ sudo ./ecli run package.json
```

The ebpf compiled code can run on different kernel versions(CO-RE). You can just copied the json to another machine.
see: [github.com/eunomia-bpf/eunomia-bpf](https://github.com/eunomia-bpf/eunomia-bpf) for details.

## more examples

for more examples, please see: [eunomia-bpf/eunomia-bpf/tree/master/bpftools/examples](https://github.com/eunomia-bpf/eunomia-bpf/tree/master/bpftools/examples)

## use this repo as a github action

