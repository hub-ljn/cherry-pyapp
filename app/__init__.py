import cherrypy


class MyTest(object):
    @cherrypy.expose
    def index(self):
        return "Hello Cherrypy!"
