%Create CycleGAN generator network for image-to-image translation

inputSize = [256 256 3];

%Create a CycleGAN generator that generates RGB images of the input size.

net = cycleGANGenerator(inputSize)

%% Create CycleGAN Generator with Six Residual Blocks

inputSize = [128 128 3];
net = cycleGANGenerator(inputSize,"NumResidualBlocks",6, ...
    "NamePrefix","cycleGAN6_")

analyzeNetwork(net)