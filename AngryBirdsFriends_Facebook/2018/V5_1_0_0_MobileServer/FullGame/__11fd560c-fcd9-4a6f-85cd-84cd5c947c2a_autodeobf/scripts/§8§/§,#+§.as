package §8§#8
{
   import § "%§.b2Vec2;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §,#+§ extends §?$%§
   {
       
      
      private var §3"J§:Boolean;
      
      public function §,#+§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§3"J§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§`$"§());
         var _loc4_:Number = 1 * Math.cos(§`$"§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§&#V§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = getBody().GetLinearVelocity().x;
         var _loc5_:Number = getBody().GetLinearVelocity().y;
         this.§@$;§(_loc4_,_loc5_,param1);
      }
      
      private function §@$;§(param1:Number, param2:Number, param3:§&#V§) : void
      {
         var _loc10_:§?$%§ = null;
         if(param1 == 0 && param2 == 0)
         {
            this.§3"J§ = true;
            return;
         }
         this.§3"J§ = false;
         var _loc4_:Number = Math.sqrt(param1 * param1 + param2 * param2);
         var _loc5_:Number = -param1 / _loc4_;
         var _loc6_:Number = param2 / _loc4_;
         var _loc7_:Number = getBody().GetPosition().x;
         var _loc8_:Number = getBody().GetPosition().y;
         var _loc9_:§?$%§;
         (_loc9_ = §?$%§(param3.addObject("BIRD_BLUE",_loc7_ - _loc6_,_loc8_ - _loc5_,0,§!#L§.ID_NEXT_FREE,true,false,false,scale))).§&"g§ = §&"g§;
         _loc9_.§5"[§(new b2Vec2(param1 - 7 * _loc6_,param2 - 7 * _loc5_));
         _loc9_.isLeavingTrail = true;
         _loc9_.§>"H§ = §>"H§;
         _loc9_.§8!f§(§@"g§());
         _loc9_.§ !W§(§"$'§());
         _loc9_.§3!u§(§[$,§());
         _loc9_.§]#'§(§'#7§);
         _loc9_.§?!V§(§5!o§);
         (_loc10_ = §?$%§(param3.addObject("BIRD_BLUE",_loc7_ + _loc6_,_loc8_ + _loc5_,0,§!#L§.ID_NEXT_FREE,true,false,false,scale))).§&"g§ = §&"g§;
         _loc10_.§5"[§(new b2Vec2(param1 + 7 * _loc6_,param2 + 7 * _loc5_));
         _loc10_.isLeavingTrail = true;
         _loc10_.§>"H§ = §>"H§;
         _loc10_.§8!f§(§@"g§());
         _loc10_.§ !W§(§"$'§());
         _loc10_.§3!u§(§[$,§());
         _loc10_.§]#'§(§'#7§);
         _loc10_.§?!V§(§5!o§);
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         if(this.§3"J§)
         {
            this.§@$;§(getBody().GetLinearVelocity().x,getBody().GetLinearVelocity().y,param2);
         }
      }
   }
}
