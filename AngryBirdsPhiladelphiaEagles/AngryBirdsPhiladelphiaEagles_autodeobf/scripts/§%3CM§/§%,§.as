package §<M§
{
   import flash.events.Event;
   
   public class §%,§ extends Event
   {
      
      public static const §=a§:String = "OnCloseComplete";
       
      
      private var §5<§:Popup;
      
      public function §%,§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§5<§ = param2;
      }
      
      public function get §^5§() : Popup
      {
         return this.§5<§;
      }
      
      override public function clone() : Event
      {
         return new §%,§(type,this.§5<§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
