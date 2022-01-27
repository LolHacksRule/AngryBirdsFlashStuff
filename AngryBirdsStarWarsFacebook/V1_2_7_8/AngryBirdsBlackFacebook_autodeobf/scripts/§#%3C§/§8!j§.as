package §#<§
{
   import §4m§.§5!R§;
   import flash.events.Event;
   
   public class §8!j§ extends Event
   {
      
      public static const §`!f§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var § !6§:§5!R§;
      
      public function §8!j§(param1:String, param2:§5!R§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§ !6§ = param2;
      }
      
      public function get popup() : §5!R§
      {
         return this.§ !6§;
      }
      
      override public function clone() : Event
      {
         return new §8!j§(type,this.§ !6§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
