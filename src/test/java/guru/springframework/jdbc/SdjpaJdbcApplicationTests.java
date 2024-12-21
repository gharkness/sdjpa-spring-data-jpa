package guru.springframework.jdbc;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@Disabled // No H2 context configured
@SpringBootTest
@ActiveProfiles("local")
class SdjpaJdbcApplicationTests {

	@Test
	void contextLoads() {
	}

}
