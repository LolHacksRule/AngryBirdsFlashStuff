package §6"R§
{
   import §,"v§.§@§;
   import §1"s§.Sprite;
   import §1x§.b2BodyDef;
   import §1x§.b2FilterData;
   import §1x§.b2Fixture;
   import §1x§.b2World;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§"!A§;
   import §5!q§.§3"X§;
   import §5!q§.§<"n§;
   import §9!s§.b2Settings;
   import §>P§.§&s§;
   import §>P§.§1C§;
   import §>P§.§3t§;
   import §>P§.§=!,§;
   import §^>§.b2Vec2;
   import flash.geom.Point;
   
   public class §4!w§ extends §'!Q§
   {
      
      public static const §-"§:String = "normal";
      
      public static const §@"3§:uint = 1 << 1;
      
      public static const §5"4§:uint = 1 << 2;
      
      public static const §`!v§:uint = 1 << 3;
      
      public static const §6!Q§:uint = 1 << 4;
       
      
      private var §;s§:int;
      
      private var §9#4§:int;
      
      private var §68§:b2Vec2;
      
      private var §7"`§:b2Vec2;
      
      private var §3"9§:Number;
      
      private var §3m§:Number;
      
      private var §'!L§:Number;
      
      private var §=;§:Number = 1;
      
      private var §-!;§:Boolean = false;
      
      protected var §]h§:§2A§;
      
      private var §3-§:§[a§;
      
      private var §"r§:Number = 1.0;
      
      private var §6##§:Boolean = true;
      
      private var §^"#§:Boolean = false;
      
      private var §[7§:int = 0;
      
      protected var §?"=§:Number = -1.0;
      
      private var §""x§:Boolean = false;
      
      private var §0!_§:Boolean = false;
      
      protected var §82§:String = "";
      
      protected var §"?§:int = 1;
      
      public function §4!w§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number)
      {
         this.§7"`§ = new b2Vec2();
         super(param1,param3,param4,param5);
         this.§3-§ = param2;
         this.§"r§ = param6;
         this.§9#4§ = §-!f§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§]h§ = this.initObjectRenderer();
         this.§]h§.§5"D§(§-!f§.shape is §3t§);
         this.createPhysicsBody(§;W§.x,§;W§.y);
         §+s§ = param5.§+s§;
         this.§'!L§ = §-!f§.getItemDefence();
         if(§-!f§.healthMax > 0)
         {
            this.initializeHealth(§-!f§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§!!D§(true) * §-!f§.getItemStrength()));
         }
         if(§-!f§.itemType == §=!,§.§,"T§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§#"c§(param5.angle * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§]h§.§7!D§(§-!f§.shape);
      }
      
      public static function §'N§(param1:int, param2:§&s§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§7!k§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§5"+§;
            }
            §@§.§9!5§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§3"9§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§3"9§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§3m§;
      }
      
      public function get itemName() : String
      {
         return §-!f§.itemName;
      }
      
      public function get §,"a§() : Number
      {
         return this.§=;§;
      }
      
      public function get animation() : §[a§
      {
         return this.§3-§;
      }
      
      public function get x() : Number
      {
         return §]!_§;
      }
      
      public function get y() : Number
      {
         return §#j§;
      }
      
      public function get scale() : Number
      {
         return this.§"r§;
      }
      
      public function get id() : int
      {
         return this.§[7§;
      }
      
      public function get §0"M§() : Boolean
      {
         return this.§'!L§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§'!L§;
      }
      
      public function get §'"8§() : Boolean
      {
         return this.§6##§;
      }
      
      public function set §'"8§(param1:Boolean) : void
      {
         this.§6##§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§?"=§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §@""§() : Boolean
      {
         return this.§""x§;
      }
      
      public function set §@""§(param1:Boolean) : void
      {
         this.§""x§ = param1;
      }
      
      public function get § @§() : Boolean
      {
         return this.§-!;§;
      }
      
      public function set § @§(param1:Boolean) : void
      {
         this.§-!;§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §1!w§() : §2A§
      {
         return this.§]h§;
      }
      
      public final function §%N§(param1:int) : void
      {
         if(!this.§^"#§)
         {
            this.§^"#§ = true;
            this.§[7§ = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§3m§ = param1;
         this.§3"9§ = param1;
      }
      
      protected function §="N§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§3"9§ += param1;
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §#"R§ = mWorld.CreateBody(_loc3_);
         §#"R§.SetUserData(this);
         §<!$§ = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§-!f§.isColliding)
         {
            _loc4_.§'"5§ = 0;
         }
         this.§?"M§(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §#"R§.CreateFixture2(§-!f§.shape.getB2Shape(),§-!f§.getItemDensity());
         _loc1_.§1!M§(§-!f§.getItemFriction());
         _loc1_.§!"W§(§-!f§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §2A§
      {
         return new §2A§(this.animation,sprite);
      }
      
      public function §?"M§(param1:b2FilterData) : void
      {
         if(§<!$§)
         {
            §<!$§.SetFilterData(param1);
         }
      }
      
      public function §^W§(param1:§=!,§) : void
      {
         §-!f§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §-!f§.getItemBodyType();
         _loc3_.§0%§ = true;
         _loc3_.active = true;
         _loc3_.§2"%§ = true;
         _loc3_.§]"H§ = 1;
         _loc3_.§9"a§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§]h§.dispose();
         this.§68§ = null;
         §-!f§ = null;
      }
      
      public function §#"c§(param1:Number) : void
      {
         §?"Z§().SetAngle(param1);
      }
      
      public function §4F§() : Number
      {
         return §?"Z§().GetAngle();
      }
      
      public function §?""§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §?"Z§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§"!?§();
         }
         if(param3)
         {
            this.§;O§();
         }
      }
      
      public function §6"x§(param1:b2Vec2) : void
      {
         this.§68§ = param1;
      }
      
      private function §=C§() : void
      {
         if(this.§68§)
         {
            this.§?""§(this.§68§,false);
            this.§68§ = null;
         }
      }
      
      private function §'"1§() : void
      {
         if(§#"R§)
         {
            this.§7"`§.SetV(§#"R§.GetLinearVelocity());
         }
      }
      
      public function §2U§() : b2Vec2
      {
         return this.§7"`§;
      }
      
      public function §"!?§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §?"Z§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §?"Z§().SetAngularVelocity(0);
         }
         else
         {
            §?"Z§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §;O§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §?"Z§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§#"c§(_loc2_);
      }
      
      public function §""@§(param1:Number) : void
      {
         §?"Z§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§]h§.update(param1);
         sprite.x = §]!_§;
         sprite.y = §#j§;
         sprite.rotation = § !r§;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         this.§=C§();
         super.update(param1,param2);
         if(this.§?"=§ >= 0)
         {
            this.§?"=§ += param1;
         }
         this.§'"1§();
      }
      
      public function updateOutOfBounds(param1:§""M§) : void
      {
         this.§0!_§ = true;
      }
      
      public function updateBeforeRemoving(param1:§""M§) : void
      {
         if(!this.§0!_§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §"!1§() : Boolean
      {
         return this.§9#4§ == §=!,§.§00§;
      }
      
      public function §8!3§() : Boolean
      {
         return this.§9#4§ == §=!,§.§,"T§;
      }
      
      public function final() : Boolean
      {
         if(this.itemName == "MISC_EXPLOSIVE_TNT" || this.itemName == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return false;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §@H§() : Number
      {
         return Number(Math.sqrt(§?"Z§().GetLinearVelocity().x * §?"Z§().GetLinearVelocity().x + §?"Z§().GetLinearVelocity().y * §?"Z§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§?"=§ = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         this.§#!D§(§&s§.§9!x§);
      }
      
      protected function playDamagedSound() : void
      {
         this.§#!D§(§&s§.§ "s§);
      }
      
      protected function playCollisionSound() : void
      {
         this.§#!D§(§&s§.§?!<§);
      }
      
      public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§?"=§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.§'!L§ < 0 || this.§'!L§ >= 1000000)
         {
            if(param1 > 30)
            {
               this.playDestroyedSound();
            }
            else if(param1 > 12)
            {
               this.playDamagedSound();
            }
            else if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§3"9§;
         }
         if(param1 <= this.§'!L§)
         {
            if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§3"9§;
         }
         param1 -= this.§'!L§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§3"9§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§"!A§.§ m§,this.§3"9§ > param1,§?"Z§().GetPosition().x,§?"Z§().GetPosition().y,§;6§.§@# §(this.itemName));
         }
         this.§3"9§ -= param1;
         if(this.§3"9§ < 1)
         {
            this.§3"9§ = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.playDamagedSound();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§3"9§;
      }
      
      protected function setDamageState(param1:Number, param2:§""M§) : Boolean
      {
         return this.§]h§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §#!D§(param1:int) : void
      {
         §4!w§.§'N§(param1,§-!f§.soundResource);
      }
      
      public function §2!^§(param1:String) : Number
      {
         return §-!f§.getDamageMultiplier(param1) * this.§=;§;
      }
      
      public function §%E§(param1:String) : Number
      {
         return §-!f§.getVelocityMultiplier(param1);
      }
      
      public function §,T§() : String
      {
         return §-!f§.materialName;
      }
      
      public function §+# §() : Number
      {
         return §-!f§.getItemStrength();
      }
      
      public function §54§() : Boolean
      {
         return §?"Z§().IsAwake() && (this is §%!0§ && this.§3"9§ == this.§3m§ || Math.abs(§?"Z§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§?"Z§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§?"Z§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §[d§() : Boolean
      {
         if(!§?"Z§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§?"Z§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§?"Z§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§?"Z§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §="?§(param1:Number = 3) : void
      {
         this.§=;§ = param1;
      }
      
      public function §!!D§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§-!f§.getItemBodyType() == §1C§.§?a§)
         {
            _loc2_ = this.§]h§.width * this.§]h§.height * (§3"X§.§;"l§ * §3"X§.§;"l§);
         }
         else
         {
            _loc2_ = §?"Z§().GetMass() / §<!$§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§-"j§();
            }
         }
         return _loc2_;
      }
      
      public function §-"j§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§]h§.§!#4§ - 1) / 10);
      }
      
      public function §4"8§(param1:Number) : void
      {
         var _loc2_:Number = §?"Z§().GetLinearVelocity().x;
         var _loc3_:Number = §?"Z§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §?"Z§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§""M§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      public function set isLeavingTrail(param1:Boolean) : void
      {
      }
      
      protected function addDestructionParticles(param1:§""M§) : void
      {
      }
      
      public function addDamageParticles(param1:§""M§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§=2§)
         {
            case GravityFilterCategory.FORCE_OBJECT:
               §#"R§.SetLinearDamping(§<"n§.§"[§);
               §#"R§.SetAngularDamping(§<"n§.§>"c§);
               §#"R§.SetGravityScale(0);
               break;
            case GravityFilterCategory.YODA_FORCE_OBJECT:
               §#"R§.SetLinearDamping(§<"n§.§]"P§);
               §#"R§.SetAngularDamping(§<"n§.§3r§);
               §#"R§.SetGravityScale(0);
               break;
            case GravityFilterCategory.LEIA_FORCE_OBJECT:
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §"y§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §?"Z§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §?"Z§().SetPosition(_loc4_);
      }
      
      public function §9"2§(param1:String, param2:String, param3:§""M§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §+s§ = -1;
         }
      }
   }
}
