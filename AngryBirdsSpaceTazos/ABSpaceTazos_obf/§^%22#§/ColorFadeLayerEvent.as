package §^"#§
{
   import flash.events.Event;
   
   public class ColorFadeLayerEvent extends Event
   {
      
      public static const §;Y§:String = "OnFadeToAlphaComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §;Y§ = "OnFadeToAlphaComplete";
         }
      }
      
      public function ColorFadeLayerEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new ColorFadeLayerEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("ColorFadeLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
