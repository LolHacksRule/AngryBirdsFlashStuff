package § !$§
{
   import § A§.§68§;
   import §+d§.b2BodyDef;
   import §+d§.b2World;
   import §,!A§.§-q§;
   import §,!A§.§0i§;
   import §6!;§.Sprite;
   import §8O§.§&#§;
   import §9!'§.§0!%§;
   import §9!'§.§@!U§;
   
   public class §2!J§ extends §8r§
   {
      
      protected static const §;!]§:Boolean = false;
      
      protected static const §[!K§:Number = 2000;
      
      protected static const §32§:Number = 0.2;
       
      
      private var §"![§:Number;
      
      protected var §7u§:Boolean = false;
      
      protected var §1!H§:int = 0;
      
      public function §2!J§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §[m§.mTryToScream = §"!%§.§"!=§ + 1;
         }
      }
      
      public static function §9F§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §&#§.§3!D§.particles.§]V§("STAR_PARTICLE",§-q§.§-,§,§0i§.§>E§,§-q§.§5[§,param1,param2,750,"",§-q§.§]8§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §?!>§() : Boolean
      {
         return this.§7u§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§&[§ = true;
         _loc3_.§ case§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§6!^§ < §1D§ && §&n§())
         {
            this.§"![§ += param1;
            if(this.§"![§ >= §[!K§)
            {
               return true;
            }
         }
         else
         {
            this.§"![§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§7u§)
         {
            if(§ [§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§ [§.toUpperCase() == "BIRD_YELLOW" || § [§.toUpperCase() == "BIRD_GREEN" || § [§.toUpperCase() == "BIRD_RED" || § [§.toUpperCase() == "BIRD_RED_BIG" || § [§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§[m§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§[m§.mTryToSpecial)
               {
                  §[m§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§[m§.mTryToSpecial)
            {
               §[m§.mTryToSpecial = false;
               if(§[m§.mIsSpecial)
               {
                  §[m§.mIsSpecial = false;
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
         if(§]!2§().IsAwake() && §6!^§ == §1D§)
         {
            if(!§[m§.mTryToFly)
            {
               §[m§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§ [§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§7u§ ? 2 : 1) * 360 / 1000;
               §4!7§(§>s§() - _loc3_);
            }
            else if(!(§ [§.toUpperCase() == "BIRD_WHITE" && this.§7u§))
            {
               if(§;!]§)
               {
                  §2!d§();
               }
               else if(!§&!Z§() && !§%q§())
               {
                  §4!7§(0);
               }
            }
         }
         else if(§[m§.mTryToFly)
         {
            §[m§.mTryToFly = false;
            if(§[m§.mIsFlying)
            {
               §[m§.mIsFlying = false;
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
         var _loc1_:§0!%§ = §&#§.§3!D§;
         if(§6!^§ < §1D§ || §]!2§() == null)
         {
            _loc1_.§+!4§(this);
            _loc1_.§61§ = false;
            return;
         }
         var _loc2_:Number = x * §0!%§.§"m§;
         var _loc3_:Number = y * §0!%§.§"m§;
         if(_loc1_.§61§)
         {
            _loc1_.particles.addParticle(§-q§.§=%§,§0i§.§=R§,§-q§.§#!2§,_loc2_,_loc3_,-1,"",§-q§.§%u§);
            _loc1_.§61§ = false;
            this.§1!H§ = 0;
         }
         else if(§-!=§ > 1)
         {
            _loc1_.particles.addParticle(§-q§.§0k§,§0i§.§=R§,§-q§.§#!2§,_loc2_,_loc3_,-1,"",§-q§.§%u§);
         }
         else
         {
            _loc4_ = §-q§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§1!H§ == 1)
            {
               _loc4_ = §-q§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§1!H§ == 2)
            {
               _loc4_ = §-q§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§1!H§ = (this.§1!H§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§0i§.§=R§,§-q§.§#!2§,_loc2_,_loc3_,-1,"",§-q§.§%u§);
         }
         if(_loc1_.slingshot.§'!A§())
         {
            §9F§(_loc2_,_loc3_,0,3,10);
         }
         if(§3!+§() > §@!U§.§88§ && Math.random() < §32§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§-q§.§]!^§,§0i§.§>E§,§-q§.§5[§,§]!2§().GetPosition().x,§]!2§().GetPosition().y,1250,"",§-q§.§]8§(§ [§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§[m§.mTryToFly)
         {
            §^!'§(§68§.§5r§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§7!!§) : Boolean
      {
         if(this.§7u§)
         {
            return false;
         }
         §^!'§(§68§.§`v§);
         this.§7u§ = true;
         return true;
      }
      
      private function §%! §(param1:int) : int
      {
         return Math.min(§&#§.§3!D§.§;<§,param1);
      }
      
      override public function addDestructionParticles(param1:§0i§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = § `§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§%! §(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§[m§.mW * §0!%§.§"m§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§[m§.mH * §0!%§.§"m§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§-q§.§]!^§,§0i§.§>E§,§-q§.§5[§,§]!2§().GetPosition().x + _loc7_,§]!2§().GetPosition().y + _loc8_,1500,"",§-q§.§]8§(§ [§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§0i§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§%q§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §3!+§() / 10;
         var _loc4_:int = 1 + _loc3_ * § `§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§%! §(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§-q§.§3!!§,§0i§.§>E§,§-q§.§5[§,§]!2§().GetPosition().x,§]!2§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§-q§.§]!^§,§0i§.§>E§,§-q§.§5[§,§]!2§().GetPosition().x,§]!2§().GetPosition().y,1250,"",§-q§.§]8§(§ [§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
