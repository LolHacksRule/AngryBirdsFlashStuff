package §+!#§
{
   import §#!T§.§&2§;
   import §0!?§.b2BodyDef;
   import §0!?§.b2World;
   import §2z§.§2!U§;
   import §2z§.§@!N§;
   import §4!e§.§ !0§;
   import §=!E§.Sprite;
   import §^t§.§<;§;
   import §^t§.§[I§;
   
   public class § q§ extends §>!-§
   {
      
      protected static const § n§:Boolean = false;
      
      protected static const §#9§:Number = 2000;
      
      protected static const §2!d§:Number = 0.2;
       
      
      private var §2#§:Number;
      
      private var §1!G§:Boolean = false;
      
      protected var §4G§:int = 0;
      
      public function § q§(param1:§"!6§, param2:Sprite, param3:b2World, param4:§2!U§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §8!E§.mTryToScream = §@!!§.§#1§ + 1;
         }
      }
      
      public function get §#!S§() : Boolean
      {
         return this.§1!G§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§7!b§ = true;
         _loc3_.§9+§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§7!M§ < §+z§ && §1!'§())
         {
            this.§2#§ += param1;
            if(this.§2#§ >= §#9§)
            {
               return true;
            }
         }
         else
         {
            this.§2#§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§1!G§)
         {
            if(§@c§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§@c§.toUpperCase() == "BIRD_YELLOW" || §@c§.toUpperCase() == "BIRD_GREEN" || §@c§.toUpperCase() == "BIRD_RED" || §@c§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§8!E§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§8!E§.mTryToSpecial)
               {
                  §8!E§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§8!E§.mTryToSpecial)
            {
               §8!E§.mTryToSpecial = false;
               if(§8!E§.mIsSpecial)
               {
                  §8!E§.mIsSpecial = false;
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
         if(§[!H§().IsAwake() && §7!M§ == §+z§)
         {
            if(!§8!E§.mTryToFly)
            {
               §8!E§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§@c§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§1!G§ ? 2 : 1) * 360 / 1000;
               §3!>§(§;!7§() - _loc3_);
            }
            else if(!(§@c§.toUpperCase() == "BIRD_WHITE" && this.§1!G§))
            {
               if(§ n§)
               {
                  §]!X§();
               }
               else if(!§'L§() && !§;d§())
               {
                  §3!>§(0);
               }
            }
         }
         else if(§8!E§.mTryToFly)
         {
            §8!E§.mTryToFly = false;
            if(§8!E§.mIsFlying)
            {
               §8!E§.mIsFlying = false;
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
         var _loc1_:§2!U§ = §&2§.§4!1§;
         if(§7!M§ < §+z§ || §[!H§() == null)
         {
            _loc1_.§@n§(this);
            _loc1_.§;!^§ = false;
            return;
         }
         var _loc2_:Number = x * §2!U§.§&%§;
         var _loc3_:Number = y * §2!U§.§&%§;
         if(_loc1_.§;!^§)
         {
            _loc1_.particles.addParticle(§[I§.§2;§,§<;§.§&v§,§[I§.§%]§,_loc2_,_loc3_,-1,"",§[I§.§'!=§);
            _loc1_.§;!^§ = false;
            this.§4G§ = 0;
         }
         else if(§!V§ > 1)
         {
            _loc1_.particles.addParticle(§[I§.§]!S§,§<;§.§&v§,§[I§.§%]§,_loc2_,_loc3_,-1,"",§[I§.§'!=§);
         }
         else
         {
            _loc4_ = §[I§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§4G§ == 1)
            {
               _loc4_ = §[I§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§4G§ == 2)
            {
               _loc4_ = §[I§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§4G§ = (this.§4G§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§<;§.§&v§,§[I§.§%]§,_loc2_,_loc3_,-1,"",§[I§.§'!=§);
         }
         if(§8!=§() > §@!N§.§=!R§ && Math.random() < §2!d§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§[I§.§^=§,§<;§.§&!=§,§[I§.§6G§,§[!H§().GetPosition().x,§[!H§().GetPosition().y,1250,"",§[I§.§6]§(§@c§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§8!E§.mTryToFly)
         {
            §^!Y§(§ !0§.§3!=§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§"!6§) : Boolean
      {
         if(this.§1!G§)
         {
            return false;
         }
         §^!Y§(§ !0§.§0v§);
         this.§1!G§ = true;
         return true;
      }
      
      private function §4!X§(param1:int) : int
      {
         return Math.min(§&2§.§4!1§.§[R§,param1);
      }
      
      override public function addDestructionParticles(param1:§<;§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §,!8§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§4!X§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8!E§.mW * §2!U§.§&%§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8!E§.mH * §2!U§.§&%§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§[I§.§^=§,§<;§.§&!=§,§[I§.§6G§,§[!H§().GetPosition().x + _loc7_,§[!H§().GetPosition().y + _loc8_,1500,"",§[I§.§6]§(§@c§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§<;§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§;d§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §8!=§() / 10;
         var _loc4_:int = 1 + _loc3_ * §,!8§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§4!X§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§[I§.§@!,§,§<;§.§&!=§,§[I§.§6G§,§[!H§().GetPosition().x,§[!H§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§[I§.§^=§,§<;§.§&!=§,§[I§.§6G§,§[!H§().GetPosition().x,§[!H§().GetPosition().y,1250,"",§[I§.§6]§(§@c§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
