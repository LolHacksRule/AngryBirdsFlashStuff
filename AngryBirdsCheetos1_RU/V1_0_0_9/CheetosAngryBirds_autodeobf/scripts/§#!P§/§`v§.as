package §#!P§
{
   import §!!B§.b2BodyDef;
   import §!!B§.b2World;
   import §27§.§ M§;
   import §27§.§4+§;
   import §3E§.§6w§;
   import §3E§.§]Y§;
   import §7!U§.§2!7§;
   import §7u§.Sprite;
   import §9!%§.§=A§;
   
   public class §`v§ extends §=!A§
   {
      
      protected static const §,!+§:Boolean = false;
      
      protected static const §2u§:Number = 2000;
      
      protected static const §+Z§:Number = 0.2;
       
      
      private var §3!;§:Number;
      
      private var §;+§:Boolean = false;
      
      protected var §7$§:int = 0;
      
      public function §`v§(param1:§#A§, param2:Sprite, param3:b2World, param4:§6w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §<k§.mTryToScream = §1!Y§.§0!P§ + 1;
         }
      }
      
      public function get §!N§() : Boolean
      {
         return this.§;+§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§5&§ = true;
         _loc3_.§`L§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§1!L§ < §!w§ && §@w§())
         {
            this.§3!;§ += param1;
            if(this.§3!;§ >= §2u§)
            {
               return true;
            }
         }
         else
         {
            this.§3!;§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§;+§)
         {
            if(§<Y§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§<Y§.toUpperCase() == "BIRD_YELLOW" || §<Y§.toUpperCase() == "BIRD_GREEN" || §<Y§.toUpperCase() == "BIRD_RED" || §<Y§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§<k§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§<k§.mTryToSpecial)
               {
                  §<k§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§<k§.mTryToSpecial)
            {
               §<k§.mTryToSpecial = false;
               if(§<k§.mIsSpecial)
               {
                  §<k§.mIsSpecial = false;
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
         if(§84§().IsAwake() && §1!L§ == §!w§)
         {
            if(!§<k§.mTryToFly)
            {
               §<k§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§<Y§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§;+§ ? 2 : 1) * 360 / 1000;
               §^8§(§[!P§() - _loc3_);
            }
            else if(!(§<Y§.toUpperCase() == "BIRD_WHITE" && this.§;+§))
            {
               if(§,!+§)
               {
                  §-!5§();
               }
               else if(!§,c§() && !§6]§())
               {
                  §^8§(0);
               }
            }
         }
         else if(§<k§.mTryToFly)
         {
            §<k§.mTryToFly = false;
            if(§<k§.mIsFlying)
            {
               §<k§.mIsFlying = false;
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
         var _loc1_:§6w§ = §2!7§.§5G§;
         if(§1!L§ < §!w§ || §84§() == null)
         {
            _loc1_.§&>§(this);
            _loc1_.§8n§ = false;
            return;
         }
         var _loc2_:Number = x * §6w§.§?!^§;
         var _loc3_:Number = y * §6w§.§?!^§;
         if(_loc1_.§8n§)
         {
            _loc1_.particles.addParticle(§4+§.§8!$§,§ M§.§>H§,§4+§.§2!A§,_loc2_,_loc3_,-1,"",§4+§.§=n§);
            _loc1_.§8n§ = false;
            this.§7$§ = 0;
         }
         else if(§-!]§ > 1)
         {
            _loc1_.particles.addParticle(§4+§.§>!O§,§ M§.§>H§,§4+§.§2!A§,_loc2_,_loc3_,-1,"",§4+§.§=n§);
         }
         else
         {
            _loc4_ = §4+§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§7$§ == 1)
            {
               _loc4_ = §4+§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§7$§ == 2)
            {
               _loc4_ = §4+§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§7$§ = (this.§7$§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§ M§.§>H§,§4+§.§2!A§,_loc2_,_loc3_,-1,"",§4+§.§=n§);
         }
         if(§>Y§() > §]Y§.§9!'§ && Math.random() < §+Z§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§4+§.§5!`§,§ M§.§&^§,§4+§.§&'§,§84§().GetPosition().x,§84§().GetPosition().y,1250,"",§4+§.§#]§(§<Y§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§<k§.mTryToFly)
         {
            §#`§(§=A§.§"w§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§#A§) : Boolean
      {
         if(this.§;+§)
         {
            return false;
         }
         §#`§(§=A§.§!!5§);
         this.§;+§ = true;
         return true;
      }
      
      private function §>!X§(param1:int) : int
      {
         return Math.min(§2!7§.§5G§.§9!0§,param1);
      }
      
      override public function addDestructionParticles(param1:§ M§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §,w§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>!X§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<k§.mW * §6w§.§?!^§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<k§.mH * §6w§.§?!^§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§4+§.§5!`§,§ M§.§&^§,§4+§.§&'§,§84§().GetPosition().x + _loc7_,§84§().GetPosition().y + _loc8_,1500,"",§4+§.§#]§(§<Y§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§ M§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§6]§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §>Y§() / 10;
         var _loc4_:int = 1 + _loc3_ * §,w§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>!X§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§4+§.§5>§,§ M§.§&^§,§4+§.§&'§,§84§().GetPosition().x,§84§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§4+§.§5!`§,§ M§.§&^§,§4+§.§&'§,§84§().GetPosition().x,§84§().GetPosition().y,1250,"",§4+§.§#]§(§<Y§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
