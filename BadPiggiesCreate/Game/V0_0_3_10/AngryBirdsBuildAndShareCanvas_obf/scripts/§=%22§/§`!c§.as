package §="§
{
   import §1U§.§"!V§;
   import §4!s§.§%I§;
   import §<f§.§3!8§;
   import §<f§.§7!0§;
   import §^I§.Sprite;
   import §`]§.b2World;
   
   public class §`!c§ extends §`T§
   {
      
      public static const §?d§:int = 1750;
       
      
      private var §=g§:int = 0;
      
      public function §`!c§(param1:§="-§, param2:Sprite, param3:b2World, param4:§%I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §^Z§ = param12;
         §+7§ = param13;
      }
      
      override public function addDestructionParticles(param1:§3!8§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§9p§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§7!w§.mW * §%I§.§9"4§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§7!w§.mH * §%I§.§9"4§) + Math.random() * -_loc8_ * 2;
            if(§^Z§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §+7§);
               param1.§7!7§(§^Z§ + "_" + _loc9_,§7!0§.§8!!§,§3!8§.§^D§,§7!0§.§3!!§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§?d§ + Math.random() * 500,"",§@",§(§'!l§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§`!N§(§7!0§.§8!!§,§3!8§.§^D§,§7!0§.§3!!§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§?d§ + Math.random() * 500,"",§@",§(§'!l§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3!8§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§%I§ = §"!V§.§!j§;
         if(§+!_§ < §4>§ || getBody() == null)
         {
            _loc1_.§-!N§(this);
            _loc1_.§9q§ = false;
            return;
         }
         var _loc2_:Number = x * §%I§.§9"4§;
         var _loc3_:Number = y * §%I§.§9"4§;
         var _loc4_:String = §7!0§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§=g§ == 1)
         {
            _loc4_ = §7!0§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§=g§ == 2)
         {
            _loc4_ = §7!0§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§=g§ = (this.§=g§ + 1) % 3;
         _loc1_.particles.§`!N§(_loc4_,§3!8§.§-!#§,§7!0§.§&i§,_loc2_,_loc3_,-1,"",§7!0§.§+!2§);
      }
   }
}
