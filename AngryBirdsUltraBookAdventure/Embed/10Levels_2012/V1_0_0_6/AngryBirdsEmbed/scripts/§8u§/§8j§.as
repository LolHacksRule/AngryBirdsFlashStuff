package §8u§
{
   import §+!?§.§"h§;
   import §,!C§.§implements§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§3X§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §8j§ extends §=Z§
   {
      
      protected static const §[!;§:Boolean = false;
      
      protected static const §[!E§:Number = 2000;
      
      protected static const §"!9§:Number = 0.2;
       
      
      private var §;!<§:Number;
      
      private var §55§:Boolean = false;
      
      protected var §2!I§:int = 0;
      
      public function §8j§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §7!;§.mTryToScream = §44§.§;<§ + 1;
         }
      }
      
      public function get §=t§() : Boolean
      {
         return this.§55§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.bullet = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§@^§ < §%!J§ && §-[§())
         {
            this.§;!<§ += param1;
            if(this.§;!<§ >= §[!E§)
            {
               return true;
            }
         }
         else
         {
            this.§;!<§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§55§)
         {
            if(§>!"§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§>!"§.toUpperCase() == "BIRD_YELLOW" || §>!"§.toUpperCase() == "BIRD_GREEN" || §>!"§.toUpperCase() == "BIRD_RED" || §>!"§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§7!;§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§7!;§.mTryToSpecial)
               {
                  §7!;§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§7!;§.mTryToSpecial)
            {
               §7!;§.mTryToSpecial = false;
               if(§7!;§.mIsSpecial)
               {
                  §7!;§.mIsSpecial = false;
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
         if(§?n§().IsAwake() && §@^§ == §%!J§)
         {
            if(!§7!;§.mTryToFly)
            {
               §7!;§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§>!"§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§55§ ? 2 : 1) * 360 / 1000;
               §>X§(§ for§() - _loc3_);
            }
            else if(!(§>!"§.toUpperCase() == "BIRD_WHITE" && this.§55§))
            {
               if(§[!;§)
               {
                  §'!G§();
               }
               else if(!§%!@§() && !§@1§())
               {
                  §>X§(0);
               }
            }
         }
         else if(§7!;§.mTryToFly)
         {
            §7!;§.mTryToFly = false;
            if(§7!;§.mIsFlying)
            {
               §7!;§.mIsFlying = false;
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
         var _loc1_:§!E§ = §"h§.§1C§;
         if(§@^§ < §%!J§ || §?n§() == null)
         {
            _loc1_.§%a§(this);
            _loc1_.§?5§ = false;
            return;
         }
         var _loc2_:Number = x * §!E§.§#N§;
         var _loc3_:Number = y * §!E§.§#N§;
         if(_loc1_.§?5§)
         {
            _loc1_.particles.§8"§(§,i§.§%Q§,§;x§.§4!D§,§,i§.§^_§,_loc2_,_loc3_,-1,"",§,i§.§5! §);
            _loc1_.§?5§ = false;
            this.§2!I§ = 0;
         }
         else if(§&1§ > 1)
         {
            _loc1_.particles.§8"§(§,i§.§,!'§,§;x§.§4!D§,§,i§.§^_§,_loc2_,_loc3_,-1,"",§,i§.§5! §);
         }
         else
         {
            _loc4_ = §,i§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§2!I§ == 1)
            {
               _loc4_ = §,i§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§2!I§ == 2)
            {
               _loc4_ = §,i§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§2!I§ = (this.§2!I§ + 1) % 3;
            _loc1_.particles.§8"§(_loc4_,§;x§.§4!D§,§,i§.§^_§,_loc2_,_loc3_,-1,"",§,i§.§5! §);
         }
         if(§2Y§() > §3X§.§,#§ && Math.random() < §"!9§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§8"§(§,i§.§?I§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x,§?n§().GetPosition().y,1250,"",§,i§.§?Q§(§>!"§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§7!;§.mTryToFly)
         {
            §'!"§(§implements§.§#!3§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         if(this.§55§)
         {
            return false;
         }
         §'!"§(§implements§.§;c§);
         this.§55§ = true;
         return true;
      }
      
      private function §%y§(param1:int) : int
      {
         return Math.min(§"h§.§1C§.§#!#§,param1);
      }
      
      override public function addDestructionParticles(param1:§;x§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §;?§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§%y§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§7!;§.mW * §!E§.§#N§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§7!;§.mH * §!E§.§#N§) + Math.random() * -_loc8_ * 2;
            param1.§8"§(§,i§.§?I§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x + _loc7_,§?n§().GetPosition().y + _loc8_,1500,"",§,i§.§?Q§(§>!"§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§;x§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§@1§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §2Y§() / 10;
         var _loc4_:int = 1 + _loc3_ * §;?§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§%y§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§8"§(§,i§.§ 5§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x,§?n§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§8"§(§,i§.§?I§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x,§?n§().GetPosition().y,1250,"",§,i§.§?Q§(§>!"§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
