package §20§
{
   import flash.events.Event;
   
   public class §`w§ extends Event
   {
      
      public static const §?!?§:String = "OnCloseComplete";
       
      
      private var §,J§:Popup;
      
      public function §`w§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§,J§ = param2;
      }
      
      public function get §'$§() : Popup
      {
         return this.§,J§;
      }
      
      override public function clone() : Event
      {
         return new §`w§(type,this.§,J§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
