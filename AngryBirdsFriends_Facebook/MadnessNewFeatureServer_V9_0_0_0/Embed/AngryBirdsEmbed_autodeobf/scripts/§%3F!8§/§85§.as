package §?!8§
{
   import §#+§.§6!C§;
   import §#+§.§@!<§;
   import §90§.Sprite;
   import §>!O§.§[+§;
   import §`!4§.§6l§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §85§ extends §]f§
   {
      
      public static const § C§:int = 1750;
       
      
      private var §#>§:int = 0;
      
      public function §85§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §"!?§ = param12;
         §#0§ = param13;
      }
      
      override public function addDestructionParticles(param1:§6!C§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§?E§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2W§.mW * §6l§.§%!<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2W§.mH * §6l§.§%!<§) + Math.random() * -_loc8_ * 2;
            if(§"!?§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §#0§);
               param1.§1!7§(§"!?§ + "_" + _loc9_,§@!<§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,§<!9§().GetPosition().x + _loc7_,§<!9§().GetPosition().y + _loc8_,§ C§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§4h§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§-!$§(§@!<§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,§<!9§().GetPosition().x + _loc7_,§<!9§().GetPosition().y + _loc8_,§ C§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§4h§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§6!C§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§6l§ = §[+§.§,!&§;
         if(§`]§ < §+D§ || §<!9§() == null)
         {
            _loc1_.§5i§(this);
            _loc1_.§2?§ = false;
            return;
         }
         var _loc2_:Number = x * §6l§.§%!<§;
         var _loc3_:Number = y * §6l§.§%!<§;
         var _loc4_:String = §@!<§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§#>§ == 1)
         {
            _loc4_ = §@!<§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§#>§ == 2)
         {
            _loc4_ = §@!<§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§#>§ = (this.§#>§ + 1) % 3;
         _loc1_.particles.§-!$§(_loc4_,§6!C§.§ l§,§@!<§.§50§,_loc2_,_loc3_,-1,"",§@!<§.§[U§);
      }
   }
}
