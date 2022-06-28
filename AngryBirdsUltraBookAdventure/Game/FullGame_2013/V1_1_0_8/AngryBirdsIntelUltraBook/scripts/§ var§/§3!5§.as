package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2BodyDef;
   import §#I§.b2World;
   import §0S§.§6!D§;
   import §40§.§1!g§;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §`g§.Sprite;
   
   public class §3!5§ extends §&Y§
   {
      
      protected static const §]j§:Boolean = false;
      
      protected static const §2"!§:Number = 2000;
      
      protected static const §=!z§:Number = 0.2;
       
      
      private var §#!4§:Number;
      
      protected var §[A§:Boolean = false;
      
      protected var §]9§:int = 0;
      
      public function §3!5§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §+!j§.mTryToScream = §7!r§.§<!c§ + 1;
         }
      }
      
      public static function §5%§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §,!s§.§=!I§.particles.§;4§("STAR_PARTICLE",§>p§.§,+§,§=!%§.§2k§,§>p§.§%§,param1,param2,750,"",§>p§.§=!f§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §2!K§() : Boolean
      {
         return this.§[A§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§2!C§ = true;
         _loc3_.§"!K§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§0M§ < §]!3§ && §,1§())
         {
            this.§#!4§ += param1;
            if(this.§#!4§ >= §2"!§)
            {
               return true;
            }
         }
         else
         {
            this.§#!4§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§[A§)
         {
            if(§-!>§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§-!>§.toUpperCase() == "BIRD_YELLOW" || §-!>§.toUpperCase() == "BIRD_GREEN" || §-!>§.toUpperCase() == "BIRD_RED" || §-!>§.toUpperCase() == "BIRD_RED_BIG" || §-!>§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§+!j§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§+!j§.mTryToSpecial)
               {
                  §+!j§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§+!j§.mTryToSpecial)
            {
               §+!j§.mTryToSpecial = false;
               if(§+!j§.mIsSpecial)
               {
                  §+!j§.mIsSpecial = false;
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
         if(§63§().IsAwake() && §0M§ == §]!3§)
         {
            if(!§+!j§.mTryToFly)
            {
               §+!j§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§-!>§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§[A§ ? 2 : 1) * 360 / 1000;
               §4I§(§3C§() - _loc3_);
            }
            else if(!(§-!>§.toUpperCase() == "BIRD_WHITE" && this.§[A§))
            {
               if(§]j§)
               {
                  §,!!§();
               }
               else if(!§'!j§() && !§1!b§())
               {
                  §4I§(0);
               }
            }
         }
         else if(§+!j§.mTryToFly)
         {
            §+!j§.mTryToFly = false;
            if(§+!j§.mIsFlying)
            {
               §+!j§.mIsFlying = false;
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
         var _loc1_:§5G§ = §,!s§.§=!I§;
         if(§0M§ < §]!3§ || §63§() == null)
         {
            _loc1_.§-!7§(this);
            _loc1_.§[!f§ = false;
            return;
         }
         var _loc2_:Number = x * §5G§.§6+§;
         var _loc3_:Number = y * §5G§.§6+§;
         if(_loc1_.§[!f§)
         {
            _loc1_.particles.§-M§(§>p§.§@=§,§=!%§.§#,§,§>p§.§?-§,_loc2_,_loc3_,-1,"",§>p§.§9§);
            _loc1_.§[!f§ = false;
            this.§]9§ = 0;
         }
         else if(§,z§ > 1)
         {
            _loc1_.particles.§-M§(§>p§.§8_§,§=!%§.§#,§,§>p§.§?-§,_loc2_,_loc3_,-1,"",§>p§.§9§);
         }
         else
         {
            _loc4_ = §>p§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§]9§ == 1)
            {
               _loc4_ = §>p§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§]9§ == 2)
            {
               _loc4_ = §>p§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§]9§ = (this.§]9§ + 1) % 3;
            _loc1_.particles.§-M§(_loc4_,§=!%§.§#,§,§>p§.§?-§,_loc2_,_loc3_,-1,"",§>p§.§9§);
         }
         if(_loc1_.slingshot.§^F§())
         {
            §5%§(_loc2_,_loc3_,0,3,10);
         }
         if(§6!E§() > §1!g§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §=!z§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x,§63§().GetPosition().y,1250,"",§>p§.§=!f§(§-!>§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§+!j§.mTryToFly)
         {
            §'!S§(§6!D§.§8!n§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         if(this.§[A§)
         {
            return false;
         }
         §'!S§(§6!D§.§ try§);
         this.§[A§ = true;
         return true;
      }
      
      private function §1b§(param1:int) : int
      {
         return Math.min(§,!s§.§=!I§.§1![§,param1);
      }
      
      override public function addDestructionParticles(param1:§=!%§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §^!e§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§1b§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§+!j§.mW * §5G§.§6+§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§+!j§.mH * §5G§.§6+§) + Math.random() * -_loc8_ * 2;
            param1.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x + _loc7_,§63§().GetPosition().y + _loc8_,1500,"",§>p§.§=!f§(§-!>§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§1!b§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §6!E§() / 10;
         var _loc4_:int = 1 + _loc3_ * §^!e§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§1b§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§-M§(§>p§.§'f§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x,§63§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x,§63§().GetPosition().y,1250,"",§>p§.§=!f§(§-!>§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
