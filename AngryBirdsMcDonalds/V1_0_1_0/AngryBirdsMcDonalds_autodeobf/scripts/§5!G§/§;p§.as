package §5!G§
{
   import §&!K§.§3b§;
   import §&!K§.§^!3§;
   import §1B§.b2World;
   import §2!g§.Sprite;
   import §2o§.§<H§;
   import §@!b§.§@!k§;
   
   public class §;p§ extends §6!Y§
   {
      
      public static const §'!L§:int = 1750;
       
      
      private var §^!>§:int = 0;
      
      public function §;p§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §1&§ = param12;
         §31§ = param13;
      }
      
      override public function addDestructionParticles(param1:§3b§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§+?§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8!J§.mW * §@!k§.§2!J§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8!J§.mH * §@!k§.§2!J§) + Math.random() * -_loc8_ * 2;
            if(§1&§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §31§);
               param1.§^!J§(§1&§ + "_" + _loc9_,§^!3§.§21§,§3b§.§;-§,§^!3§.§@<§,§>j§().GetPosition().x + _loc7_,§>j§().GetPosition().y + _loc8_,§'!L§ + Math.random() * 500,"",§ !N§(§@!i§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§"!S§(§^!3§.§21§,§3b§.§;-§,§^!3§.§@<§,§>j§().GetPosition().x + _loc7_,§>j§().GetPosition().y + _loc8_,§'!L§ + Math.random() * 500,"",§ !N§(§@!i§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3b§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§@!k§ = §<H§.§=3§;
         if(§%!C§ < §#!2§ || §>j§() == null)
         {
            _loc1_.§8!0§(this);
            _loc1_.§;U§ = false;
            return;
         }
         var _loc2_:Number = x * §@!k§.§2!J§;
         var _loc3_:Number = y * §@!k§.§2!J§;
         var _loc4_:String = §^!3§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§^!>§ == 1)
         {
            _loc4_ = §^!3§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§^!>§ == 2)
         {
            _loc4_ = §^!3§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§^!>§ = (this.§^!>§ + 1) % 3;
         _loc1_.particles.§"!S§(_loc4_,§3b§.§8]§,§^!3§.§6§,_loc2_,_loc3_,-1,"",§^!3§.§4g§);
      }
   }
}
