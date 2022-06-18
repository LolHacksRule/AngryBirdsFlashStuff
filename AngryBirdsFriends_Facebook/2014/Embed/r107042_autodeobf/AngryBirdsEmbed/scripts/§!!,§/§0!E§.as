package §!!,§
{
   import §!D§.§5O§;
   import §!D§.§7D§;
   import §#!@§.Sprite;
   import §6h§.§[!4§;
   import §9s§.§[!?§;
   import §9s§.§^9§;
   import §;!'§.§4&§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §0!E§ extends §^=§
   {
      
      protected static const §5E§:Boolean = false;
      
      protected static const §%Y§:Number = 2000;
      
      protected static const §>U§:Number = 0.2;
       
      
      private var §<e§:Number;
      
      protected var §,!N§:Boolean = false;
      
      protected var §[3§:int = 0;
      
      public function §0!E§(param1:§^!0§, param2:Sprite, param3:b2World, param4:§^9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §!t§.mTryToScream = §?q§.§26§ + 1;
         }
      }
      
      public static function §`<§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §[!4§.§continue§.particles.§5!&§("STAR_PARTICLE",§7D§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§7D§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §-!A§() : Boolean
      {
         return this.§,!N§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.bullet = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§;U§ < §!d§ && §;!"§())
         {
            this.§<e§ += param1;
            if(this.§<e§ >= §%Y§)
            {
               return true;
            }
         }
         else
         {
            this.§<e§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§,!N§)
         {
            if(§#+§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§#+§.toUpperCase() == "BIRD_YELLOW" || §#+§.toUpperCase() == "BIRD_GREEN" || §#+§.toUpperCase() == "BIRD_RED" || §#+§.toUpperCase() == "BIRD_RED_BIG" || §#+§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§!t§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§!t§.mTryToSpecial)
               {
                  §!t§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§!t§.mTryToSpecial)
            {
               §!t§.mTryToSpecial = false;
               if(§!t§.mIsSpecial)
               {
                  §!t§.mIsSpecial = false;
                  _loc2_ = true;
               }
            }
         }
         return _loc2_;
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = false;
         if(§ 7§().IsAwake() && §;U§ == §!d§)
         {
            if(!§!t§.mTryToFly)
            {
               §!t§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§#+§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§,!N§ ? 2 : 1) * 360 / 1000;
               §3T§(§-c§() - _loc3_);
            }
            else if(!(§#+§.toUpperCase() == "BIRD_WHITE" && this.§,!N§))
            {
               if(§5E§)
               {
                  §[F§();
               }
               else if(!§]!C§() && !§9x§())
               {
                  §3T§(0);
               }
            }
         }
         else if(§!t§.mTryToFly)
         {
            §!t§.mTryToFly = false;
            if(§!t§.mIsFlying)
            {
               §!t§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§^9§ = §[!4§.§continue§;
         if(§;U§ < §!d§ || § 7§() == null)
         {
            _loc1_.§-$§(this);
            _loc1_.§;m§ = false;
            return;
         }
         var _loc2_:Number = x * §^9§.§5T§;
         var _loc3_:Number = y * §^9§.§5T§;
         if(_loc1_.§;m§)
         {
            _loc1_.particles.§3S§(§7D§.§!!K§,§5O§.§#!K§,§7D§.§+!L§,_loc2_,_loc3_,-1,"",§7D§.§-N§);
            _loc1_.§;m§ = false;
            this.§[3§ = 0;
         }
         else if(§`!7§ > 1)
         {
            _loc1_.particles.§3S§(§7D§.§"d§,§5O§.§#!K§,§7D§.§+!L§,_loc2_,_loc3_,-1,"",§7D§.§-N§);
         }
         else
         {
            _loc4_ = §7D§.PARTICLE_NAME_BIRD_TRAIL1;
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
         if(_loc1_.slingshot.§implements§())
         {
            §`<§(_loc2_,_loc3_,0,3,10);
         }
         if(§5!2§() > §[!?§.§-i§ && Math.random() < §>U§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§3S§(§7D§.§!W§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,§ 7§().GetPosition().x,§ 7§().GetPosition().y,1250,"",§7D§.getParticleMaterialFromEngineMaterial(§#+§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§!t§.mTryToFly)
         {
            §<!I§(§4&§.§]t§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§^!0§) : Boolean
      {
         if(this.§,!N§)
         {
            return false;
         }
         §<!I§(§4&§.§8!I§);
         this.§,!N§ = true;
         return true;
      }
      
      private function §+,§(param1:int) : int
      {
         return Math.min(§[!4§.§continue§.§#!#§,param1);
      }
      
      override public function addDestructionParticles(param1:§5O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §,!@§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§+,§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§!t§.mW * §^9§.§5T§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§!t§.mH * §^9§.§5T§) + Math.random() * -_loc8_ * 2;
            param1.§3S§(§7D§.§!W§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,§ 7§().GetPosition().x + _loc7_,§ 7§().GetPosition().y + _loc8_,1500,"",§7D§.getParticleMaterialFromEngineMaterial(§#+§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5O§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§9x§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §5!2§() / 10;
         var _loc4_:int = 1 + _loc3_ * §,!@§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§+,§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§3S§(§7D§.§[N§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,§ 7§().GetPosition().x,§ 7§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§3S§(§7D§.§!W§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,§ 7§().GetPosition().x,§ 7§().GetPosition().y,1250,"",§7D§.getParticleMaterialFromEngineMaterial(§#+§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
