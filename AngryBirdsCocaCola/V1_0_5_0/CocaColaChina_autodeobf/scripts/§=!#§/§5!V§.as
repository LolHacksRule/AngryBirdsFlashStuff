package §=!#§
{
   import flash.events.Event;
   
   public class §5!V§ extends Event
   {
      
      public static const §"!E§:String = "OnCloseComplete";
       
      
      private var §+!N§:Popup;
      
      public function §5!V§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+!N§ = param2;
      }
      
      public function get §1!9§() : Popup
      {
         return this.§+!N§;
      }
      
      override public function clone() : Event
      {
         return new §5!V§(type,this.§+!N§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
