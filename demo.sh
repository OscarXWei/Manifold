mkdir build
cd build
cmake ..
make
./manifold ../examples/human.obj ../examples/humanOutput.obj
./manifold ../examples/bed.obj ../examples/bedOutput.obj
./manifold ../examples/bathtub.obj ../examples/bathtubOutput.obj
./manifold ../examples/chair.obj ../examples/chairOutput.obj
./manifold ../examples/grass.obj ../examples/grassOutput.obj
./manifold ../examples/plane.obj ../examples/planeOutput.obj


#./simplify -i ../examples/manifold.obj -o ../examples/simplified_manifold.obj -c 1e-2 -f 10000 -r 0.2
cd ..

