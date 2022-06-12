package §&q§
{
   import flash.events.Event;
   
   public class ColorFadeLayerEvent extends Event
   {
      
      public static const §"![§:String = "OnFadeToAlphaComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || ColorFadeLayerEvent)
         {
            §"![§ = "OnFadeToAlphaComplete";
         }
      }
      
      public function ColorFadeLayerEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
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
