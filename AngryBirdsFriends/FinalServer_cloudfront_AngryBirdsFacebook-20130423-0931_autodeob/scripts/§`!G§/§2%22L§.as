package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §-f§.§[!J§;
   import §4!<§.§&=§;
   import §4!<§.§'!S§;
   import §6"1§.b2BodyDef;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §2"L§ extends §<N§
   {
      
      protected static const §"w§:Boolean = false;
      
      protected static const §false§:Number = 2000;
      
      protected static const §'"@§:Number = 0.2;
       
      
      private var §"!7§:Number;
      
      protected var §<k§:Boolean = false;
      
      protected var §%b§:int = 0;
      
      public function §2"L§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §2!8§.mTryToScream = §+T§.§<!t§ + 1;
         }
      }
      
      public static function §"x§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §?l§.§'h§.particles.§@6§("STAR_PARTICLE",§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §#P§() : Boolean
      {
         return this.§<k§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§1p§ = true;
         _loc3_.§6"9§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§ d§ < §^!2§ && §]!!§())
         {
            this.§"!7§ += param1;
            if(this.§"!7§ >= §false§)
            {
               return true;
            }
         }
         else
         {
            this.§"!7§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§<k§)
         {
            if(§@x§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§@x§.toUpperCase() == "BIRD_YELLOW" || §@x§.toUpperCase() == "BIRD_GREEN" || §@x§.toUpperCase() == "BIRD_RED" || §@x§.toUpperCase() == "BIRD_RED_BIG" || §@x§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§2!8§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§2!8§.mTryToSpecial)
               {
                  §2!8§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§2!8§.mTryToSpecial)
            {
               §2!8§.mTryToSpecial = false;
               if(§2!8§.mIsSpecial)
               {
                  §2!8§.mIsSpecial = false;
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
         if(getBody().IsAwake() && § d§ == §^!2§)
         {
            if(!§2!8§.mTryToFly)
            {
               §2!8§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§@x§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§<k§ ? 2 : 1) * 360 / 1000;
               §6"!§(§,!c§() - _loc3_);
            }
            else if(!(§@x§.toUpperCase() == "BIRD_WHITE" && this.§<k§))
            {
               if(§"w§)
               {
                  §8"F§();
               }
               else if(!§8!1§() && !§#b§())
               {
                  §6"!§(0);
               }
            }
         }
         else if(§2!8§.mTryToFly)
         {
            §2!8§.mTryToFly = false;
            if(§2!8§.mIsFlying)
            {
               §2!8§.mIsFlying = false;
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
         var _loc1_:§'!S§ = §?l§.§'h§;
         if(§ d§ < §^!2§ || getBody() == null)
         {
            _loc1_.§-"?§(this);
            _loc1_.§!^§ = false;
            return;
         }
         var _loc2_:Number = x * §'!S§.§2"<§;
         var _loc3_:Number = y * §'!S§.§2"<§;
         if(_loc1_.§!^§)
         {
            _loc1_.particles.§"!J§(§0i§.§4"[§,§6!O§.§-4§,§0i§.§>!c§,_loc2_,_loc3_,-1,"",§0i§.§7!z§);
            _loc1_.§!^§ = false;
            this.§%b§ = 0;
         }
         else if(§-v§ > 1)
         {
            _loc1_.particles.§"!J§(§0i§.§%9§,§6!O§.§-4§,§0i§.§>!c§,_loc2_,_loc3_,-1,"",§0i§.§7!z§);
         }
         else
         {
            _loc4_ = §0i§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§%b§ == 1)
            {
               _loc4_ = §0i§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§%b§ == 2)
            {
               _loc4_ = §0i§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§%b§ = (this.§%b§ + 1) % 3;
            _loc1_.particles.§"!J§(_loc4_,§6!O§.§-4§,§0i§.§>!c§,_loc2_,_loc3_,-1,"",§0i§.§7!z§);
         }
         if(_loc1_.slingshot.§]K§())
         {
            §"x§(_loc2_,_loc3_,0,3,10);
         }
         if(§4"Q§() > §&=§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §'"@§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§0i§.getParticleMaterialFromEngineMaterial(§@x§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§2!8§.mTryToFly)
         {
            §8X§(§[!J§.§-8§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         if(this.§<k§)
         {
            return false;
         }
         §8X§(§[!J§.§]!+§);
         this.§<k§ = true;
         return true;
      }
      
      private function §continue§(param1:int) : int
      {
         return Math.min(§?l§.§'h§.§0!p§,param1);
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §`!A§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§continue§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2!8§.mW * §'!S§.§2"<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2!8§.mH * §'!S§.§2"<§) + Math.random() * -_loc8_ * 2;
            param1.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§0i§.getParticleMaterialFromEngineMaterial(§@x§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§#b§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §4"Q§() / 10;
         var _loc4_:int = 1 + _loc3_ * §`!A§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§continue§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§"!J§(§0i§.§'!N§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§0i§.getParticleMaterialFromEngineMaterial(§@x§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
