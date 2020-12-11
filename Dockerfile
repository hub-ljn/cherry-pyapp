FROM 100.125.4.222:20202/op_svc_cse/python-x86_64:3-int-1.0
WORKDIR /var/cherry-pyapp
COPY ./ /var/cherry-pyapp/
RUN pipreqs --debug ./
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple -r ./cis-requirements.txt
CMD [ "python", "./wsgi.py" ]
