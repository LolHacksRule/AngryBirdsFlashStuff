package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-00B§.b2World;
   import §_-Vn§.b2Vec2;
   import §case §.Sprite;
   
   public class §_-br§ extends §_-ON§
   {
       
      
      public function §_-br§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§_-lp§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-Zv§().GetPosition().x;
         var _loc3_:Number = §_-Zv§().GetPosition().y;
         var _loc4_:Number = §_-Zv§().GetLinearVelocity().x;
         var _loc5_:Number = §_-Zv§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§_-Cb§;
         (_loc9_ = param1.addObject("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false,scale)).§_-fC§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.addObject("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false,scale)).§_-fC§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
