package §%Z§
{
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §?"'§.b2Vec2;
   import §`!B§.Sprite;
   
   public class §`!p§ extends §=!V§
   {
       
      
      public function §`!p§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§8!m§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = §-!N§().GetPosition().x;
         var _loc5_:Number = §-!N§().GetPosition().y;
         var _loc6_:Number = §-!N§().GetLinearVelocity().x;
         var _loc7_:Number = §-!N§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§=!V§;
         (_loc11_ = §=!V§(param1.§'!%§("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§7l§.§-u§,true,false,false,scale))).§28§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
         (_loc11_ = §=!V§(param1.§'!%§("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§7l§.§-u§,true,false,false,scale))).§28§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
      }
   }
}
