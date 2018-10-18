# Suppress stderr
exec 3>&2
exec 2> /dev/null

#!/usr/bin/env bash
SOURCE="${BASH_SOURCE[0]}"
SRC_DIR="$(cd -P "$(dirname "$SOURCE")"&&pwd)/src"
ROOT_DIR="$(cd -P "$(dirname "$SOURCE")"&&pwd)"

export DOTNET_CLI_TELEMETRY_OPTOUT=1

dotnet nuget locals all --clear

dotnet clean -v normal;

cd "${SRC_DIR}/razorOne"
dotnet build;

cd "${SRC_DIR}/razorTwo"
dotnet build;
dotnet pack -o ../../local-packages;

cd "${SRC_DIR}/site"
dotnet restore;
dotnet build;