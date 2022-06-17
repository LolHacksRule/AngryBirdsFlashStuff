package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §4!2§ extends §5"W§
   {
       
      
      private var §[G§:Boolean;
      
      public function §4!2§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§[G§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§30§());
         var _loc4_:Number = 1 * Math.cos(§30§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§ #'§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = getBody().GetLinearVelocity().x;
         var _loc5_:Number = getBody().GetLinearVelocity().y;
         this.§=H§(_loc4_,_loc5_,param1);
      }
      
      private function §=H§(param1:Number, param2:Number, param3:§ #'§) : void
      {
         var _loc10_:§5"W§ = null;
         if(param1 == 0 && param2 == 0)
         {
            this.§[G§ = true;
            return;
         }
         this.§[G§ = false;
         var _loc4_:Number = Math.sqrt(param1 * param1 + param2 * param2);
         var _loc5_:Number = -param1 / _loc4_;
         var _loc6_:Number = param2 / _loc4_;
         var _loc7_:Number = getBody().GetPosition().x;
         var _loc8_:Number = getBody().GetPosition().y;
         var _loc9_:§5"W§;
         (_loc9_ = §5"W§(param3.addObject("BIRD_BLUE",_loc7_ - _loc6_,_loc8_ - _loc5_,0,§7S§.ID_NEXT_FREE,true,false,false,scale))).§<#r§ = §<#r§;
         _loc9_.§ #+§(new b2Vec2(param1 - 7 * _loc6_,param2 - 7 * _loc5_));
         _loc9_.isLeavingTrail = true;
         _loc9_.§&"X§ = §&"X§;
         _loc9_.§0!D§(§#!3§());
         _loc9_.§="C§(§85§());
         _loc9_.§1!E§(§0j§());
         _loc9_.§,!9§(§&?§);
         _loc9_.§=!8§(§2"c§);
         (_loc10_ = §5"W§(param3.addObject("BIRD_BLUE",_loc7_ + _loc6_,_loc8_ + _loc5_,0,§7S§.ID_NEXT_FREE,true,false,false,scale))).§<#r§ = §<#r§;
         _loc10_.§ #+§(new b2Vec2(param1 + 7 * _loc6_,param2 + 7 * _loc5_));
         _loc10_.isLeavingTrail = true;
         _loc10_.§&"X§ = §&"X§;
         _loc10_.§0!D§(§#!3§());
         _loc10_.§="C§(§85§());
         _loc10_.§1!E§(§0j§());
         _loc10_.§,!9§(§&?§);
         _loc10_.§=!8§(§2"c§);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(this.§[G§)
         {
            this.§=H§(getBody().GetLinearVelocity().x,getBody().GetLinearVelocity().y,param2);
         }
      }
   }
}
