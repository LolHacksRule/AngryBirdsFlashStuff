package §&"8§
{
   import §%%§.§7!O§;
   import §]r§.§2"%§;
   import flash.geom.Rectangle;
   
   public class §]!0§
   {
       
      
      public function §]!0§()
      {
         super();
      }
      
      public static function §,!L§(param1:String, param2:§2"%§) : §7!O§
      {
         return §7!O§.§-n§(param2.getObjectWithID(param1));
      }
      
      public static function §8Z§(param1:§7!O§, param2:Vector.<§7!O§>, param3:§2"%§) : void
      {
         var _loc5_:§7!O§ = null;
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
            _loc5_ = §7!O§.§-n§(param3.getObject(_loc4_));
            if(param2.indexOf(_loc5_) <= -1)
            {
               _loc6_ = 0.6;
               _loc7_ = param1.§7n§(true);
               _loc7_.left -= _loc6_;
               _loc7_.top -= _loc6_;
               _loc7_.right += _loc6_;
               _loc7_.bottom += _loc6_;
               _loc8_ = _loc5_.§7n§(true);
               if(_loc7_.intersects(_loc8_))
               {
                  §8Z§(_loc5_,param2,param3);
               }
            }
            _loc4_++;
         }
      }
   }
}
