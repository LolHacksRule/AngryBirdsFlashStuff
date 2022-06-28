package §[m§
{
   import flash.events.Event;
   
   public class §%!b§ extends Event
   {
      
      public static const §<!k§:String = "OnCloseComplete";
       
      
      private var §#!O§:Popup;
      
      public function §%!b§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§#!O§ = param2;
      }
      
      public function get §1!g§() : Popup
      {
         return this.§#!O§;
      }
      
      override public function clone() : Event
      {
         return new §%!b§(type,this.§#!O§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
