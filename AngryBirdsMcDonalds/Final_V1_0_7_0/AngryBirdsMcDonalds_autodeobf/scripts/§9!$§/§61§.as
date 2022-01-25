package §9!$§
{
   import flash.events.Event;
   
   public class §61§ extends Event
   {
      
      public static const §0K§:String = "OnLoadComplete";
       
      
      public function §61§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §61§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
