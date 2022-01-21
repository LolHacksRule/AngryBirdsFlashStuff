package §%`§
{
   import §'a§.§0!f§;
   import §'a§.§0U§;
   import §2!`§.§3F§;
   import §2!`§.§8!;§;
   import §3!g§.b2BodyDef;
   import §3!g§.b2World;
   import §4s§.§[-§;
   import §5x§.Sprite;
   import §9!W§.§=!@§;
   
   public class override extends §9c§
   {
      
      protected static const §+!O§:Boolean = false;
      
      protected static const §`f§:Number = 2000;
      
      protected static const §?!W§:Number = 0.2;
       
      
      private var §,8§:Number;
      
      private var §9!E§:Boolean = false;
      
      protected var §7§:int = 0;
      
      public function override(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §2R§.mTryToScream = §;!"§.§]l§ + 1;
         }
      }
      
      public function get §0C§() : Boolean
      {
         return this.§9!E§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§"?§ = true;
         _loc3_.§@R§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§%!a§ < §"!j§ && § !i§())
         {
            this.§,8§ += param1;
            if(this.§,8§ >= §`f§)
            {
               return true;
            }
         }
         else
         {
            this.§,8§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§9!E§)
         {
            if(§6!?§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§6!?§.toUpperCase() == "BIRD_YELLOW" || §6!?§.toUpperCase() == "BIRD_GREEN" || §6!?§.toUpperCase() == "BIRD_RED" || §6!?§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§2R§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§2R§.mTryToSpecial)
               {
                  §2R§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§2R§.mTryToSpecial)
            {
               §2R§.mTryToSpecial = false;
               if(§2R§.mIsSpecial)
               {
                  §2R§.mIsSpecial = false;
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
         if(§%9§().IsAwake() && §%!a§ == §"!j§)
         {
            if(!§2R§.mTryToFly)
            {
               §2R§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§6!?§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§9!E§ ? 2 : 1) * 360 / 1000;
               §-S§(§#f§() - _loc3_);
            }
            else if(!(§6!?§.toUpperCase() == "BIRD_WHITE" && this.§9!E§))
            {
               if(§+!O§)
               {
                  §1w§();
               }
               else if(!§;T§() && !§3M§())
               {
                  §-S§(0);
               }
            }
         }
         else if(§2R§.mTryToFly)
         {
            §2R§.mTryToFly = false;
            if(§2R§.mIsFlying)
            {
               §2R§.mIsFlying = false;
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
         var _loc1_:§0!f§ = §=!@§.§>!T§;
         if(§%!a§ < §"!j§ || §%9§() == null)
         {
            _loc1_.§1$§(this);
            _loc1_.§&![§ = false;
            return;
         }
         var _loc2_:Number = x * §0!f§.§<C§;
         var _loc3_:Number = y * §0!f§.§<C§;
         if(_loc1_.§&![§)
         {
            _loc1_.particles.§;!G§(§8!;§.§3!$§,§3F§.§44§,§8!;§.§8M§,_loc2_,_loc3_,-1,"",§8!;§.§2!N§);
            _loc1_.§&![§ = false;
            this.§7§ = 0;
         }
         else if(§`!f§ > 1)
         {
            _loc1_.particles.§;!G§(§8!;§.§5Z§,§3F§.§44§,§8!;§.§8M§,_loc2_,_loc3_,-1,"",§8!;§.§2!N§);
         }
         else
         {
            _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§7§ == 1)
            {
               _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§7§ == 2)
            {
               _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§7§ = (this.§7§ + 1) % 3;
            _loc1_.particles.§;!G§(_loc4_,§3F§.§44§,§8!;§.§8M§,_loc2_,_loc3_,-1,"",§8!;§.§2!N§);
         }
         if(§'8§() > §0U§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §?!W§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§;!G§(§8!;§.§9!1§,§3F§.§![§,§8!;§.§!!8§,§%9§().GetPosition().x,§%9§().GetPosition().y,1250,"",§8!;§.§2!n§(§6!?§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§2R§.mTryToFly)
         {
            §"!Z§(§[-§.§ !n§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§,!k§) : Boolean
      {
         if(this.§9!E§)
         {
            return false;
         }
         §"!Z§(§[-§.§]!!§);
         this.§9!E§ = true;
         return true;
      }
      
      private function §7!>§(param1:int) : int
      {
         return Math.min(§=!@§.§>!T§.§4!d§,param1);
      }
      
      override public function addDestructionParticles(param1:§3F§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §'k§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§7!>§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2R§.mW * §0!f§.§<C§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2R§.mH * §0!f§.§<C§) + Math.random() * -_loc8_ * 2;
            param1.§;!G§(§8!;§.§9!1§,§3F§.§![§,§8!;§.§!!8§,§%9§().GetPosition().x + _loc7_,§%9§().GetPosition().y + _loc8_,1500,"",§8!;§.§2!n§(§6!?§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3F§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§3M§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §'8§() / 10;
         var _loc4_:int = 1 + _loc3_ * §'k§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§7!>§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§;!G§(§8!;§.§!$§,§3F§.§![§,§8!;§.§!!8§,§%9§().GetPosition().x,§%9§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§;!G§(§8!;§.§9!1§,§3F§.§![§,§8!;§.§!!8§,§%9§().GetPosition().x,§%9§().GetPosition().y,1250,"",§8!;§.§2!n§(§6!?§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
