package §<[§
{
   import §"!E§.§#g§;
   import §"!E§.§9!E§;
   import §+!%§.§'!"§;
   import §+!%§.§-C§;
   import §,Y§.§5F§;
   import §->§.Sprite;
   import §-l§.§?'§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §<!9§ extends §&v§
   {
      
      protected static const §-f§:Boolean = false;
      
      protected static const §=X§:Number = 2000;
      
      protected static const §;§:Number = 0.2;
       
      
      private var §&!C§:Number;
      
      private var §5!?§:Boolean = false;
      
      protected var §@S§:int = 0;
      
      public function §<!9§(param1:§6q§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §2!0§.mTryToScream = §;+§.§@2§ + 1;
         }
      }
      
      public function get §6X§() : Boolean
      {
         return this.§5!?§;
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
         if(§;%§ < §&?§ && §-§())
         {
            this.§&!C§ += param1;
            if(this.§&!C§ >= §=X§)
            {
               return true;
            }
         }
         else
         {
            this.§&!C§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§5!?§)
         {
            if(§5!#§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§5!#§.toUpperCase() == "BIRD_YELLOW" || §5!#§.toUpperCase() == "BIRD_GREEN" || §5!#§.toUpperCase() == "BIRD_RED" || §5!#§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§2!0§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§2!0§.mTryToSpecial)
               {
                  §2!0§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§2!0§.mTryToSpecial)
            {
               §2!0§.mTryToSpecial = false;
               if(§2!0§.mIsSpecial)
               {
                  §2!0§.mIsSpecial = false;
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
         if(§27§().IsAwake() && §;%§ == §&?§)
         {
            if(!§2!0§.mTryToFly)
            {
               §2!0§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§5!#§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§5!?§ ? 2 : 1) * 360 / 1000;
               §`+§(§"!,§() - _loc3_);
            }
            else if(!(§5!#§.toUpperCase() == "BIRD_WHITE" && this.§5!?§))
            {
               if(§-f§)
               {
                  §2P§();
               }
               else if(!§3!F§() && !§0!?§())
               {
                  §`+§(0);
               }
            }
         }
         else if(§2!0§.mTryToFly)
         {
            §2!0§.mTryToFly = false;
            if(§2!0§.mIsFlying)
            {
               §2!0§.mIsFlying = false;
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
         var _loc1_:§'!"§ = §?'§.§5!§;
         if(§;%§ < §&?§ || §27§() == null)
         {
            _loc1_.§-!=§(this);
            _loc1_.§7!H§ = false;
            return;
         }
         var _loc2_:Number = x * §'!"§.§%!8§;
         var _loc3_:Number = y * §'!"§.§%!8§;
         if(_loc1_.§7!H§)
         {
            _loc1_.particles.§#!&§(§9!E§.§5k§,§#g§.§-x§,§9!E§.§3l§,_loc2_,_loc3_,-1,"",§9!E§.§28§);
            _loc1_.§7!H§ = false;
            this.§@S§ = 0;
         }
         else if(§-E§ > 1)
         {
            _loc1_.particles.§#!&§(§9!E§.§@!+§,§#g§.§-x§,§9!E§.§3l§,_loc2_,_loc3_,-1,"",§9!E§.§28§);
         }
         else
         {
            _loc4_ = §9!E§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§@S§ == 1)
            {
               _loc4_ = §9!E§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§@S§ == 2)
            {
               _loc4_ = §9!E§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§@S§ = (this.§@S§ + 1) % 3;
            _loc1_.particles.§#!&§(_loc4_,§#g§.§-x§,§9!E§.§3l§,_loc2_,_loc3_,-1,"",§9!E§.§28§);
         }
         if(§!4§() > §-C§.§ C§ && Math.random() < §;§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§#!&§(§9!E§.§!M§,§#g§.§%!H§,§9!E§.§9u§,§27§().GetPosition().x,§27§().GetPosition().y,1250,"",§9!E§.§2b§(§5!#§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§2!0§.mTryToFly)
         {
            §#!7§(§5F§.§,!%§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§6q§) : Boolean
      {
         if(this.§5!?§)
         {
            return false;
         }
         §#!7§(§5F§.§0Q§);
         this.§5!?§ = true;
         return true;
      }
      
      private function §"! §(param1:int) : int
      {
         return Math.min(§?'§.§5!§.§+N§,param1);
      }
      
      override public function addDestructionParticles(param1:§#g§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §-I§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§"! §(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2!0§.mW * §'!"§.§%!8§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2!0§.mH * §'!"§.§%!8§) + Math.random() * -_loc8_ * 2;
            param1.§#!&§(§9!E§.§!M§,§#g§.§%!H§,§9!E§.§9u§,§27§().GetPosition().x + _loc7_,§27§().GetPosition().y + _loc8_,1500,"",§9!E§.§2b§(§5!#§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§#g§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§0!?§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §!4§() / 10;
         var _loc4_:int = 1 + _loc3_ * §-I§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§"! §(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§#!&§(§9!E§.§0p§,§#g§.§%!H§,§9!E§.§9u§,§27§().GetPosition().x,§27§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§#!&§(§9!E§.§!M§,§#g§.§%!H§,§9!E§.§9u§,§27§().GetPosition().x,§27§().GetPosition().y,1250,"",§9!E§.§2b§(§5!#§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
