package §>Y§
{
   import §&b§.§[F§;
   import §4!-§.§%o§;
   import §4!-§.§2s§;
   import §86§.Sprite;
   import §<4§.§ try§;
   import §<4§.§5!C§;
   import §<Z§.§5!G§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5t§ extends §3M§
   {
      
      protected static const §3!7§:Boolean = false;
      
      protected static const §0!N§:Number = 2000;
      
      protected static const §]!'§:Number = 0.2;
       
      
      private var §8o§:Number;
      
      private var §,V§:Boolean = false;
      
      protected var §0c§:int = 0;
      
      public function §5t§(param1:§2>§, param2:Sprite, param3:b2World, param4:§%o§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §%!B§.mTryToScream = §^!,§.§'!?§ + 1;
         }
      }
      
      public function get §4!K§() : Boolean
      {
         return this.§,V§;
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
         if(§=4§ < §72§ && §9!2§())
         {
            this.§8o§ += param1;
            if(this.§8o§ >= §0!N§)
            {
               return true;
            }
         }
         else
         {
            this.§8o§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§,V§)
         {
            if(§]q§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§]q§.toUpperCase() == "BIRD_YELLOW" || §]q§.toUpperCase() == "BIRD_GREEN" || §]q§.toUpperCase() == "BIRD_RED" || §]q§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§%!B§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§%!B§.mTryToSpecial)
               {
                  §%!B§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§%!B§.mTryToSpecial)
            {
               §%!B§.mTryToSpecial = false;
               if(§%!B§.mIsSpecial)
               {
                  §%!B§.mIsSpecial = false;
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
         if(§[5§().IsAwake() && §=4§ == §72§)
         {
            if(!§%!B§.mTryToFly)
            {
               §%!B§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§]q§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§,V§ ? 2 : 1) * 360 / 1000;
               §2j§(§`,§() - _loc3_);
            }
            else if(!(§]q§.toUpperCase() == "BIRD_WHITE" && this.§,V§))
            {
               if(§3!7§)
               {
                  §%!H§();
               }
               else if(!§1H§() && !§2O§())
               {
                  §2j§(0);
               }
            }
         }
         else if(§%!B§.mTryToFly)
         {
            §%!B§.mTryToFly = false;
            if(§%!B§.mIsFlying)
            {
               §%!B§.mIsFlying = false;
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
         var _loc1_:§%o§ = §[F§.§9u§;
         if(§=4§ < §72§ || §[5§() == null)
         {
            _loc1_.§`!I§(this);
            _loc1_.§?6§ = false;
            return;
         }
         var _loc2_:Number = x * §%o§.§]!?§;
         var _loc3_:Number = y * §%o§.§]!?§;
         if(_loc1_.§?6§)
         {
            _loc1_.particles.addParticle(§5!C§.§;J§,§ try§.§`!+§,§5!C§.§?!'§,_loc2_,_loc3_,-1,"",§5!C§.§!E§);
            _loc1_.§?6§ = false;
            this.§0c§ = 0;
         }
         else if(§7!G§ > 1)
         {
            _loc1_.particles.addParticle(§5!C§.§[S§,§ try§.§`!+§,§5!C§.§?!'§,_loc2_,_loc3_,-1,"",§5!C§.§!E§);
         }
         else
         {
            _loc4_ = §5!C§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§0c§ == 1)
            {
               _loc4_ = §5!C§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§0c§ == 2)
            {
               _loc4_ = §5!C§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§0c§ = (this.§0c§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§ try§.§`!+§,§5!C§.§?!'§,_loc2_,_loc3_,-1,"",§5!C§.§!E§);
         }
         if(§;G§() > §2s§.§3G§ && Math.random() < §]!'§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§5!C§.§-!E§,§ try§.§4!+§,§5!C§.§'! §,§[5§().GetPosition().x,§[5§().GetPosition().y,1250,"",§5!C§.§ 4§(§]q§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§%!B§.mTryToFly)
         {
            §&l§(§5!G§.§7S§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§2>§) : Boolean
      {
         if(this.§,V§)
         {
            return false;
         }
         §&l§(§5!G§.§9K§);
         this.§,V§ = true;
         return true;
      }
      
      private function §>0§(param1:int) : int
      {
         return Math.min(§[F§.§9u§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§ try§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §1+§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>0§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§%!B§.mW * §%o§.§]!?§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§%!B§.mH * §%o§.§]!?§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§5!C§.§-!E§,§ try§.§4!+§,§5!C§.§'! §,§[5§().GetPosition().x + _loc7_,§[5§().GetPosition().y + _loc8_,1500,"",§5!C§.§ 4§(§]q§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§ try§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§2O§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §;G§() / 10;
         var _loc4_:int = 1 + _loc3_ * §1+§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>0§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§5!C§.§`W§,§ try§.§4!+§,§5!C§.§'! §,§[5§().GetPosition().x,§[5§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§5!C§.§-!E§,§ try§.§4!+§,§5!C§.§'! §,§[5§().GetPosition().x,§[5§().GetPosition().y,1250,"",§5!C§.§ 4§(§]q§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
