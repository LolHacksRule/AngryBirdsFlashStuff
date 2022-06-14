package §9"%§
{
   import §%Q§.§;!y§;
   import §1!$§.Sprite;
   import §48§.b2BodyDef;
   import §48§.b2World;
   import §9"!§.§2a§;
   import §9"!§.§9"3§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   
   public class § H§ extends §#+§
   {
      
      protected static const §-!6§:Boolean = false;
      
      protected static const §,!Q§:Number = 2000;
      
      protected static const §']§:Number = 0.2;
       
      
      private var §5!q§:Number;
      
      protected var §%!q§:Boolean = false;
      
      protected var §,"#§:int = 0;
      
      public function § H§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §"!&§.mTryToScream = §#!D§.§%"$§ + 1;
         }
      }
      
      public static function §6-§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §#6§.§6!z§.particles.§4!P§("STAR_PARTICLE",§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,param1,param2,750,"",§'G§.§,">§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §-!a§() : Boolean
      {
         return this.§%!q§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§=-§ = true;
         _loc3_.§'!k§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§[" § < §@!h§ && §>"?§())
         {
            this.§5!q§ += param1;
            if(this.§5!q§ >= §,!Q§)
            {
               return true;
            }
         }
         else
         {
            this.§5!q§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§%!q§)
         {
            if(§2!>§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§2!>§.toUpperCase() == "BIRD_YELLOW" || §2!>§.toUpperCase() == "BIRD_GREEN" || §2!>§.toUpperCase() == "BIRD_RED" || §2!>§.toUpperCase() == "BIRD_RED_BIG" || §2!>§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§"!&§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§"!&§.mTryToSpecial)
               {
                  §"!&§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§"!&§.mTryToSpecial)
            {
               §"!&§.mTryToSpecial = false;
               if(§"!&§.mIsSpecial)
               {
                  §"!&§.mIsSpecial = false;
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
         if(§=!y§().IsAwake() && §[" § == §@!h§)
         {
            if(!§"!&§.mTryToFly)
            {
               §"!&§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§2!>§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§%!q§ ? 2 : 1) * 360 / 1000;
               §3!a§(§,!G§() - _loc3_);
            }
            else if(!(§2!>§.toUpperCase() == "BIRD_WHITE" && this.§%!q§))
            {
               if(§-!6§)
               {
                  §0m§();
               }
               else if(!§9"7§() && !§[`§())
               {
                  §3!a§(0);
               }
            }
         }
         else if(§"!&§.mTryToFly)
         {
            §"!&§.mTryToFly = false;
            if(§"!&§.mIsFlying)
            {
               §"!&§.mIsFlying = false;
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
         var _loc1_:§9"3§ = §#6§.§6!z§;
         if(§[" § < §@!h§ || §=!y§() == null)
         {
            _loc1_.§7">§(this);
            _loc1_.§!!B§ = false;
            return;
         }
         var _loc2_:Number = x * §9"3§.§'"F§;
         var _loc3_:Number = y * §9"3§.§'"F§;
         if(_loc1_.§!!B§)
         {
            _loc1_.particles.§;!u§(§'G§.§5!&§,§^!f§.§?i§,§'G§.§9"4§,_loc2_,_loc3_,-1,"",§'G§.§9!q§);
            _loc1_.§!!B§ = false;
            this.§,"#§ = 0;
         }
         else if(§'2§ > 1)
         {
            _loc1_.particles.§;!u§(§'G§.§'!>§,§^!f§.§?i§,§'G§.§9"4§,_loc2_,_loc3_,-1,"",§'G§.§9!q§);
         }
         else
         {
            _loc4_ = §'G§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§,"#§ == 1)
            {
               _loc4_ = §'G§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§,"#§ == 2)
            {
               _loc4_ = §'G§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§,"#§ = (this.§,"#§ + 1) % 3;
            _loc1_.particles.§;!u§(_loc4_,§^!f§.§?i§,§'G§.§9"4§,_loc2_,_loc3_,-1,"",§'G§.§9!q§);
         }
         if(_loc1_.slingshot.§]#§())
         {
            §6-§(_loc2_,_loc3_,0,3,10);
         }
         if(§#%§() > §2a§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §']§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§;!u§(§'G§.§`!O§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x,§=!y§().GetPosition().y,1250,"",§'G§.§,">§(§2!>§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§"!&§.mTryToFly)
         {
            §&x§(§;!y§.§@!H§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         if(this.§%!q§)
         {
            return false;
         }
         §&x§(§;!y§.§ y§);
         this.§%!q§ = true;
         return true;
      }
      
      private function §>d§(param1:int) : int
      {
         return Math.min(§#6§.§6!z§.§0"E§,param1);
      }
      
      override public function addDestructionParticles(param1:§^!f§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §;!"§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>d§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§"!&§.mW * §9"3§.§'"F§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§"!&§.mH * §9"3§.§'"F§) + Math.random() * -_loc8_ * 2;
            param1.§;!u§(§'G§.§`!O§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x + _loc7_,§=!y§().GetPosition().y + _loc8_,1500,"",§'G§.§,">§(§2!>§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§^!f§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§[`§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §#%§() / 10;
         var _loc4_:int = 1 + _loc3_ * §;!"§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>d§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§;!u§(§'G§.§0!;§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x,§=!y§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§;!u§(§'G§.§`!O§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x,§=!y§().GetPosition().y,1250,"",§'G§.§,">§(§2!>§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
