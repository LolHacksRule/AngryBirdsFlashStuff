package §#B§
{
   import § y§.b2World;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §2!G§.§2!V§;
   import §;A§.§7!K§;
   import §<!$§.Sprite;
   
   public class §<%§ extends § ]§
   {
       
      
      private var §5!a§:int = 0;
      
      public function §<%§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§]s§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§62§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§#8§.mW * §2!V§.§-!3§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§#8§.mH * §2!V§.§-!3§) + Math.random() * -_loc8_ * 2;
            param1.§;!V§(§&!^§.§1L§,§]s§.§0!E§,§&!^§.§7!L§,§4g§().GetPosition().x + _loc7_,§4g§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§&!^§.§5F§(§3a§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§]s§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§2!V§ = §7!K§.§=j§;
         if(§=1§ < §?G§ || §4g§() == null)
         {
            _loc1_.§7D§(this);
            _loc1_.§1!#§ = false;
            return;
         }
         var _loc2_:Number = x * §2!V§.§-!3§;
         var _loc3_:Number = y * §2!V§.§-!3§;
         var _loc4_:String = §&!^§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§5!a§ == 1)
         {
            _loc4_ = §&!^§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§5!a§ == 2)
         {
            _loc4_ = §&!^§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§5!a§ = (this.§5!a§ + 1) % 3;
         _loc1_.particles.§;!V§(_loc4_,§]s§.§'!Z§,§&!^§.§>k§,_loc2_,_loc3_,-1,"",§&!^§.§%u§);
      }
   }
}
