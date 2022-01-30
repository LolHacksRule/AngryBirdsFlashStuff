package §?Z§
{
   import §?N§.§;!E§;
   import flash.events.Event;
   
   public class §5-§ extends Event
   {
      
      public static const §&C§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §9! §:§;!E§;
      
      public function §5-§(param1:String, param2:§;!E§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§9! § = param2;
      }
      
      public function get popup() : §;!E§
      {
         return this.§9! §;
      }
      
      override public function clone() : Event
      {
         return new §5-§(type,this.§9! §,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
