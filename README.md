
# Machine Learning Cloud Project 1

## Introduction

The goal of this project is to create different Virtual Machines (VMs) on Google Cloud, training ResNet, generate a set of files, and finally analyze these files using NVIDIA INSIGHT and NVIDIA SYSTEMS tools.

## Prerequisites

- Google Cloud account
- Access to Google Cloud Compute Engine
- Basic understanding of VM operations on Google Cloud
- NVIDIA GPU Drivers and CUDA Toolkit (for NVIDIA INSIGHT and NVIDIA SYSTEMS tools)

## Setup and Installation

### Step 1: Setting up VMs on Google Cloud

1. Log in to your Google Cloud account and navigate to the Google Cloud Console.
2. Create a new VM instance in the Google Cloud Compute Engine. For the purposes of this project, you may need to create multiple VM instances depending on the requirements. Refer to the Google Cloud documentation for detailed instructions on setting up VMs: https://cloud.google.com/compute/docs/instances/create-start-instance

### Step 2: Cloning the Repository

After setting up your VM(s), SSH into each of them and clone the PyTorch examples repository by running:

```bash
git clone https://github.com/pytorch/examples.git
```

### Step 3: Running the Script

Navigate to the cloned repository and run the desired script as per the project instructions. This process will generate a set of files necessary for further analysis.

```bash
cd examples
# Run the script according to the project guidelines
```

### Step 4: Installing NVIDIA Tools

Ensure that your VM is equipped with an NVIDIA GPU and that you have installed the necessary drivers and CUDA Toolkit. Following this, install NVIDIA INSIGHT and NVIDIA SYSTEMS to analyze the generated files. Installation guides and usage instructions can be found on the NVIDIA official documentation pages.

## Analysis

With NVIDIA INSIGHT and NVIDIA SYSTEMS installed, you can now proceed to analyze the generated files. Follow the specific instructions provided for the assignment to conduct your analysis.

## Additional Resources

- [Google Cloud VM Instances Documentation](https://cloud.google.com/compute/docs/instances)
- [PyTorch Examples GitHub Repository](https://github.com/pytorch/examples)
- [NVIDIA INSIGHT Documentation](https://developer.nvidia.com/insight)
- [NVIDIA SYSTEMS Documentation](https://developer.nvidia.com/systems)
