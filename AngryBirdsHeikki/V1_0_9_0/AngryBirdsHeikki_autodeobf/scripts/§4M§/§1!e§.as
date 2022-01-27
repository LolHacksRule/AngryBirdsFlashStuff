package §4M§
{
   import flash.events.Event;
   
   public class §1!e§ extends Event
   {
      
      public static const §'!W§:String = "OnLoadComplete";
       
      
      public function §1!e§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §1!e§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
