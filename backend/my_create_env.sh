uv venv --python 3.12
source .venv/bin/activate  # On Windows: venv\Scripts\activate
uv pip install -r requirements.txt -c constraints_mac.txt
uvicorn score:app --reload