
# Machine Learning Cloud Project 1

## Introduction

This project, developed by Siddharth Vijay (SV2637), is designed for an assignment focused on leveraging cloud computing to perform machine learning tasks. The goal is to create different Virtual Machines (VMs) on Google Cloud, utilize a specific script from a cloned repository, generate a set of files, and finally analyze these files using NVIDIA INSIGHT and NVIDIA SYSTEMS tools.

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

## Results and Conclusion

Document the findings and insights gained from the analysis in this section. Include any significant patterns, anomalies, or results that were uncovered during the process.

## Troubleshooting

Encountered issues? Here are some common troubleshooting tips:

- Ensure that all prerequisites are correctly installed and configured.
- Verify that your Google Cloud VM instances have the correct specifications and permissions.
- Double-check the installation steps for NVIDIA INSIGHT and NVIDIA SYSTEMS tools.
- For more specific problems, consult the respective documentation or community forums.

## Additional Resources

- [Google Cloud VM Instances Documentation](https://cloud.google.com/compute/docs/instances)
- [PyTorch Examples GitHub Repository](https://github.com/pytorch/examples)
- [NVIDIA INSIGHT Documentation](https://developer.nvidia.com/insight)
- [NVIDIA SYSTEMS Documentation](https://developer.nvidia.com/systems)

## License

Specify the license under which this project is released, if applicable.
