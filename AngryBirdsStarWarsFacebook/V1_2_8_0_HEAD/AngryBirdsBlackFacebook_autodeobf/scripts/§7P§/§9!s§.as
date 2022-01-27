package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   
   public class §9!s§ extends §?"N§
   {
       
      
      public function §9!s§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = §3!t§().GetPosition().x;
         var _loc5_:Number = §3!t§().GetPosition().y;
         var _loc6_:Number = §3!t§().GetLinearVelocity().x;
         var _loc7_:Number = §3!t§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§?"N§;
         (_loc11_ = §?"N§(param1.addObject("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§;=§.§""3§,true,false,false,scale))).§ &§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
         (_loc11_ = §?"N§(param1.addObject("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§;=§.§""3§,true,false,false,scale))).§ &§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
      }
   }
}
