package §_-zM§
{
   import flash.events.Event;
   
   public class §_-Bs§ extends Event
   {
      
      public static const §_-7O§:String = "OnCloseComplete";
       
      
      private var §_-H9§:Popup;
      
      public function §_-Bs§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§_-H9§ = param2;
      }
      
      public function get §_-yF§() : Popup
      {
         return this.§_-H9§;
      }
      
      override public function clone() : Event
      {
         return new §_-Bs§(type,this.§_-H9§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
