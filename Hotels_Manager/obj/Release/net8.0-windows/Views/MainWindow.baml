   M S B A M L   `   `   `  ���� I  EHotels_Manager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Hotels_ManagerHotels_Manager  Y1clr-namespace:Hotels_Manager.ViewModels.Behaviors#Hotels_Manager.ViewModels.Behaviors  E'clr-namespace:Hotels_Manager.ViewModelsHotels_Manager.ViewModels  M+clr-namespace:Hotels_Manager.Views.ControlsHotels_Manager.Views.Controls      Hotels_Manager.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:Hotels_Manager     _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  A	behaviors1clr-namespace:Hotels_Manager.ViewModels.Behaviors  _ [Hardcodet.NotifyIcon.Wpf, Version=1.1.0.0, Culture=neutral, PublicKeyToken=682384a853a08aad)tb http://www.hardcodet.net/taskbar  0vm'clr-namespace:Hotels_Manager.ViewModels  :controls+clr-namespace:Hotels_Manager.Views.Controls  -     �Name$  
mainWindow�� � Title$ Hotels manager��$	��600��$	��850��$	��600��$	��600�� � WindowStartupLocation$ CenterScreen=� � Icon$ Assets/Star.ico��'  !System.Windows.Shell.WindowChrome   WindowChrome      CaptionHeight$ 30Q�   ResizeBorderThickness$ 5q�*  $Microsoft.Xaml.Behaviors.Interaction   Triggers +  %Microsoft.Xaml.Behaviors.EventTrigger     	EventName$ StateChanged��/  )Microsoft.Xaml.Behaviors.EventTriggerBase	   SourceObject	 �� 
 �� ElementName$
 
mainWindow��*  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command �� *WindowStateChangedCommand+  $ TrayLeftMouseDown��	 �� $
 trayElement��.    �� *ShowMainWindowByTrayCommand+  $ Click��	 �� $
 closeAppByTray��.    �� *CloseMainWindowCommand+.���� -    ��Name$ MainWindowBorder��   	BackColor#���   ���� *MainBorderThickness+._��  � RowDefinitions �� $
��auto ��� $��* �.+�3  -Hardcodet.Wpf.TaskbarNotification.TaskbarIcon  -     Name$ trayElement��   
IconSource$ Assets/Star.ico�� � ContextMenu �� .@�m� -    m�Name$ closeAppByTray��$��Close���� $��0��$��0��$��2��$��30��  TitlebarColor#���  ._�� .+��� $
��Left=�$��Center=� �� Orientation$ 
Horizontal=�.+��� -    ��Name$ openMenuBtn��  MenuButtonStyle#���     IsHitTestVisibleInChrome$
 True�� � ToolTip$
 Menu��y��� *MenuButtonVisibility+ � Triggers :�  :� RoutedEvent$ Button.Click��[��� .���� .��r�  �� 
TargetName$ 	menuPanel�� �� TargetProperty$ (FrameworkElement.Margin)�.	�<  6System.Windows.Media.Animation.EasingThicknessKeyFrame   p� KeyTime$ 0:0:0.1�� p� Value$ 0,0,0,0q��� $��Right=�$ 
Horizontal=�.+��� -   $ minimizeBtn��  MinimizeButtonStyle#���  $
 True��$ Minimize������ *MinimizeMainWindowCommand+�� -   $ 
restoreBtn��  RestoreButtonStyle#���  $
 True��$ Restore��y��� *RestoreButtonVisibility+���� *RestoreMainWindowCommand+�� -   $ maximizeButton��  MaximizeButtonStyle#���  $
 True��$ Maximize��y��� *MaximizeButtonVisibility+���� *MaximizeMainWindowCommand+�� -	   $ closeButton��  CloseButtonStyle#���  $
 True��$ Close������ *HideMainWindowCommand+ �   � NavigationUIVisibility$ Hidden=�$��1������ *CurrentPage+�� -
   $ 	menuPanel��$��0��$��2��$��
-250,0,0,0q�$	��250��$
��Left=�  MenuPanelColor#���  ._��  �� $��30 ��� $
��auto ��� .+�0	  *Hotels_Manager.Views.Controls.ModernButton	  $��0��$��30��$��Right=�$��Segoe MDL2 Assets)�$��10(�  MainStyleColor 	  MouseOverColor# �  $	����$
 True������ $
 	menuPanel�� �� Path$ 
Background� :� $ Button.Click��[��� .���� .��r� $ 	menuPanel��$ (FrameworkElement.Margin)�.	�  $ 0:0:0.1��$ 
-250,0,0,0q��� $��	0,10,0,10q�$��1��$ Vertical=�.+�	  $��40��$��SemiBold"�# �  $��Stretch=�$��Stretch=����� $
 	menuPanel��$ 
Background����� *SelectMainPageCommand+.���   � ColumnDefinitions  �� $
��0.3* ��� .+��� $��22��$��Assets/mainPageImg.png���� $��1��$��Center=�$
��Left=� 	 	TextColor#��� 	 $��	Main page�� :� $ Button.Click��[��� .���� .��r� $ 	menuPanel��$ (FrameworkElement.Margin)�.	�  $ 0:0:0.1��$ 
-250,0,0,0q�	  $��40��$��SemiBold"�$��0,10,0,0q�# �  $��Stretch=�$��Stretch=����� $
 	menuPanel��$ 
Background����� *" SelectReservationListPageCommand+.���   �� $
��0.3* ��� .+��� $��25��$��Assets/reservationImg.png���� $��1��$��Center=�$
��Left=�#��� 	 $��Reservations�� :� $ Button.Click��[��� .���� .��r� $ 	menuPanel��$ (FrameworkElement.Margin)�.	�  $ 0:0:0.1��$ 
-250,0,0,0q��� $��2��._�� $��0,10,0,0q� �� �� $��50 �.+��� 
������ $��0q�$��Disabled=����� *	RoomTypes+! �� UpdateSourceTrigger$! PropertyChanged=�����  
 RoomTypeListBoxItemStyle" �� BasedOn#" [
 # �� 
TargetType"# ��	  $��5,0,5,0q�$��1��$��Add new room type������ *ShowAddRoomTypeDialogCommand+�� -   $ editRoomTypePanel��$
��Left=�$	��250��#���  $��2��y��� * RoomTypeEditingPanelVisibility+$! PropertyChanged=�._��  �� �� $	��100 �.+��� $��0��$ Vertical=�$��	10,0,10,0q�$ � DataContext$ �� *SelectedRoomTypeItem+.+���   SubHeaderTextBlockStyle#���  $��0,20,0,0q�$��
Type name:��1
   +Hotels_Manager.Views.Controls.ModernTextBox
  % 
  PlaceHolder$% Fill in the name field...��#���  ���� *
TypeName+$! PropertyChanged=��� #���  $��0,20,0,0q�$��Maximum number of guests:��
  $#% Fill in the quantity field...��#���  ���� *
Capacity+$! PropertyChanged=�& �� Mode$& TwoWay=�.��'   	Behaviors' ;  5Hotels_Manager.ViewModels.Behaviors.OnlyDigitBehavior  .���� #���  $��0,20,0,0q�$��Price per day:��
  $ % Fill in the price field...��#���  ���� *Price+$! PropertyChanged=�$& TwoWay=�.��'   .���� $��1��$��	10,0,10,0q�$��Center=�.+�	  $
��Save������ *SaveNewRoomTypeDataCommand+	  $��0,15,0,0q�$��2q�#���    SubMenuPanelColor#���   �#27292d$��Cancel������ *CancelRoomTypeUpdatingCommand+