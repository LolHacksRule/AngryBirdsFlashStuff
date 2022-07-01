package §=0§
{
   import flash.events.Event;
   
   public class §6p§ extends Event
   {
      
      public static const §#j§:String = "OnLoadComplete";
       
      
      public function §6p§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §6p§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
