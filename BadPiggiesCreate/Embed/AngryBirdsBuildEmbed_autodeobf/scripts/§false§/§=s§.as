package §false§
{
   import flash.events.Event;
   
   public class §=s§ extends Event
   {
      
      public static const §>`§:String = "OnCloseComplete";
       
      
      private var §0%§:Popup;
      
      public function §=s§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0%§ = param2;
      }
      
      public function get § !%§() : Popup
      {
         return this.§0%§;
      }
      
      override public function clone() : Event
      {
         return new §=s§(type,this.§0%§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
