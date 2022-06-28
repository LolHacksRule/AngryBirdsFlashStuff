package §]![§
{
   import § D§.b2BodyDef;
   import § D§.b2World;
   import §+&§.§ R§;
   import §+&§.§-!7§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §5i§.§4!]§;
   import §9E§.Sprite;
   import §>o§.§'y§;
   
   public class §4J§ extends §-s§
   {
      
      protected static const §&!J§:Boolean = false;
      
      protected static const §5m§:Number = 2000;
      
      protected static const §`_§:Number = 0.2;
       
      
      private var §;!S§:Number;
      
      private var §!D§:Boolean = false;
      
      protected var §@r§:int = 0;
      
      public function §4J§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §[!"§.mTryToScream = §+s§.§'!m§ + 1;
         }
      }
      
      public function get §6V§() : Boolean
      {
         return this.§!D§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§5!f§ = true;
         _loc3_.§"v§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§%,§ < §0K§ && §;!3§())
         {
            this.§;!S§ += param1;
            if(this.§;!S§ >= §5m§)
            {
               return true;
            }
         }
         else
         {
            this.§;!S§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§!D§)
         {
            if(§@!p§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§@!p§.toUpperCase() == "BIRD_YELLOW" || §@!p§.toUpperCase() == "BIRD_GREEN" || §@!p§.toUpperCase() == "BIRD_RED" || §@!p§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§[!"§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§[!"§.mTryToSpecial)
               {
                  §[!"§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§[!"§.mTryToSpecial)
            {
               §[!"§.mTryToSpecial = false;
               if(§[!"§.mIsSpecial)
               {
                  §[!"§.mIsSpecial = false;
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
         if(§+$§().IsAwake() && §%,§ == §0K§)
         {
            if(!§[!"§.mTryToFly)
            {
               §[!"§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§@!p§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§!D§ ? 2 : 1) * 360 / 1000;
               §3!7§(§[!i§() - _loc3_);
            }
            else if(!(§@!p§.toUpperCase() == "BIRD_WHITE" && this.§!D§))
            {
               if(§&!J§)
               {
                  §?!s§();
               }
               else if(!§3!i§() && !§=!P§())
               {
                  §3!7§(0);
               }
            }
         }
         else if(§[!"§.mTryToFly)
         {
            §[!"§.mTryToFly = false;
            if(§[!"§.mIsFlying)
            {
               §[!"§.mIsFlying = false;
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
         var _loc1_:§-!7§ = §4!]§.§8C§;
         if(§%,§ < §0K§ || §+$§() == null)
         {
            _loc1_.§3!+§(this);
            _loc1_.§4!$§ = false;
            return;
         }
         var _loc2_:Number = x * §-!7§.§8!r§;
         var _loc3_:Number = y * §-!7§.§8!r§;
         if(_loc1_.§4!$§)
         {
            _loc1_.particles.§=!K§(§6Q§.§2!+§,§,n§.§implements§,§6Q§.§,e§,_loc2_,_loc3_,-1,"",§6Q§.§-@§);
            _loc1_.§4!$§ = false;
            this.§@r§ = 0;
         }
         else if(§-!9§ > 1)
         {
            _loc1_.particles.§=!K§(§6Q§.§6!p§,§,n§.§implements§,§6Q§.§,e§,_loc2_,_loc3_,-1,"",§6Q§.§-@§);
         }
         else
         {
            _loc4_ = §6Q§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§@r§ == 1)
            {
               _loc4_ = §6Q§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§@r§ == 2)
            {
               _loc4_ = §6Q§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§@r§ = (this.§@r§ + 1) % 3;
            _loc1_.particles.§=!K§(_loc4_,§,n§.§implements§,§6Q§.§,e§,_loc2_,_loc3_,-1,"",§6Q§.§-@§);
         }
         if(§7!e§() > § R§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §`_§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§=!K§(§6Q§.§&4§,§,n§.§9!&§,§6Q§.§?G§,§+$§().GetPosition().x,§+$§().GetPosition().y,1250,"",§6Q§.§5r§(§@!p§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§[!"§.mTryToFly)
         {
            §;k§(§'y§.§9x§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§[?§) : Boolean
      {
         if(this.§!D§)
         {
            return false;
         }
         §;k§(§'y§.§=!I§);
         this.§!D§ = true;
         return true;
      }
      
      private function §]X§(param1:int) : int
      {
         return Math.min(§4!]§.§8C§.§=!E§,param1);
      }
      
      override public function addDestructionParticles(param1:§,n§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §=U§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§]X§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§[!"§.mW * §-!7§.§8!r§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§[!"§.mH * §-!7§.§8!r§) + Math.random() * -_loc8_ * 2;
            param1.§=!K§(§6Q§.§&4§,§,n§.§9!&§,§6Q§.§?G§,§+$§().GetPosition().x + _loc7_,§+$§().GetPosition().y + _loc8_,1500,"",§6Q§.§5r§(§@!p§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,n§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§=!P§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §7!e§() / 10;
         var _loc4_:int = 1 + _loc3_ * §=U§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§]X§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§=!K§(§6Q§.§['§,§,n§.§9!&§,§6Q§.§?G§,§+$§().GetPosition().x,§+$§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§=!K§(§6Q§.§&4§,§,n§.§9!&§,§6Q§.§?G§,§+$§().GetPosition().x,§+$§().GetPosition().y,1250,"",§6Q§.§5r§(§@!p§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
