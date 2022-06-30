package §9!T§
{
   import §+D§.§5!P§;
   import §+D§.§5@§;
   import §3-§.§1L§;
   import §8!I§.§4A§;
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §?!F§.b2BodyDef;
   import §?!F§.b2World;
   import §[=§.Sprite;
   
   public class §5g§ extends §-!B§
   {
      
      protected static const §7!E§:Boolean = false;
      
      protected static const §-W§:Number = 2000;
      
      protected static const §1u§:Number = 0.2;
       
      
      private var §4!,§:Number;
      
      private var §6O§:Boolean = false;
      
      protected var § !U§:int = 0;
      
      public function §5g§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §1I§.mTryToScream = §@1§.§2!W§ + 1;
         }
      }
      
      public function get §,u§() : Boolean
      {
         return this.§6O§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§+l§ = true;
         _loc3_.§;!%§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§1K§ < §0!a§ && §?!Q§())
         {
            this.§4!,§ += param1;
            if(this.§4!,§ >= §-W§)
            {
               return true;
            }
         }
         else
         {
            this.§4!,§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§6O§)
         {
            if(§%!1§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§%!1§.toUpperCase() == "BIRD_YELLOW" || §%!1§.toUpperCase() == "BIRD_GREEN" || §%!1§.toUpperCase() == "BIRD_RED" || §%!1§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§1I§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§1I§.mTryToSpecial)
               {
                  §1I§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§1I§.mTryToSpecial)
            {
               §1I§.mTryToSpecial = false;
               if(§1I§.mIsSpecial)
               {
                  §1I§.mIsSpecial = false;
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
         if(§<k§().IsAwake() && §1K§ == §0!a§)
         {
            if(!§1I§.mTryToFly)
            {
               §1I§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§%!1§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§6O§ ? 2 : 1) * 360 / 1000;
               §;G§(§0b§() - _loc3_);
            }
            else if(!(§%!1§.toUpperCase() == "BIRD_WHITE" && this.§6O§))
            {
               if(§7!E§)
               {
                  §1!>§();
               }
               else if(!§9!C§() && !§ !S§())
               {
                  §;G§(0);
               }
            }
         }
         else if(§1I§.mTryToFly)
         {
            §1I§.mTryToFly = false;
            if(§1I§.mIsFlying)
            {
               §1I§.mIsFlying = false;
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
         var _loc1_:§5!P§ = §1L§.§"f§;
         if(§1K§ < §0!a§ || §<k§() == null)
         {
            _loc1_.§0!#§(this);
            _loc1_.§`>§ = false;
            return;
         }
         var _loc2_:Number = x * §5!P§.§>M§;
         var _loc3_:Number = y * §5!P§.§>M§;
         if(_loc1_.§`>§)
         {
            _loc1_.particles.addParticle(§^!U§.§3C§,§[,§.§<z§,§^!U§.§=L§,_loc2_,_loc3_,-1,"",§^!U§.§+>§);
            _loc1_.§`>§ = false;
            this.§ !U§ = 0;
         }
         else if(§9j§ > 1)
         {
            _loc1_.particles.addParticle(§^!U§.§,p§,§[,§.§<z§,§^!U§.§=L§,_loc2_,_loc3_,-1,"",§^!U§.§+>§);
         }
         else
         {
            _loc4_ = §^!U§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§ !U§ == 1)
            {
               _loc4_ = §^!U§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§ !U§ == 2)
            {
               _loc4_ = §^!U§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§ !U§ = (this.§ !U§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§[,§.§<z§,§^!U§.§=L§,_loc2_,_loc3_,-1,"",§^!U§.§+>§);
         }
         if(§^1§() > §5@§.§2!$§ && Math.random() < §1u§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§^!U§.§5!L§,§[,§.§'k§,§^!U§.§&6§,§<k§().GetPosition().x,§<k§().GetPosition().y,1250,"",§^!U§.§1!2§(§%!1§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§1I§.mTryToFly)
         {
            §1!#§(§4A§.§"!$§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§;!_§) : Boolean
      {
         if(this.§6O§)
         {
            return false;
         }
         §1!#§(§4A§.§#n§);
         this.§6O§ = true;
         return true;
      }
      
      private function §6!G§(param1:int) : int
      {
         return Math.min(§1L§.§"f§.§`6§,param1);
      }
      
      override public function addDestructionParticles(param1:§[,§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §&@§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§6!G§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§1I§.mW * §5!P§.§>M§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§1I§.mH * §5!P§.§>M§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§^!U§.§5!L§,§[,§.§'k§,§^!U§.§&6§,§<k§().GetPosition().x + _loc7_,§<k§().GetPosition().y + _loc8_,1500,"",§^!U§.§1!2§(§%!1§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§[,§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§ !S§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §^1§() / 10;
         var _loc4_:int = 1 + _loc3_ * §&@§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§6!G§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§^!U§.§4>§,§[,§.§'k§,§^!U§.§&6§,§<k§().GetPosition().x,§<k§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§^!U§.§5!L§,§[,§.§'k§,§^!U§.§&6§,§<k§().GetPosition().x,§<k§().GetPosition().y,1250,"",§^!U§.§1!2§(§%!1§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
