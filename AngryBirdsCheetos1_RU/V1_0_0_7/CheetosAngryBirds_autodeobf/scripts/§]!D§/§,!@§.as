package §]!D§
{
   import §%n§.§3!A§;
   import §1!§.§@!Q§;
   import §8!`§.§%t§;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §?0§.b2BodyDef;
   import §?0§.b2World;
   import §`;§.§5i§;
   import §`;§.§[E§;
   
   public class §,!@§ extends §7!$§
   {
      
      protected static const §&!5§:Boolean = false;
      
      protected static const § !<§:Number = 2000;
      
      protected static const §-H§:Number = 0.2;
       
      
      private var §1"§:Number;
      
      private var §+&§:Boolean = false;
      
      protected var §3!7§:int = 0;
      
      public function §,!@§(param1:§?!9§, param2:Sprite, param3:b2World, param4:§4J§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §`T§.mTryToScream = §]!R§.§<_§ + 1;
         }
      }
      
      public function get §-g§() : Boolean
      {
         return this.§+&§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§&!Q§ = true;
         _loc3_.§^W§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§5h§ < §!e§ && §>8§())
         {
            this.§1"§ += param1;
            if(this.§1"§ >= § !<§)
            {
               return true;
            }
         }
         else
         {
            this.§1"§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§+&§)
         {
            if(§4u§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§4u§.toUpperCase() == "BIRD_YELLOW" || §4u§.toUpperCase() == "BIRD_GREEN" || §4u§.toUpperCase() == "BIRD_RED" || §4u§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§`T§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§`T§.mTryToSpecial)
               {
                  §`T§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§`T§.mTryToSpecial)
            {
               §`T§.mTryToSpecial = false;
               if(§`T§.mIsSpecial)
               {
                  §`T§.mIsSpecial = false;
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
         if(§^!_§().IsAwake() && §5h§ == §!e§)
         {
            if(!§`T§.mTryToFly)
            {
               §`T§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§4u§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§+&§ ? 2 : 1) * 360 / 1000;
               §8_§(§ !0§() - _loc3_);
            }
            else if(!(§4u§.toUpperCase() == "BIRD_WHITE" && this.§+&§))
            {
               if(§&!5§)
               {
                  §@!`§();
               }
               else if(!§"!2§() && !§7!0§())
               {
                  §8_§(0);
               }
            }
         }
         else if(§`T§.mTryToFly)
         {
            §`T§.mTryToFly = false;
            if(§`T§.mIsFlying)
            {
               §`T§.mIsFlying = false;
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
         var _loc1_:§4J§ = §@!Q§.§7l§;
         if(§5h§ < §!e§ || §^!_§() == null)
         {
            _loc1_.§8P§(this);
            _loc1_.§7,§ = false;
            return;
         }
         var _loc2_:Number = x * §4J§.§<W§;
         var _loc3_:Number = y * §4J§.§<W§;
         if(_loc1_.§7,§)
         {
            _loc1_.particles.addParticle(§[E§.§;t§,§5i§.§;?§,§[E§.§?g§,_loc2_,_loc3_,-1,"",§[E§.§?a§);
            _loc1_.§7,§ = false;
            this.§3!7§ = 0;
         }
         else if(§?-§ > 1)
         {
            _loc1_.particles.addParticle(§[E§.§6!O§,§5i§.§;?§,§[E§.§?g§,_loc2_,_loc3_,-1,"",§[E§.§?a§);
         }
         else
         {
            _loc4_ = §[E§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§3!7§ == 1)
            {
               _loc4_ = §[E§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§3!7§ == 2)
            {
               _loc4_ = §[E§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§3!7§ = (this.§3!7§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§5i§.§;?§,§[E§.§?g§,_loc2_,_loc3_,-1,"",§[E§.§?a§);
         }
         if(§^!-§() > §%t§.§=g§ && Math.random() < §-H§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§[E§.§4!B§,§5i§.§-!D§,§[E§.§!`§,§^!_§().GetPosition().x,§^!_§().GetPosition().y,1250,"",§[E§.§2!<§(§4u§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§`T§.mTryToFly)
         {
            §3a§(§3!A§.§"h§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§?!9§) : Boolean
      {
         if(this.§+&§)
         {
            return false;
         }
         §3a§(§3!A§.§>y§);
         this.§+&§ = true;
         return true;
      }
      
      private function §#!R§(param1:int) : int
      {
         return Math.min(§@!Q§.§7l§.§&@§,param1);
      }
      
      override public function addDestructionParticles(param1:§5i§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §@!7§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§#!R§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§`T§.mW * §4J§.§<W§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§`T§.mH * §4J§.§<W§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§[E§.§4!B§,§5i§.§-!D§,§[E§.§!`§,§^!_§().GetPosition().x + _loc7_,§^!_§().GetPosition().y + _loc8_,1500,"",§[E§.§2!<§(§4u§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5i§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§7!0§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §^!-§() / 10;
         var _loc4_:int = 1 + _loc3_ * §@!7§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§#!R§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§[E§.§=F§,§5i§.§-!D§,§[E§.§!`§,§^!_§().GetPosition().x,§^!_§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§[E§.§4!B§,§5i§.§-!D§,§[E§.§!`§,§^!_§().GetPosition().x,§^!_§().GetPosition().y,1250,"",§[E§.§2!<§(§4u§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
