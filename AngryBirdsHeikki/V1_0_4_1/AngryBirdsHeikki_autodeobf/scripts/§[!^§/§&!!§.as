package §[!^§
{
   import flash.events.Event;
   
   public class §&!!§ extends Event
   {
      
      public static const §!4§:String = "OnCloseComplete";
       
      
      private var §`l§:Popup;
      
      public function §&!!§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`l§ = param2;
      }
      
      public function get §90§() : Popup
      {
         return this.§`l§;
      }
      
      override public function clone() : Event
      {
         return new §&!!§(type,this.§`l§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
