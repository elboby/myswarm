defmodule Myswarm do
    use Application

    # See http://elixir-lang.org/docs/stable/elixir/Application.html
    # for more information on OTP Applications
    def start(_type, _args) do
        import Supervisor.Spec

        # Define workers and child supervisors to be supervised
        children = [
          # Start the endpoint when the application starts
          supervisor(MyApp.WorkerSup, [])
        ]
        Supervisor.start_link(children, [])
    end
end
