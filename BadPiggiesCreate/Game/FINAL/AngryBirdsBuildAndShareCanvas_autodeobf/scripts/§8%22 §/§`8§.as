package §8" §
{
   import §+!o§.§?"-§;
   import §7r§.§=q§;
   import flash.geom.Rectangle;
   
   public class §`8§
   {
       
      
      public function §`8§()
      {
         super();
      }
      
      public static function §"!h§(param1:String, param2:§?"-§) : §=q§
      {
         return §=q§.§0"§(param2.getObjectWithID(param1));
      }
      
      public static function §]+§(param1:§=q§, param2:Vector.<§=q§>, param3:§?"-§) : void
      {
         var _loc5_:§=q§ = null;
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
            _loc5_ = §=q§.§0"§(param3.getObject(_loc4_));
            if(param2.indexOf(_loc5_) <= -1)
            {
               _loc6_ = 0.6;
               _loc7_ = param1.§]!&§(true);
               _loc7_.left -= _loc6_;
               _loc7_.top -= _loc6_;
               _loc7_.right += _loc6_;
               _loc7_.bottom += _loc6_;
               _loc8_ = _loc5_.§]!&§(true);
               if(_loc7_.intersects(_loc8_))
               {
                  §]+§(_loc5_,param2,param3);
               }
            }
            _loc4_++;
         }
      }
   }
}
