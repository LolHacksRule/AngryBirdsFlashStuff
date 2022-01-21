package §%`§
{
   import §'a§.§0!f§;
   import §2!`§.§3F§;
   import §2!`§.§8!;§;
   import §3!g§.b2World;
   import §5x§.Sprite;
   import §9!W§.§=!@§;
   
   public class §`I§ extends §"s§
   {
      
      public static const §8!j§:int = 1750;
       
      
      private var §7§:int = 0;
      
      public function §`I§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §9O§ = param12;
         §5!d§ = param13;
      }
      
      override public function addDestructionParticles(param1:§3F§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§'k§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2R§.mW * §0!f§.§<C§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2R§.mH * §0!f§.§<C§) + Math.random() * -_loc8_ * 2;
            if(§9O§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §5!d§);
               param1.§%!9§(§9O§ + "_" + _loc9_,§8!;§.§'!D§,§3F§.§![§,§8!;§.§!!8§,§%9§().GetPosition().x + _loc7_,§%9§().GetPosition().y + _loc8_,§8!j§ + Math.random() * 500,"",§2!n§(§6!?§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§;!G§(§8!;§.§'!D§,§3F§.§![§,§8!;§.§!!8§,§%9§().GetPosition().x + _loc7_,§%9§().GetPosition().y + _loc8_,§8!j§ + Math.random() * 500,"",§2!n§(§6!?§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3F§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§0!f§ = §=!@§.§>!T§;
         if(§%!a§ < §"!j§ || §%9§() == null)
         {
            _loc1_.§1$§(this);
            _loc1_.§&![§ = false;
            return;
         }
         var _loc2_:Number = x * §0!f§.§<C§;
         var _loc3_:Number = y * §0!f§.§<C§;
         var _loc4_:String = §8!;§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§7§ == 1)
         {
            _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§7§ == 2)
         {
            _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§7§ = (this.§7§ + 1) % 3;
         _loc1_.particles.§;!G§(_loc4_,§3F§.§44§,§8!;§.§8M§,_loc2_,_loc3_,-1,"",§8!;§.§2!N§);
      }
   }
}
