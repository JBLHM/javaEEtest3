package com.dao.before;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.po.before.comment;
@Repository("comment")
@Mapper
public interface commentDao {
	//这是联系我们发评论地区
		public int handelcomment(comment comment);
}
