FROM Alirvd/ftags2:slim-buster

RUN git clone https://github.com/Alirvd/ftags2.git /root/Alirvd
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN apt install ffmpeg -y

WORKDIR /root/Alirvd

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Alirvd/bin:$PATH"

CMD ["python3","-m","Alirvd"]
