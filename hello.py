def app(environ, response):
    status = '200 OK'
    headers = [
        ('Content-type','text/plain')
    ]
    response(status,headers)
    spl = environ["QUERY_STRING"].split("&");
    return "\n".join(spl)
