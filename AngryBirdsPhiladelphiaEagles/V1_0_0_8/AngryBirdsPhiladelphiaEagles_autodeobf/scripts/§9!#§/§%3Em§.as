package §9!#§
{
   import flash.events.Event;
   
   public class §>m§ extends Event
   {
      
      public static const §5i§:String = "OnCloseComplete";
       
      
      private var §#!"§:Popup;
      
      public function §>m§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§#!"§ = param2;
      }
      
      public function get § L§() : Popup
      {
         return this.§#!"§;
      }
      
      override public function clone() : Event
      {
         return new §>m§(type,this.§#!"§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
