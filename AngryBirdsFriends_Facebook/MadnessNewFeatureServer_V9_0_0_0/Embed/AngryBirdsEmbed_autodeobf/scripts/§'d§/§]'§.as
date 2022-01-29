package §'d§
{
   import flash.events.Event;
   
   public class §]'§ extends Event
   {
      
      public static const §]!A§:String = "OnCloseComplete";
       
      
      private var §>!§:Popup;
      
      public function §]'§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§>!§ = param2;
      }
      
      public function get §%!G§() : Popup
      {
         return this.§>!§;
      }
      
      override public function clone() : Event
      {
         return new §]'§(type,this.§>!§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
