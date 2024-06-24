NameDatabases
=============

## Overview

NameDatabases is a comprehensive collection of human names from various countries along with Python tools to facilitate their use in applications. This repository aims to provide a reliable and extensive dataset of names for use in synthetic data generation, machine learning, and testing.

This project is a fork of Matthew Hager (smashew)'s text databases of last names from various countries. We extend our gratitude to Matthew for his foundational work on this project before 2013.

## Features

- **Extensive Name Collection**: A wide range of first and last names from multiple countries and cultures.
- **Python Tools**: Utilities and scripts to efficiently work with the name datasets.
- **Easy Integration**: Simple and intuitive integration with your Python projects.
- **Open Source**: Released under the MIT License, allowing for free use and distribution.

## Installation

To use NameDatabases in your project, you can clone the repository and install the necessary dependencies.

```bash
git clone https://github.com/DecisionNerd/NameDatabases.git
cd NameDatabases
pip install -r requirements.txt
```

## Usage

### Loading the Datasets

You can easily load the name datasets using the provided Python tools. Below is an example of how to load and use the data.

```python
import pandas as pd

# Load last names from a specific country
last_names_df = pd.read_csv('data/last_names/usa.csv')

# Display the first few entries
print(last_names_df.head())
```

### Searching for a Name

The tools provided also include functionality to search for specific names within the datasets.

```python
from tools import name_search

# Search for a specific last name
results = name_search.search_last_name('Smith', 'usa')
print(results)
```

### Generating Random Names

You can also generate random names using the datasets for purposes such as testing or anonymizing data.

```python
from tools import name_generator

# Generate a random full name
random_name = name_generator.generate_random_name('usa')
print(random_name)
```

## Contributing

We welcome contributions from the community! If you would like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Make your changes.
4. Submit a pull request with a detailed description of your changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Acknowledgements

A big thank you to Matthew Hager (smashew) for his original work on the text databases of last names. This project builds upon the foundation he created.

## Contact

For any questions or suggestions, feel free to open an issue or contact us at hello@frontieranalytica.com.
