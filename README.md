## How to connect VS Code's debugger to an app or process that's already running

```console
% git clone git@github.com:uraitakahito/hello-rails.git
% cd hello-rails
% PROJECT=$(basename `pwd`)
% echo $PROJECT
hello-rails
% docker image build -t $PROJECT-image . --build-arg user_id=`id -u` --build-arg group_id=`id -g`
% docker container run --env-file ./env -it --rm --init --mount type=bind,src=`pwd`,dst=/app --name $PROJECT-container $PROJECT-image /bin/zsh
$ cd /app
$ rbenv exec bundle install
```

Select **[Dev Containers: Attach to Running Container](https://code.visualstudio.com/docs/devcontainers/attach-container#_attach-to-a-docker-container)** through the **Command Palette (Shift + command + P)**

Open the `/app`.
