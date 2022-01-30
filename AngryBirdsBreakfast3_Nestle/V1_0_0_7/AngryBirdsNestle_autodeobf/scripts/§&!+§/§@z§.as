package §&!+§
{
   import §!!`§.§3%§;
   import flash.events.Event;
   
   public class §@z§ extends Event
   {
      
      public static const §,F§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §<!M§:§3%§;
      
      public function §@z§(param1:String, param2:§3%§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§<!M§ = param2;
      }
      
      public function get popup() : §3%§
      {
         return this.§<!M§;
      }
      
      override public function clone() : Event
      {
         return new §@z§(type,this.§<!M§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
