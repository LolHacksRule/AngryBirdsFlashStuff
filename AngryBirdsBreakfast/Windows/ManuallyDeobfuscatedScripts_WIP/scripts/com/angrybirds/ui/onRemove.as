package com.angrybirds.ui
{
   import flash.events.Event;
   
   public class onRemove extends Event
   {
      
      public static const ON_HIDE_COMPLETE:String = "ErrorPaneEvent.OnHideComplete";
       
      
      public function onRemove(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new onRemove(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("EpisodeButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
