package §,B§
{
   import flash.events.Event;
   
   public class §@!L§ extends Event
   {
      
      public static const §>&§:String = "OnCloseComplete";
       
      
      private var §`!D§:Popup;
      
      public function §@!L§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`!D§ = param2;
      }
      
      public function get §>"§() : Popup
      {
         return this.§`!D§;
      }
      
      override public function clone() : Event
      {
         return new §@!L§(type,this.§`!D§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
