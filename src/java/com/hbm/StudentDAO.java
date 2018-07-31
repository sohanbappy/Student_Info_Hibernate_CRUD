package com.hbm;



import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Bappy
 */
public class StudentDAO {

    
       static Configuration config=null;
       static SessionFactory factory=null;
       static Session session=null;
       static Transaction t=null;
       
       
       public static SessionFactory getSessionFactory(){
        config = new Configuration().configure();
        factory = config.buildSessionFactory();
           
       return factory;
       }

    public static void saveStudent(Student student) {
        
        try {
            
        
        session = getSessionFactory().openSession();
        t = session.beginTransaction();
        
       
        Student s1 = new Student();
        s1.setId(student.getId());
        s1.setName(student.getName());
        s1.setPhone(student.getPhone());

        session.save(s1);
        t.commit();
        
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally{
        session.close();
        factory.close();
        }
    }
    
    public static List<Student> displayAllRecords() {

       List<Student> studentsList = new ArrayList();        

       
        try {
            
        
        session = getSessionFactory().openSession();
        t = session.beginTransaction();

        studentsList = session.createQuery("from Student").list();

        t.commit();
        
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
        finally{
        session.close();
        }
        return studentsList;

    }
     public static void deleteRecord(int student_id) {

         try {
             
         
         session = getSessionFactory().openSession();
         t = session.beginTransaction();
            
            Student st = findRecordById(student_id);

            session.delete(st);
            session.getTransaction().commit();
            
            } catch (Exception e) {
                e.printStackTrace();
         }
            finally{
            session.close();
            factory.close();
            }
            
        }
     public static Student findRecordById(int find_student_id) {

        Student findStudentObj = null;

         try {
         session = getSessionFactory().openSession();
         t = session.beginTransaction();
         
        findStudentObj = (Student) session.load(Student.class, find_student_id);

        } catch (Exception e) {
            e.printStackTrace();
         }
         finally{
            
         }
        return findStudentObj;
        
        }
     
     
     public static void updateRecord(Student student) {       

       
         try {
             
         session = getSessionFactory().openSession();
         t = session.beginTransaction();


            Student st = (Student) session.get(Student.class, student.getId());

            st.setName(student.getName());

            st.setPhone(student.getPhone());

            session.getTransaction().commit();
            
         }
            catch (Exception e) {
                  e.printStackTrace();
         }
         finally{
            session.close();
            factory.close();
         }

    }



    }

 


