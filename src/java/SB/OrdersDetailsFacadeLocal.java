/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SB;

import Entity.OrdersDetails;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Admin
 */
@Local
public interface OrdersDetailsFacadeLocal {

    void create(OrdersDetails ordersDetails);

    void edit(OrdersDetails ordersDetails);

    void remove(OrdersDetails ordersDetails);

    OrdersDetails find(Object id);

    List<OrdersDetails> findAll();

    List<OrdersDetails> findRange(int[] range);

    int count();

    List<OrdersDetails> findOrderID(int id);
    
}
