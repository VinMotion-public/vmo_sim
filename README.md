# VMO Simulation Runtime Bundle

This branch contains one stripped runtime bundle for `amd64` with ROS 2 `humble`.

## Target

- Architecture: `amd64`
- ROS 2 distro: `humble`
- Ubuntu: jammy
- Release branch: `amd64-humble`
- Release tag format: `v0.0.7-amd64-humble`

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
source /opt/ros/humble/setup.bash
source ../ros2_ws/install/setup.bash
cd mj_sim
./run_vm_mujoco.sh M2v3
```
