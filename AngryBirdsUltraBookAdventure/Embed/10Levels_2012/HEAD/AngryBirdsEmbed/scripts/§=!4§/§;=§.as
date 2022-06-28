package §=!4§
{
   import flash.events.Event;
   
   public class §;=§ extends Event
   {
      
      public static const §"!G§:String = "OnCloseComplete";
       
      
      private var §"J§:Popup;
      
      public function §;=§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§"J§ = param2;
      }
      
      public function get §=!5§() : Popup
      {
         return this.§"J§;
      }
      
      override public function clone() : Event
      {
         return new §;=§(type,this.§"J§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
