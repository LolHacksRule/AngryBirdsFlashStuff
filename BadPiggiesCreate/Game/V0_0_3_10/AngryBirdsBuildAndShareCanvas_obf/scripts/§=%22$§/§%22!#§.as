package §="$§
{
   import §="§.§="-§;
   import §?^§.§0Q§;
   import flash.geom.Rectangle;
   
   public class §"!#§
   {
       
      
      public function §"!#§()
      {
         super();
      }
      
      public static function § !&§(param1:String, param2:§="-§) : §0Q§
      {
         return §0Q§.§super§(param2.getObjectWithID(param1));
      }
      
      public static function §<!g§(param1:§0Q§, param2:Vector.<§0Q§>, param3:§="-§) : void
      {
         var _loc5_:§0Q§ = null;
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
            _loc5_ = §0Q§.§super§(param3.getObject(_loc4_));
            if(param2.indexOf(_loc5_) <= -1)
            {
               _loc6_ = 0.6;
               _loc7_ = param1.§^g§(true);
               _loc7_.left -= _loc6_;
               _loc7_.top -= _loc6_;
               _loc7_.right += _loc6_;
               _loc7_.bottom += _loc6_;
               _loc8_ = _loc5_.§^g§(true);
               if(_loc7_.intersects(_loc8_))
               {
                  §<!g§(_loc5_,param2,param3);
               }
            }
            _loc4_++;
         }
      }
   }
}
