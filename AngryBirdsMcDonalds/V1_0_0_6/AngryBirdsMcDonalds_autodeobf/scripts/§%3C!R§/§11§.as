package §<!R§
{
   import flash.events.Event;
   
   public class §11§ extends Event
   {
      
      public static const §[t§:String = "OnLoadComplete";
       
      
      public function §11§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §11§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
