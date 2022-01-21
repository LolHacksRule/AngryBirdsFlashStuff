package §=T§
{
   import flash.events.Event;
   
   public class §^E§ extends Event
   {
      
      public static const § !m§:String = "OnCloseComplete";
       
      
      private var §!X§:Popup;
      
      public function §^E§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§!X§ = param2;
      }
      
      public function get popup() : Popup
      {
         return this.§!X§;
      }
      
      override public function clone() : Event
      {
         return new §^E§(type,this.§!X§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
