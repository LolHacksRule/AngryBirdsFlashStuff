package §+a§
{
   import flash.events.Event;
   
   public class §`_§ extends Event
   {
      
      public static const §9h§:String = "OnCloseComplete";
       
      
      private var §>2§:Popup;
      
      public function §`_§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§>2§ = param2;
      }
      
      public function get §7v§() : Popup
      {
         return this.§>2§;
      }
      
      override public function clone() : Event
      {
         return new §`_§(type,this.§>2§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
