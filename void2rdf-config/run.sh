# Check if the current folder name is rdf_config_documentation
if [ "$(basename "$PWD")" != "void2rdf-config" ]; then
  echo "Error: Current folder name is not void2rdf-config."
  exit 1
fi

# Clone the RDF_Config repository
git clone https://github.com/dbcls/rdf-config.git 

# Clone the repository with minimal history and remove the .git folder
git clone --depth 1 https://github.com/JervenBolleman/void-generator.git void-generator
rm -rf void-generator/.git
rm -rf void-generator/src/
rm "void-generator/.gitignore" "void-generator/pom.xml" "void-generator/Tutorial.md"
# Check for available Python version and set compatibility
if command -v python3 &>/dev/null; then
    PYTHON_CMD="python3"
elif command -v python &>/dev/null; then
    PYTHON_CMD="python"
else
    echo "Error: Python is not installed."
    exit 1
fi

# Serve the sparql directory and print the port
PORT=8000  # Choose your preferred port
echo "Serving rdf_config_documentation/void-generator/sparql on port $PORT"
cd void-generator/sparql && $PYTHON_CMD -m http.server -b 0.0.0.0 $PORT