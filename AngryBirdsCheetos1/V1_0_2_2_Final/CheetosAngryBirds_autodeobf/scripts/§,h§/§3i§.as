package §,h§
{
   import §!X§.§86§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §?m§.§7?§;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §3i§ extends §+0§
   {
       
      
      private var §"!?§:int = 0;
      
      public function §3i§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§<2§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§'!+§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2P§.mW * §86§.§7!4§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2P§.mH * §86§.§7!4§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§7o§.§6!D§,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x + _loc7_,§?!7§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§7o§.§3E§(§2!1§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§<2§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§86§ = §7?§.§4!H§;
         if(§,!&§ < §+?§ || §?!7§() == null)
         {
            _loc1_.§-M§(this);
            _loc1_.§+"§ = false;
            return;
         }
         var _loc2_:Number = x * §86§.§7!4§;
         var _loc3_:Number = y * §86§.§7!4§;
         var _loc4_:String = §7o§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§"!?§ == 1)
         {
            _loc4_ = §7o§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§"!?§ == 2)
         {
            _loc4_ = §7o§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§"!?§ = (this.§"!?§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§<2§.§&!H§,§7o§.§4;§,_loc2_,_loc3_,-1,"",§7o§.§]!4§);
      }
   }
}
