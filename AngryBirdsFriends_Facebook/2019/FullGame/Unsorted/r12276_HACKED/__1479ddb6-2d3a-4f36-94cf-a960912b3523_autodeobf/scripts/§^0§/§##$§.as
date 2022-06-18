package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §##$§ extends §[# §
   {
       
      
      private var §5!v§:Boolean;
      
      public function §##$§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§5!v§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§<!C§());
         var _loc4_:Number = 1 * Math.cos(§<!C§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§>"T§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = getBody().GetLinearVelocity().x;
         var _loc5_:Number = getBody().GetLinearVelocity().y;
         this.§'#^§(_loc4_,_loc5_,param1);
      }
      
      private function §'#^§(param1:Number, param2:Number, param3:§>"T§) : void
      {
         var _loc10_:§[# § = null;
         if(param1 == 0 && param2 == 0)
         {
            this.§5!v§ = true;
            return;
         }
         this.§5!v§ = false;
         var _loc4_:Number = Math.sqrt(param1 * param1 + param2 * param2);
         var _loc5_:Number = -param1 / _loc4_;
         var _loc6_:Number = param2 / _loc4_;
         var _loc7_:Number = getBody().GetPosition().x;
         var _loc8_:Number = getBody().GetPosition().y;
         var _loc9_:§[# §;
         (_loc9_ = §[# §(param3.addObject("BIRD_BLUE",_loc7_ - _loc6_,_loc8_ - _loc5_,0,§%"^§.ID_NEXT_FREE,true,false,false,scale))).§##M§ = §##M§;
         _loc9_.§+!!§(new b2Vec2(param1 - 7 * _loc6_,param2 - 7 * _loc5_));
         _loc9_.isLeavingTrail = true;
         _loc9_.§<!x§ = §<!x§;
         _loc9_.§["@§(§1!;§());
         _loc9_.§]!L§(§^#^§());
         _loc9_.§5#W§(§]!Q§());
         _loc9_.§>"[§(§ if§);
         _loc9_.§&! §(§ "s§);
         (_loc10_ = §[# §(param3.addObject("BIRD_BLUE",_loc7_ + _loc6_,_loc8_ + _loc5_,0,§%"^§.ID_NEXT_FREE,true,false,false,scale))).§##M§ = §##M§;
         _loc10_.§+!!§(new b2Vec2(param1 + 7 * _loc6_,param2 + 7 * _loc5_));
         _loc10_.isLeavingTrail = true;
         _loc10_.§<!x§ = §<!x§;
         _loc10_.§["@§(§1!;§());
         _loc10_.§]!L§(§^#^§());
         _loc10_.§5#W§(§]!Q§());
         _loc10_.§>"[§(§ if§);
         _loc10_.§&! §(§ "s§);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(this.§5!v§)
         {
            this.§'#^§(getBody().GetLinearVelocity().x,getBody().GetLinearVelocity().y,param2);
         }
      }
   }
}
