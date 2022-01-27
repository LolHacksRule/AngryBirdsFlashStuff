package §%"7§
{
   import §"_§.§0"1§;
   import flash.events.Event;
   
   public class §+"C§ extends Event
   {
      
      public static const §6D§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §0!t§:§0"1§;
      
      public function §+"C§(param1:String, param2:§0"1§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0!t§ = param2;
      }
      
      public function get popup() : §0"1§
      {
         return this.§0!t§;
      }
      
      override public function clone() : Event
      {
         return new §+"C§(type,this.§0!t§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
