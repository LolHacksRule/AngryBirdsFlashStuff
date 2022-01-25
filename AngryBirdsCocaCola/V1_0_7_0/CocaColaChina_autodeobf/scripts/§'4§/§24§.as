package §'4§
{
   import flash.events.Event;
   
   public class §24§ extends Event
   {
      
      public static const §0w§:String = "OnCloseComplete";
       
      
      private var §0!O§:Popup;
      
      public function §24§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0!O§ = param2;
      }
      
      public function get §[B§() : Popup
      {
         return this.§0!O§;
      }
      
      override public function clone() : Event
      {
         return new §24§(type,this.§0!O§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
