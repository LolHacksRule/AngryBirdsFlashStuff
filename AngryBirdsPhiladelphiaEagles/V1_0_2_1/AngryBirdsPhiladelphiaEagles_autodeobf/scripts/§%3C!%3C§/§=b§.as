package §<!<§
{
   import flash.events.Event;
   
   public class §=b§ extends Event
   {
      
      public static const §2!?§:String = "OnCloseComplete";
       
      
      private var §28§:Popup;
      
      public function §=b§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§28§ = param2;
      }
      
      public function get §3>§() : Popup
      {
         return this.§28§;
      }
      
      override public function clone() : Event
      {
         return new §=b§(type,this.§28§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
