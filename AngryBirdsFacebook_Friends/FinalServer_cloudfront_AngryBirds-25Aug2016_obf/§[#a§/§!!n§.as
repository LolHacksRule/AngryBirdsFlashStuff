package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §!!n§ extends §-k§
   {
       
      
      public function §!!n§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§^!Y§());
         var _loc4_:Number = 1 * Math.cos(§^!Y§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§7!O§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         var _loc6_:Number = getBody().GetLinearVelocity().x;
         var _loc7_:Number = getBody().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§-k§;
         (_loc11_ = §-k§(param1.addObject("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§6"[§.ID_NEXT_FREE,true,false,false,scale))).§ #J§ = § #J§;
         _loc11_.§%"R§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
         _loc11_.§9"P§ = §9"P§;
         _loc11_.§,!b§(§=!n§());
         _loc11_.§5"a§(§0!]§());
         _loc11_.§`"9§(§2!<§());
         _loc11_.§'!t§(§ !?§());
         (_loc11_ = §-k§(param1.addObject("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§6"[§.ID_NEXT_FREE,true,false,false,scale))).§ #J§ = § #J§;
         _loc11_.§%"R§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
         _loc11_.isLeavingTrail = true;
         _loc11_.§9"P§ = §9"P§;
         _loc11_.§,!b§(§=!n§());
         _loc11_.§5"a§(§0!]§());
         _loc11_.§'!t§(§ !?§());
      }
   }
}
