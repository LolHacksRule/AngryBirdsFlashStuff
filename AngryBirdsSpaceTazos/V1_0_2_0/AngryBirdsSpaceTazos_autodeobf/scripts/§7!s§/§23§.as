package §7!s§
{
   import flash.events.Event;
   
   public class §23§ extends Event
   {
      
      public static const §?"F§:String = "OnLoadComplete";
       
      
      public function §23§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §23§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
