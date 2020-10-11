FROM python:3.7

# Install dependencies.
ADD requirements.txt /requirements.txt
RUN pip install -r requirements.txt

# Add quotes folder
ADD quotes /quotes
ADD quotes/quotes.txt /quotes/quotes.txt

# Copy code.
ADD main.py /main.py

CMD ["python", "/main.py"]