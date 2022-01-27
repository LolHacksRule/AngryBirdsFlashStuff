package §6"A§
{
   import flash.events.Event;
   
   public class §9!K§ extends Event
   {
      
      public static const §+!d§:String = "OnLoadComplete";
       
      
      public function §9!K§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §9!K§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
