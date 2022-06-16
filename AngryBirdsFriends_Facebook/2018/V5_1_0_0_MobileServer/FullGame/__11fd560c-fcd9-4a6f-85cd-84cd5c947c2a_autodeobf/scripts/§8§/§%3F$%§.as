package §8§#8
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §"#i§.b2CircleShape;
   import §4"O§.b2BodyDef;
   import §4"O§.b2FilterData;
   import §4"O§.b2Fixture;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@0§.§%!q§;
   import §@0§.§4!_§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §?$%§ extends §]&§
   {
      
      public static const §##W§:String = "special";
      
      public static const §#$+§:String = "fly";
      
      public static const §%"C§:String = "fly_yell";
      
      protected static const §0U§:Number = 20000;
      
      protected static const §^"I§:Number = 3000;
      
      protected static const §&#4§:Number = 0.2;
       
      
      private var §<H§:Number;
      
      protected var §1#,§:Boolean = false;
      
      protected var § !5§:int;
      
      private var §?!7§:Boolean = false;
      
      public function §?$%§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.§],§();
         }
         else
         {
            this.fly();
         }
         §+!y§ = §[c§;
      }
      
      public function set §&!9§(param1:Boolean) : void
      {
         this.§?!7§ = param1;
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return this.§1#,§;
      }
      
      public function get launchForce() : Number
      {
         return §4!_§.§'$8§;
      }
      
      override public function get isFlying() : Boolean
      {
         if(getBody().IsAwake() && health == §""5§)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§?#z§ && !§2!n§ && !this.specialPowerUsed;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2Fixture = super.createFixture();
         if(scale > 1)
         {
            _loc2_ = §'!i§.getItemDensity();
            _loc3_ = (§=#D§.GetFixtureList().GetShape() as b2CircleShape).§'#!§();
            _loc4_ = _loc3_ / scale;
            _loc6_ = (_loc5_ = _loc2_ * Math.PI * _loc4_ * _loc4_) / (Math.PI * _loc3_ * _loc3_);
            _loc1_.SetDensity(_loc6_);
            _loc1_.GetBody().ResetMassData();
         }
         return _loc1_;
      }
      
      override protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 2)
         {
            param1 = 2;
         }
         super.initializeHealth(param1);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§+"p§ = §6!a§;
         _loc1_.§5!H§ = 65535;
         return _loc1_;
      }
      
      override protected function normalize() : void
      {
         if(this.§1#,§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§1#,§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.isFlying)
         {
            §9"6§.setAnimation(§%"C§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§1#,§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §9"6§.setAnimation(§#$+§,false);
      }
      
      protected function specialPower(param1:§&#V§, param2:Number = 0, param3:Number = 0) : void
      {
         §9"6§.setAnimation(§##W§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§&#V§) : Boolean
      {
         if(param1 > 0)
         {
            param1 = 1;
         }
         return super.setDamageState(param1,param2);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§6!t§ = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < §""5§ && (§7#]§() || !this.§`k§))
         {
            this.§<H§ += param1;
            if(this.§<H§ >= §^"I§)
            {
               return true;
            }
         }
         else
         {
            this.§<H§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < §""5§ || getBody() == null)
         {
            return false;
         }
         if(§%#S§)
         {
            return false;
         }
         return §#1§;
      }
      
      override protected function handleInitialCollision() : void
      {
         §#1§ = false;
         super.handleInitialCollision();
      }
      
      override protected function addTrail(param1:§&#V§) : Boolean
      {
         var _loc2_:Boolean = super.addTrail(param1);
         this.§[!g§(param1);
         return _loc2_;
      }
      
      protected function §[!g§(param1:§&#V§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §]!@§();
         var _loc3_:Number = §4!_§.§@"=§;
         if(_loc2_ > _loc3_ && Math.random() < §&#4§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.addParticle(§@>§.§5Y§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§@>§.getParticleMaterialFromEngineMaterial(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      protected function §],§() : void
      {
         if(this.isFlying)
         {
            § r§();
         }
      }
      
      override public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§1#,§ = true;
            §5#C§();
            this.specialPower(param1,param2,param3);
            if(this.shouldShowCloudOnSpecialPowerUse)
            {
               § !A§();
            }
            return true;
         }
         return false;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.isFlying && !this.specialPowerUsed;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §@!l§(param1:int) : int
      {
         return Math.min(§3#U§.§#$4§.§0$!§,param1);
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.isFlying)
         {
            this.updateFlying();
         }
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§?!7§)
         {
            _loc2_ = getBody().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §5#W§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         if(health == §""5§)
         {
            §^"h§(-1);
         }
         this.addDamageParticles(param2,param1);
         §%"2§(param1,param2);
         this.setDamageState(0.5,param2);
         if(param1 > 3)
         {
            playCollisionSound();
         }
         if(param1 > defence)
         {
            param1 = defence;
         }
         handleLevelEndCheck();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§ !5§ = §8G§;
      }
      
      protected function get §`k§() : Boolean
      {
         return §8G§ - this.§ !5§ < §0U§;
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §3"C§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§@!l§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§9"6§.width * §%!q§.§6q§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§9"6§.height * §%!q§.§6q§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§@>§.§5Y§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§@>§.getParticleMaterialFromEngineMaterial(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§&#V§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §]!@§() / 10;
         var _loc4_:int = 1 + _loc3_ * §3"C§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§@!l§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§&"g§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§@>§.§5Y§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§@>§.getParticleMaterialFromEngineMaterial(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
      
      override public function updateBeforeRemoving(param1:§&#V§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         handleLevelEndCheck();
      }
   }
}
