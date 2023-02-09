# NIX Stable Diffusion WEBUI

A fully reproducible nix flake for [automatic1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/)](automatic1111/stable-diffusion-webui) with CUDA support.

Run the webui:

```bash
nix run github:niki-on-github/stable-diffusion-nix#automatic1111
```

or run local from cloned repo:

```bash
nix run .#automatic1111
```

You can accept the following prompts to use the nix cache from [`maxaudron`](https://github.com/maxaudron/stable-diffusion-nix).

You will have to set the output directory in the webui settings after first starting it, or it will crash with OSError: [Errno 30] Read-only file system: 'outputs'. Simply change all output directories in Setting : Paths for saving to apsolute paths e.g. in your home directory.

## Public forward webui

Simple way to public forward the local webui to port 8001:

```bash
nix-shell -p socat --run "socat tcp-listen:8001,reuseaddr,fork tcp:localhost:7860"
```

