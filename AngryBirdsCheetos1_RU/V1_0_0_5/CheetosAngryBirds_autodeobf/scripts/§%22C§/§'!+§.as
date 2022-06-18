package §"C§
{
   import §%b§.§0!Z§;
   import §%b§.§=!!§;
   import §'d§.§3>§;
   import §98§.§;m§;
   import §98§.§=!F§;
   import §?!H§.§=!D§;
   import §[W§.b2BodyDef;
   import §[W§.b2World;
   import §null §.Sprite;
   
   public class §'!+§ extends §%F§
   {
      
      protected static const §?!^§:Boolean = false;
      
      protected static const §"!5§:Number = 2000;
      
      protected static const §?t§:Number = 0.2;
       
      
      private var §+!'§:Number;
      
      private var §86§:Boolean = false;
      
      protected var §#!7§:int = 0;
      
      public function §'!+§(param1:§7s§, param2:Sprite, param3:b2World, param4:§0!Z§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §9X§.mTryToScream = §]y§.§"d§ + 1;
         }
      }
      
      public function get §[p§() : Boolean
      {
         return this.§86§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§"!E§ = true;
         _loc3_.§11§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§;&§ < §-#§ && §]!;§())
         {
            this.§+!'§ += param1;
            if(this.§+!'§ >= §"!5§)
            {
               return true;
            }
         }
         else
         {
            this.§+!'§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§86§)
         {
            if(§]!W§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§]!W§.toUpperCase() == "BIRD_YELLOW" || §]!W§.toUpperCase() == "BIRD_GREEN" || §]!W§.toUpperCase() == "BIRD_RED" || §]!W§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§9X§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§9X§.mTryToSpecial)
               {
                  §9X§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§9X§.mTryToSpecial)
            {
               §9X§.mTryToSpecial = false;
               if(§9X§.mIsSpecial)
               {
                  §9X§.mIsSpecial = false;
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
         if(§?@§().IsAwake() && §;&§ == §-#§)
         {
            if(!§9X§.mTryToFly)
            {
               §9X§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§]!W§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§86§ ? 2 : 1) * 360 / 1000;
               §-I§(§ !^§() - _loc3_);
            }
            else if(!(§]!W§.toUpperCase() == "BIRD_WHITE" && this.§86§))
            {
               if(§?!^§)
               {
                  §=5§();
               }
               else if(!§?!0§() && !§'&§())
               {
                  §-I§(0);
               }
            }
         }
         else if(§9X§.mTryToFly)
         {
            §9X§.mTryToFly = false;
            if(§9X§.mIsFlying)
            {
               §9X§.mIsFlying = false;
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
         var _loc1_:§0!Z§ = §3>§.§8!$§;
         if(§;&§ < §-#§ || §?@§() == null)
         {
            _loc1_.§;P§(this);
            _loc1_.§'!Z§ = false;
            return;
         }
         var _loc2_:Number = x * §0!Z§.§+n§;
         var _loc3_:Number = y * §0!Z§.§+n§;
         if(_loc1_.§'!Z§)
         {
            _loc1_.particles.addParticle(§=!F§.§^F§,§;m§.§!!`§,§=!F§.§`9§,_loc2_,_loc3_,-1,"",§=!F§.§]!-§);
            _loc1_.§'!Z§ = false;
            this.§#!7§ = 0;
         }
         else if(§8!Q§ > 1)
         {
            _loc1_.particles.addParticle(§=!F§.§,!&§,§;m§.§!!`§,§=!F§.§`9§,_loc2_,_loc3_,-1,"",§=!F§.§]!-§);
         }
         else
         {
            _loc4_ = §=!F§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§#!7§ == 1)
            {
               _loc4_ = §=!F§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§#!7§ == 2)
            {
               _loc4_ = §=!F§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§#!7§ = (this.§#!7§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§;m§.§!!`§,§=!F§.§`9§,_loc2_,_loc3_,-1,"",§=!F§.§]!-§);
         }
         if(§7!Z§() > §=!!§.§9;§ && Math.random() < §?t§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§=!F§.§[<§,§;m§.§?=§,§=!F§.§'U§,§?@§().GetPosition().x,§?@§().GetPosition().y,1250,"",§=!F§.§2T§(§]!W§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§9X§.mTryToFly)
         {
            §1!A§(§=!D§.§9!7§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§7s§) : Boolean
      {
         if(this.§86§)
         {
            return false;
         }
         §1!A§(§=!D§.§3A§);
         this.§86§ = true;
         return true;
      }
      
      private function §`!6§(param1:int) : int
      {
         return Math.min(§3>§.§8!$§.§+K§,param1);
      }
      
      override public function addDestructionParticles(param1:§;m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §?Q§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§`!6§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§9X§.mW * §0!Z§.§+n§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§9X§.mH * §0!Z§.§+n§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§=!F§.§[<§,§;m§.§?=§,§=!F§.§'U§,§?@§().GetPosition().x + _loc7_,§?@§().GetPosition().y + _loc8_,1500,"",§=!F§.§2T§(§]!W§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§;m§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§'&§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §7!Z§() / 10;
         var _loc4_:int = 1 + _loc3_ * §?Q§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§`!6§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§=!F§.§^T§,§;m§.§?=§,§=!F§.§'U§,§?@§().GetPosition().x,§?@§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§=!F§.§[<§,§;m§.§?=§,§=!F§.§'U§,§?@§().GetPosition().x,§?@§().GetPosition().y,1250,"",§=!F§.§2T§(§]!W§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
