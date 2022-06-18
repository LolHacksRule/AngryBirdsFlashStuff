package §]!1§
{
   import flash.events.Event;
   
   public class §"!A§ extends Event
   {
      
      public static const §>j§:String = "OnCloseComplete";
       
      
      private var §[!§:Popup;
      
      public function §"!A§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§[!§ = param2;
      }
      
      public function get §3!-§() : Popup
      {
         return this.§[!§;
      }
      
      override public function clone() : Event
      {
         return new §"!A§(type,this.§[!§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
