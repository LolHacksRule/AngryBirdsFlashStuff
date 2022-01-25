package § ]§
{
   import flash.events.Event;
   
   public class §%P§ extends Event
   {
      
      public static const §=!9§:String = "OnLoadComplete";
       
      
      public function §%P§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §%P§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
