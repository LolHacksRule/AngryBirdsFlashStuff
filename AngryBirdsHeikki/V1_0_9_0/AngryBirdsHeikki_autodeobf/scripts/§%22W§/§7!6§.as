package §"W§
{
   import § d§.§'!"§;
   import § d§.§3§;
   import §"§.§"@§;
   import §"§.§2z§;
   import §#!f§.Sprite;
   import §>!F§.§9!Z§;
   import §^!Z§.b2BodyDef;
   import §^!Z§.b2World;
   import §^-§.§'!!§;
   
   public class §7!6§ extends §&!K§
   {
      
      protected static const §2!?§:Boolean = false;
      
      protected static const §>!c§:Number = 2000;
      
      protected static const §4!S§:Number = 0.2;
       
      
      private var §2!"§:Number;
      
      private var §6!<§:Boolean = false;
      
      protected var §?8§:int = 0;
      
      public function §7!6§(param1:§?!T§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §%f§.mTryToScream = §0f§.§![§ + 1;
         }
      }
      
      public function get §]!V§() : Boolean
      {
         return this.§6!<§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§&,§ = true;
         _loc3_.§`!J§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§>[§ < §&J§ && §?g§())
         {
            this.§2!"§ += param1;
            if(this.§2!"§ >= §>!c§)
            {
               return true;
            }
         }
         else
         {
            this.§2!"§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§6!<§)
         {
            if(§]D§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§]D§.toUpperCase() == "BIRD_YELLOW" || §]D§.toUpperCase() == "BIRD_GREEN" || §]D§.toUpperCase() == "BIRD_RED" || §]D§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§%f§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§%f§.mTryToSpecial)
               {
                  §%f§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§%f§.mTryToSpecial)
            {
               §%f§.mTryToSpecial = false;
               if(§%f§.mIsSpecial)
               {
                  §%f§.mIsSpecial = false;
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
         if(§"!H§().IsAwake() && §>[§ == §&J§)
         {
            if(!§%f§.mTryToFly)
            {
               §%f§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§]D§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§6!<§ ? 2 : 1) * 360 / 1000;
               §5S§(§1!N§() - _loc3_);
            }
            else if(!(§]D§.toUpperCase() == "BIRD_WHITE" && this.§6!<§))
            {
               if(§2!?§)
               {
                  §5!&§();
               }
               else if(!§0E§() && !§-!;§())
               {
                  §5S§(0);
               }
            }
         }
         else if(§%f§.mTryToFly)
         {
            §%f§.mTryToFly = false;
            if(§%f§.mIsFlying)
            {
               §%f§.mIsFlying = false;
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
         var _loc1_:§'!"§ = §9!Z§.§5!$§;
         if(§>[§ < §&J§ || §"!H§() == null)
         {
            _loc1_.§ !B§(this);
            _loc1_.§ !,§ = false;
            return;
         }
         var _loc2_:Number = x * §'!"§.§#3§;
         var _loc3_:Number = y * §'!"§.§#3§;
         if(_loc1_.§ !,§)
         {
            _loc1_.particles.addParticle(§2z§.§&!J§,§"@§.§,!Y§,§2z§.§?!@§,_loc2_,_loc3_,-1,"",§2z§.§&_§);
            _loc1_.§ !,§ = false;
            this.§?8§ = 0;
         }
         else if(§[!e§ > 1)
         {
            _loc1_.particles.addParticle(§2z§.§"L§,§"@§.§,!Y§,§2z§.§?!@§,_loc2_,_loc3_,-1,"",§2z§.§&_§);
         }
         else
         {
            _loc4_ = §2z§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§?8§ == 1)
            {
               _loc4_ = §2z§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§?8§ == 2)
            {
               _loc4_ = §2z§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§?8§ = (this.§?8§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§"@§.§,!Y§,§2z§.§?!@§,_loc2_,_loc3_,-1,"",§2z§.§&_§);
         }
         if(§4L§() > §3§.§3@§ && Math.random() < §4!S§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§2z§.§?^§,§"@§.§6^§,§2z§.§<A§,§"!H§().GetPosition().x,§"!H§().GetPosition().y,1250,"",§2z§.§?1§(§]D§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§%f§.mTryToFly)
         {
            §,!^§(§'!!§.§ !%§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§?!T§) : Boolean
      {
         if(this.§6!<§)
         {
            return false;
         }
         §,!^§(§'!!§.§`D§);
         this.§6!<§ = true;
         return true;
      }
      
      private function §2!F§(param1:int) : int
      {
         return Math.min(§9!Z§.§5!$§.§'!I§,param1);
      }
      
      override public function addDestructionParticles(param1:§"@§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §<!R§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§2!F§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§%f§.mW * §'!"§.§#3§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§%f§.mH * §'!"§.§#3§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§2z§.§?^§,§"@§.§6^§,§2z§.§<A§,§"!H§().GetPosition().x + _loc7_,§"!H§().GetPosition().y + _loc8_,1500,"",§2z§.§?1§(§]D§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§"@§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§-!;§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §4L§() / 10;
         var _loc4_:int = 1 + _loc3_ * §<!R§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§2!F§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§2z§.§]!`§,§"@§.§6^§,§2z§.§<A§,§"!H§().GetPosition().x,§"!H§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§2z§.§?^§,§"@§.§6^§,§2z§.§<A§,§"!H§().GetPosition().x,§"!H§().GetPosition().y,1250,"",§2z§.§?1§(§]D§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
