package §3d§
{
   import §&C§.§7!1§;
   import §0V§.§^K§;
   import §0V§.§`!O§;
   import §3§.Sprite;
   import §9t§.b2BodyDef;
   import §9t§.b2World;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   import §^Q§.§,^§;
   
   public class §6!7§ extends §0a§
   {
      
      protected static const §>j§:Boolean = false;
      
      protected static const §3v§:Number = 2000;
      
      protected static const §`!Z§:Number = 0.2;
       
      
      private var §&!c§:Number;
      
      private var §-d§:Boolean = false;
      
      protected var §'"§:int = 0;
      
      public function §6!7§(param1:§@?§, param2:Sprite, param3:b2World, param4:§`!O§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §5!@§.mTryToScream = §,Q§.§<!&§ + 1;
         }
      }
      
      public function get §4r§() : Boolean
      {
         return this.§-d§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§7!8§ = true;
         _loc3_.§&!O§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§2>§ < §,!,§ && §9!<§())
         {
            this.§&!c§ += param1;
            if(this.§&!c§ >= §3v§)
            {
               return true;
            }
         }
         else
         {
            this.§&!c§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§-d§)
         {
            if(§6O§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§6O§.toUpperCase() == "BIRD_YELLOW" || §6O§.toUpperCase() == "BIRD_GREEN" || §6O§.toUpperCase() == "BIRD_RED" || §6O§.toUpperCase() == "BIRD_RED_BIG" || §6O§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§5!@§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§5!@§.mTryToSpecial)
               {
                  §5!@§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§5!@§.mTryToSpecial)
            {
               §5!@§.mTryToSpecial = false;
               if(§5!@§.mIsSpecial)
               {
                  §5!@§.mIsSpecial = false;
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
         if(§=!,§().IsAwake() && §2>§ == §,!,§)
         {
            if(!§5!@§.mTryToFly)
            {
               §5!@§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§6O§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§-d§ ? 2 : 1) * 360 / 1000;
               §=!%§(§%"§() - _loc3_);
            }
            else if(!(§6O§.toUpperCase() == "BIRD_WHITE" && this.§-d§))
            {
               if(§>j§)
               {
                  §-!A§();
               }
               else if(!§@^§() && !§[!7§())
               {
                  §=!%§(0);
               }
            }
         }
         else if(§5!@§.mTryToFly)
         {
            §5!@§.mTryToFly = false;
            if(§5!@§.mIsFlying)
            {
               §5!@§.mIsFlying = false;
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
         var _loc1_:§`!O§ = §,^§.§0K§;
         if(§2>§ < §,!,§ || §=!,§() == null)
         {
            _loc1_.§8W§(this);
            _loc1_.§@!8§ = false;
            return;
         }
         var _loc2_:Number = x * §`!O§.§?!O§;
         var _loc3_:Number = y * §`!O§.§?!O§;
         if(_loc1_.§@!8§)
         {
            _loc1_.particles.addParticle(§7!%§.§,b§,§"^§.§ $§,§7!%§.§9!?§,_loc2_,_loc3_,-1,"",§7!%§.§?!]§);
            _loc1_.§@!8§ = false;
            this.§'"§ = 0;
         }
         else if(§+!R§ > 1)
         {
            _loc1_.particles.addParticle(§7!%§.§#!4§,§"^§.§ $§,§7!%§.§9!?§,_loc2_,_loc3_,-1,"",§7!%§.§?!]§);
         }
         else
         {
            _loc4_ = §7!%§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§'"§ == 1)
            {
               _loc4_ = §7!%§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§'"§ == 2)
            {
               _loc4_ = §7!%§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§'"§ = (this.§'"§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§"^§.§ $§,§7!%§.§9!?§,_loc2_,_loc3_,-1,"",§7!%§.§?!]§);
         }
         if(§#;§() > §^K§.§7c§ && Math.random() < §`!Z§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§7!%§.§7,§,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x,§=!,§().GetPosition().y,1250,"",§7!%§.§8k§(§6O§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§5!@§.mTryToFly)
         {
            §96§(§7!1§.§&!`§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§@?§) : Boolean
      {
         if(this.§-d§)
         {
            return false;
         }
         §96§(§7!1§.§@!-§);
         this.§-d§ = true;
         return true;
      }
      
      private function §&!2§(param1:int) : int
      {
         return Math.min(§,^§.§0K§.§3+§,param1);
      }
      
      override public function addDestructionParticles(param1:§"^§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §6p§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§&!2§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5!@§.mW * §`!O§.§?!O§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5!@§.mH * §`!O§.§?!O§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§7!%§.§7,§,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x + _loc7_,§=!,§().GetPosition().y + _loc8_,1500,"",§7!%§.§8k§(§6O§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§"^§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§[!7§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §#;§() / 10;
         var _loc4_:int = 1 + _loc3_ * §6p§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§&!2§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§7!%§.§'!W§,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x,§=!,§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§7!%§.§7,§,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x,§=!,§().GetPosition().y,1250,"",§7!%§.§8k§(§6O§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
