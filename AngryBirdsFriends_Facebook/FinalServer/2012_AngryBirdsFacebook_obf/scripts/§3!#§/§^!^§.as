package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§5"L§;
   import §5!G§.§&2§;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §]!v§.Sprite;
   
   public class §^!^§ extends §5"A§
   {
      
      public static const §"!v§:int = 1750;
       
      
      private var §;%§:int = 0;
      
      public function §^!^§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §2!L§ = param12;
         §5![§ = param13;
      }
      
      override public function addDestructionParticles(param1:§3!p§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§+p§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<!K§.mW * §5"L§.§@>§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<!K§.mH * §5"L§.§@>§) + Math.random() * -_loc8_ * 2;
            if(§2!L§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §5![§);
               param1.§-!O§(§2!L§ + "_" + _loc9_,§4! §.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,§`!y§().GetPosition().x + _loc7_,§`!y§().GetPosition().y + _loc8_,§"!v§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§=-§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§`"6§(§4! §.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,§`!y§().GetPosition().x + _loc7_,§`!y§().GetPosition().y + _loc8_,§"!v§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§=-§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3!p§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§5"L§ = §&2§.§],§;
         if(§!!U§ < §3!A§ || §`!y§() == null)
         {
            _loc1_.§!!o§(this);
            _loc1_.§4!E§ = false;
            return;
         }
         var _loc2_:Number = x * §5"L§.§@>§;
         var _loc3_:Number = y * §5"L§.§@>§;
         var _loc4_:String = §4! §.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§;%§ == 1)
         {
            _loc4_ = §4! §.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§;%§ == 2)
         {
            _loc4_ = §4! §.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§;%§ = (this.§;%§ + 1) % 3;
         _loc1_.particles.§`"6§(_loc4_,§3!p§.§"z§,§4! §.§1!G§,_loc2_,_loc3_,-1,"",§4! §.§in §);
      }
   }
}
