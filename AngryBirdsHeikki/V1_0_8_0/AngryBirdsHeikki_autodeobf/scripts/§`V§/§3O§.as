package §`V§
{
   import flash.events.Event;
   
   public class §3O§ extends Event
   {
      
      public static const §@!;§:String = "OnLoadComplete";
       
      
      public function §3O§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §3O§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
