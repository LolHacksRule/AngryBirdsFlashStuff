package §8x§
{
   import §"^§.§9=§;
   import §'d§.§>N§;
   import §,!F§.§#§;
   import §,!F§.§,!7§;
   import §4G§.Sprite;
   import §[!1§.§ J§;
   import §[!1§.§,!'§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § %§ extends §6!G§
   {
      
      protected static const §[!B§:Boolean = false;
      
      protected static const §8!-§:Number = 2000;
      
      protected static const §[V§:Number = 0.2;
       
      
      private var §4i§:Number;
      
      private var §!!2§:Boolean = false;
      
      protected var §throw§:int = 0;
      
      public function § %§(param1:§>A§, param2:Sprite, param3:b2World, param4:§#§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §5!O§.mTryToScream = §5^§.§'v§ + 1;
         }
      }
      
      public function get §%!3§() : Boolean
      {
         return this.§!!2§;
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
         if(§<5§ < §`t§ && §4!&§())
         {
            this.§4i§ += param1;
            if(this.§4i§ >= §8!-§)
            {
               return true;
            }
         }
         else
         {
            this.§4i§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§!!2§)
         {
            if(§!Z§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§!Z§.toUpperCase() == "BIRD_YELLOW" || §!Z§.toUpperCase() == "BIRD_GREEN" || §!Z§.toUpperCase() == "BIRD_RED" || §!Z§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§5!O§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§5!O§.mTryToSpecial)
               {
                  §5!O§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§5!O§.mTryToSpecial)
            {
               §5!O§.mTryToSpecial = false;
               if(§5!O§.mIsSpecial)
               {
                  §5!O§.mIsSpecial = false;
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
         if(§]!7§().IsAwake() && §<5§ == §`t§)
         {
            if(!§5!O§.mTryToFly)
            {
               §5!O§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§!Z§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§!!2§ ? 2 : 1) * 360 / 1000;
               §-C§(§'!I§() - _loc3_);
            }
            else if(!(§!Z§.toUpperCase() == "BIRD_WHITE" && this.§!!2§))
            {
               if(§[!B§)
               {
                  §!!D§();
               }
               else if(!§5;§() && !§2v§())
               {
                  §-C§(0);
               }
            }
         }
         else if(§5!O§.mTryToFly)
         {
            §5!O§.mTryToFly = false;
            if(§5!O§.mIsFlying)
            {
               §5!O§.mIsFlying = false;
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
         var _loc1_:§#§ = §9=§.§<!@§;
         if(§<5§ < §`t§ || §]!7§() == null)
         {
            _loc1_.§@z§(this);
            _loc1_.§0!%§ = false;
            return;
         }
         var _loc2_:Number = x * §#§.§67§;
         var _loc3_:Number = y * §#§.§67§;
         if(_loc1_.§0!%§)
         {
            _loc1_.particles.addParticle(§ J§.§%!5§,§,!'§.§!!-§,§ J§.§#n§,_loc2_,_loc3_,-1,"",§ J§.§@!7§);
            _loc1_.§0!%§ = false;
            this.§throw§ = 0;
         }
         else if(§ t§ > 1)
         {
            _loc1_.particles.addParticle(§ J§.§1P§,§,!'§.§!!-§,§ J§.§#n§,_loc2_,_loc3_,-1,"",§ J§.§@!7§);
         }
         else
         {
            _loc4_ = § J§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§throw§ == 1)
            {
               _loc4_ = § J§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§throw§ == 2)
            {
               _loc4_ = § J§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§throw§ = (this.§throw§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§,!'§.§!!-§,§ J§.§#n§,_loc2_,_loc3_,-1,"",§ J§.§@!7§);
         }
         if(§<]§() > §,!7§.§ !!§ && Math.random() < §[V§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§ J§.§7!0§,§,!'§.§=8§,§ J§.§"H§,§]!7§().GetPosition().x,§]!7§().GetPosition().y,1250,"",§ J§.§]S§(§!Z§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§5!O§.mTryToFly)
         {
            §[I§(§>N§.§1!?§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§>A§) : Boolean
      {
         if(this.§!!2§)
         {
            return false;
         }
         §[I§(§>N§.§@w§);
         this.§!!2§ = true;
         return true;
      }
      
      private function §>C§(param1:int) : int
      {
         return Math.min(§9=§.§<!@§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§,!'§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §?!N§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>C§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5!O§.mW * §#§.§67§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5!O§.mH * §#§.§67§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§ J§.§7!0§,§,!'§.§=8§,§ J§.§"H§,§]!7§().GetPosition().x + _loc7_,§]!7§().GetPosition().y + _loc8_,1500,"",§ J§.§]S§(§!Z§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,!'§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§2v§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §<]§() / 10;
         var _loc4_:int = 1 + _loc3_ * §?!N§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>C§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§ J§.§%!;§,§,!'§.§=8§,§ J§.§"H§,§]!7§().GetPosition().x,§]!7§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§ J§.§7!0§,§,!'§.§=8§,§ J§.§"H§,§]!7§().GetPosition().x,§]!7§().GetPosition().y,1250,"",§ J§.§]S§(§!Z§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
