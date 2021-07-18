package §-!&§
{
   import § N§.Sprite;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §2G§.§0Z§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §9T§.§97§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1!"§ extends §=!A§
   {
      
      protected static const §4"§:Boolean = false;
      
      protected static const §?!B§:Number = 2000;
      
      protected static const §;!<§:Number = 0.2;
       
      
      private var §]N§:Number;
      
      private var §]!8§:Boolean = false;
      
      protected var §>!-§:int = 0;
      
      public function §1!"§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §3! §.mTryToScream = §?k§.§1J§ + 1;
         }
      }
      
      public function get § I§() : Boolean
      {
         return this.§]!8§;
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
         if(§8!2§ < §53§ && §6D§())
         {
            this.§]N§ += param1;
            if(this.§]N§ >= §?!B§)
            {
               return true;
            }
         }
         else
         {
            this.§]N§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§]!8§)
         {
            if(§4V§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§4V§.toUpperCase() == "BIRD_YELLOW" || §4V§.toUpperCase() == "BIRD_GREEN" || §4V§.toUpperCase() == "BIRD_RED" || §4V§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§3! §.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§3! §.mTryToSpecial)
               {
                  §3! §.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§3! §.mTryToSpecial)
            {
               §3! §.mTryToSpecial = false;
               if(§3! §.mIsSpecial)
               {
                  §3! §.mIsSpecial = false;
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
         if(§`%§().IsAwake() && §8!2§ == §53§)
         {
            if(!§3! §.mTryToFly)
            {
               §3! §.mTryToFly = true;
               _loc2_ = true;
            }
            if(§4V§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§]!8§ ? 2 : 1) * 360 / 1000;
               §<H§(§'!I§() - _loc3_);
            }
            else if(!(§4V§.toUpperCase() == "BIRD_WHITE" && this.§]!8§))
            {
               if(§4"§)
               {
                  §4j§();
               }
               else if(!§&0§() && !§for§())
               {
                  §<H§(0);
               }
            }
         }
         else if(§3! §.mTryToFly)
         {
            §3! §.mTryToFly = false;
            if(§3! §.mIsFlying)
            {
               §3! §.mIsFlying = false;
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
         var _loc1_:§1r§ = §#! §.§`'§;
         if(§8!2§ < §53§ || §`%§() == null)
         {
            _loc1_.§3f§(this);
            _loc1_.§5!Q§ = false;
            return;
         }
         var _loc2_:Number = x * §1r§.§[M§;
         var _loc3_:Number = y * §1r§.§[M§;
         if(_loc1_.§5!Q§)
         {
            _loc1_.particles.addParticle(§8R§.§[!$§,§5!5§.§&!J§,§8R§.§!J§,_loc2_,_loc3_,-1,"",§8R§.§0k§);
            _loc1_.§5!Q§ = false;
            this.§>!-§ = 0;
         }
         else if(§&!N§ > 1)
         {
            _loc1_.particles.addParticle(§8R§.§3G§,§5!5§.§&!J§,§8R§.§!J§,_loc2_,_loc3_,-1,"",§8R§.§0k§);
         }
         else
         {
            _loc4_ = §8R§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§>!-§ == 1)
            {
               _loc4_ = §8R§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§>!-§ == 2)
            {
               _loc4_ = §8R§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§>!-§ = (this.§>!-§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§5!5§.§&!J§,§8R§.§!J§,_loc2_,_loc3_,-1,"",§8R§.§0k§);
         }
         if(§?D§() > §97§.§]c§ && Math.random() < §;!<§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§8R§.§#'§,§5!5§.§-U§,§8R§.§`R§,§`%§().GetPosition().x,§`%§().GetPosition().y,1250,"",§8R§.§[q§(§4V§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§3! §.mTryToFly)
         {
            §,A§(§0Z§.§use §);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§20§) : Boolean
      {
         if(this.§]!8§)
         {
            return false;
         }
         §,A§(§0Z§.§^l§);
         this.§]!8§ = true;
         return true;
      }
      
      private function §#@§(param1:int) : int
      {
         return Math.min(§#! §.§`'§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§5!5§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §8!D§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§#@§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§3! §.mW * §1r§.§[M§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§3! §.mH * §1r§.§[M§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§8R§.§#'§,§5!5§.§-U§,§8R§.§`R§,§`%§().GetPosition().x + _loc7_,§`%§().GetPosition().y + _loc8_,1500,"",§8R§.§[q§(§4V§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5!5§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§for§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §?D§() / 10;
         var _loc4_:int = 1 + _loc3_ * §8!D§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§#@§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§8R§.§-!'§,§5!5§.§-U§,§8R§.§`R§,§`%§().GetPosition().x,§`%§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§8R§.§#'§,§5!5§.§-U§,§8R§.§`R§,§`%§().GetPosition().x,§`%§().GetPosition().y,1250,"",§8R§.§[q§(§4V§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
