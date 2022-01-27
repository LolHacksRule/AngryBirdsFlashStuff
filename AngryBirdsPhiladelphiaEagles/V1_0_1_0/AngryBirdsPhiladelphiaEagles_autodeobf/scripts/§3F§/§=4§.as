package §3F§
{
   import §+!N§.§=!2§;
   import §3H§.Sprite;
   import §7E§.§@u§;
   import §7E§.§^A§;
   import §>2§.§+!E§;
   import §>2§.§4h§;
   import §@w§.§2G§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=4§ extends §7j§
   {
      
      protected static const § p§:Boolean = false;
      
      protected static const §"h§:Number = 2000;
      
      protected static const § #§:Number = 0.2;
       
      
      private var §%!O§:Number;
      
      private var §5!L§:Boolean = false;
      
      protected var §1!9§:int = 0;
      
      public function §=4§(param1:§0z§, param2:Sprite, param3:b2World, param4:§4h§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §^! §.mTryToScream = §0@§.§7!N§ + 1;
         }
      }
      
      public function get §"i§() : Boolean
      {
         return this.§5!L§;
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
         if(§7^§ < §0-§ && §88§())
         {
            this.§%!O§ += param1;
            if(this.§%!O§ >= §"h§)
            {
               return true;
            }
         }
         else
         {
            this.§%!O§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§5!L§)
         {
            if(§9E§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§9E§.toUpperCase() == "BIRD_YELLOW" || §9E§.toUpperCase() == "BIRD_GREEN" || §9E§.toUpperCase() == "BIRD_RED" || §9E§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§^! §.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§^! §.mTryToSpecial)
               {
                  §^! §.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§^! §.mTryToSpecial)
            {
               §^! §.mTryToSpecial = false;
               if(§^! §.mIsSpecial)
               {
                  §^! §.mIsSpecial = false;
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
         if(§?!M§().IsAwake() && §7^§ == §0-§)
         {
            if(!§^! §.mTryToFly)
            {
               §^! §.mTryToFly = true;
               _loc2_ = true;
            }
            if(§9E§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§5!L§ ? 2 : 1) * 360 / 1000;
               §6%§(§;R§() - _loc3_);
            }
            else if(!(§9E§.toUpperCase() == "BIRD_WHITE" && this.§5!L§))
            {
               if(§ p§)
               {
                  §3l§();
               }
               else if(!§[-§() && !§[f§())
               {
                  §6%§(0);
               }
            }
         }
         else if(§^! §.mTryToFly)
         {
            §^! §.mTryToFly = false;
            if(§^! §.mIsFlying)
            {
               §^! §.mIsFlying = false;
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
         var _loc1_:§4h§ = §2G§.§7!,§;
         if(§7^§ < §0-§ || §?!M§() == null)
         {
            _loc1_.§?3§(this);
            _loc1_.§5l§ = false;
            return;
         }
         var _loc2_:Number = x * §4h§.§-9§;
         var _loc3_:Number = y * §4h§.§-9§;
         if(_loc1_.§5l§)
         {
            _loc1_.particles.addParticle(§^A§.§@!N§,§@u§.§+1§,§^A§.§@!J§,_loc2_,_loc3_,-1,"",§^A§.§;!5§);
            _loc1_.§5l§ = false;
            this.§1!9§ = 0;
         }
         else if(§=!'§ > 1)
         {
            _loc1_.particles.addParticle(§^A§.§ var§,§@u§.§+1§,§^A§.§@!J§,_loc2_,_loc3_,-1,"",§^A§.§;!5§);
         }
         else
         {
            _loc4_ = §^A§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§1!9§ == 1)
            {
               _loc4_ = §^A§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§1!9§ == 2)
            {
               _loc4_ = §^A§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§1!9§ = (this.§1!9§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§@u§.§+1§,§^A§.§@!J§,_loc2_,_loc3_,-1,"",§^A§.§;!5§);
         }
         if(§#Y§() > §+!E§.§5!G§ && Math.random() < § #§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§^A§.§1!B§,§@u§.§&&§,§^A§.§<!$§,§?!M§().GetPosition().x,§?!M§().GetPosition().y,1250,"",§^A§.§,_§(§9E§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§^! §.mTryToFly)
         {
            §7f§(§=!2§.§5b§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§0z§) : Boolean
      {
         if(this.§5!L§)
         {
            return false;
         }
         §7f§(§=!2§.§&!J§);
         this.§5!L§ = true;
         return true;
      }
      
      private function §+g§(param1:int) : int
      {
         return Math.min(§2G§.§7!,§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§@u§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §3s§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§+g§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§^! §.mW * §4h§.§-9§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§^! §.mH * §4h§.§-9§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§^A§.§1!B§,§@u§.§&&§,§^A§.§<!$§,§?!M§().GetPosition().x + _loc7_,§?!M§().GetPosition().y + _loc8_,1500,"",§^A§.§,_§(§9E§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§@u§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§[f§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §#Y§() / 10;
         var _loc4_:int = 1 + _loc3_ * §3s§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§+g§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§^A§.§,O§,§@u§.§&&§,§^A§.§<!$§,§?!M§().GetPosition().x,§?!M§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§^A§.§1!B§,§@u§.§&&§,§^A§.§<!$§,§?!M§().GetPosition().x,§?!M§().GetPosition().y,1250,"",§^A§.§,_§(§9E§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
