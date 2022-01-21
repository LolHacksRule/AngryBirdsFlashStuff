package §>!%§
{
   import flash.events.Event;
   
   public class §1W§ extends Event
   {
      
      public static const §7!T§:String = "OnLoadComplete";
       
      
      public function §1W§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §1W§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
