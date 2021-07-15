package §9!`§
{
   import §48§.§["#§;
   import flash.events.Event;
   
   public class §;g§ extends Event
   {
      
      public static const §?C§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §!!=§:§["#§;
      
      public function §;g§(param1:String, param2:§["#§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§!!=§ = param2;
      }
      
      public function get popup() : §["#§
      {
         return this.§!!=§;
      }
      
      override public function clone() : Event
      {
         return new §;g§(type,this.§!!=§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
