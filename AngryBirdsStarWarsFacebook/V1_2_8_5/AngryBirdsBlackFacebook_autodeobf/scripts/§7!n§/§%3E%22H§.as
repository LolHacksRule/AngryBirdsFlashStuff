package §7!n§
{
   import §+"x§.§3!§;
   import flash.events.Event;
   
   public class §>"H§ extends Event
   {
      
      public static const §6t§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §'#0§:§3!§;
      
      public function §>"H§(param1:String, param2:§3!§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§'#0§ = param2;
      }
      
      public function get popup() : §3!§
      {
         return this.§'#0§;
      }
      
      override public function clone() : Event
      {
         return new §>"H§(type,this.§'#0§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
