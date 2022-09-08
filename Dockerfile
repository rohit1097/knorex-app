FROM python:3.7.3-stretch
WORKDIR /app
RUN rm -rf *
COPY . /app
RUN pip install scikit-learn==0.22
RUN make install  
EXPOSE 80
ENTRYPOINT python app.py
