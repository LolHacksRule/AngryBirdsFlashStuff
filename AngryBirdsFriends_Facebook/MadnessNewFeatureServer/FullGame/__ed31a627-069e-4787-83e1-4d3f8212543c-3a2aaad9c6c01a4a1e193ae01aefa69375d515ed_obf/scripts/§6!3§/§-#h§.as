package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §-#h§ extends §,s§
   {
       
      
      private var §&"H§:Boolean;
      
      public function §-#h§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§&"H§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§%#4§());
         var _loc4_:Number = 1 * Math.cos(§%#4§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§8$B§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = getBody().GetLinearVelocity().x;
         var _loc5_:Number = getBody().GetLinearVelocity().y;
         this.§7$%§(_loc4_,_loc5_,param1);
      }
      
      private function §7$%§(param1:Number, param2:Number, param3:§8$B§) : void
      {
         var _loc10_:§,s§ = null;
         if(param1 == 0 && param2 == 0)
         {
            this.§&"H§ = true;
            return;
         }
         this.§&"H§ = false;
         var _loc4_:Number = Math.sqrt(param1 * param1 + param2 * param2);
         var _loc5_:Number = -param1 / _loc4_;
         var _loc6_:Number = param2 / _loc4_;
         var _loc7_:Number = getBody().GetPosition().x;
         var _loc8_:Number = getBody().GetPosition().y;
         var _loc9_:§,s§;
         (_loc9_ = §,s§(param3.addObject("BIRD_BLUE",_loc7_ - _loc6_,_loc8_ - _loc5_,0,§'!§.ID_NEXT_FREE,true,false,false,scale))).§[#5§ = §[#5§;
         _loc9_.§-#l§(new b2Vec2(param1 - 7 * _loc6_,param2 - 7 * _loc5_));
         _loc9_.isLeavingTrail = true;
         _loc9_.§3!F§ = §3!F§;
         _loc9_.§,"I§(§[I§());
         _loc9_.§,r§(§8!l§());
         _loc9_.§]#6§(§6#V§());
         _loc9_.§?$&§(§8#X§);
         _loc9_.§0_§(§;"I§);
         (_loc10_ = §,s§(param3.addObject("BIRD_BLUE",_loc7_ + _loc6_,_loc8_ + _loc5_,0,§'!§.ID_NEXT_FREE,true,false,false,scale))).§[#5§ = §[#5§;
         _loc10_.§-#l§(new b2Vec2(param1 + 7 * _loc6_,param2 + 7 * _loc5_));
         _loc10_.isLeavingTrail = true;
         _loc10_.§3!F§ = §3!F§;
         _loc10_.§,"I§(§[I§());
         _loc10_.§,r§(§8!l§());
         _loc10_.§]#6§(§6#V§());
         _loc10_.§?$&§(§8#X§);
         _loc10_.§0_§(§;"I§);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         if(this.§&"H§)
         {
            this.§7$%§(getBody().GetLinearVelocity().x,getBody().GetLinearVelocity().y,param2);
         }
      }
   }
}
