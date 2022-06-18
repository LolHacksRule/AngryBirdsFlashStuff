package §<[§
{
   import §"!E§.§#g§;
   import §"!E§.§9!E§;
   import §+!%§.§'!"§;
   import §->§.Sprite;
   import §-l§.§?'§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1d§ extends §>!4§
   {
       
      
      private var §@S§:int = 0;
      
      public function §1d§(param1:§6q§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§#g§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§-I§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2!0§.mW * §'!"§.§%!8§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2!0§.mH * §'!"§.§%!8§) + Math.random() * -_loc8_ * 2;
            param1.§#!&§(§9!E§.§`!3§,§#g§.§%!H§,§9!E§.§9u§,§27§().GetPosition().x + _loc7_,§27§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§9!E§.§2b§(§5!#§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§#g§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§'!"§ = §?'§.§5!§;
         if(§;%§ < §&?§ || §27§() == null)
         {
            _loc1_.§-!=§(this);
            _loc1_.§7!H§ = false;
            return;
         }
         var _loc2_:Number = x * §'!"§.§%!8§;
         var _loc3_:Number = y * §'!"§.§%!8§;
         var _loc4_:String = §9!E§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§@S§ == 1)
         {
            _loc4_ = §9!E§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§@S§ == 2)
         {
            _loc4_ = §9!E§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§@S§ = (this.§@S§ + 1) % 3;
         _loc1_.particles.§#!&§(_loc4_,§#g§.§-x§,§9!E§.§3l§,_loc2_,_loc3_,-1,"",§9!E§.§28§);
      }
   }
}
