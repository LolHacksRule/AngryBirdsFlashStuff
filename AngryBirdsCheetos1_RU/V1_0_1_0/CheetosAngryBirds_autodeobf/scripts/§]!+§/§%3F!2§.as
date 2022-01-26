package §]!+§
{
   import §!!V§.§&I§;
   import §"!S§.§"_§;
   import §&!5§.Sprite;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §[x§.b2World;
   
   public class §?!2§ extends §";§
   {
      
      public static const §@X§:int = 1750;
       
      
      private var §!i§:int = 0;
      
      public function §?!2§(param1:§'§, param2:Sprite, param3:b2World, param4:§&I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §,v§ = param12;
         §7!T§ = param13;
      }
      
      override public function addDestructionParticles(param1:§7!H§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§=5§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§^!3§.mW * §&I§.§]!H§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§^!3§.mH * §&I§.§]!H§) + Math.random() * -_loc8_ * 2;
            if(§,v§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §7!T§);
               param1.§[H§(§,v§ + "_" + _loc9_,§"!U§.§-Z§,§7!H§.§]0§,§"!U§.§+6§,§?A§().GetPosition().x + _loc7_,§?A§().GetPosition().y + _loc8_,§@X§ + Math.random() * 500,"",§5U§(§+!J§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§"!U§.§-Z§,§7!H§.§]0§,§"!U§.§+6§,§?A§().GetPosition().x + _loc7_,§?A§().GetPosition().y + _loc8_,§@X§ + Math.random() * 500,"",§5U§(§+!J§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§7!H§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§&I§ = §"_§.§+!^§;
         if(§0!C§ < §6!;§ || §?A§() == null)
         {
            _loc1_.§,D§(this);
            _loc1_.§-![§ = false;
            return;
         }
         var _loc2_:Number = x * §&I§.§]!H§;
         var _loc3_:Number = y * §&I§.§]!H§;
         var _loc4_:String = §"!U§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§!i§ == 1)
         {
            _loc4_ = §"!U§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§!i§ == 2)
         {
            _loc4_ = §"!U§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§!i§ = (this.§!i§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§7!H§.§-Y§,§"!U§.§-C§,_loc2_,_loc3_,-1,"",§"!U§.§#!F§);
      }
   }
}
