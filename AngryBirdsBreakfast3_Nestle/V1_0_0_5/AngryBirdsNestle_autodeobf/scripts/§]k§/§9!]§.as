package §]K§
{
   import flash.events.Event;
   
   public class §9!]§ extends Event
   {
      
      public static const §8!N§:String = "OnLoadComplete";
       
      
      public function §9!]§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §9!]§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
