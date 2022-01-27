package §'R§
{
   import §%"§.§ do§;
   import §;;§.§"!E§;
   import §;;§.§9"§;
   import §<!F§.§5!+§;
   import §<!N§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=j§ extends §&r§
   {
      
      public static const §>!+§:int = 1750;
       
      
      private var §'!>§:int = 0;
      
      public function §=j§(param1:§!m§, param2:Sprite, param3:b2World, param4:§ do§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §<@§ = param12;
         §1V§ = param13;
      }
      
      override public function addDestructionParticles(param1:§9"§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§[L§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§,q§.mW * § do§.§^!I§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§,q§.mH * § do§.§^!I§) + Math.random() * -_loc8_ * 2;
            if(§<@§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §1V§);
               param1.§0Z§(§<@§ + "_" + _loc9_,§"!E§.§2n§,§9"§.§`z§,§"!E§.§!b§,§<!I§().GetPosition().x + _loc7_,§<!I§().GetPosition().y + _loc8_,§>!+§ + Math.random() * 500,"",§3H§(§8!I§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§"!E§.§2n§,§9"§.§`z§,§"!E§.§!b§,§<!I§().GetPosition().x + _loc7_,§<!I§().GetPosition().y + _loc8_,§>!+§ + Math.random() * 500,"",§3H§(§8!I§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§9"§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§ do§ = §5!+§.§6!§;
         if(§3! § < §`!O§ || §<!I§() == null)
         {
            _loc1_.§[!@§(this);
            _loc1_.§`!A§ = false;
            return;
         }
         var _loc2_:Number = x * § do§.§^!I§;
         var _loc3_:Number = y * § do§.§^!I§;
         var _loc4_:String = §"!E§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§'!>§ == 1)
         {
            _loc4_ = §"!E§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§'!>§ == 2)
         {
            _loc4_ = §"!E§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§'!>§ = (this.§'!>§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§9"§.§8D§,§"!E§.§6&§,_loc2_,_loc3_,-1,"",§"!E§.§;[§);
      }
   }
}
