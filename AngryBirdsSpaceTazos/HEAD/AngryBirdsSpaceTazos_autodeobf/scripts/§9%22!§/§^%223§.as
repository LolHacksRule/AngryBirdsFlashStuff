package §9"!§
{
   import §&!]§.Sprite;
   import §'!a§.b2Settings;
   import §1"?§.§4R§;
   import §3!S§.§<5§;
   import §3"#§.§ 7§;
   import §3"#§.§`"8§;
   import §3>§.§!4§;
   import §3>§.§,!^§;
   import §3>§.§-"8§;
   import §3>§.§=!Z§;
   import §6!n§.b2Vec2;
   import §9!K§.b2BodyDef;
   import §9!K§.b2FilterData;
   import §9!K§.b2Fixture;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import flash.geom.Point;
   
   public class §^"3§ extends §8a§
   {
      
      public static const §4!Z§:String = "normal";
      
      public static const §;!z§:uint = 1 << 1;
      
      public static const §!!$§:uint = 1 << 2;
      
      public static const §0U§:uint = 1 << 3;
      
      public static const §9!h§:uint = 1 << 4;
       
      
      private var §"!$§:int;
      
      private var § !U§:int;
      
      private var §'!`§:b2Vec2;
      
      private var §+!T§:b2Vec2;
      
      private var §4N§:Number;
      
      private var §2"H§:Number;
      
      private var §^!H§:Number;
      
      private var §@&§:Number = 1;
      
      private var §3"E§:Boolean = false;
      
      protected var §"j§:§7!"§;
      
      private var §?^§:§1!_§;
      
      private var §&!A§:Number = 1.0;
      
      private var § !B§:Boolean = true;
      
      private var §'a§:Boolean = false;
      
      private var §""§:int = 0;
      
      protected var §catch§:Number = -1.0;
      
      private var §@!L§:Boolean = false;
      
      private var §?! §:Boolean = false;
      
      public function §^"3§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§+!T§ = new b2Vec2();
         super(param1,param3,param4,param5,param6,param7);
         this.§?^§ = param2;
         this.§&!A§ = param8;
         this.§ !U§ = § N§.itemType;
         param1.scaleX = param8;
         param1.scaleY = param8;
         this.§"j§ = this.initObjectRenderer();
         this.§"j§.§[!§(§ N§.shape is §,!^§);
         this.createPhysicsBody(param5,param6);
         this.§^!H§ = § N§.getItemDefence();
         if(§ N§.healthMax > 0)
         {
            this.initializeHealth(§ N§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§0!B§(true) * § N§.getItemStrength()));
         }
         if(§ N§.itemType == §-"8§.§,!#§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param7 != 0)
         {
            this.§3",§(param7 * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§"j§.§=!d§(§ N§.shape);
      }
      
      public static function §?E§(param1:int, param2:§=!Z§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§&"4§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§3y§;
            }
            §<5§.§%!X§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§4N§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§4N§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§2"H§;
      }
      
      public function get itemName() : String
      {
         return § N§.itemName;
      }
      
      public function get §'_§() : Number
      {
         return this.§@&§;
      }
      
      public function get animation() : §1!_§
      {
         return this.§?^§;
      }
      
      public function get x() : Number
      {
         return §''§;
      }
      
      public function get y() : Number
      {
         return §3"<§;
      }
      
      public function get scale() : Number
      {
         return this.§&!A§;
      }
      
      public function get id() : int
      {
         return this.§""§;
      }
      
      public function get §'"D§() : Boolean
      {
         return this.§^!H§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§^!H§;
      }
      
      public function get §2!n§() : Boolean
      {
         return this.§ !B§;
      }
      
      public function set §2!n§(param1:Boolean) : void
      {
         this.§ !B§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§catch§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §+!l§() : Boolean
      {
         return this.§@!L§;
      }
      
      public function set §+!l§(param1:Boolean) : void
      {
         this.§@!L§ = param1;
      }
      
      public function get §^!b§() : Boolean
      {
         return this.§3"E§;
      }
      
      public function set §^!b§(param1:Boolean) : void
      {
         this.§3"E§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get renderer() : §7!"§
      {
         return this.§"j§;
      }
      
      public final function §[!I§(param1:int) : void
      {
         if(!this.§'a§)
         {
            this.§'a§ = true;
            this.§""§ = param1;
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
         this.§2"H§ = param1;
         this.§4N§ = param1;
      }
      
      protected function §[",§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§4N§ += param1;
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §2D§ = mWorld.CreateBody(_loc3_);
         §2D§.SetUserData(this);
         §7u§ = this.§1=§();
         var _loc4_:b2FilterData = this.createFilterData();
         this.§`!S§(_loc4_);
      }
      
      protected function §1=§() : b2Fixture
      {
         var _loc1_:b2Fixture = §2D§.CreateFixture2(§ N§.shape.getB2Shape(),§ N§.getItemDensity());
         _loc1_.§4'§(§ N§.getItemFriction());
         _loc1_.§#!r§(§ N§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §7!"§
      {
         return new §7!"§(this.animation,sprite);
      }
      
      public function §`!S§(param1:b2FilterData) : void
      {
         if(§7u§)
         {
            §7u§.SetFilterData(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = § N§.getItemBodyType();
         _loc3_.§@!X§ = true;
         _loc3_.§]K§ = true;
         _loc3_.§>5§ = true;
         _loc3_.§+!H§ = 1;
         _loc3_.§=!l§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§"j§.dispose();
         this.§'!`§ = null;
         § N§ = null;
      }
      
      public function §3",§(param1:Number) : void
      {
         §`I§().SetAngle(param1);
      }
      
      public function §<!O§() : Number
      {
         return §`I§().GetAngle();
      }
      
      public function §?!m§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §`I§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§3!0§();
         }
         if(param3)
         {
            this.§@g§();
         }
      }
      
      public function §'e§(param1:b2Vec2) : void
      {
         this.§'!`§ = param1;
      }
      
      private function §`!y§() : void
      {
         if(this.§'!`§)
         {
            this.§?!m§(this.§'!`§,false);
            this.§'!`§ = null;
         }
      }
      
      private function § '§() : void
      {
         if(§2D§)
         {
            this.§+!T§.SetV(§2D§.GetLinearVelocity());
         }
      }
      
      public function §5!C§() : b2Vec2
      {
         return this.§+!T§;
      }
      
      public function §3!0§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §`I§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §`I§().SetAngularVelocity(0);
         }
         else
         {
            §`I§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §@g§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §`I§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§3",§(_loc2_);
      }
      
      public function §]"@§(param1:Number) : void
      {
         §`I§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§"j§.update(param1);
         sprite.x = §''§;
         sprite.y = §3"<§;
         sprite.rotation = § "F§;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         this.§`!y§();
         super.update(param1,param2);
         if(this.§catch§ >= 0)
         {
            this.§catch§ += param1;
         }
         this.§ '§();
      }
      
      public function updateOutOfBounds(param1:§0!s§) : void
      {
         this.§?! § = true;
      }
      
      public function updateBeforeRemoving(param1:§0!s§) : void
      {
         if(!this.§?! §)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §1+§() : Boolean
      {
         return this.§ !U§ == §-"8§.§&3§;
      }
      
      public function §98§() : Boolean
      {
         return this.§ !U§ == §-"8§.§,!#§;
      }
      
      public function §-M§() : Boolean
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
      
      public function §4T§() : Number
      {
         return Number(Math.sqrt(§`I§().GetLinearVelocity().x * §`I§().GetLinearVelocity().x + §`I§().GetLinearVelocity().y * §`I§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§catch§ = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         this.§6!7§(§=!Z§.§;!H§);
      }
      
      protected function playDamagedSound() : void
      {
         this.§6!7§(§=!Z§.§=!7§);
      }
      
      protected function playCollisionSound() : void
      {
         this.§6!7§(§=!Z§.§6"5§);
      }
      
      public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§catch§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.§^!H§ < 0 || this.§^!H§ >= 1000000)
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
            return this.§4N§;
         }
         if(param1 <= this.§^!H§)
         {
            if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§4N§;
         }
         param1 -= this.§^!H§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§4N§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§ 7§.§#U§,this.§4N§ > param1,§`I§().GetPosition().x,§`I§().GetPosition().y,§4R§.§;'§(this.itemName));
         }
         this.§4N§ -= param1;
         if(this.§4N§ < 1)
         {
            this.§4N§ = 0;
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
         return this.§4N§;
      }
      
      protected function setDamageState(param1:Number, param2:§0!s§) : Boolean
      {
         return this.§"j§.setDamageState(param1);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §6!7§(param1:int) : void
      {
         §^"3§.§?E§(param1,§ N§.soundResource);
      }
      
      public function §0"$§(param1:String) : Number
      {
         return § N§.getDamageMultiplier(param1) * this.§@&§;
      }
      
      public function §4D§(param1:String) : Number
      {
         return § N§.getVelocityMultiplier(param1);
      }
      
      public function §1"G§() : String
      {
         return § N§.materialName;
      }
      
      public function §?p§() : Number
      {
         return § N§.getItemStrength();
      }
      
      public function §5!Q§() : Boolean
      {
         return §`I§().IsAwake() && (this is §!!H§ && this.§4N§ == this.§2"H§ || Math.abs(§`I§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§`I§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§`I§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function § !W§() : Boolean
      {
         if(!§`I§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§`I§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§`I§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§`I§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §]!w§(param1:Number = 3) : void
      {
         this.§@&§ = param1;
      }
      
      public function §0!B§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§ N§.getItemBodyType() == §!4§.§4y§)
         {
            _loc2_ = this.§"j§.width * this.§"j§.height * (§`"8§.§3!=§ * §`"8§.§3!=§);
         }
         else
         {
            _loc2_ = §`I§().GetMass() / §7u§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§"!a§();
            }
         }
         return _loc2_;
      }
      
      public function §"!a§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§"j§.§+!]§ - 1) / 10);
      }
      
      public function §2Y§(param1:Number) : void
      {
         var _loc2_:Number = §`I§().GetLinearVelocity().x;
         var _loc3_:Number = §`I§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §`I§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§0!s§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      protected function addDestructionParticles(param1:§0!s§) : void
      {
      }
      
      public function addDamageParticles(param1:§0!s§, param2:int) : void
      {
      }
      
      public function §>!l§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §`I§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §`I§().SetPosition(_loc4_);
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         return 1;
      }
      
      public function applyGravity() : Boolean
      {
         return §`I§().IsAwake();
      }
   }
}
