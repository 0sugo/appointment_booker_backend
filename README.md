# Doctor_appointment_reservation_back_end

<a name="readme-top"></a>

# 📗 Table of Contents

- [Doctor\_appointment\_reservation\_back\_end](#doctor_appointment_reservation_back_end)
- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Appointment\_booker\_back\_end\] ](#-appointment_booker_back_end-)
  - [Link to the front-end repo](#link-to-the-front-end-repo)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐ Show your support ](#-show-your-support-)
  - [🙏Acknowledgments ](#acknowledgments-)
  - [📝 License ](#-license-)

# 📖 [Appointment_booker_back_end] <a name="about-project"></a>

**[Appointment_booker_back_end]** is a backend rails api that provides service to the front-end react app to fetch data for doctors appointment reservation.

## [Link to the front-end repo](https://github.com/0sugo/appointment_booker_frontend.git)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Ruby on Rails</summary>
  <ul>
    <li><a>https://rubyonrails.org/</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **[Render available doctors]**
- **[Add doctors]**
- **[Delete doctors]**
- **[Reserve an appointment with a specific doctor]**
- **[View all appointments for a specific user]**
- **[Delete an appointment with a specific doctor]**


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Install Ruby
- Install Rails
- Install Postgresql

### Setup

Clone this repository to your desired folder:

```sh
  git clone https://github.com/0sugo/appointment_booker_backend.git
  cd appointment_booker_backend
```

### Install

Install this project with:

```sh
  cd appointment_booker_backend
  bundle install
```

```sh
  gem install --no-document rubocop -v '>= 1.0, < 2.0'
```

### Usage

To run the project, execute the following command:

```sh
  rails db:create
  rails db:migrate
  rails db:seed
  rails server -p 4000
```

To view api documentation on the project, execute the following command when server is running:

```sh
  http://localhost:4000/api-docs
```

### Run tests

To run tests, run the following command:

```sh
  rspec spec
```

## 👥 Authors <a name="authors"></a>

👤 **Micheal Oguntayo**

- GitHub: [@oguntayomicheal](https://github.com/oguntayomicheal)
- Twitter: [@OguntayoMicheal](https://twitter.com/Oguns_micky)
- LinkedIn: [@OguntayoMicheal](https://www.linkedin.com/in/ogunsmicky/)

👤 **Ubda Nam**

- GitHub: [@UbdaNam](https://github.com/UbdaNam)
- LinkedIn: [Abdurahim M.](linkedin.com/in/abdurahim-miftah)

👤 **JOSECK OSUGO**

- GitHub: [0sugo](https://github.com/0sugo)
- Twitter: [@0sugo5](https://twitter.com/osugo5)
- LinkedIn: [Joseck Osugo](https://www.linkedin.com/in/joseck-osugo/)


## 🔭 Future Features <a name="future-features"></a>

- [] **[Delete functionality only for admins ]**
- [] **[Removing dates and sessions that have been booked already ]**


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/0sugo/appointment_booker_backend/issues).


## ⭐ Show your support <a name="support"></a>

If you like this project please show support by staring :star:️.


## 🙏Acknowledgments <a name="acknowledgements"></a>

- We would like to thank Microverse for providing adequate learning material and a safe learning environment.
- We would like to extend our sincerest gratitude for [Murat Korkmaz](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign) for this beautiful design.

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
