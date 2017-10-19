package oct18.model;

public interface Authenticator {

	void authenticate(LoginCommand loginCommand) throws AuthenticationException;

}