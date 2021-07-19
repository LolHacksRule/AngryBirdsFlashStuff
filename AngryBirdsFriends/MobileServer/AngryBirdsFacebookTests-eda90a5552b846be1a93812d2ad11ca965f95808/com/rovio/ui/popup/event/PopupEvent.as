package com.rovio.ui.popup.event
{
   import com.rovio.ui.popup.IPopup;
   import flash.events.Event;
   
   public class PopupEvent extends Event
   {
      
      public static const CLOSE_COMPLETE:String = "popup_close_complete";
      
      public static const OPEN_COMPLETE:String = "popup_open_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var mPopup:IPopup;
      
      public function PopupEvent(type:String, popup:IPopup, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.mPopup = popup;
      }
      
      public function get popup() : IPopup
      {
         return this.mPopup;
      }
      
      override public function clone() : Event
      {
         return new PopupEvent(type,this.mPopup,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
