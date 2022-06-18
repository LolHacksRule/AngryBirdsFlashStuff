package §[>§
{
   import §+!^§.§'Y§;
   import §4]§.b2World;
   import §8!C§.§%v§;
   import §8!C§.§2!4§;
   import §9!a§.Sprite;
   import §9T§.§=!^§;
   
   public class §0k§ extends §`,§
   {
      
      public static const §3!<§:int = 1750;
       
      
      private var §1y§:int = 0;
      
      public function §0k§(param1:§'!'§, param2:Sprite, param3:b2World, param4:§=!^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §<v§ = param12;
         §!"§ = param13;
      }
      
      override public function addDestructionParticles(param1:§2!4§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§`!<§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§#!9§.mW * §=!^§.§4#§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§#!9§.mH * §=!^§.§4#§) + Math.random() * -_loc8_ * 2;
            if(§<v§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §!"§);
               param1.§,!>§(§<v§ + "_" + _loc9_,§%v§.§<g§,§2!4§.§8!Q§,§%v§.§[H§,§7!<§().GetPosition().x + _loc7_,§7!<§().GetPosition().y + _loc8_,§3!<§ + Math.random() * 500,"",§!v§(§@!]§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§%v§.§<g§,§2!4§.§8!Q§,§%v§.§[H§,§7!<§().GetPosition().x + _loc7_,§7!<§().GetPosition().y + _loc8_,§3!<§ + Math.random() * 500,"",§!v§(§@!]§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§2!4§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§=!^§ = §'Y§.§@j§;
         if(§8!?§ < §6!_§ || §7!<§() == null)
         {
            _loc1_.§3r§(this);
            _loc1_.§?!2§ = false;
            return;
         }
         var _loc2_:Number = x * §=!^§.§4#§;
         var _loc3_:Number = y * §=!^§.§4#§;
         var _loc4_:String = §%v§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§1y§ == 1)
         {
            _loc4_ = §%v§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§1y§ == 2)
         {
            _loc4_ = §%v§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§1y§ = (this.§1y§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§2!4§.§ !N§,§%v§.§&!0§,_loc2_,_loc3_,-1,"",§%v§.§`<§);
      }
   }
}
