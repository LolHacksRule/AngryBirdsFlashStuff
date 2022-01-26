package §_-Xd§
{
   import §_-FQ§.§_-7W§;
   import §_-UX§.Sprite;
   import §_-qW§.b2World;
   import §var§.b2Vec2;
   
   public class §_-D-§ extends §_-Xr§
   {
       
      
      public function §_-D-§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§_-OL§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-vv§().GetPosition().x;
         var _loc3_:Number = §_-vv§().GetPosition().y;
         var _loc4_:Number = §_-vv§().GetLinearVelocity().x;
         var _loc5_:Number = §_-vv§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:§_-sW§;
         (_loc9_ = param1.§_-5h§("BIRD_BLUE",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false,false)).§_-hJ§(new b2Vec2(_loc4_ - 7 * _loc8_,_loc5_ - 7 * _loc7_));
         (_loc9_ = param1.§_-5h§("BIRD_BLUE",_loc2_ + _loc8_,_loc3_ + _loc7_,0,true,false,false)).§_-hJ§(new b2Vec2(_loc4_ + 7 * _loc8_,_loc5_ + 7 * _loc7_));
         return true;
      }
   }
}
