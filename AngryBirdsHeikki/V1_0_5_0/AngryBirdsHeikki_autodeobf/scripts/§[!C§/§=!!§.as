package §[!C§
{
   import flash.events.Event;
   
   public class §=!!§ extends Event
   {
      
      public static const §7B§:String = "OnLoadComplete";
       
      
      public function §=!!§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §=!!§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
