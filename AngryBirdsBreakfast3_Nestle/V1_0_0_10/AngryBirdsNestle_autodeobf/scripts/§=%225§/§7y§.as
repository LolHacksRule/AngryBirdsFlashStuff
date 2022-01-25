package §="5§
{
   import flash.events.Event;
   
   public class §7y§ extends Event
   {
      
      public static const §7T§:String = "OnLoadComplete";
       
      
      public function §7y§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §7y§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
