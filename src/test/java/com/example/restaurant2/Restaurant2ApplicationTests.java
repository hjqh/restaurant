package com.example.restaurant2;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties.Jedis;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.model.Address;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Restaurant2ApplicationTests {


	@Resource 
	RedisTemplate<Integer, Object> redisTemplate;
	@Test
    public void objectRedisTest() {
		Address a=new Address();
        a.setId(1);
        a.setUser_id(1);
        a.setDetail("aaaa");
        redisTemplate.opsForValue().set(a.getId(), a);
        Address AddressFromRedis = (Address)redisTemplate.opsForValue().get(a.getClass());
        System.out.println("11111111111111111111111111");
        System.out.println(AddressFromRedis);
    }
	
	@Resource 
    StringRedisTemplate stringRedisTemplate;
    @Test
    public void stringRedisTest() {
        stringRedisTemplate.opsForValue().set("aaa", "bbb");
        String getV = stringRedisTemplate.opsForValue().get("aaa");
        System.out.println(getV);
    }
	
}
