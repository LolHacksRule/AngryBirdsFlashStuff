package §>!x§
{
   import flash.events.Event;
   
   public class §2E§ extends Event
   {
      
      public static const §^f§:String = "OnLoadComplete";
       
      
      public function §2E§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §2E§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
