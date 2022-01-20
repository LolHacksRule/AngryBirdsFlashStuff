package §4j§
{
   import § !J§.§%M§;
   import §7F§.§2M§;
   import §8T§.b2World;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §`!n§.Sprite;
   
   public class §;!O§ extends §9M§
   {
      
      public static const §=!q§:int = 1750;
       
      
      private var §%5§:int = 0;
      
      public function §;!O§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §!!$§ = param12;
         § #§ = param13;
      }
      
      override public function addDestructionParticles(param1:§7!N§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§>+§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§%!$§.mW * §%M§.§'!Y§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§%!$§.mH * §%M§.§'!Y§) + Math.random() * -_loc8_ * 2;
            if(§!!$§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * § #§);
               param1.§9!-§(§!!$§ + "_" + _loc9_,§,]§.§&!§,§7!N§.§<!Z§,§,]§.§in §,§3H§().GetPosition().x + _loc7_,§3H§().GetPosition().y + _loc8_,§=!q§ + Math.random() * 500,"",§0!l§(§`!p§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§3X§(§,]§.§&!§,§7!N§.§<!Z§,§,]§.§in §,§3H§().GetPosition().x + _loc7_,§3H§().GetPosition().y + _loc8_,§=!q§ + Math.random() * 500,"",§0!l§(§`!p§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§7!N§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§%M§ = §2M§.§1?§;
         if(§4!6§ < §%!^§ || §3H§() == null)
         {
            _loc1_.§7g§(this);
            _loc1_.§5L§ = false;
            return;
         }
         var _loc2_:Number = x * §%M§.§'!Y§;
         var _loc3_:Number = y * §%M§.§'!Y§;
         var _loc4_:String = §,]§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§%5§ == 1)
         {
            _loc4_ = §,]§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§%5§ == 2)
         {
            _loc4_ = §,]§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§%5§ = (this.§%5§ + 1) % 3;
         _loc1_.particles.§3X§(_loc4_,§7!N§.§<E§,§,]§.§#r§,_loc2_,_loc3_,-1,"",§,]§.§!o§);
      }
   }
}
