package §2"§
{
   import flash.events.Event;
   
   public class § !W§ extends Event
   {
      
      public static const §>§:String = "OnCloseComplete";
       
      
      private var §"Z§:Popup;
      
      public function § !W§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§"Z§ = param2;
      }
      
      public function get §`!a§() : Popup
      {
         return this.§"Z§;
      }
      
      override public function clone() : Event
      {
         return new § !W§(type,this.§"Z§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
