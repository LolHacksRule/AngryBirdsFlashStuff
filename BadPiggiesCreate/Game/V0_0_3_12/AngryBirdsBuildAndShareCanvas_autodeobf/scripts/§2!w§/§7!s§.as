package §2!w§
{
   import §1!N§.§"!k§;
   import §4!#§.§[R§;
   import flash.geom.Rectangle;
   
   public class §7!s§
   {
       
      
      public function §7!s§()
      {
         super();
      }
      
      public static function §5I§(param1:String, param2:§[R§) : §"!k§
      {
         return §"!k§.§2"5§(param2.getObjectWithID(param1));
      }
      
      public static function §+!'§(param1:§"!k§, param2:Vector.<§"!k§>, param3:§[R§) : void
      {
         var _loc5_:§"!k§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Rectangle = null;
         var _loc8_:Rectangle = null;
         param2.push(param1);
         if(param1.isGround())
         {
            return;
         }
         var _loc4_:int = 0;
         while(_loc4_ < param3.getObjectCount())
         {
            _loc5_ = §"!k§.§2"5§(param3.getObject(_loc4_));
            if(param2.indexOf(_loc5_) <= -1)
            {
               _loc6_ = 0.6;
               _loc7_ = param1.§#1§(true);
               _loc7_.left -= _loc6_;
               _loc7_.top -= _loc6_;
               _loc7_.right += _loc6_;
               _loc7_.bottom += _loc6_;
               _loc8_ = _loc5_.§#1§(true);
               if(_loc7_.intersects(_loc8_))
               {
                  §+!'§(_loc5_,param2,param3);
               }
            }
            _loc4_++;
         }
      }
   }
}
