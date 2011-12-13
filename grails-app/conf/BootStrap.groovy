import org.apache.shiro.crypto.hash.Sha256Hash

class BootStrap {



    def init = { servletContext ->

        if (ShiroUser.findByUsername("admin") == null){
            def user = new ShiroUser(username: "admin", passwordHash: new Sha256Hash("leoLellis").toHex())
            user.addToPermissions("*:*")
            user.save()
        }

    }
    def destroy = {
    }
}
