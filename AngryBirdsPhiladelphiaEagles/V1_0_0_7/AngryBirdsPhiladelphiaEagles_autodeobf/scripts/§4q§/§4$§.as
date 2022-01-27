package §4q§
{
   import flash.events.Event;
   
   public class §4$§ extends Event
   {
      
      public static const §9U§:String = "OnCloseComplete";
       
      
      private var §??§:Popup;
      
      public function §4$§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§??§ = param2;
      }
      
      public function get §2!0§() : Popup
      {
         return this.§??§;
      }
      
      override public function clone() : Event
      {
         return new §4$§(type,this.§??§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
