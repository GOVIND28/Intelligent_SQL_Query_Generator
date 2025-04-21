# 🧠 Intelligent SQL Query Generator 🚀

**Transform Natural Language Into SQL Queries — Visually, Intuitively, and Intelligently**

The *Intelligent SQL Query Generator* is a protocol-level prototype that empowers users to query Microsoft SQL Server databases using plain English—typed or spoken. With the integration of Google’s `gemini-1.5-flash` model, this tool bridges the gap between natural language and structured query language, translating everyday questions into optimized T‑SQL commands.

Ideal for developers, analysts, and business users alike, this tool enables rapid data exploration with no prior SQL expertise required. Responses are visualized through intuitive tables, 2D charts, or even 3D graphs—making data-driven insights easier to obtain than ever before.

This application is containerized via Docker, so you can deploy and run it seamlessly without manual builds or dependency hassles.

---

✨ **Key Features**

* 🗣️ **Natural Language to SQL:** Effortlessly query your database by typing or speaking your questions.
* 🤖 **Intelligent Query Generation:** Leverages Google's `gemini-1.5-flash` model for accurate and efficient SQL translation.
* ⚡ **Instant Results:** Get immediate feedback with both the generated SQL query and its execution results.
* 📊 **Versatile Visualizations:**
    * 📈 **Tabular Data:** Interactive and responsive tables powered by DataTables with search, sort, and pagination.
    * 📊 **2D Charts:** Dynamic and insightful 2D charts rendered using Chart.js.
    * 🌐 **3D Charts:** Immersive 3D visualizations powered by ECharts‑GL for complex data exploration.
* 🎤 **Speech-to-Text Input:** Speak your queries directly using the integrated speech recognition functionality.
* 🪄 **Automatic Visualization:** The system intelligently detects keywords to automatically render appropriate 2D or 3D charts.
* 🐳 **Dockerized Deployment:** Simple and consistent deployment using Docker Engine and Compose. No complex setup required.
* ⚙️ **Easy Configuration:** Configure database connection and API key via a simple `.env` file.
* 💾 **Database Initialization:** Easily initialize your database schema and seed data using the `init-db.sql` script.

---

🛠️ **Prerequisites**

Ensure you have the following installed on your machine:

* 🐳 [Docker Engine](https://docs.docker.com/engine/install/) & [Compose](https://docs.docker.com/compose/install/)
* ⚙️ [Git](https://git-scm.com/download/) (for cloning the repository)

---

🔑 **Gemini API Key Setup**

1.  Go to the [Gemini API documentation](https://ai.google.dev/gemini-api/docs/api-key).
2.  Click on the **Get a Gemini API key in Google AI Studio** button.
3.  In the Google AI Studio interface, click the **Create API key** button (or **Get API key** if you haven't created one before).
4.  If prompted, click the **Create API key in new project** button.
5.  Your API key will be generated. Copy this key and store it securely for the environment configuration step.

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
3.  Open the `.env` file located in the repository root.
4.  Edit the following variables with your specific information:
    ```env
    # Name of your database (must match the database name you intend to create in init-db.sql)
    DB_NAME=<YOUR_DATABASE_NAME>

    # SA password for your SQL Server instance
    SA_PASSWORD=<YOUR_SECURE_SA_PASSWORD>

    # Your Google Gemini gemini-1.5-flash API key
    GEMINI_API_KEY=<YOUR_GEMINI_API_KEY>
    ```
    **Important:** Do not create any new files or modify other existing files for basic configuration.

---

🚀 **Getting Started**

1.  **Launch the application:**
    ```bash
    docker-compose up --build
    ```
2.  **Access the web interface:** Open your web browser and navigate to <http://localhost:80>.

---

💾 **Database Initialization (`init-db.sql`)**

The `init-db.sql` script is automatically executed upon application startup. 

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
    * **CREATE TABLES:** Define your table structure.
    * **ALTER TABLES:** Modify existing schema if needed.
    * **INSERT INTO:** Seed your tables with sample or real data.

The system will automatically parse and understand your schema, enabling more accurate SQL generation. *(Note: Schema is not currently displayed in the UI.)*

---

🧑‍💻 **Contact & Acknowledgements**

Designed & Developed by  
[![LinkedIn - Govind Ambade](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/govind-ambade/) **Govind Ambade**


---

📌 **Note**  
This application is an **experimental  Project** intended for testing and demonstration purposes. While it provides accurate query generation in many cases, outcomes may vary based on database complexity and query phrasing. It is **recommended to review all auto-generated SQL** before executing in critical environments.
