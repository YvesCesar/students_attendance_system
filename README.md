# Students Frequency System

Register students frequency with facial recognition

___
![rspec](https://ruby.ci/badges/bc0914c8-e046-4382-8d56-c0440503feb5/rspec)
![ruby_critic_g](https://ruby.ci/badges/bc0914c8-e046-4382-8d56-c0440503feb5/ruby_critic_g)
![rubocop](https://ruby.ci/badges/bc0914c8-e046-4382-8d56-c0440503feb5/rubocop)
![brakeman](https://ruby.ci/badges/bc0914c8-e046-4382-8d56-c0440503feb5/brakeman)
![bundler_audit](https://ruby.ci/badges/bc0914c8-e046-4382-8d56-c0440503feb5/bundler_audit)

### About this project

This project arose from a demand in the city of Manaus/Brazil, where teachers reported problems with manual registration of student attendance. Given the data survey, we solved it with a scientific research: [School attendance management system for students through facial recognition](https://itegam-jetia.org/journal/index.php/jetia/article/view/838).

### Dependencies

To run this project, you will need the following dependencies:

- Ruby 3.1.3
- Rails 7
- PostgreSQL
- Python 3.7
- OpenCV (for facial recognition)
- Dlib

### How to run the project

Clone this repository:

```shell
git clone https://github.com/YvesCesar/students_frequency_system.git
```

Enter the project folder:

```shell
cd students_frequency_system
```

Install Ruby dependencies:

```shell
bundle install
```

Create the database:

```shell
rails db:create
rails db:migrate
```

Clone the student frequency registration submodule:

```shell
git submodule init
git submodule update
```

Start the server:

```shell
rails s
```

Open your browser and go to http://localhost:3000.

Now you should be able to access the system and register the students frequency.
