package §?!8§
{
   import §#+§.§6!C§;
   import §#+§.§@!<§;
   import §2E§.§96§;
   import §90§.Sprite;
   import §>!O§.§[+§;
   import §`!4§.§6l§;
   import §`!4§.§^H§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §-!1§ extends §!]§
   {
      
      protected static const §"@§:Boolean = false;
      
      protected static const §;!N§:Number = 2000;
      
      protected static const §-S§:Number = 0.2;
       
      
      private var §[g§:Number;
      
      protected var §null§:Boolean = false;
      
      protected var §#>§:int = 0;
      
      public function §-!1§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §2W§.mTryToScream = §=0§.§<`§ + 1;
         }
      }
      
      public static function §[w§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §[+§.§,!&§.particles.§1!7§("STAR_PARTICLE",§@!<§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§@!<§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §8!2§() : Boolean
      {
         return this.§null§;
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
         if(§`]§ < §+D§ && §<!@§())
         {
            this.§[g§ += param1;
            if(this.§[g§ >= §;!N§)
            {
               return true;
            }
         }
         else
         {
            this.§[g§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§null§)
         {
            if(§4h§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§4h§.toUpperCase() == "BIRD_YELLOW" || §4h§.toUpperCase() == "BIRD_GREEN" || §4h§.toUpperCase() == "BIRD_RED" || §4h§.toUpperCase() == "BIRD_RED_BIG" || §4h§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§2W§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§2W§.mTryToSpecial)
               {
                  §2W§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§2W§.mTryToSpecial)
            {
               §2W§.mTryToSpecial = false;
               if(§2W§.mIsSpecial)
               {
                  §2W§.mIsSpecial = false;
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
         if(§<!9§().IsAwake() && §`]§ == §+D§)
         {
            if(!§2W§.mTryToFly)
            {
               §2W§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§4h§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§null§ ? 2 : 1) * 360 / 1000;
               §%!§(§+%§() - _loc3_);
            }
            else if(!(§4h§.toUpperCase() == "BIRD_WHITE" && this.§null§))
            {
               if(§"@§)
               {
                  §>!>§();
               }
               else if(!§[!@§() && !§4B§())
               {
                  §%!§(0);
               }
            }
         }
         else if(§2W§.mTryToFly)
         {
            §2W§.mTryToFly = false;
            if(§2W§.mIsFlying)
            {
               §2W§.mIsFlying = false;
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
         var _loc1_:§6l§ = §[+§.§,!&§;
         if(§`]§ < §+D§ || §<!9§() == null)
         {
            _loc1_.§5i§(this);
            _loc1_.§2?§ = false;
            return;
         }
         var _loc2_:Number = x * §6l§.§%!<§;
         var _loc3_:Number = y * §6l§.§%!<§;
         if(_loc1_.§2?§)
         {
            _loc1_.particles.§-!$§(§@!<§.§ !D§,§6!C§.§ l§,§@!<§.§50§,_loc2_,_loc3_,-1,"",§@!<§.§[U§);
            _loc1_.§2?§ = false;
            this.§#>§ = 0;
         }
         else if(§>=§ > 1)
         {
            _loc1_.particles.§-!$§(§@!<§.§!! §,§6!C§.§ l§,§@!<§.§50§,_loc2_,_loc3_,-1,"",§@!<§.§[U§);
         }
         else
         {
            _loc4_ = §@!<§.PARTICLE_NAME_BIRD_TRAIL1;
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
         if(_loc1_.slingshot.§<!+§())
         {
            §[w§(_loc2_,_loc3_,0,3,10);
         }
         if(§?!+§() > §^H§.§=^§ && Math.random() < §-S§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§-!$§(§@!<§.§!;§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,§<!9§().GetPosition().x,§<!9§().GetPosition().y,1250,"",§@!<§.getParticleMaterialFromEngineMaterial(§4h§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§2W§.mTryToFly)
         {
            §;o§(§96§.§2%§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§#K§) : Boolean
      {
         if(this.§null§)
         {
            return false;
         }
         §;o§(§96§.§3!=§);
         this.§null§ = true;
         return true;
      }
      
      private function §&g§(param1:int) : int
      {
         return Math.min(§[+§.§,!&§.§5!$§,param1);
      }
      
      override public function addDestructionParticles(param1:§6!C§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §?E§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§&g§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2W§.mW * §6l§.§%!<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2W§.mH * §6l§.§%!<§) + Math.random() * -_loc8_ * 2;
            param1.§-!$§(§@!<§.§!;§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,§<!9§().GetPosition().x + _loc7_,§<!9§().GetPosition().y + _loc8_,1500,"",§@!<§.getParticleMaterialFromEngineMaterial(§4h§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§6!C§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§4B§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §?!+§() / 10;
         var _loc4_:int = 1 + _loc3_ * §?E§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§&g§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§-!$§(§@!<§.§,6§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,§<!9§().GetPosition().x,§<!9§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§-!$§(§@!<§.§!;§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,§<!9§().GetPosition().x,§<!9§().GetPosition().y,1250,"",§@!<§.getParticleMaterialFromEngineMaterial(§4h§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
