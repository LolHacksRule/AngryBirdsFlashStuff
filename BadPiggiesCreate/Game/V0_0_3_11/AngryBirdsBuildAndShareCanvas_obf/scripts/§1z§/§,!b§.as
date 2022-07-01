package §1z§
{
   import § ""§.§6!u§;
   import §@!P§.§?"%§;
   import flash.geom.Rectangle;
   
   public class §,!b§
   {
       
      
      public function §,!b§()
      {
         super();
      }
      
      public static function §3!-§(param1:String, param2:§6!u§) : §?"%§
      {
         return §?"%§.§3! §(param2.getObjectWithID(param1));
      }
      
      public static function §2!i§(param1:§?"%§, param2:Vector.<§?"%§>, param3:§6!u§) : void
      {
         var _loc5_:§?"%§ = null;
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
            _loc5_ = §?"%§.§3! §(param3.getObject(_loc4_));
            if(param2.indexOf(_loc5_) <= -1)
            {
               _loc6_ = 0.6;
               _loc7_ = param1.§[!V§(true);
               _loc7_.left -= _loc6_;
               _loc7_.top -= _loc6_;
               _loc7_.right += _loc6_;
               _loc7_.bottom += _loc6_;
               _loc8_ = _loc5_.§[!V§(true);
               if(_loc7_.intersects(_loc8_))
               {
                  §2!i§(_loc5_,param2,param3);
               }
            }
            _loc4_++;
         }
      }
   }
}
