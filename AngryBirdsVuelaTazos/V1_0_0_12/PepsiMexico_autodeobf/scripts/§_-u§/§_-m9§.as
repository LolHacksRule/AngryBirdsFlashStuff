package §_-u§
{
   import §_-9z§.b2Vec2;
   import §_-EH§.b2World;
   import §_-pF§.Sprite;
   import §_-rp§.§_-c5§;
   
   public class §_-m9§ extends §_-5j§
   {
       
      
      public function §_-m9§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§_-Av§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-t9§().GetPosition().x;
         var _loc3_:Number = §_-t9§().GetPosition().y;
         var _loc4_:Number = §_-t9§().GetLinearVelocity().x;
         var _loc5_:Number = §_-t9§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§_-5Q§;
         (_loc9_ = param1.§_-Iq§("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false)).§_-jl§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.§_-Iq§("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false)).§_-jl§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
