package §&!8§
{
   import § o§.b2BodyDef;
   import § o§.b2World;
   import §!r§.§"B§;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §]V§ extends §-!K§
   {
      
      protected static const §>!T§:Boolean = false;
      
      protected static const §>!8§:Number = 2000;
      
      protected static const §"#§:Number = 0.2;
       
      
      private var §%M§:Number;
      
      protected var §8!d§:Boolean = false;
      
      protected var §+§:int = 0;
      
      public function §]V§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §5d§.mTryToScream = §%$§.§&!D§ + 1;
         }
      }
      
      public static function § `§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §@!Z§.§;!,§.particles.§2!L§("STAR_PARTICLE",§7!?§.§0!;§,§do§.§+!c§,§7!?§.§22§,param1,param2,750,"",§7!?§.§7R§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §,B§() : Boolean
      {
         return this.§8!d§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§7N§ = true;
         _loc3_.§60§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§+_§ < § !G§ && §>!<§())
         {
            this.§%M§ += param1;
            if(this.§%M§ >= §>!8§)
            {
               return true;
            }
         }
         else
         {
            this.§%M§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§8!d§)
         {
            if(§>p§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§>p§.toUpperCase() == "BIRD_YELLOW" || §>p§.toUpperCase() == "BIRD_GREEN" || §>p§.toUpperCase() == "BIRD_RED" || §>p§.toUpperCase() == "BIRD_RED_BIG" || §>p§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§5d§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§5d§.mTryToSpecial)
               {
                  §5d§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§5d§.mTryToSpecial)
            {
               §5d§.mTryToSpecial = false;
               if(§5d§.mIsSpecial)
               {
                  §5d§.mIsSpecial = false;
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
         if(§`e§().IsAwake() && §+_§ == § !G§)
         {
            if(!§5d§.mTryToFly)
            {
               §5d§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§>p§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§8!d§ ? 2 : 1) * 360 / 1000;
               §6!G§(§?%§() - _loc3_);
            }
            else if(!(§>p§.toUpperCase() == "BIRD_WHITE" && this.§8!d§))
            {
               if(§>!T§)
               {
                  §%K§();
               }
               else if(!§4!Y§() && !§9W§())
               {
                  §6!G§(0);
               }
            }
         }
         else if(§5d§.mTryToFly)
         {
            §5d§.mTryToFly = false;
            if(§5d§.mIsFlying)
            {
               §5d§.mIsFlying = false;
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
         var _loc1_:§ p§ = §@!Z§.§;!,§;
         if(§+_§ < § !G§ || §`e§() == null)
         {
            _loc1_.§,3§(this);
            _loc1_.§;$§ = false;
            return;
         }
         var _loc2_:Number = x * § p§.§]!E§;
         var _loc3_:Number = y * § p§.§]!E§;
         if(_loc1_.§;$§)
         {
            _loc1_.particles.addParticle(§7!?§.§`f§,§do§.§[N§,§7!?§.§<!h§,_loc2_,_loc3_,-1,"",§7!?§.§7^§);
            _loc1_.§;$§ = false;
            this.§+§ = 0;
         }
         else if(§8C§ > 1)
         {
            _loc1_.particles.addParticle(§7!?§.§;m§,§do§.§[N§,§7!?§.§<!h§,_loc2_,_loc3_,-1,"",§7!?§.§7^§);
         }
         else
         {
            _loc4_ = §7!?§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§+§ == 1)
            {
               _loc4_ = §7!?§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§+§ == 2)
            {
               _loc4_ = §7!?§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§+§ = (this.§+§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§do§.§[N§,§7!?§.§<!h§,_loc2_,_loc3_,-1,"",§7!?§.§7^§);
         }
         if(_loc1_.slingshot.§#'§())
         {
            § `§(_loc2_,_loc3_,0,3,10);
         }
         if(§&L§() > §7!N§.§"O§ && Math.random() < §"#§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§7!?§.§=!E§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x,§`e§().GetPosition().y,1250,"",§7!?§.§7R§(§>p§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§5d§.mTryToFly)
         {
            §0!5§(§"B§.§'!]§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         if(this.§8!d§)
         {
            return false;
         }
         §0!5§(§"B§.§'!V§);
         this.§8!d§ = true;
         return true;
      }
      
      private function §-!G§(param1:int) : int
      {
         return Math.min(§@!Z§.§;!,§.§2m§,param1);
      }
      
      override public function addDestructionParticles(param1:§do§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §>!+§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§-!G§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5d§.mW * § p§.§]!E§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5d§.mH * § p§.§]!E§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§7!?§.§=!E§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x + _loc7_,§`e§().GetPosition().y + _loc8_,1500,"",§7!?§.§7R§(§>p§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§do§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§9W§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §&L§() / 10;
         var _loc4_:int = 1 + _loc3_ * §>!+§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§-!G§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§7!?§.§=!H§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x,§`e§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§7!?§.§=!E§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x,§`e§().GetPosition().y,1250,"",§7!?§.§7R§(§>p§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
