package §]!+§
{
   import §!!V§.§&I§;
   import §!!V§.§<!>§;
   import §"!S§.§"_§;
   import §&!5§.Sprite;
   import §5!$§.§1!8§;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §[x§.b2BodyDef;
   import §[x§.b2World;
   
   public class §`H§ extends §1!7§
   {
      
      protected static const §"!`§:Boolean = false;
      
      protected static const §=g§:Number = 2000;
      
      protected static const §in§:Number = 0.2;
       
      
      private var §0!@§:Number;
      
      private var §8+§:Boolean = false;
      
      protected var §!i§:int = 0;
      
      public function §`H§(param1:§'§, param2:Sprite, param3:b2World, param4:§&I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §^!3§.mTryToScream = §%j§.§8f§ + 1;
         }
      }
      
      public function get §#!8§() : Boolean
      {
         return this.§8+§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§>!R§ = true;
         _loc3_.§!!M§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§0!C§ < §6!;§ && §%e§())
         {
            this.§0!@§ += param1;
            if(this.§0!@§ >= §=g§)
            {
               return true;
            }
         }
         else
         {
            this.§0!@§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§8+§)
         {
            if(§+!J§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§+!J§.toUpperCase() == "BIRD_YELLOW" || §+!J§.toUpperCase() == "BIRD_GREEN" || §+!J§.toUpperCase() == "BIRD_RED" || §+!J§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§^!3§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§^!3§.mTryToSpecial)
               {
                  §^!3§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§^!3§.mTryToSpecial)
            {
               §^!3§.mTryToSpecial = false;
               if(§^!3§.mIsSpecial)
               {
                  §^!3§.mIsSpecial = false;
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
         if(§?A§().IsAwake() && §0!C§ == §6!;§)
         {
            if(!§^!3§.mTryToFly)
            {
               §^!3§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§+!J§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§8+§ ? 2 : 1) * 360 / 1000;
               §9!5§(§?! §() - _loc3_);
            }
            else if(!(§+!J§.toUpperCase() == "BIRD_WHITE" && this.§8+§))
            {
               if(§"!`§)
               {
                  §=!O§();
               }
               else if(!§'+§() && !§=!&§())
               {
                  §9!5§(0);
               }
            }
         }
         else if(§^!3§.mTryToFly)
         {
            §^!3§.mTryToFly = false;
            if(§^!3§.mIsFlying)
            {
               §^!3§.mIsFlying = false;
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
         var _loc1_:§&I§ = §"_§.§+!^§;
         if(§0!C§ < §6!;§ || §?A§() == null)
         {
            _loc1_.§,D§(this);
            _loc1_.§-![§ = false;
            return;
         }
         var _loc2_:Number = x * §&I§.§]!H§;
         var _loc3_:Number = y * §&I§.§]!H§;
         if(_loc1_.§-![§)
         {
            _loc1_.particles.addParticle(§"!U§.§<#§,§7!H§.§-Y§,§"!U§.§-C§,_loc2_,_loc3_,-1,"",§"!U§.§#!F§);
            _loc1_.§-![§ = false;
            this.§!i§ = 0;
         }
         else if(§#!N§ > 1)
         {
            _loc1_.particles.addParticle(§"!U§.§<D§,§7!H§.§-Y§,§"!U§.§-C§,_loc2_,_loc3_,-1,"",§"!U§.§#!F§);
         }
         else
         {
            _loc4_ = §"!U§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§!i§ == 1)
            {
               _loc4_ = §"!U§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§!i§ == 2)
            {
               _loc4_ = §"!U§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§!i§ = (this.§!i§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§7!H§.§-Y§,§"!U§.§-C§,_loc2_,_loc3_,-1,"",§"!U§.§#!F§);
         }
         if(§ else§() > §<!>§.§0@§ && Math.random() < §in§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§"!U§.§@!Z§,§7!H§.§]0§,§"!U§.§+6§,§?A§().GetPosition().x,§?A§().GetPosition().y,1250,"",§"!U§.§5U§(§+!J§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§^!3§.mTryToFly)
         {
            §3![§(§1!8§.§0!T§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§'§) : Boolean
      {
         if(this.§8+§)
         {
            return false;
         }
         §3![§(§1!8§.§#n§);
         this.§8+§ = true;
         return true;
      }
      
      private function §'h§(param1:int) : int
      {
         return Math.min(§"_§.§+!^§.§!!1§,param1);
      }
      
      override public function addDestructionParticles(param1:§7!H§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §=5§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§'h§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§^!3§.mW * §&I§.§]!H§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§^!3§.mH * §&I§.§]!H§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§"!U§.§@!Z§,§7!H§.§]0§,§"!U§.§+6§,§?A§().GetPosition().x + _loc7_,§?A§().GetPosition().y + _loc8_,1500,"",§"!U§.§5U§(§+!J§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§7!H§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§=!&§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = § else§() / 10;
         var _loc4_:int = 1 + _loc3_ * §=5§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§'h§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§"!U§.§^4§,§7!H§.§]0§,§"!U§.§+6§,§?A§().GetPosition().x,§?A§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§"!U§.§@!Z§,§7!H§.§]0§,§"!U§.§+6§,§?A§().GetPosition().x,§?A§().GetPosition().y,1250,"",§"!U§.§5U§(§+!J§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
