package §4!S§
{
   import §=%§.§<A§;
   import §?"&§.§5b§;
   import flash.geom.Rectangle;
   
   public class §="%§
   {
       
      
      public function §="%§()
      {
         super();
      }
      
      public static function §&!c§(param1:String, param2:§5b§) : §<A§
      {
         return §<A§.§5y§(param2.getObjectWithID(param1));
      }
      
      public static function §"+§(param1:§<A§, param2:Vector.<§<A§>, param3:§5b§) : void
      {
         var _loc5_:§<A§ = null;
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
            _loc5_ = §<A§.§5y§(param3.getObject(_loc4_));
            if(param2.indexOf(_loc5_) <= -1)
            {
               _loc6_ = 0.6;
               _loc7_ = param1.§5!3§(true);
               _loc7_.left -= _loc6_;
               _loc7_.top -= _loc6_;
               _loc7_.right += _loc6_;
               _loc7_.bottom += _loc6_;
               _loc8_ = _loc5_.§5!3§(true);
               if(_loc7_.intersects(_loc8_))
               {
                  §"+§(_loc5_,param2,param3);
               }
            }
            _loc4_++;
         }
      }
   }
}
