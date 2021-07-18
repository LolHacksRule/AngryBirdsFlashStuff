package §2`§
{
   import flash.events.Event;
   
   public class §"0§ extends Event
   {
      
      public static const §3!A§:String = "OnLoadComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3!A§ = "OnLoadComplete";
         }
      }
      
      public function §"0§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §"0§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
