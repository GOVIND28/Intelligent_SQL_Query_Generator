# 🧠 Intelligent SQL Query Generator 🚀

**Transform Natural Language Into SQL Queries — Visually, Intuitively, and Intelligently**

The *Intelligent SQL Query Generator* is a protocol-level prototype that empowers users to query Microsoft SQL Server databases using plain English—typed or spoken. By harnessing the power of Google’s `gemini-1.5-flash` model, this tool seamlessly translates your everyday questions into optimized T‑SQL commands.

Ideal for developers, analysts, and business users, this application democratizes data exploration, making it accessible even without prior SQL expertise. Experience data insights brought to life through intuitive tables, dynamic 2D charts, and immersive 3D graphs.

This application is containerized with Docker, ensuring effortless deployment and execution without the complexities of manual builds or dependency management.

---

✨ **Key Features**

* 🗣️ **Natural Language to SQL:** Ask your database questions in plain English, either by typing or speaking.
* 🤖 **Intelligent Query Generation:** Powered by Google's `gemini-1.5-flash` model for accurate and efficient SQL translation.
* ⚡ **Instant Results:** Receive immediate feedback, including the generated SQL query and its executed results.
* 📊 **Versatile Visualizations:**
    * 📈 **Tabular Data:** Interactive and responsive tables powered by DataTables, featuring search, sort, and pagination.
    * 📊 **2D Charts:** Gain insights from dynamic 2D charts rendered using Chart.js.
    * 🌐 **3D Charts:** Explore complex data through immersive 3D visualizations powered by ECharts‑GL.
* 🎤 **Speech-to-Text Input:** Speak your queries directly using the integrated speech recognition.
* 🪄 **Intelligent Visualization Detection:** The system intelligently analyzes your natural language query for keywords (e.g., "2D chart", "3D pie chart", "3D bar chart") to automatically select and render the most appropriate visualization.
* 🐳 **Dockerized Deployment:** Enjoy simple and consistent deployment using Docker Engine and Compose. Say goodbye to complex setups.
* ⚙️ **Easy Configuration:** Configure your database connection and API key effortlessly via a simple `.env` file.
* 💾 **Database Initialization:** Easily set up your database schema and seed data using the `init-db.sql` script.

---

🛠️ **Prerequisites**

Ensure the following are installed on your machine:

* 🐳 [Docker Engine](https://docs.docker.com/engine/install/) & [Compose](https://docs.docker.com/compose/install/)
* ⚙️ [Git](https://git-scm.com/download/) (for cloning the repository)

---

🔑 **Gemini API Key Setup**

1.  Navigate to the [Gemini API documentation](https://ai.google.dev/gemini-api/docs/api-key).
2.  Click on **Get a Gemini API key in Google AI Studio**.
3.  In Google AI Studio, click **Create API key** (or **Get API key** if you've created one previously).
4.  If prompted, click **Create API key in new project**.
5.  Your API key will be generated. Copy it and store it securely for the environment configuration.

---

⚙️ **Configuration**

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/GOVIND28/Intelligent_SQL_Query_Generator.git
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd Intelligent-SQL-Query-Generator
    ```
3.  Open the `.env` file in the repository root.
4.  Edit the following variables with your specific information:
    ```env
    # Name of your database (must match the database name you intend to create in init-db.sql)
    DB_NAME=NLQS

    # SA password for your SQL Server instance
    SA_PASSWORD=StrongPassword123456!

    # Your Google Gemini gemini-1.5-flash API key
    GEMINI_API_KEY=<YOUR_GEMINI_API_KEY>
    ```
    **Important:** For basic configuration, do not create new files or modify other existing ones.

---

🚀 **Getting Started**

1.  **Launch the application:**
    ```bash
    docker-compose up --build
    ```
2.  **Access the web interface:** Open your web browser and go to <http://localhost:80>.

---

💾 **Database Initialization (`init-db.sql`)**

The `init-db.sql` script is automatically executed when the application starts.

**To use your own database schema:**

1.  Open the `init-db.sql` file in the repository.
2.  **At the very top of this file, add the following SQL statement, replacing `<YOUR_DATABASE_NAME>` with the same name used in `.env`:**
    ```sql
    CREATE DATABASE [<YOUR_DATABASE_NAME>];
    GO
    USE [<YOUR_DATABASE_NAME>];
    GO
    ```
3.  Below these lines, add your schema and data initialization SQL:
    * **CREATE TABLES:** Define your table structures.
    * **ALTER TABLES:** Modify existing schema if necessary.
    * **INSERT INTO:** Populate your tables with data.

The system will automatically understand your schema, leading to more accurate SQL generation. *(Note: Schema is not currently displayed in the UI.)*

---

## 💡 How to Use the Intelligent Visualizations

Simply **type or speak** your data requests using **natural language**. <br>
The Intelligent SQL Query Generator goes beyond just fetching data; it aims to present it in the most insightful way possible.

**Example Queries & Automatic Visualization:**

* ```bash
    Show all data from departments and their total salaries
    ```
    This query will likely be displayed as a **tabular data** view.

* ```bash
    Show all departments and their total salaries with a 2D chart
    ```
    The system will detect the keyword "2D chart" and present the results as a **2D bar chart** or a similar appropriate 2D visualization.

* ```bash
    Display average salary per department in a 3D pie chart
    ```
    The presence of "3D pie chart" will instruct the system to render the data using a **3D pie chart**.

* ```bash
    Show a 3D bar chart of how many employees were hired per department in 2022
    ```
    The keywords "3D bar chart" will trigger a **3D bar chart** visualization.

* ```bash
    Total Salary Distribution with 3d doughnut Chart   
  ```
   The keywords "3D bar chart" will trigger a 3D doughnut chart visualization.


---

## 🧑‍💻 Contact & Acknowledgements

Designed & Developed by
[![LinkedIn - Govind Ambade](https://img.shields.io/badge/LinkedIn-Govind_Ambade-blue?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/govind-ambade/)

---

📌 **Note**
This application is an **experimental Project** intended for testing and demonstration purposes. While it provides accurate query generation in many cases, outcomes may vary based on database complexity and query phrasing. It is **recommended to review all auto-generated SQL** before executing in critical environments.
