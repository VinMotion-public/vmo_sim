# VMO Simulation Runtime Bundle

This branch contains one stripped runtime bundle for `arm64` with ROS 2 `jazzy`.

## Target

- Architecture: `arm64`
- ROS 2 distro: `jazzy`
- Ubuntu: noble
- Release branch: `arm64-jazzy`
- Release tag format: `v0.0.6-arm64-jazzy`

## Layout

- `build/vm_mujoco` - simulator binary
- `build/libsrc.a` - packaged static support library
- `run_vm_mujoco.sh` - runtime launcher
- `config.yaml` - runtime configuration
- `initial_conditions/` - packaged initial conditions
- `lib/` - bundled non-ROS shared libraries
- `.ros_distro` - required ROS distro metadata

## Host Requirements

This bundle does not ship a ROS overlay. Before running, source matching ROS 2 and your interface overlay:

```bash
source /opt/ros/jazzy/setup.bash
source ../ros2_ws/install/setup.bash
cd mj_sim
./run_vm_mujoco.sh M2v3
```
