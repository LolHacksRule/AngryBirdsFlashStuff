package §9C§
{
   import §,!Q§.Sprite;
   import §,M§.§%C§;
   import §,M§.§,!;§;
   import §-v§.§,!1§;
   import §4A§.§&_§;
   import §4U§.b2World;
   
   public class §28§ extends §4!G§
   {
       
      
      private var § u§:int = 0;
      
      public function §28§(param1:§;,§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §9!c§ = param12;
         §1T§ = param13;
      }
      
      override public function addDestructionParticles(param1:§%C§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§!i§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5U§.mW * §&_§.§5-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5U§.mH * §&_§.§5-§) + Math.random() * -_loc8_ * 2;
            if(§9!c§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §1T§);
               param1.§&A§(§9!c§ + "_" + _loc9_,§,!;§.§[7§,§%C§.§5l§,§,!;§.§7s§,§@!?§().GetPosition().x + _loc7_,§@!?§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§%!$§(§!I§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§<%§(§,!;§.§[7§,§%C§.§5l§,§,!;§.§7s§,§@!?§().GetPosition().x + _loc7_,§@!?§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§%!$§(§!I§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§%C§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§&_§ = §,!1§.§2T§;
         if(§ b§ < §&=§ || §@!?§() == null)
         {
            _loc1_.§5#§(this);
            _loc1_.§+2§ = false;
            return;
         }
         var _loc2_:Number = x * §&_§.§5-§;
         var _loc3_:Number = y * §&_§.§5-§;
         var _loc4_:String = §,!;§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§ u§ == 1)
         {
            _loc4_ = §,!;§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§ u§ == 2)
         {
            _loc4_ = §,!;§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§ u§ = (this.§ u§ + 1) % 3;
         _loc1_.particles.§<%§(_loc4_,§%C§.§6%§,§,!;§.§;q§,_loc2_,_loc3_,-1,"",§,!;§.§@E§);
      }
   }
}
