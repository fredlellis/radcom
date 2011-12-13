hibernate {
    driverClassName="javax.sql.DataSource"
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop"
            username="radcom_dsv"
            password ="leoLellis"
            url ="jdbc:cloudbees://radcom_DSV"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            username="radcom_tst"
            password ="leoLellis"
            url ="jdbc:cloudbees://radcom_TST"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            username="radcom_adm"
            password ="leoLellis"
            url ="jdbc:cloudbees://radcom"
        }
    }
}