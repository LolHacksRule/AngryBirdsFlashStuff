package §^r§
{
   import §7!H§.§3z§;
   import flash.events.Event;
   
   public class §@!T§ extends Event
   {
      
      public static const §7!l§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §?"§:§3z§;
      
      public function §@!T§(param1:String, param2:§3z§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§?"§ = param2;
      }
      
      public function get popup() : §3z§
      {
         return this.§?"§;
      }
      
      override public function clone() : Event
      {
         return new §@!T§(type,this.§?"§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
