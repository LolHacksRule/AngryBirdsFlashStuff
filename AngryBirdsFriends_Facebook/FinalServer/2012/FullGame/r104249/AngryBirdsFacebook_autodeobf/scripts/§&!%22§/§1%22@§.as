package §&!"§
{
   import flash.events.Event;
   
   public class §1"@§ extends Event
   {
      
      public static const §+2§:String = "OnCloseComplete";
       
      
      private var §71§:Popup;
      
      public function §1"@§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§71§ = param2;
      }
      
      public function get §,]§() : Popup
      {
         return this.§71§;
      }
      
      override public function clone() : Event
      {
         return new §1"@§(type,this.§71§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
