package §5"D§
{
   import §!u§.§8"#§;
   import §3R§.§+7§;
   import §3R§.§1!R§;
   import §4"@§.Sprite;
   import §6!M§.§3!@§;
   import §6!M§.§8!]§;
   import §6!M§.§<!r§;
   import §6!M§.§=!P§;
   import §8K§.b2Settings;
   import §;`§.b2BodyDef;
   import §;`§.b2FilterData;
   import §;`§.b2Fixture;
   import §;`§.b2World;
   import §>"!§.§@!9§;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   import flash.geom.Point;
   
   public class §6!!§ extends §`!F§
   {
      
      public static const §[!;§:String = "normal";
      
      public static const §6!6§:uint = 1 << 1;
      
      public static const §6t§:uint = 1 << 2;
      
      public static const §,"#§:uint = 1 << 3;
      
      public static const §@q§:uint = 1 << 4;
       
      
      private var §6!0§:int;
      
      private var § var§:int;
      
      private var §<"A§:b2Vec2;
      
      private var §86§:b2Vec2;
      
      private var §5F§:Number;
      
      private var §-=§:Number;
      
      private var §-!§:Number;
      
      private var §;!C§:Number = 1;
      
      private var §-"G§:Boolean = false;
      
      protected var §;!5§:§8r§;
      
      private var §=O§:§^5§;
      
      private var §1!k§:Number = 1.0;
      
      private var §@"1§:Boolean = true;
      
      private var § !#§:Boolean = false;
      
      private var §?I§:int = 0;
      
      protected var §]!R§:Number = -1.0;
      
      private var §[!]§:Boolean = false;
      
      private var §]!N§:Boolean = false;
      
      public function §6!!§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§86§ = new b2Vec2();
         super(param1,param3,param4,param5,param6,param7);
         this.§=O§ = param2;
         this.§1!k§ = param8;
         this.§ var§ = §!!9§.itemType;
         param1.scaleX = param8;
         param1.scaleY = param8;
         this.§;!5§ = this.initObjectRenderer();
         this.§;!5§.§7!t§(§!!9§.shape is §3!@§);
         this.createPhysicsBody(param5,param6);
         this.§-!§ = §!!9§.getItemDefence();
         if(§!!9§.healthMax > 0)
         {
            this.initializeHealth(§!!9§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§`!%§(true) * §!!9§.getItemStrength()));
         }
         if(§!!9§.itemType == §<!r§.§8j§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param7 != 0)
         {
            this.§"!C§(param7 * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§;!5§.§3!"§(§!!9§.shape);
      }
      
      public static function §+c§(param1:int, param2:§=!P§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§^J§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§<!L§;
            }
            §@!9§.§#?§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§5F§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§5F§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§-=§;
      }
      
      public function get itemName() : String
      {
         return §!!9§.itemName;
      }
      
      public function get § ",§() : Number
      {
         return this.§;!C§;
      }
      
      public function get animation() : §^5§
      {
         return this.§=O§;
      }
      
      public function get x() : Number
      {
         return §1!`§;
      }
      
      public function get y() : Number
      {
         return §<2§;
      }
      
      public function get scale() : Number
      {
         return this.§1!k§;
      }
      
      public function get id() : int
      {
         return this.§?I§;
      }
      
      public function get §3!G§() : Boolean
      {
         return this.§-!§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§-!§;
      }
      
      public function get §95§() : Boolean
      {
         return this.§@"1§;
      }
      
      public function set §95§(param1:Boolean) : void
      {
         this.§@"1§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§]!R§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §`$§() : Boolean
      {
         return this.§[!]§;
      }
      
      public function set §`$§(param1:Boolean) : void
      {
         this.§[!]§ = param1;
      }
      
      public function get §@";§() : Boolean
      {
         return this.§-"G§;
      }
      
      public function set §@";§(param1:Boolean) : void
      {
         this.§-"G§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get renderer() : §8r§
      {
         return this.§;!5§;
      }
      
      public final function §&!<§(param1:int) : void
      {
         if(!this.§ !#§)
         {
            this.§ !#§ = true;
            this.§?I§ = param1;
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
         this.§-=§ = param1;
         this.§5F§ = param1;
      }
      
      protected function §3!m§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§5F§ += param1;
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         § y§ = mWorld.CreateBody(_loc3_);
         § y§.SetUserData(this);
         §!O§ = this.§8!n§();
         var _loc4_:b2FilterData = this.createFilterData();
         this.§[Y§(_loc4_);
      }
      
      protected function §8!n§() : b2Fixture
      {
         var _loc1_:b2Fixture = § y§.CreateFixture2(§!!9§.shape.getB2Shape(),§!!9§.getItemDensity());
         _loc1_.§3p§(§!!9§.getItemFriction());
         _loc1_.§[!z§(§!!9§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §8r§
      {
         return new §8r§(this.animation,sprite);
      }
      
      public function §[Y§(param1:b2FilterData) : void
      {
         if(§!O§)
         {
            §!O§.SetFilterData(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §!!9§.getItemBodyType();
         _loc3_.§7W§ = true;
         _loc3_.§`!p§ = true;
         _loc3_.§?!k§ = true;
         _loc3_.§'"§ = 1;
         _loc3_.§!"H§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§;!5§.dispose();
         this.§<"A§ = null;
         §!!9§ = null;
      }
      
      public function §"!C§(param1:Number) : void
      {
         §9B§().SetAngle(param1);
      }
      
      public function §&!G§() : Number
      {
         return §9B§().GetAngle();
      }
      
      public function §6!;§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §9B§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§]!M§();
         }
         if(param3)
         {
            this.§=!j§();
         }
      }
      
      public function §6!R§(param1:b2Vec2) : void
      {
         this.§<"A§ = param1;
      }
      
      private function §?f§() : void
      {
         if(this.§<"A§)
         {
            this.§6!;§(this.§<"A§,false);
            this.§<"A§ = null;
         }
      }
      
      private function §9!%§() : void
      {
         if(§ y§)
         {
            this.§86§.SetV(§ y§.GetLinearVelocity());
         }
      }
      
      public function §!@§() : b2Vec2
      {
         return this.§86§;
      }
      
      public function §]!M§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §9B§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §9B§().SetAngularVelocity(0);
         }
         else
         {
            §9B§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §=!j§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §9B§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§"!C§(_loc2_);
      }
      
      public function §0a§(param1:Number) : void
      {
         §9B§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§;!5§.update(param1);
         sprite.x = §1!`§;
         sprite.y = §<2§;
         sprite.rotation = §4X§;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         this.§?f§();
         super.update(param1,param2);
         if(this.§]!R§ >= 0)
         {
            this.§]!R§ += param1;
         }
         this.§9!%§();
      }
      
      public function updateOutOfBounds(param1:§0!5§) : void
      {
         this.§]!N§ = true;
      }
      
      public function updateBeforeRemoving(param1:§0!5§) : void
      {
         if(!this.§]!N§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §9!u§() : Boolean
      {
         return this.§ var§ == §<!r§.§<W§;
      }
      
      public function §?0§() : Boolean
      {
         return this.§ var§ == §<!r§.§8j§;
      }
      
      public function §'!Q§() : Boolean
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
      
      public function §<Z§() : Number
      {
         return Number(Math.sqrt(§9B§().GetLinearVelocity().x * §9B§().GetLinearVelocity().x + §9B§().GetLinearVelocity().y * §9B§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§]!R§ = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         this.§2!;§(§=!P§.§2+§);
      }
      
      protected function playDamagedSound() : void
      {
         this.§2!;§(§=!P§.§>d§);
      }
      
      protected function playCollisionSound() : void
      {
         this.§2!;§(§=!P§.§-u§);
      }
      
      public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§]!R§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.§-!§ < 0 || this.§-!§ >= 1000000)
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
            return this.§5F§;
         }
         if(param1 <= this.§-!§)
         {
            if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§5F§;
         }
         param1 -= this.§-!§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§5F§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§+7§.§,O§,this.§5F§ > param1,§9B§().GetPosition().x,§9B§().GetPosition().y,§8"#§.§[!%§(this.itemName));
         }
         this.§5F§ -= param1;
         if(this.§5F§ < 1)
         {
            this.§5F§ = 0;
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
         return this.§5F§;
      }
      
      protected function setDamageState(param1:Number, param2:§0!5§) : Boolean
      {
         return this.§;!5§.setDamageState(param1);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §2!;§(param1:int) : void
      {
         §6!!§.§+c§(param1,§!!9§.soundResource);
      }
      
      public function §`E§(param1:String) : Number
      {
         return §!!9§.getDamageMultiplier(param1) * this.§;!C§;
      }
      
      public function §8!G§(param1:String) : Number
      {
         return §!!9§.getVelocityMultiplier(param1);
      }
      
      public function §+!l§() : String
      {
         return §!!9§.materialName;
      }
      
      public function §>9§() : Number
      {
         return §!!9§.getItemStrength();
      }
      
      public function §@!^§() : Boolean
      {
         return §9B§().IsAwake() && (this is §1"G§ && this.§5F§ == this.§-=§ || Math.abs(§9B§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§9B§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§9B§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §8!Y§() : Boolean
      {
         if(!§9B§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§9B§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§9B§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§9B§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §[!t§(param1:Number = 3) : void
      {
         this.§;!C§ = param1;
      }
      
      public function §`!%§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§!!9§.getItemBodyType() == §8!]§.§16§)
         {
            _loc2_ = this.§;!5§.width * this.§;!5§.height * (§1!R§.§00§ * §1!R§.§00§);
         }
         else
         {
            _loc2_ = §9B§().GetMass() / §!O§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§9!3§();
            }
         }
         return _loc2_;
      }
      
      public function §9!3§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§;!5§.§ K§ - 1) / 10);
      }
      
      public function §0N§(param1:Number) : void
      {
         var _loc2_:Number = §9B§().GetLinearVelocity().x;
         var _loc3_:Number = §9B§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §9B§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§0!5§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      protected function addDestructionParticles(param1:§0!5§) : void
      {
      }
      
      public function addDamageParticles(param1:§0!5§, param2:int) : void
      {
      }
      
      public function § "5§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §9B§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §9B§().SetPosition(_loc4_);
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         return 1;
      }
      
      public function applyGravity() : Boolean
      {
         return §9B§().IsAwake();
      }
   }
}
