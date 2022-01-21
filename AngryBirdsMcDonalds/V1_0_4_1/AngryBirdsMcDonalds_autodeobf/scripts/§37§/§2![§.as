package §37§
{
   import flash.events.Event;
   
   public class §2![§ extends Event
   {
      
      public static const §,!2§:String = "OnCloseComplete";
       
      
      private var §9!#§:Popup;
      
      public function §2![§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§9!#§ = param2;
      }
      
      public function get popup() : Popup
      {
         return this.§9!#§;
      }
      
      override public function clone() : Event
      {
         return new §2![§(type,this.§9!#§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
