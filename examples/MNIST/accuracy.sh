dffml accuracy \
    -scorer clf \
    -model tfdnnc \
    -model-batchsize 1000 \
    -model-hidden 30 50 25 \
    -model-clstype int \
    -model-predict label:int:1 \
    -model-location tempdir \
    -model-classifications $(seq 0 9) \
    -model-features image:int:$((28 * 28)) \
    -features label:int:1 \
    -sources images=dfold label=idx1 \
    -source-images-dataflow normalize.yaml \
    -source-images-features image:int:$((28 * 28)) \
    -source-images-source idx3 \
    -source-images-source-filename t10k-images-idx3-ubyte.gz \
    -source-images-source-feature image \
    -source-label-filename t10k-labels-idx1-ubyte.gz \
    -source-label-feature label \
    -log critical