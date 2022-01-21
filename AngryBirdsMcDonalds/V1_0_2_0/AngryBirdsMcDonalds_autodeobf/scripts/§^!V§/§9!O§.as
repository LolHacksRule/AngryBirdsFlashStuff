package §^!V§
{
   import flash.events.Event;
   
   public class §9!O§ extends Event
   {
      
      public static const §<1§:String = "OnCloseComplete";
       
      
      private var §0!3§:Popup;
      
      public function §9!O§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0!3§ = param2;
      }
      
      public function get popup() : Popup
      {
         return this.§0!3§;
      }
      
      override public function clone() : Event
      {
         return new §9!O§(type,this.§0!3§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
