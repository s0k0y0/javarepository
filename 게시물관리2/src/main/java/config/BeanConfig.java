package config;




import org.springframework.context.annotation.Configuration;
import com.stone.springmvc.presentation.게시물컨트롤러;
import com.stone.springmvc.service.게시물업무자;

@Configuration
public class BeanConfig {
	
	public 게시물컨트롤러 게시물컨트롤러() {
		return new 게시물컨트롤러();
	}
	
	public 게시물업무자 게시물업무자() {
		return new 게시물업무자();
	}
	
}
