package §9!!§
{
   import flash.events.Event;
   
   public class §9!"§ extends Event
   {
      
      public static const §`y§:String = "OnCloseComplete";
       
      
      private var §9M§:Popup;
      
      public function §9!"§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§9M§ = param2;
      }
      
      public function get §-y§() : Popup
      {
         return this.§9M§;
      }
      
      override public function clone() : Event
      {
         return new §9!"§(type,this.§9M§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
