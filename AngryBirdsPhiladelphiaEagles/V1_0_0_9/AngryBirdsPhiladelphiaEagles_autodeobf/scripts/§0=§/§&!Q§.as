package §0=§
{
   import §&8§.§5P§;
   import §&8§.§5Z§;
   import §,T§.§@6§;
   import §,T§.§[-§;
   import §-!'§.Sprite;
   import §0E§.§7u§;
   import §=z§.§0!E§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §&!Q§ extends § l§
   {
      
      protected static const §]C§:Boolean = false;
      
      protected static const §&e§:Number = 2000;
      
      protected static const §9!0§:Number = 0.2;
       
      
      private var §'!N§:Number;
      
      private var § X§:Boolean = false;
      
      protected var §+8§:int = 0;
      
      public function §&!Q§(param1:§6!M§, param2:Sprite, param3:b2World, param4:§[-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §^c§.mTryToScream = §?!,§.§=!B§ + 1;
         }
      }
      
      public function get §%#§() : Boolean
      {
         return this.§ X§;
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
         if(§[!J§ < § !L§ && §,S§())
         {
            this.§'!N§ += param1;
            if(this.§'!N§ >= §&e§)
            {
               return true;
            }
         }
         else
         {
            this.§'!N§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§ X§)
         {
            if(§8!J§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§8!J§.toUpperCase() == "BIRD_YELLOW" || §8!J§.toUpperCase() == "BIRD_GREEN" || §8!J§.toUpperCase() == "BIRD_RED" || §8!J§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§^c§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§^c§.mTryToSpecial)
               {
                  §^c§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§^c§.mTryToSpecial)
            {
               §^c§.mTryToSpecial = false;
               if(§^c§.mIsSpecial)
               {
                  §^c§.mIsSpecial = false;
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
         if(§;!M§().IsAwake() && §[!J§ == § !L§)
         {
            if(!§^c§.mTryToFly)
            {
               §^c§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§8!J§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§ X§ ? 2 : 1) * 360 / 1000;
               §8!1§(§&!'§() - _loc3_);
            }
            else if(!(§8!J§.toUpperCase() == "BIRD_WHITE" && this.§ X§))
            {
               if(§]C§)
               {
                  §]!A§();
               }
               else if(!§^!8§() && !§?!K§())
               {
                  §8!1§(0);
               }
            }
         }
         else if(§^c§.mTryToFly)
         {
            §^c§.mTryToFly = false;
            if(§^c§.mIsFlying)
            {
               §^c§.mIsFlying = false;
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
         var _loc1_:§[-§ = §0!E§.§9!B§;
         if(§[!J§ < § !L§ || §;!M§() == null)
         {
            _loc1_.§!!§(this);
            _loc1_.§false§ = false;
            return;
         }
         var _loc2_:Number = x * §[-§.§;5§;
         var _loc3_:Number = y * §[-§.§;5§;
         if(_loc1_.§false§)
         {
            _loc1_.particles.addParticle(§5Z§.§<;§,§5P§.§]!H§,§5Z§.§2m§,_loc2_,_loc3_,-1,"",§5Z§.§3x§);
            _loc1_.§false§ = false;
            this.§+8§ = 0;
         }
         else if(§!!>§ > 1)
         {
            _loc1_.particles.addParticle(§5Z§.§^$§,§5P§.§]!H§,§5Z§.§2m§,_loc2_,_loc3_,-1,"",§5Z§.§3x§);
         }
         else
         {
            _loc4_ = §5Z§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§+8§ == 1)
            {
               _loc4_ = §5Z§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§+8§ == 2)
            {
               _loc4_ = §5Z§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§+8§ = (this.§+8§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§5P§.§]!H§,§5Z§.§2m§,_loc2_,_loc3_,-1,"",§5Z§.§3x§);
         }
         if(§#f§() > §@6§.§4H§ && Math.random() < §9!0§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§5Z§.§=!>§,§5P§.§=!L§,§5Z§.§@!<§,§;!M§().GetPosition().x,§;!M§().GetPosition().y,1250,"",§5Z§.§89§(§8!J§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§^c§.mTryToFly)
         {
            §;!"§(§7u§.§8m§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§6!M§) : Boolean
      {
         if(this.§ X§)
         {
            return false;
         }
         §;!"§(§7u§.§>!P§);
         this.§ X§ = true;
         return true;
      }
      
      private function §5l§(param1:int) : int
      {
         return Math.min(§0!E§.§9!B§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§5P§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §8!?§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§5l§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§^c§.mW * §[-§.§;5§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§^c§.mH * §[-§.§;5§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§5Z§.§=!>§,§5P§.§=!L§,§5Z§.§@!<§,§;!M§().GetPosition().x + _loc7_,§;!M§().GetPosition().y + _loc8_,1500,"",§5Z§.§89§(§8!J§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5P§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§?!K§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §#f§() / 10;
         var _loc4_:int = 1 + _loc3_ * §8!?§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§5l§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§5Z§.§'A§,§5P§.§=!L§,§5Z§.§@!<§,§;!M§().GetPosition().x,§;!M§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§5Z§.§=!>§,§5P§.§=!L§,§5Z§.§@!<§,§;!M§().GetPosition().x,§;!M§().GetPosition().y,1250,"",§5Z§.§89§(§8!J§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
