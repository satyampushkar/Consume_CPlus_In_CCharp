   M S B A M L   `   `   `  ����K  GCalculatorClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:CalculatorClientCalculatorClient  5   	   !    CalculatorClient.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:CalculatorClient     5   	     � Title$  
MainWindow��5   	   $	��300��6   $	��700��6)   .��5	      � $��0,0,0,-6q�6   .+�5
   
   �� -   5        $��txtBox_Input1��5
      $
��Left=�6'   $��	85,89,0,0q�6B    �� TextWrapping$
 Wrap=�6V   $	��Top=�6j   $��94��6�   $��48��6�   �� 5   
   -   5        $��txtBox_Input2��5      $
��Left=�6'   $��
306,89,0,0q�6B   $
 Wrap=�6V   $	��Top=�6j   $��94��6�   $��48��6�   �� 5   
   -   5        $��=��5      $
��Left=�6   $��
447,89,0,0q�68   $	��Top=�6L   $��48��6d   $��43��6p   6{   �� 5   
   -   5        $��label_Result��5      $��Label��6$   $
��Left=�64   $��
569,89,0,0q�6O   $	��Top=�6c   $��90��6{   $��48��6�   �� 5   
   -   5        $��comboBox_Ops��5      $
��Left=�6'   $��
215,89,0,0q�6B   $	��Top=�6V   $��46��6n    J� RenderTransformOrigin$ 0.151,-0.712&�6y   $��48��6�   .@�5      �� $��+��6   6)   �� 5      $��-��6   6)   �� 5      $��*��6   6)   �� 5      $��/��6   6)   5      �� 5   
   -   5        $��label_Heading��5      $��
Calculator��6%   $
��Left=�6:   $��	82,38,0,0q�6U   $	��Top=�6h   �� 5   
   -   5        $��label_Error��5      $�� ��6#   $
��Left=�6.   $��
82,191,0,0q�6I   $	��Top=�6]   
���  ��6u   5      5      