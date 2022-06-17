package §;#>§
{
   import § $0§.§,#@§;
   import flash.events.Event;
   
   public class §7!^§ extends Event
   {
      
      public static const §;""§:String = "popup_close_complete";
      
      public static const §&""§:String = "popup_open_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §+"2§:§,#@§;
      
      public function §7!^§(param1:String, param2:§,#@§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+"2§ = param2;
      }
      
      public function get popup() : §,#@§
      {
         return this.§+"2§;
      }
      
      override public function clone() : Event
      {
         return new §7!^§(type,this.§+"2§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
