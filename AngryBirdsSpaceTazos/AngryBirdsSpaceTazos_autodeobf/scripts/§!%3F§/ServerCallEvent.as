package §!?§
{
   import flash.events.Event;
   
   public class ServerCallEvent extends Event
   {
      
      public static const §-U§:String = "ServerCallEvent.ON_CALL_COMPLETE";
      
      public static const §+!K§:String = "ServerCallEvent.ON_ERROR";
       
      
      private var §?!9§:String;
      
      public function ServerCallEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get text() : String
      {
         return this.§?!9§;
      }
      
      public function set text(param1:String) : void
      {
         this.§?!9§ = param1;
      }
      
      override public function clone() : Event
      {
         return new ServerCallEvent(this.type,this.bubbles,this.cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("ServerCallEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
