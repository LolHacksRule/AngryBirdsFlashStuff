package §4n§
{
   import §#]§.§'5§;
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import §[!=§.§3r§;
   import §[!=§.§>Z§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5m§ extends §@!4§
   {
      
      public static const §8x§:int = 1750;
       
      
      private var § I§:int = 0;
      
      public function §5m§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §-Q§ = param12;
         §;!0§ = param13;
      }
      
      override public function addDestructionParticles(param1:§3r§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§<o§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§`V§.mW * §?!D§.§@!I§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§`V§.mH * §?!D§.§@!I§) + Math.random() * -_loc8_ * 2;
            if(§-Q§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §;!0§);
               param1.§"T§(§-Q§ + "_" + _loc9_,§>Z§.§6!E§,§3r§.§"H§,§>Z§.§%t§,§^C§().GetPosition().x + _loc7_,§^C§().GetPosition().y + _loc8_,§8x§ + Math.random() * 500,"",§'T§(§"!!§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§48§(§>Z§.§6!E§,§3r§.§"H§,§>Z§.§%t§,§^C§().GetPosition().x + _loc7_,§^C§().GetPosition().y + _loc8_,§8x§ + Math.random() * 500,"",§'T§(§"!!§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3r§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§?!D§ = §'5§.§^;§;
         if(§'s§ < §@g§ || §^C§() == null)
         {
            _loc1_.§<<§(this);
            _loc1_.§=6§ = false;
            return;
         }
         var _loc2_:Number = x * §?!D§.§@!I§;
         var _loc3_:Number = y * §?!D§.§@!I§;
         var _loc4_:String = §>Z§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§ I§ == 1)
         {
            _loc4_ = §>Z§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§ I§ == 2)
         {
            _loc4_ = §>Z§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§ I§ = (this.§ I§ + 1) % 3;
         _loc1_.particles.§48§(_loc4_,§3r§.§+W§,§>Z§.§5T§,_loc2_,_loc3_,-1,"",§>Z§.§]9§);
      }
   }
}
