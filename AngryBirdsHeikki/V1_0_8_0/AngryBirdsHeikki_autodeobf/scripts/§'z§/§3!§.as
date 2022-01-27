package §'z§
{
   import flash.events.Event;
   
   public class §3!§ extends Event
   {
      
      public static const §%;§:String = "OnCloseComplete";
       
      
      private var §->§:Popup;
      
      public function §3!§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§->§ = param2;
      }
      
      public function get §2!N§() : Popup
      {
         return this.§->§;
      }
      
      override public function clone() : Event
      {
         return new §3!§(type,this.§->§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
