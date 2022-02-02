from locust import HttpUser, task, between


class DemoUser(HttpUser):
    wait_time = between(1, 5)

    @task
    def login(self):
        pass

    def on_start(self):
        pass

    def on_end(self):
        pass
