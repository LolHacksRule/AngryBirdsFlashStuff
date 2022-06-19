package com.angrybirds.notification
{
   public interface IDynamicNotificationService
   {
       
      
      function loadActiveNotifications() : void;
      
      function updateNotification(param1:Array) : void;
      
      function get notifications() : Vector.<DynamicNotification>;
   }
}
