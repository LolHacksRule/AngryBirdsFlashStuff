package §!$;§
{
   import §1!=§.§%#;§;
   import flash.events.Event;
   
   public class §8#F§ extends Event
   {
      
      public static const §^$4§:String = "popup_close_complete";
      
      public static const §;^§:String = "popup_open_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §3!8§:§%#;§;
      
      public function §8#F§(param1:String, param2:§%#;§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§3!8§ = param2;
      }
      
      public function get popup() : §%#;§
      {
         return this.§3!8§;
      }
      
      override public function clone() : Event
      {
         return new §8#F§(type,this.§3!8§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
