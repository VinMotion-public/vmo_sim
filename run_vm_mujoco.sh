#!/usr/bin/env bash

set -eux

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export LD_LIBRARY_PATH="${SCRIPT_DIR}/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"

if [ -z "${DISPLAY:-}" ] && [ -z "${WAYLAND_DISPLAY:-}" ]; then
	cat >&2 <<'MSG'
No graphical display session detected.
Set DISPLAY or WAYLAND_DISPLAY before launching mj_sim.
If you are on a remote or headless machine, use X11 forwarding or a virtual display such as Xvfb.
MSG
	exit 1
fi

cd "${SCRIPT_DIR}/build"
exec ./vm_mujoco "$@"
