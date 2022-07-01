package §&5§
{
   import flash.events.Event;
   
   public class §6!P§ extends Event
   {
      
      public static const §=A§:String = "OnLoadComplete";
       
      
      public function §6!P§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §6!P§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
