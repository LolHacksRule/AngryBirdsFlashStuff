package §]! §
{
   import flash.events.Event;
   
   public class §7!i§ extends Event
   {
      
      public static const §`K§:String = "OnLoadComplete";
       
      
      public function §7!i§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §7!i§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
