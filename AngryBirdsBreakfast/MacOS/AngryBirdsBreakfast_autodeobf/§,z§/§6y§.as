package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §?s§.§8K§;
   
   public class §6y§ extends §?!z§
   {
       
      
      public function §6y§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§3!#§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = §^`§().GetPosition().x;
         var _loc5_:Number = §^`§().GetPosition().y;
         var _loc6_:Number = §^`§().GetLinearVelocity().x;
         var _loc7_:Number = §^`§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§?!z§;
         (_loc11_ = §?!z§(param1.§,]§("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§&"§.§5!1§,true,false,false,scale))).§]!9§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
         (_loc11_ = §?!z§(param1.§,]§("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§&"§.§5!1§,true,false,false,scale))).§]!9§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
      }
   }
}
