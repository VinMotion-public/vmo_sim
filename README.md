# VMO Simulation Runtime Bundle

This is the default `main` runtime bundle for `amd64`, built without ROS 2.

## Target

- Architecture: `amd64`
- ROS 2: disabled
- Ubuntu: noble
- Release branch: `main`
- Release tag format: `v0.0.6-amd64-no-ros2`

## Layout

- `build/vm_mujoco` - simulator binary
- `build/libsrc.a` - packaged static support library
- `run_vm_mujoco.sh` - runtime launcher
- `config.yaml` - runtime configuration
- `initial_conditions/` - packaged initial conditions
- `lib/` - bundled shared libraries
- `.ros2_enabled` - contains `OFF`

## Run

```bash
cd mj_sim
./run_vm_mujoco.sh M2v3
```
