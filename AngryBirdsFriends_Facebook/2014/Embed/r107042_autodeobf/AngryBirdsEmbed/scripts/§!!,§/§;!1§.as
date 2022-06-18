package §!!,§
{
   import §!D§.§5O§;
   import §!D§.§7D§;
   import §#!@§.Sprite;
   import §6h§.§[!4§;
   import §9s§.§^9§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;!1§ extends §`Q§
   {
      
      public static const §+!3§:int = 1750;
       
      
      private var §[3§:int = 0;
      
      public function §;!1§(param1:§^!0§, param2:Sprite, param3:b2World, param4:§^9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §-a§ = param12;
         §5]§ = param13;
      }
      
      override public function addDestructionParticles(param1:§5O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§,!@§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§!t§.mW * §^9§.§5T§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§!t§.mH * §^9§.§5T§) + Math.random() * -_loc8_ * 2;
            if(§-a§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §5]§);
               param1.§5!&§(§-a§ + "_" + _loc9_,§7D§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,§ 7§().GetPosition().x + _loc7_,§ 7§().GetPosition().y + _loc8_,§+!3§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§#+§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§3S§(§7D§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,§ 7§().GetPosition().x + _loc7_,§ 7§().GetPosition().y + _loc8_,§+!3§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§#+§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5O§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§^9§ = §[!4§.§continue§;
         if(§;U§ < §!d§ || § 7§() == null)
         {
            _loc1_.§-$§(this);
            _loc1_.§;m§ = false;
            return;
         }
         var _loc2_:Number = x * §^9§.§5T§;
         var _loc3_:Number = y * §^9§.§5T§;
         var _loc4_:String = §7D§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§[3§ == 1)
         {
            _loc4_ = §7D§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§[3§ == 2)
         {
            _loc4_ = §7D§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§[3§ = (this.§[3§ + 1) % 3;
         _loc1_.particles.§3S§(_loc4_,§5O§.§#!K§,§7D§.§+!L§,_loc2_,_loc3_,-1,"",§7D§.§-N§);
      }
   }
}
