package § T§
{
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §&i§.b2BodyDef;
   import §&i§.b2World;
   import §1!A§.Sprite;
   import §5x§.§&o§;
   import §7z§.§0!D§;
   import §7z§.§]!-§;
   import §;!X§.§7`§;
   
   public class §1M§ extends §%g§
   {
      
      protected static const § !$§:Boolean = false;
      
      protected static const §#!D§:Number = 2000;
      
      protected static const §#v§:Number = 0.2;
       
      
      private var §`o§:Number;
      
      private var §92§:Boolean = false;
      
      protected var §`!7§:int = 0;
      
      public function §1M§(param1:§1!'§, param2:Sprite, param3:b2World, param4:§]!-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §9t§.mTryToScream = §4$§.§,!;§ + 1;
         }
      }
      
      public function get §#!2§() : Boolean
      {
         return this.§92§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§`k§ = true;
         _loc3_.§]^§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§'!"§ < §get § && §2!H§())
         {
            this.§`o§ += param1;
            if(this.§`o§ >= §#!D§)
            {
               return true;
            }
         }
         else
         {
            this.§`o§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§92§)
         {
            if(§9@§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§9@§.toUpperCase() == "BIRD_YELLOW" || §9@§.toUpperCase() == "BIRD_GREEN" || §9@§.toUpperCase() == "BIRD_RED" || §9@§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§9t§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§9t§.mTryToSpecial)
               {
                  §9t§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§9t§.mTryToSpecial)
            {
               §9t§.mTryToSpecial = false;
               if(§9t§.mIsSpecial)
               {
                  §9t§.mIsSpecial = false;
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
         if(§][§().IsAwake() && §'!"§ == §get §)
         {
            if(!§9t§.mTryToFly)
            {
               §9t§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§9@§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§92§ ? 2 : 1) * 360 / 1000;
               §`!"§(§5o§() - _loc3_);
            }
            else if(!(§9@§.toUpperCase() == "BIRD_WHITE" && this.§92§))
            {
               if(§ !$§)
               {
                  §,1§();
               }
               else if(!§[g§() && !§?'§())
               {
                  §`!"§(0);
               }
            }
         }
         else if(§9t§.mTryToFly)
         {
            §9t§.mTryToFly = false;
            if(§9t§.mIsFlying)
            {
               §9t§.mIsFlying = false;
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
         var _loc1_:§]!-§ = §7`§.§2'§;
         if(§'!"§ < §get § || §][§() == null)
         {
            _loc1_.§5F§(this);
            _loc1_.§>7§ = false;
            return;
         }
         var _loc2_:Number = x * §]!-§.§>C§;
         var _loc3_:Number = y * §]!-§.§>C§;
         if(_loc1_.§>7§)
         {
            _loc1_.particles.addParticle(§^!_§.§1!1§,§0m§.§#4§,§^!_§.§@q§,_loc2_,_loc3_,-1,"",§^!_§.§6"§);
            _loc1_.§>7§ = false;
            this.§`!7§ = 0;
         }
         else if(§9!B§ > 1)
         {
            _loc1_.particles.addParticle(§^!_§.§[N§,§0m§.§#4§,§^!_§.§@q§,_loc2_,_loc3_,-1,"",§^!_§.§6"§);
         }
         else
         {
            _loc4_ = §^!_§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§`!7§ == 1)
            {
               _loc4_ = §^!_§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§`!7§ == 2)
            {
               _loc4_ = §^!_§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§`!7§ = (this.§`!7§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§0m§.§#4§,§^!_§.§@q§,_loc2_,_loc3_,-1,"",§^!_§.§6"§);
         }
         if(§0!I§() > §0!D§.§%&§ && Math.random() < §#v§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§^!_§.§"1§,§0m§.§=!T§,§^!_§.§4t§,§][§().GetPosition().x,§][§().GetPosition().y,1250,"",§^!_§.§2!N§(§9@§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§9t§.mTryToFly)
         {
            §^[§(§&o§.§4!,§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§1!'§) : Boolean
      {
         if(this.§92§)
         {
            return false;
         }
         §^[§(§&o§.§5>§);
         this.§92§ = true;
         return true;
      }
      
      private function §7!Z§(param1:int) : int
      {
         return Math.min(§7`§.§2'§.§2!J§,param1);
      }
      
      override public function addDestructionParticles(param1:§0m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §,!E§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§7!Z§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§9t§.mW * §]!-§.§>C§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§9t§.mH * §]!-§.§>C§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§^!_§.§"1§,§0m§.§=!T§,§^!_§.§4t§,§][§().GetPosition().x + _loc7_,§][§().GetPosition().y + _loc8_,1500,"",§^!_§.§2!N§(§9@§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§0m§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§?'§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §0!I§() / 10;
         var _loc4_:int = 1 + _loc3_ * §,!E§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§7!Z§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§^!_§.§^4§,§0m§.§=!T§,§^!_§.§4t§,§][§().GetPosition().x,§][§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§^!_§.§"1§,§0m§.§=!T§,§^!_§.§4t§,§][§().GetPosition().x,§][§().GetPosition().y,1250,"",§^!_§.§2!N§(§9@§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
