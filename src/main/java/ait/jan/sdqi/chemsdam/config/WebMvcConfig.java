package ait.jan.sdqi.chemsdam.config;

//import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@PropertySource(value = {"classpath:application.properties"})
public class WebMvcConfig 
{
	@Bean(name = "viewResolver")
	public InternalResourceViewResolver getViewResolver()
	{
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	/*@Bean
	public DataSource dataSource()
	{
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.postgresql.Driver");
		dataSource.setUrl("jdbc:postgresql://localhost:5432/g3_chemsdam");
		dataSource.setUsername("postgres");
		dataSource.setPassword("16011M3513");
		return dataSource;
	}*/
}
