package §4!O§
{
   import §5!?§.§'C§;
   import §5!?§.§>"§;
   import §;t§.Sprite;
   import §=!U§.b2BodyDef;
   import §=!U§.b2World;
   import §=F§.§"n§;
   import §@!>§.§<!J§;
   import §@!>§.§=!R§;
   import §[o§.§3!M§;
   
   public class §9T§ extends §<!Z§
   {
      
      protected static const §"X§:Boolean = false;
      
      protected static const §,S§:Number = 2000;
      
      protected static const §7!E§:Number = 0.2;
       
      
      private var §>!^§:Number;
      
      private var §,=§:Boolean = false;
      
      protected var §@Z§:int = 0;
      
      public function §9T§(param1:§+K§, param2:Sprite, param3:b2World, param4:§>"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §^!M§.mTryToScream = §^e§.§0!a§ + 1;
         }
      }
      
      public function get §]!'§() : Boolean
      {
         return this.§,=§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§0-§ = true;
         _loc3_.§,w§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§8!B§ < §6!N§ && §@T§())
         {
            this.§>!^§ += param1;
            if(this.§>!^§ >= §,S§)
            {
               return true;
            }
         }
         else
         {
            this.§>!^§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§,=§)
         {
            if(§7!0§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§7!0§.toUpperCase() == "BIRD_YELLOW" || §7!0§.toUpperCase() == "BIRD_GREEN" || §7!0§.toUpperCase() == "BIRD_RED" || §7!0§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§^!M§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§^!M§.mTryToSpecial)
               {
                  §^!M§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§^!M§.mTryToSpecial)
            {
               §^!M§.mTryToSpecial = false;
               if(§^!M§.mIsSpecial)
               {
                  §^!M§.mIsSpecial = false;
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
         if(§?!7§().IsAwake() && §8!B§ == §6!N§)
         {
            if(!§^!M§.mTryToFly)
            {
               §^!M§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§7!0§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§,=§ ? 2 : 1) * 360 / 1000;
               §[§(§`!D§() - _loc3_);
            }
            else if(!(§7!0§.toUpperCase() == "BIRD_WHITE" && this.§,=§))
            {
               if(§"X§)
               {
                  §[!T§();
               }
               else if(!§`u§() && !§,!-§())
               {
                  §[§(0);
               }
            }
         }
         else if(§^!M§.mTryToFly)
         {
            §^!M§.mTryToFly = false;
            if(§^!M§.mIsFlying)
            {
               §^!M§.mIsFlying = false;
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
         var _loc1_:§>"§ = §"n§.§[b§;
         if(§8!B§ < §6!N§ || §?!7§() == null)
         {
            _loc1_.§1!V§(this);
            _loc1_.§2^§ = false;
            return;
         }
         var _loc2_:Number = x * §>"§.§'!S§;
         var _loc3_:Number = y * §>"§.§'!S§;
         if(_loc1_.§2^§)
         {
            _loc1_.particles.§'!"§(§<!J§.§`>§,§=!R§.§=O§,§<!J§.§@!^§,_loc2_,_loc3_,-1,"",§<!J§.§'!4§);
            _loc1_.§2^§ = false;
            this.§@Z§ = 0;
         }
         else if(§=M§ > 1)
         {
            _loc1_.particles.§'!"§(§<!J§.§'n§,§=!R§.§=O§,§<!J§.§@!^§,_loc2_,_loc3_,-1,"",§<!J§.§'!4§);
         }
         else
         {
            _loc4_ = §<!J§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§@Z§ == 1)
            {
               _loc4_ = §<!J§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§@Z§ == 2)
            {
               _loc4_ = §<!J§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§@Z§ = (this.§@Z§ + 1) % 3;
            _loc1_.particles.§'!"§(_loc4_,§=!R§.§=O§,§<!J§.§@!^§,_loc2_,_loc3_,-1,"",§<!J§.§'!4§);
         }
         if(§=w§() > §'C§.§ !C§ && Math.random() < §7!E§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§'!"§(§<!J§.§9s§,§=!R§.§4r§,§<!J§.§"@§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,1250,"",§<!J§.§7D§(§7!0§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§^!M§.mTryToFly)
         {
            §>!_§(§3!M§.§1!2§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§+K§) : Boolean
      {
         if(this.§,=§)
         {
            return false;
         }
         §>!_§(§3!M§.§-6§);
         this.§,=§ = true;
         return true;
      }
      
      private function §-q§(param1:int) : int
      {
         return Math.min(§"n§.§[b§.§4D§,param1);
      }
      
      override public function addDestructionParticles(param1:§=!R§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §81§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§-q§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§^!M§.mW * §>"§.§'!S§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§^!M§.mH * §>"§.§'!S§) + Math.random() * -_loc8_ * 2;
            param1.§'!"§(§<!J§.§9s§,§=!R§.§4r§,§<!J§.§"@§,§?!7§().GetPosition().x + _loc7_,§?!7§().GetPosition().y + _loc8_,1500,"",§<!J§.§7D§(§7!0§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§=!R§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§,!-§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §=w§() / 10;
         var _loc4_:int = 1 + _loc3_ * §81§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§-q§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§'!"§(§<!J§.§9x§,§=!R§.§4r§,§<!J§.§"@§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§'!"§(§<!J§.§9s§,§=!R§.§4r§,§<!J§.§"@§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,1250,"",§<!J§.§7D§(§7!0§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
