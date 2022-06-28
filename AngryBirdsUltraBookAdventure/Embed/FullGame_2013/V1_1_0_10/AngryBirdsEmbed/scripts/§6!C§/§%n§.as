package §6!C§
{
   import flash.events.Event;
   
   public class §%n§ extends Event
   {
      
      public static const §<6§:String = "OnCloseComplete";
       
      
      private var § X§:Popup;
      
      public function §%n§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§ X§ = param2;
      }
      
      public function get §]`§() : Popup
      {
         return this.§ X§;
      }
      
      override public function clone() : Event
      {
         return new §%n§(type,this.§ X§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
