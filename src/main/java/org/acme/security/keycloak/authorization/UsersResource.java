package org.acme.security.keycloak.authorization;

import io.quarkus.security.identity.SecurityIdentity;
import org.jboss.resteasy.reactive.NoCache;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Path("/api/users")
public class UsersResource {
    @Inject
    SecurityIdentity identity;

    @GET
    @Path("/me")
    @NoCache
    public User me() {
        return new User(identity);
    }

    public static class User {

        private final String userName;

        User(SecurityIdentity identity) {
            this.userName = identity.getPrincipal().getName();
        }

        public String getUserName() {
            return userName;
        }
    }
}
