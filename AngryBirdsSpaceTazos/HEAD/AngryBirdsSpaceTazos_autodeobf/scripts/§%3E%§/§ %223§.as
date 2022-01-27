package §>%§
{
   import §-!r§.§+!B§;
   import flash.events.Event;
   
   public class § "3§ extends Event
   {
      
      public static const §?!h§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §8c§:§+!B§;
      
      public function § "3§(param1:String, param2:§+!B§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§8c§ = param2;
      }
      
      public function get popup() : §+!B§
      {
         return this.§8c§;
      }
      
      override public function clone() : Event
      {
         return new § "3§(type,this.§8c§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
