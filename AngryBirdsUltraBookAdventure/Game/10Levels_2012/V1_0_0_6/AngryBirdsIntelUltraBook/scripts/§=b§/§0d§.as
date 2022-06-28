package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §#V§.b2BodyDef;
   import §#V§.b2World;
   import §-d§.§-C§;
   import §2_§.§'u§;
   import §2_§.§8![§;
   import §7!B§.Sprite;
   import §>! §.§^!c§;
   
   public class §0d§ extends §72§
   {
      
      protected static const § !Q§:Boolean = false;
      
      protected static const §;&§:Number = 2000;
      
      protected static const §!k§:Number = 0.2;
       
      
      private var §+S§:Number;
      
      private var §+!u§:Boolean = false;
      
      protected var §?!=§:int = 0;
      
      public function §0d§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §7![§.mTryToScream = § 6§.§8!3§ + 1;
         }
      }
      
      public function get §9!J§() : Boolean
      {
         return this.§+!u§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§6!b§ = true;
         _loc3_.§&!G§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§&!>§ < §]l§ && §^!R§())
         {
            this.§+S§ += param1;
            if(this.§+S§ >= §;&§)
            {
               return true;
            }
         }
         else
         {
            this.§+S§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§+!u§)
         {
            if(§^r§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§^r§.toUpperCase() == "BIRD_YELLOW" || §^r§.toUpperCase() == "BIRD_GREEN" || §^r§.toUpperCase() == "BIRD_RED" || §^r§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§7![§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§7![§.mTryToSpecial)
               {
                  §7![§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§7![§.mTryToSpecial)
            {
               §7![§.mTryToSpecial = false;
               if(§7![§.mIsSpecial)
               {
                  §7![§.mIsSpecial = false;
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
         if(§3J§().IsAwake() && §&!>§ == §]l§)
         {
            if(!§7![§.mTryToFly)
            {
               §7![§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§^r§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§+!u§ ? 2 : 1) * 360 / 1000;
               §8Z§(§8c§() - _loc3_);
            }
            else if(!(§^r§.toUpperCase() == "BIRD_WHITE" && this.§+!u§))
            {
               if(§ !Q§)
               {
                  §<n§();
               }
               else if(!§?!%§() && !§=!5§())
               {
                  §8Z§(0);
               }
            }
         }
         else if(§7![§.mTryToFly)
         {
            §7![§.mTryToFly = false;
            if(§7![§.mIsFlying)
            {
               §7![§.mIsFlying = false;
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
         var _loc1_:§'u§ = §^!c§.§5!Y§;
         if(§&!>§ < §]l§ || §3J§() == null)
         {
            _loc1_.§+N§(this);
            _loc1_.§6u§ = false;
            return;
         }
         var _loc2_:Number = x * §'u§.§18§;
         var _loc3_:Number = y * §'u§.§18§;
         if(_loc1_.§6u§)
         {
            _loc1_.particles.§#Z§(§9!B§.§%-§,§^z§.§#1§,§9!B§.§4!o§,_loc2_,_loc3_,-1,"",§9!B§.§!L§);
            _loc1_.§6u§ = false;
            this.§?!=§ = 0;
         }
         else if(§9!&§ > 1)
         {
            _loc1_.particles.§#Z§(§9!B§.§ 9§,§^z§.§#1§,§9!B§.§4!o§,_loc2_,_loc3_,-1,"",§9!B§.§!L§);
         }
         else
         {
            _loc4_ = §9!B§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§?!=§ == 1)
            {
               _loc4_ = §9!B§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§?!=§ == 2)
            {
               _loc4_ = §9!B§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§?!=§ = (this.§?!=§ + 1) % 3;
            _loc1_.particles.§#Z§(_loc4_,§^z§.§#1§,§9!B§.§4!o§,_loc2_,_loc3_,-1,"",§9!B§.§!L§);
         }
         if(§!u§() > §8![§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §!k§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§#Z§(§9!B§.§8v§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x,§3J§().GetPosition().y,1250,"",§9!B§.§'!4§(§^r§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§7![§.mTryToFly)
         {
            §+!G§(§-C§.§6[§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         if(this.§+!u§)
         {
            return false;
         }
         §+!G§(§-C§.§[g§);
         this.§+!u§ = true;
         return true;
      }
      
      private function §6!<§(param1:int) : int
      {
         return Math.min(§^!c§.§5!Y§.§>F§,param1);
      }
      
      override public function addDestructionParticles(param1:§^z§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §;a§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§6!<§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§7![§.mW * §'u§.§18§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§7![§.mH * §'u§.§18§) + Math.random() * -_loc8_ * 2;
            param1.§#Z§(§9!B§.§8v§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x + _loc7_,§3J§().GetPosition().y + _loc8_,1500,"",§9!B§.§'!4§(§^r§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§^z§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§=!5§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §!u§() / 10;
         var _loc4_:int = 1 + _loc3_ * §;a§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§6!<§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§#Z§(§9!B§.§?P§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x,§3J§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§#Z§(§9!B§.§8v§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x,§3J§().GetPosition().y,1250,"",§9!B§.§'!4§(§^r§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
