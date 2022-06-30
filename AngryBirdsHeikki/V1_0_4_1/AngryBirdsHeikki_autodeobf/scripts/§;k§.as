package
{
   import flash.events.Event;
   
   public class §;k§ extends Event
   {
      
      public static const §-T§:String = "OnLoadComplete";
       
      
      public function §;k§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §;k§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
