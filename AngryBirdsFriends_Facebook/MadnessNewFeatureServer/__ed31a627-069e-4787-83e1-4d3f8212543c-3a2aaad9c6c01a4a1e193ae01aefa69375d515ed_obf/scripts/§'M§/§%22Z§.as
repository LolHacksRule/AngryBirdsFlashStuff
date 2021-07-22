package §'M§
{
   import §0!s§.§5!-§;
   import flash.events.Event;
   
   public class §"Z§ extends Event
   {
      
      public static const §=#m§:String = "popup_close_complete";
      
      public static const §?!D§:String = "popup_open_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §[!<§:§5!-§;
      
      public function §"Z§(param1:String, param2:§5!-§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§[!<§ = param2;
      }
      
      public function get popup() : §5!-§
      {
         return this.§[!<§;
      }
      
      override public function clone() : Event
      {
         return new §"Z§(type,this.§[!<§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
