package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §=!c§.b2World;
   import §[K§.b2Vec2;
   
   public class § "%§ extends §?!§
   {
       
      
      public function § "%§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§0w§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = §7J§().GetPosition().x;
         var _loc5_:Number = §7J§().GetPosition().y;
         var _loc6_:Number = §7J§().GetLinearVelocity().x;
         var _loc7_:Number = §7J§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§?!§;
         (_loc11_ = §?!§(param1.§5!t§("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§&"0§.§&g§,true,false,false,scale))).§]j§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
         (_loc11_ = §?!§(param1.§5!t§("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§&"0§.§&g§,true,false,false,scale))).§]j§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
      }
   }
}
