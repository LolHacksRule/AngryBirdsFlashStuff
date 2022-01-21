package §?!§
{
   import § !Y§.§2#§;
   import §%!n§.§,Y§;
   import §&c§.Sprite;
   import §&x§.b2BodyDef;
   import §&x§.b2World;
   import §3!@§.§ s§;
   import §3!@§.§49§;
   import §?!P§.§4!-§;
   import §?!P§.§65§;
   
   public class §]!%§ extends § !g§
   {
      
      protected static const §6v§:Boolean = false;
      
      protected static const §`!7§:Number = 2000;
      
      protected static const §]!+§:Number = 0.2;
       
      
      private var §7F§:Number;
      
      private var §,!#§:Boolean = false;
      
      protected var §^V§:int = 0;
      
      public function §]!%§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §-s§.mTryToScream = §0!@§.§!s§ + 1;
         }
      }
      
      public function get §'!$§() : Boolean
      {
         return this.§,!#§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§77§ = true;
         _loc3_.§10§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§-&§ < §5!]§ && §-!m§())
         {
            this.§7F§ += param1;
            if(this.§7F§ >= §`!7§)
            {
               return true;
            }
         }
         else
         {
            this.§7F§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§,!#§)
         {
            if(§3!G§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§3!G§.toUpperCase() == "BIRD_YELLOW" || §3!G§.toUpperCase() == "BIRD_GREEN" || §3!G§.toUpperCase() == "BIRD_RED" || §3!G§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§-s§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§-s§.mTryToSpecial)
               {
                  §-s§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§-s§.mTryToSpecial)
            {
               §-s§.mTryToSpecial = false;
               if(§-s§.mIsSpecial)
               {
                  §-s§.mIsSpecial = false;
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
         if(§2!!§().IsAwake() && §-&§ == §5!]§)
         {
            if(!§-s§.mTryToFly)
            {
               §-s§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§3!G§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§,!#§ ? 2 : 1) * 360 / 1000;
               §,!E§(§4!F§() - _loc3_);
            }
            else if(!(§3!G§.toUpperCase() == "BIRD_WHITE" && this.§,!#§))
            {
               if(§6v§)
               {
                  §^!O§();
               }
               else if(!§9!]§() && !§9]§())
               {
                  §,!E§(0);
               }
            }
         }
         else if(§-s§.mTryToFly)
         {
            §-s§.mTryToFly = false;
            if(§-s§.mIsFlying)
            {
               §-s§.mIsFlying = false;
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
         var _loc1_:§ s§ = §2#§.§"@§;
         if(§-&§ < §5!]§ || §2!!§() == null)
         {
            _loc1_.§%m§(this);
            _loc1_.§^E§ = false;
            return;
         }
         var _loc2_:Number = x * § s§.§<!h§;
         var _loc3_:Number = y * § s§.§<!h§;
         if(_loc1_.§^E§)
         {
            _loc1_.particles.§ D§(§65§.§6!=§,§4!-§.§ <§,§65§.§"T§,_loc2_,_loc3_,-1,"",§65§.§?N§);
            _loc1_.§^E§ = false;
            this.§^V§ = 0;
         }
         else if(§ !E§ > 1)
         {
            _loc1_.particles.§ D§(§65§.§5y§,§4!-§.§ <§,§65§.§"T§,_loc2_,_loc3_,-1,"",§65§.§?N§);
         }
         else
         {
            _loc4_ = §65§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§^V§ == 1)
            {
               _loc4_ = §65§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§^V§ == 2)
            {
               _loc4_ = §65§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§^V§ = (this.§^V§ + 1) % 3;
            _loc1_.particles.§ D§(_loc4_,§4!-§.§ <§,§65§.§"T§,_loc2_,_loc3_,-1,"",§65§.§?N§);
         }
         if(§8!S§() > §49§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §]!+§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§ D§(§65§.§;!m§,§4!-§.§&#§,§65§.§ k§,§2!!§().GetPosition().x,§2!!§().GetPosition().y,1250,"",§65§.§"!o§(§3!G§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§-s§.mTryToFly)
         {
            §@3§(§,Y§.§@V§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§>!4§) : Boolean
      {
         if(this.§,!#§)
         {
            return false;
         }
         §@3§(§,Y§.§`i§);
         this.§,!#§ = true;
         return true;
      }
      
      private function §>!2§(param1:int) : int
      {
         return Math.min(§2#§.§"@§.§50§,param1);
      }
      
      override public function addDestructionParticles(param1:§4!-§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §9u§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>!2§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§-s§.mW * § s§.§<!h§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§-s§.mH * § s§.§<!h§) + Math.random() * -_loc8_ * 2;
            param1.§ D§(§65§.§;!m§,§4!-§.§&#§,§65§.§ k§,§2!!§().GetPosition().x + _loc7_,§2!!§().GetPosition().y + _loc8_,1500,"",§65§.§"!o§(§3!G§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§4!-§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§9]§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §8!S§() / 10;
         var _loc4_:int = 1 + _loc3_ * §9u§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>!2§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§ D§(§65§.§#7§,§4!-§.§&#§,§65§.§ k§,§2!!§().GetPosition().x,§2!!§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§ D§(§65§.§;!m§,§4!-§.§&#§,§65§.§ k§,§2!!§().GetPosition().x,§2!!§().GetPosition().y,1250,"",§65§.§"!o§(§3!G§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
