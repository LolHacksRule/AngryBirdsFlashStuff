package §>!5§
{
   import §%!9§.b2Vec2;
   import §%!f§.§5!O§;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+!C§.§@"@§;
   import §+#f§.b2CircleShape;
   import §1!+§.b2BodyDef;
   import §1!+§.b2FilterData;
   import §1!+§.b2Fixture;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   
   public class §"7§ extends §`!,§
   {
      
      public static const §3#N§:String = "special";
      
      public static const §?#r§:String = "fly";
      
      public static const §@$2§:String = "fly_yell";
      
      protected static const §=#4§:Number = 20000;
      
      protected static const §#0§:Number = 3000;
      
      protected static const §^$"§:Number = 0.2;
      
      public static var §%!x§:int = 4;
      
      public static var §%2§:int = 12;
       
      
      private var §["h§:Number;
      
      protected var §!"i§:Boolean = false;
      
      protected var §'"h§:int = 0;
      
      protected var §48§:Boolean = false;
      
      protected var §##0§:int;
      
      private var §]"B§:Boolean = false;
      
      private var §,#-§:Boolean = false;
      
      protected var §&!q§:Array;
      
      protected var §8"r§:int;
      
      protected var §-N§:Object;
      
      private var §]1§:String = "Effect_Block_Destruction_Core";
      
      private var §+e§:§5!O§;
      
      private var §7u§:Boolean;
      
      public function §"7§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         if(param7)
         {
            this.scream();
            this.§3#'§();
         }
         else
         {
            this.fly();
         }
         this.§-N§ = new Object();
         this.§8"r§ = §%!x§;
         this.§7u§ = false;
      }
      
      public function get §7##§() : String
      {
         return this.§]1§;
      }
      
      public function set §7##§(param1:String) : void
      {
         this.§]1§ = param1;
      }
      
      public function set §!!N§(param1:Boolean) : void
      {
         this.§,#-§ = param1;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return this.§!"i§;
      }
      
      public function get launchForce() : Number
      {
         return §@"@§.§7"y§;
      }
      
      public function get § ^§() : Boolean
      {
         if(getBody().IsAwake() && health == §##6§)
         {
            return true;
         }
         return false;
      }
      
      override public function get isNormal() : Boolean
      {
         return !§-#'§ && !§7#f§ && !this.specialPowerUsed;
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
            _loc2_ = §8"3§.getItemDensity();
            _loc3_ = (§-[§.GetFixtureList().GetShape() as b2CircleShape).§+#_§();
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
         _loc1_.§=]§ = §'!W§;
         _loc1_.§4"?§ = 65535;
         return _loc1_;
      }
      
      public function §+$ §(param1:Number) : void
      {
         §1"T§.SetRestitution(param1);
      }
      
      public function §3",§() : Number
      {
         return §1"T§.GetRestitution();
      }
      
      public function §5"'§(param1:Number) : void
      {
         §1"T§.SetDensity(param1);
      }
      
      public function § #R§() : Number
      {
         return §1"T§.GetDensity();
      }
      
      public function §4#=§(param1:Number) : void
      {
         §1"T§.SetFriction(param1);
      }
      
      public function §6"-§() : Number
      {
         return §1"T§.GetFriction();
      }
      
      override protected function normalize() : void
      {
         if(this.§!"i§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.normalize();
      }
      
      override public function scream() : void
      {
         if(this.§!"i§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.scream();
         if(this.§ ^§)
         {
            §implements§.setAnimation(§@$2§,false);
         }
      }
      
      override public function blink() : void
      {
         if(this.§!"i§ || getSpecialAnimationProgress() >= 0)
         {
            return;
         }
         super.blink();
      }
      
      protected function fly() : void
      {
         §implements§.setAnimation(§?#r§,false);
      }
      
      protected function specialPower(param1:§-!S§, param2:Number = 0, param3:Number = 0) : void
      {
         §implements§.setAnimation(§3#N§,false);
      }
      
      override protected function setDamageState(param1:Number, param2:§-!S§) : Boolean
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
         _loc3_.§="§ = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(health < §##6§ && (§6#&§() || !this.§ !g§))
         {
            this.§["h§ += param1;
            if(this.§["h§ >= §#0§)
            {
               return true;
            }
         }
         else
         {
            this.§["h§ = 0;
         }
         return false;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         if(health < §##6§ || getBody() == null)
         {
            return false;
         }
         if(§-!#§)
         {
            return false;
         }
         return this.§]"B§;
      }
      
      override public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§]"B§ = param1;
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§]"B§ = false;
         super.handleInitialCollision();
         if(§>#j§ == §4@§.§=§)
         {
            §>#j§ = §4@§.DEFAULT;
         }
      }
      
      override protected function addTrail(param1:§-!S§) : Boolean
      {
         var _loc4_:String = null;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(!param1)
         {
            return true;
         }
         var _loc2_:Number = x * §!!S§.§,"3§;
         var _loc3_:Number = y * §!!S§.§,"3§;
         if(this.§48§)
         {
            param1.addParticle(§2"^§.§'!Z§,§7"6§.§>C§,§2"^§.§""'§,_loc2_,_loc3_,-1,"",§2"^§.§;"%§);
            this.§'"h§ = 0;
            this.§48§ = false;
         }
         else
         {
            _loc4_ = §2"^§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§'"h§ == 1)
            {
               _loc4_ = §2"^§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§'"h§ == 2)
            {
               _loc4_ = §2"^§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§'"h§ = (this.§'"h§ + 1) % 3;
            param1.addParticle(_loc4_,§7"6§.§>C§,§2"^§.§""'§,_loc2_,_loc3_,-1,"",§2"^§.§;"%§);
         }
         this.§3#g§(param1);
         this.addTrailParticles(_loc2_,_loc3_);
         return true;
      }
      
      protected function §3#g§(param1:§-!S§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Number = §?%§();
         var _loc3_:Number = §@"@§.§,"g§;
         if(_loc2_ > _loc3_ && Math.random() < §^$"§)
         {
            _loc4_ = -Math.PI / 2;
            _loc5_ = Math.random();
            param1.addParticle(§2"^§.§?w§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§2"^§.getParticleMaterialFromEngineMaterial(itemName),_loc5_ * Math.cos(_loc4_) * scale,-_loc5_ * Math.sin(_loc4_) * scale,5,_loc5_ * 20,Math.sqrt(scale));
         }
      }
      
      protected function §3#'§() : void
      {
         if(this.§ ^§)
         {
            §'#=§();
         }
      }
      
      public function activateSpecialPower(param1:§-!S§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            this.§!"i§ = true;
            §@"Y§();
            this.specialPower(param1,param2,param3);
            this.§48§ = this.shouldShowCloudOnSpecialPowerUse;
            return true;
         }
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return this.§ ^§ && !this.specialPowerUsed;
      }
      
      protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      private function §'W§(param1:int) : int
      {
         return Math.min(§!#A§.§#F§.§4n§,param1);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         if(getSpecialAnimationProgress() >= 0)
         {
            this.specialPower(param2);
         }
         super.update(param1,param2);
         if(this.§ ^§)
         {
            this.updateFlying();
         }
         this.addTrail(param2);
      }
      
      protected function updateFlying() : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc1_:Number = 0;
         if(this.§,#-§)
         {
            _loc2_ = getBody().GetLinearVelocity();
            if(_loc2_.x != 0 || _loc2_.y != 0)
            {
               _loc1_ = Math.atan2(_loc2_.y,_loc2_.x);
            }
         }
         §"#o§(_loc1_);
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         if(health == §##6§)
         {
            §,!?§(-1);
         }
         this.addDamageParticles(param2,param1);
         if(this.§+e§)
         {
            this.§+e§.§4"l§(param1,getBody().GetMass(),param2,getBody().GetPosition().x + §implements§.width * 0.5 * §!!S§.§,"3§,getBody().GetPosition().y + §implements§.width * 0.5 * §!!S§.§,"3§,getBody().GetAngle(),getBody().GetLinearVelocity());
         }
         this.setDamageState(0.5,param2);
         if(param1 > 3)
         {
            playCollisionSound();
         }
         if(param1 > defence)
         {
            param1 = defence;
         }
         this.handleLevelEndCheck();
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function causedDamageToObjects() : void
      {
         this.§##0§ = §`"b§;
      }
      
      protected function get § !g§() : Boolean
      {
         return §`"b§ - this.§##0§ < §=#4§;
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = §'Y§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§'W§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§implements§.width * §!!S§.§,"3§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§implements§.height * §!!S§.§,"3§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§2"^§.§?w§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§2"^§.getParticleMaterialFromEngineMaterial(itemName),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§-!S§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §?%§() / 10;
         var _loc4_:int = 1 + _loc3_ * §'Y§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§'W§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(this.§7##§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§2"^§.§?w§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§2"^§.getParticleMaterialFromEngineMaterial(itemName),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
      
      protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!this.§&!q§)
         {
            return;
         }
         var _loc3_:int = Math.random() * this.§8"r§;
         var _loc4_:Number = 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * (Math.PI * 2);
            _loc7_ = 0.5 * §%2§ + §%2§ * (Math.random() * 0.5);
            _loc8_ = 0;
            if(this.§&!q§.length > 1)
            {
               _loc8_ = Math.random() * this.§&!q§.length;
            }
            if(this.§&!q§[_loc8_] == "POWERUP_POWERPOTION_TRAIL")
            {
               _loc4_ = 0.2 + Math.random() * 0.2;
            }
            §!#A§.§#F§.particles.addSimpleParticle(this.§&!q§[_loc8_],§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§2"^§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
            _loc5_++;
         }
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§?#@§)
         {
            case §4@§.§=§:
               §-[§.SetGravityScale(0);
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §1#,§(param1:String) : Object
      {
         return this.§-N§[param1];
      }
      
      public function §+!>§(param1:String, param2:Object) : void
      {
         this.§-N§[param1] = param2;
      }
      
      public function §@`§(param1:String) : void
      {
         if(!this.§&!q§)
         {
            this.§&!q§ = [];
         }
         this.§&!q§.push(param1);
      }
      
      public function §="A§(param1:int) : void
      {
         this.§8"r§ = param1;
      }
      
      public function §,!N§(param1:§5!O§) : void
      {
         this.§+e§ = param1;
      }
      
      public function §@"h§() : §5!O§
      {
         return this.§+e§;
      }
      
      protected function handleLevelEndCheck() : void
      {
         if(!this.§7u§)
         {
            §!#A§.§=![§.checkForLevelEnd();
            this.§7u§ = true;
         }
      }
      
      override public function updateBeforeRemoving(param1:§-!S§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         this.handleLevelEndCheck();
      }
   }
}
