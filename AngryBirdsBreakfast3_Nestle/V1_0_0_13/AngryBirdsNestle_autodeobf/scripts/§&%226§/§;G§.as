package §&"6§
{
   import §1!s§.§+!y§;
   import flash.events.Event;
   
   public class §;G§ extends Event
   {
      
      public static const §6"3§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §#!c§:§+!y§;
      
      public function §;G§(param1:String, param2:§+!y§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§#!c§ = param2;
      }
      
      public function get popup() : §+!y§
      {
         return this.§#!c§;
      }
      
      override public function clone() : Event
      {
         return new §;G§(type,this.§#!c§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
