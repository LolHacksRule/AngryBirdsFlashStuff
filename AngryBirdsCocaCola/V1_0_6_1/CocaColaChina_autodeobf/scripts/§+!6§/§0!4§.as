package §+!6§
{
   import flash.events.Event;
   
   public class §0!4§ extends Event
   {
      
      public static const §7_§:String = "OnLoadComplete";
       
      
      public function §0!4§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §0!4§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
