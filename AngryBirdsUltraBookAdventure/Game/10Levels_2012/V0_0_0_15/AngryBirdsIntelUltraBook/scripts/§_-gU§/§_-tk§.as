package §_-gU§
{
   import flash.events.Event;
   
   public class §_-tk§ extends Event
   {
      
      public static const §_-C9§:String = "OnCloseComplete";
       
      
      private var §_-8L§:Popup;
      
      public function §_-tk§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§_-8L§ = param2;
      }
      
      public function get §_-l-§() : Popup
      {
         return this.§_-8L§;
      }
      
      override public function clone() : Event
      {
         return new §_-tk§(type,this.§_-8L§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
