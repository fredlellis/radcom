hibernate {
    driverClassName="javax.sql.DataSource"
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:devDb"
            pooled = true
            driverClassName = "org.hsqldb.jdbcDriver"
            username = "sa"
            password = ""
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:testDb"
            pooled = true
            driverClassName = "org.hsqldb.jdbcDriver"
            username = "sa"
            password = ""
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