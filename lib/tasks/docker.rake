namespace :docker do
  desc 'Docker Build task'
  task build: :environment do
    sh "docker build -t seleya:#{Seleya::Application::VERSION} ."
    sh "docker tag -f seleya:#{Seleya::Application::VERSION} seleya:latest"
  end
end
