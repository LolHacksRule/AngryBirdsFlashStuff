package §'=§
{
   import flash.events.Event;
   
   public class §!!U§ extends Event
   {
      
      public static const §[W§:String = "OnCloseComplete";
       
      
      private var §&m§:Popup;
      
      public function §!!U§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§&m§ = param2;
      }
      
      public function get §%p§() : Popup
      {
         return this.§&m§;
      }
      
      override public function clone() : Event
      {
         return new §!!U§(type,this.§&m§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
