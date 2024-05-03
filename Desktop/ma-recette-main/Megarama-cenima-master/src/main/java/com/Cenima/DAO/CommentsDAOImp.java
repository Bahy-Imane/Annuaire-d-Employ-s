package com.Cenima.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.Cenima.Classes.Comments;

public class CommentsDAOImp implements CommentsDAO {



    @Override
    public void createComment(Comments comment) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        Transaction transaction = session.beginTransaction();
        session.save(comment);
        transaction.commit();
        session.close();
    }


    @Override
    public void deleteComment(int commentId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Comments comment = session.get(Comments.class, commentId);
        if (comment != null) {
            session.delete(comment);
        }
        transaction.commit();
        session.close();
    }
}
