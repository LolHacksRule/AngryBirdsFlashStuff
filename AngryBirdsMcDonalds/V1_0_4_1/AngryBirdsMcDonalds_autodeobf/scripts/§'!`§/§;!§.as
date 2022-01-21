package §'!`§
{
   import §%!5§.§7;§;
   import §-0§.b2World;
   import §0@§.Sprite;
   import §55§.§>![§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   
   public class §;!§ extends §%!H§
   {
      
      public static const §0t§:int = 1750;
       
      
      private var §%y§:int = 0;
      
      public function §;!§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §8!8§ = param12;
         §1G§ = param13;
      }
      
      override public function addDestructionParticles(param1:§,!j§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§ !$§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§@!5§.mW * §>![§.§%!k§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§@!5§.mH * §>![§.§%!k§) + Math.random() * -_loc8_ * 2;
            if(§8!8§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §1G§);
               param1.§"_§(§8!8§ + "_" + _loc9_,§3!f§.§#!9§,§,!j§.§++§,§3!f§.§"!&§,§&!p§().GetPosition().x + _loc7_,§&!p§().GetPosition().y + _loc8_,§0t§ + Math.random() * 500,"",§-!Z§(§8+§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§4!2§(§3!f§.§#!9§,§,!j§.§++§,§3!f§.§"!&§,§&!p§().GetPosition().x + _loc7_,§&!p§().GetPosition().y + _loc8_,§0t§ + Math.random() * 500,"",§-!Z§(§8+§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,!j§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§>![§ = §7;§.§1h§;
         if(§0!8§ < §6w§ || §&!p§() == null)
         {
            _loc1_.§!E§(this);
            _loc1_.§`!a§ = false;
            return;
         }
         var _loc2_:Number = x * §>![§.§%!k§;
         var _loc3_:Number = y * §>![§.§%!k§;
         var _loc4_:String = §3!f§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§%y§ == 1)
         {
            _loc4_ = §3!f§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§%y§ == 2)
         {
            _loc4_ = §3!f§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§%y§ = (this.§%y§ + 1) % 3;
         _loc1_.particles.§4!2§(_loc4_,§,!j§.§`!F§,§3!f§.§%<§,_loc2_,_loc3_,-1,"",§3!f§.§[0§);
      }
   }
}
