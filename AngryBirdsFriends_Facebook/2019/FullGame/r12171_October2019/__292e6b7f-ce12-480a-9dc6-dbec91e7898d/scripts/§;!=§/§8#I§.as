package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §8#I§ extends §[!k§
   {
       
      
      private var §,$#§:Boolean;
      
      public function §8#I§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§,$#§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§3"W§());
         var _loc4_:Number = 1 * Math.cos(§3"W§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§]!m§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = getBody().GetLinearVelocity().x;
         var _loc5_:Number = getBody().GetLinearVelocity().y;
         this.§>"!§(_loc4_,_loc5_,param1);
      }
      
      private function §>"!§(param1:Number, param2:Number, param3:§]!m§) : void
      {
         var _loc10_:§[!k§ = null;
         if(param1 == 0 && param2 == 0)
         {
            this.§,$#§ = true;
            return;
         }
         this.§,$#§ = false;
         var _loc4_:Number = Math.sqrt(param1 * param1 + param2 * param2);
         var _loc5_:Number = -param1 / _loc4_;
         var _loc6_:Number = param2 / _loc4_;
         var _loc7_:Number = getBody().GetPosition().x;
         var _loc8_:Number = getBody().GetPosition().y;
         var _loc9_:§[!k§;
         (_loc9_ = §[!k§(param3.addObject("BIRD_BLUE",_loc7_ - _loc6_,_loc8_ - _loc5_,0,§ !i§.ID_NEXT_FREE,true,false,false,scale))).§?#r§ = §?#r§;
         _loc9_.§0"y§(new b2Vec2(param1 - 7 * _loc6_,param2 - 7 * _loc5_));
         _loc9_.isLeavingTrail = true;
         _loc9_.§@#z§ = §@#z§;
         _loc9_.§7"+§(§,A§());
         _loc9_.§6#$§(§7^§());
         _loc9_.§9&§(§6!o§());
         _loc9_.§<#%§(§9""§);
         _loc9_.§8X§(§^#Q§);
         (_loc10_ = §[!k§(param3.addObject("BIRD_BLUE",_loc7_ + _loc6_,_loc8_ + _loc5_,0,§ !i§.ID_NEXT_FREE,true,false,false,scale))).§?#r§ = §?#r§;
         _loc10_.§0"y§(new b2Vec2(param1 + 7 * _loc6_,param2 + 7 * _loc5_));
         _loc10_.isLeavingTrail = true;
         _loc10_.§@#z§ = §@#z§;
         _loc10_.§7"+§(§,A§());
         _loc10_.§6#$§(§7^§());
         _loc10_.§9&§(§6!o§());
         _loc10_.§<#%§(§9""§);
         _loc10_.§8X§(§^#Q§);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(this.§,$#§)
         {
            this.§>"!§(getBody().GetLinearVelocity().x,getBody().GetLinearVelocity().y,param2);
         }
      }
   }
}
