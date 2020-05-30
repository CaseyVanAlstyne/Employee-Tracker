// This page is intended to add information regarding new employees

const inquirer = require("inquirer");
const db = require("./connectDB");
const cTable = require("console.table");

async function newEmployee() {
    const answers = await inquirer.prompt([
        {
            type: "input",
            name: "firstName",
            message: "Employee's first name?"
        },
        {
            type: "input",
            name: "lastName",
            message: "Employee's last name?"
        },
        {
            type: "list",
            name: "employeeRole",
            message: "Employee's role?",
            choices: [
                "Teacher",
                "Assistant_Teacher",
                "Custodian",
                "Principal",
                "Assitant_Principal",
                "Office_Manager",
                "Secretary",
                "Inclusion_Teacher",
                "Student"
            ]
        },
    ]);
    insertEmployee(answers)
}

function insertEmployee(answers) {
    //insert into database
    console.log("Inserting a new employee...\n");
    var query = db.query(
        "INSERT INTO allEmployees SET ?",
        {
            first_name: answers.firstName,
            last_name: answers.lastName
        },
        function (err, res) {
            if (err) throw err;
            console.log(res.affectedRows + " employee has been added to role.\n");
        }
    );

    // logs the query being run
    console.log(query.sql);

}

exports.addEmpl = addEmpl;

