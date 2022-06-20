package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §@!j§ extends §"7§
   {
       
      
      private var §'"+§:Boolean;
      
      public function §@!j§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§'"+§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§%D§());
         var _loc4_:Number = 1 * Math.cos(§%D§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§-!S§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = getBody().GetLinearVelocity().x;
         var _loc5_:Number = getBody().GetLinearVelocity().y;
         this.§2!0§(_loc4_,_loc5_,param1);
      }
      
      private function §2!0§(param1:Number, param2:Number, param3:§-!S§) : void
      {
         if(param1 == 0 && param2 == 0)
         {
            this.§'"+§ = true;
            return;
         }
         this.§'"+§ = false;
         var _loc4_:Number = Math.sqrt(param1 * param1 + param2 * param2);
         var _loc5_:Number = -param1 / _loc4_;
         var _loc6_:Number = param2 / _loc4_;
         var _loc7_:Number = getBody().GetPosition().x;
         var _loc8_:Number = getBody().GetPosition().y;
         var _loc9_:§"7§;
         (_loc9_ = §"7§(param3.addObject("BIRD_BLUE",_loc7_ - _loc6_,_loc8_ - _loc5_,0,§6#-§.ID_NEXT_FREE,true,false,false,scale))).§7##§ = §7##§;
         _loc9_.§!!b§(new b2Vec2(param1 - 7 * _loc6_,param2 - 7 * _loc5_));
         _loc9_.isLeavingTrail = true;
         _loc9_.§>#j§ = §>#j§;
         _loc9_.§+$ §(§3",§());
         _loc9_.§4#=§(§6"-§());
         _loc9_.§,!N§(§@"h§());
         _loc9_.§[#m§(§,#W§);
         _loc9_.§%$&§(§'>§);
         var _loc10_:§"7§;
         (_loc10_ = §"7§(param3.addObject("BIRD_BLUE",_loc7_ + _loc6_,_loc8_ + _loc5_,0,§6#-§.ID_NEXT_FREE,true,false,false,scale))).§7##§ = §7##§;
         _loc10_.§!!b§(new b2Vec2(param1 + 7 * _loc6_,param2 + 7 * _loc5_));
         _loc10_.isLeavingTrail = true;
         _loc10_.§>#j§ = §>#j§;
         _loc10_.§+$ §(§3",§());
         _loc10_.§4#=§(§6"-§());
         _loc10_.§,!N§(§@"h§());
         _loc10_.§[#m§(§,#W§);
         _loc10_.§%$&§(§'>§);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(this.§'"+§)
         {
            this.§2!0§(getBody().GetLinearVelocity().x,getBody().GetLinearVelocity().y,param2);
         }
      }
   }
}
