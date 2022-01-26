package §_-Q2§
{
   import flash.events.Event;
   
   public class §_-q5§ extends Event
   {
      
      public static const §_-ln§:String = "OnCloseComplete";
       
      
      private var §_-qQ§:Popup;
      
      public function §_-q5§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§_-qQ§ = param2;
      }
      
      public function get §_-jp§() : Popup
      {
         return this.§_-qQ§;
      }
      
      override public function clone() : Event
      {
         return new §_-q5§(type,this.§_-qQ§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
