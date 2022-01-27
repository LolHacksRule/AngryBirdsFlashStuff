package §=!"§
{
   import §+"2§.§<!X§;
   import flash.events.Event;
   
   public class §2"&§ extends Event
   {
      
      public static const §6!4§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §1!h§:§<!X§;
      
      public function §2"&§(param1:String, param2:§<!X§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§1!h§ = param2;
      }
      
      public function get popup() : §<!X§
      {
         return this.§1!h§;
      }
      
      override public function clone() : Event
      {
         return new §2"&§(type,this.§1!h§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
