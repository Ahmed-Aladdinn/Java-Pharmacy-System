/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

/**
 *
 * @author Ahmed
 */
public class pharmacist extends javax.swing.JFrame {

    /**
     * Creates new form pharmacist
     */
    public pharmacist() {
        initComponents();
        this.setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        Store_comm = new javax.swing.JButton();
        Patient_Comm = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Pharmacist");
        setIconImage(new javax.swing.ImageIcon(getClass().getResource("/resources/icon.png")).getImage()
        );
        setResizable(false);

        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        Store_comm.setBackground(new java.awt.Color(0, 102, 102));
        Store_comm.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        Store_comm.setForeground(new java.awt.Color(255, 255, 255));
        Store_comm.setText("Store communication");
        Store_comm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Store_commActionPerformed(evt);
            }
        });
        jPanel1.add(Store_comm, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 120, 170, 40));

        Patient_Comm.setBackground(new java.awt.Color(0, 102, 102));
        Patient_Comm.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        Patient_Comm.setForeground(new java.awt.Color(255, 255, 255));
        Patient_Comm.setText("Patient communication");
        Patient_Comm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Patient_CommActionPerformed(evt);
            }
        });
        jPanel1.add(Patient_Comm, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 120, -1, 40));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/resources/WhatsApp Image 2021-12-29 at 5.07.14 PM.jpeg"))); // NOI18N
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 490, 260));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void Store_commActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Store_commActionPerformed
        // TODO add your handling code here:
        this.setVisible(false);
        store_communication f = new store_communication();
        f.setVisible(true);
    }//GEN-LAST:event_Store_commActionPerformed

    private void Patient_CommActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Patient_CommActionPerformed
        // TODO add your handling code here:
        this.setVisible(false);
        patient_communication f = new patient_communication();
        f.setVisible(true);
    }//GEN-LAST:event_Patient_CommActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(pharmacist.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(pharmacist.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(pharmacist.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(pharmacist.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new pharmacist().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Patient_Comm;
    private javax.swing.JButton Store_comm;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
