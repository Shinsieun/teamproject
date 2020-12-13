package com.project.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;

import com.project.bean.BoardRE;
import com.project.bean.BoardVO;
public class BoardDao {
   JdbcTemplate template;
   
   public void setTemplate(JdbcTemplate template) {    
       this.template = template;    
   }    
   
   public int save(BoardVO p){    
       String sql="insert into BOARD (category, title, writer, content) values('"+p.getCategory()+"',"+"'"+p.getTitle()+"',"+"'"+p.getWriter()+"',"+"'"+p.getContent()+"')";    
       return template.update(sql);    
   }
  
   public int save_2(BoardRE p){
       String sql="insert into RESERV (mon, tue, wed, tur, fri, time) values('"+p.getMon()+"',"+"'"+p.getTue()+"',"+"'"+p.getWed()+"',"+"'"+p.getTur()+"',"+"'"+p.getFri()+"',"+"'"+p.getTime()+"')";    
       return template.update(sql);
   }
   public int update(BoardVO p){    
       String sql="update BOARD set category ='"+p.getCategory()+"', title='"+p.getTitle()+"', writer='"+p.getWriter()+"', content='"+p.getContent()+"' where seq="+p.getSeq()+"";    
       return template.update(sql);    
   }    
   public int res_update(BoardRE p){    
       String sql="update RESERV set mon ='"+p.getMon()+"', tue='"+p.getTue()+"', wed='"+p.getWed()+"', tur='"+p.getTur()+"', fri='"+p.getFri()+"' where seq="+p.getSeq()+"";    
       return template.update(sql);    
   }    
   public int delete(int seq){    
       String sql="delete from BOARD where seq="+seq+"";    
       return template.update(sql);    
   }  
   
   public BoardVO getBoardVOById(int seq){    
       String sql="select * from BOARD where seq=?";    
       return template.queryForObject(sql, new Object[]{seq},new BeanPropertyRowMapper<BoardVO>(BoardVO.class));    
   }    
   public BoardRE getBoardREById(int seq){    
       String sql="select * from RESERV where seq=?";    
       return template.queryForObject(sql, new Object[]{seq},new BeanPropertyRowMapper<BoardRE>(BoardRE.class));    
   }  
   public List<BoardVO> getEmployees(){    
       return template.query("select * from BOARD",new RowMapper<BoardVO>(){    
           public BoardVO mapRow(ResultSet rs, int row) throws SQLException {    
               BoardVO e=new BoardVO();    
               e.setSeq(rs.getInt(1));
               e.setCategory(rs.getString(7));  
               e.setTitle(rs.getString(2));    
               e.setWriter(rs.getString(3));    
               e.setContent(rs.getString(4));    
               return e;    
           }    
       });    
   }
   public List<BoardRE> getreserve(){    
       return template.query("select * from RESERV",new RowMapper<BoardRE>(){    
           public BoardRE mapRow(ResultSet rs, int row) throws SQLException {    
               BoardRE e=new BoardRE();    
               e.setSeq(rs.getInt(1));
               e.setMon(rs.getString(2));  
               e.setTue(rs.getString(3));
               e.setWed(rs.getString(4));
               e.setTur(rs.getString(5));
               e.setFri(rs.getString(6));
               e.setTime(rs.getString(7));
               return e;    
           }    
       });    
   }
}