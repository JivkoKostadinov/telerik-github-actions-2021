from locust import HttpUser, task


class DemoUser(HttpUser):

    @task
    def login(self):
        pass

    def on_start(self):
        pass

    def on_end(self):
        pass
