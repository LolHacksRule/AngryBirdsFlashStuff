package §32§
{
   import flash.events.Event;
   
   public class §'!Z§ extends Event
   {
      
      public static const §'B§:String = "OnLoadComplete";
       
      
      public function §'!Z§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §'!Z§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
