# Test cases for the main module.
import sys
import os
project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if project_root not in sys.path:
    sys.path.append(project_root)
    
import pytest
from src.global_names.main import sample_function

# Add the project root directory to the Python module search path


from src.global_names.main import sample_function

def test_sample_function():
    """
    Test case for sample_function.
    """
    def test_sample_function():
        # Test case 1: Positive number
        assert sample_function(5) == 25

        # Test case 2: Negative number
        assert sample_function(-3) == 9

        # Test case 3: Zero
        assert sample_function(0) == 0

        # Test case 4: Large number
        assert sample_function(1000) == 1000000

        # Test case 5: Decimal number
        assert sample_function(2.5) == 6.25