package §_-ST§
{
   import §_-WW§.b2World;
   import §_-dx§.b2Vec2;
   import §_-ez§.§_-Ay§;
   import §_-vO§.Sprite;
   
   public class §_-nv§ extends §_-GF§
   {
       
      
      public function §_-nv§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§_-oF§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-Nu§().GetPosition().x;
         var _loc3_:Number = §_-Nu§().GetPosition().y;
         var _loc4_:Number = §_-Nu§().GetLinearVelocity().x;
         var _loc5_:Number = §_-Nu§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§_-fK§;
         (_loc9_ = param1.§_-S5§("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false)).§_-pK§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.§_-S5§("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false)).§_-pK§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
