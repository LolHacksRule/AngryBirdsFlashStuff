package §_-tW§
{
   import §_-Di§.§_-ix§;
   import §_-SE§.Sprite;
   import §_-bA§.b2Vec2;
   import §_-vk§.b2World;
   
   public class §_-H-§ extends §_-f5§
   {
       
      
      public function §_-H-§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§_-S5§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-UF§().GetPosition().x;
         var _loc3_:Number = §_-UF§().GetPosition().y;
         var _loc4_:Number = §_-UF§().GetLinearVelocity().x;
         var _loc5_:Number = §_-UF§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§_-lx§;
         (_loc9_ = param1.§_-ZA§("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false,scale)).§_-BQ§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.§_-ZA§("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false,scale)).§_-BQ§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
