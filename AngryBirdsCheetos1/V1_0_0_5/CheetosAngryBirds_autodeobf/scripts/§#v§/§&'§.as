package §#v§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.Sprite;
   import §!J§.§[&§;
   import §?!0§.b2World;
   import §?'§.§9N§;
   
   public class §&'§ extends §#3§
   {
       
      
      private var §9f§:int = 0;
      
      public function §&'§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§7!W§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§&c§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5-§.mW * §9N§.§8!5§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5-§.mH * §9N§.§8!5§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§?f§.§+H§,§7!W§.§'>§,§?f§.§"z§,§#a§().GetPosition().x + _loc7_,§#a§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§?f§.§+!Z§(§,!§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§7!W§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§9N§ = §[&§.§&!'§;
         if(§;!A§ < §]p§ || §#a§() == null)
         {
            _loc1_.§6!A§(this);
            _loc1_.§]!Q§ = false;
            return;
         }
         var _loc2_:Number = x * §9N§.§8!5§;
         var _loc3_:Number = y * §9N§.§8!5§;
         var _loc4_:String = §?f§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§9f§ == 1)
         {
            _loc4_ = §?f§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§9f§ == 2)
         {
            _loc4_ = §?f§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§9f§ = (this.§9f§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§7!W§.§&!>§,§?f§.§3!<§,_loc2_,_loc3_,-1,"",§?f§.§1U§);
      }
   }
}
