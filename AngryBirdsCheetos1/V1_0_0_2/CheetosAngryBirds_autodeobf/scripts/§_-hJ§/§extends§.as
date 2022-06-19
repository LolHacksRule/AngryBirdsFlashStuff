package §_-hJ§
{
   import flash.events.Event;
   
   public class §extends§ extends Event
   {
      
      public static const §_-xP§:String = "OnCloseComplete";
       
      
      private var §if §:Popup;
      
      public function §extends§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§if § = param2;
      }
      
      public function get §_-xU§() : Popup
      {
         return this.§if §;
      }
      
      override public function clone() : Event
      {
         return new §extends§(type,this.§if §,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
