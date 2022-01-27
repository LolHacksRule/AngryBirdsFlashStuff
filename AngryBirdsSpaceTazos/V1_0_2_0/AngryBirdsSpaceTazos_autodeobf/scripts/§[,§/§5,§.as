package §[,§
{
   import §#!X§.b2BodyDef;
   import §#!X§.b2FilterData;
   import §#!X§.b2Fixture;
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §,7§.§9!v§;
   import §8o§.§]!U§;
   import §9!G§.§"!S§;
   import §;"=§.§"!=§;
   import §;"=§.§"!Y§;
   import §;"=§.§9!B§;
   import §;"=§.§]"<§;
   import §?!<§.§'!1§;
   import §?!<§.§8R§;
   import §@!@§.b2Settings;
   import flash.geom.Point;
   
   public class §5,§ extends §,[§
   {
      
      public static const §+!d§:String = "normal";
      
      public static const §"!B§:uint = 1 << 1;
      
      public static const §0!=§:uint = 1 << 2;
      
      public static const §'!B§:uint = 1 << 3;
      
      public static const §<!^§:uint = 1 << 4;
       
      
      private var §9!Z§:int;
      
      private var §]"!§:int;
      
      private var §^"-§:b2Vec2;
      
      private var §^"&§:b2Vec2;
      
      private var §@!i§:Number;
      
      private var §5!7§:Number;
      
      private var §^!^§:Number;
      
      private var §6l§:Number = 1;
      
      private var §<Q§:Boolean = false;
      
      protected var §&"C§:§#&§;
      
      private var §"">§:§]!U§;
      
      private var §-!Y§:Number = 1.0;
      
      private var §4"A§:Boolean = true;
      
      private var §["$§:Boolean = false;
      
      private var §1!q§:int = 0;
      
      protected var §,;§:Number = -1.0;
      
      private var §'"2§:Boolean = false;
      
      private var §8![§:Boolean = false;
      
      public function §5,§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§^"&§ = new b2Vec2();
         super(param1,param3,param4,param5,param6,param7);
         this.§"">§ = param2;
         this.§-!Y§ = param8;
         this.§]"!§ = §00§.itemType;
         param1.scaleX = param8;
         param1.scaleY = param8;
         this.§&"C§ = this.initObjectRenderer();
         this.§&"C§.§>!j§(§00§.shape is §9!B§);
         this.createPhysicsBody(param5,param6);
         this.§^!^§ = §00§.getItemDefence();
         if(§00§.healthMax > 0)
         {
            this.initializeHealth(§00§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§&!Q§(true) * §00§.getItemStrength()));
         }
         if(§00§.itemType == §]"<§.§#!&§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param7 != 0)
         {
            this.§[!9§(param7 * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§&"C§.§?!a§(§00§.shape);
      }
      
      public static function §`s§(param1:int, param2:§"!Y§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§1[§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8"E§;
            }
            §"!S§.§?2§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§@!i§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§@!i§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§5!7§;
      }
      
      public function get itemName() : String
      {
         return §00§.itemName;
      }
      
      public function get §2"A§() : Number
      {
         return this.§6l§;
      }
      
      public function get animation() : §]!U§
      {
         return this.§"">§;
      }
      
      public function get x() : Number
      {
         return §>!J§;
      }
      
      public function get y() : Number
      {
         return §;`§;
      }
      
      public function get scale() : Number
      {
         return this.§-!Y§;
      }
      
      public function get id() : int
      {
         return this.§1!q§;
      }
      
      public function get §>2§() : Boolean
      {
         return this.§^!^§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§^!^§;
      }
      
      public function get §%%§() : Boolean
      {
         return this.§4"A§;
      }
      
      public function set §%%§(param1:Boolean) : void
      {
         this.§4"A§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§,;§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §%!J§() : Boolean
      {
         return this.§'"2§;
      }
      
      public function set §%!J§(param1:Boolean) : void
      {
         this.§'"2§ = param1;
      }
      
      public function get §@Q§() : Boolean
      {
         return this.§<Q§;
      }
      
      public function set §@Q§(param1:Boolean) : void
      {
         this.§<Q§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get renderer() : §#&§
      {
         return this.§&"C§;
      }
      
      public final function §0F§(param1:int) : void
      {
         if(!this.§["$§)
         {
            this.§["$§ = true;
            this.§1!q§ = param1;
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
         this.§5!7§ = param1;
         this.§@!i§ = param1;
      }
      
      protected function §`"1§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§@!i§ += param1;
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §&p§ = mWorld.CreateBody(_loc3_);
         §&p§.SetUserData(this);
         §<'§ = this.§`f§();
         var _loc4_:b2FilterData = this.createFilterData();
         this.§0%§(_loc4_);
      }
      
      protected function §`f§() : b2Fixture
      {
         var _loc1_:b2Fixture = §&p§.CreateFixture2(§00§.shape.getB2Shape(),§00§.getItemDensity());
         _loc1_.§4"F§(§00§.getItemFriction());
         _loc1_.§%!C§(§00§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §#&§
      {
         return new §#&§(this.animation,sprite);
      }
      
      public function §0%§(param1:b2FilterData) : void
      {
         if(§<'§)
         {
            §<'§.SetFilterData(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §00§.getItemBodyType();
         _loc3_.§=%§ = true;
         _loc3_.§0!!§ = true;
         _loc3_.§!F§ = true;
         _loc3_.§9!Q§ = 1;
         _loc3_.§-!G§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§&"C§.dispose();
         this.§^"-§ = null;
         §00§ = null;
      }
      
      public function §[!9§(param1:Number) : void
      {
         § <§().SetAngle(param1);
      }
      
      public function §@,§() : Number
      {
         return § <§().GetAngle();
      }
      
      public function §]Q§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         § <§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§`!u§();
         }
         if(param3)
         {
            this.§4X§();
         }
      }
      
      public function §1t§(param1:b2Vec2) : void
      {
         this.§^"-§ = param1;
      }
      
      private function §!9§() : void
      {
         if(this.§^"-§)
         {
            this.§]Q§(this.§^"-§,false);
            this.§^"-§ = null;
         }
      }
      
      private function §[!Z§() : void
      {
         if(§&p§)
         {
            this.§^"&§.SetV(§&p§.GetLinearVelocity());
         }
      }
      
      public function §[!P§() : b2Vec2
      {
         return this.§^"&§;
      }
      
      public function §`!u§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = § <§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            § <§().SetAngularVelocity(0);
         }
         else
         {
            § <§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §4X§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = § <§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§[!9§(_loc2_);
      }
      
      public function §?!O§(param1:Number) : void
      {
         § <§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§&"C§.update(param1);
         sprite.x = §>!J§;
         sprite.y = §;`§;
         sprite.rotation = §^8§;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         this.§!9§();
         super.update(param1,param2);
         if(this.§,;§ >= 0)
         {
            this.§,;§ += param1;
         }
         this.§[!Z§();
      }
      
      public function updateOutOfBounds(param1:§class§) : void
      {
         this.§8![§ = true;
      }
      
      public function updateBeforeRemoving(param1:§class§) : void
      {
         if(!this.§8![§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §'P§() : Boolean
      {
         return this.§]"!§ == §]"<§.§8"3§;
      }
      
      public function §>!1§() : Boolean
      {
         return this.§]"!§ == §]"<§.§#!&§;
      }
      
      public function §4!1§() : Boolean
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
      
      public function §"D§() : Number
      {
         return Number(Math.sqrt(§ <§().GetLinearVelocity().x * § <§().GetLinearVelocity().x + § <§().GetLinearVelocity().y * § <§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§,;§ = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         this.§<">§(§"!Y§.§`_§);
      }
      
      protected function playDamagedSound() : void
      {
         this.§<">§(§"!Y§.§4!z§);
      }
      
      protected function playCollisionSound() : void
      {
         this.§<">§(§"!Y§.§?5§);
      }
      
      public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§,;§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.§^!^§ < 0 || this.§^!^§ >= 1000000)
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
            return this.§@!i§;
         }
         if(param1 <= this.§^!^§)
         {
            if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§@!i§;
         }
         param1 -= this.§^!^§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§@!i§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§8R§.§^!g§,this.§@!i§ > param1,§ <§().GetPosition().x,§ <§().GetPosition().y,§9!v§.§#8§(this.itemName));
         }
         this.§@!i§ -= param1;
         if(this.§@!i§ < 1)
         {
            this.§@!i§ = 0;
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
         return this.§@!i§;
      }
      
      protected function setDamageState(param1:Number, param2:§class§) : Boolean
      {
         return this.§&"C§.setDamageState(param1);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §<">§(param1:int) : void
      {
         §5,§.§`s§(param1,§00§.soundResource);
      }
      
      public function §-H§(param1:String) : Number
      {
         return §00§.getDamageMultiplier(param1) * this.§6l§;
      }
      
      public function §3!G§(param1:String) : Number
      {
         return §00§.getVelocityMultiplier(param1);
      }
      
      public function §7y§() : String
      {
         return §00§.materialName;
      }
      
      public function §6"G§() : Number
      {
         return §00§.getItemStrength();
      }
      
      public function §[W§() : Boolean
      {
         return § <§().IsAwake() && (this is §#!v§ && this.§@!i§ == this.§5!7§ || Math.abs(§ <§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§ <§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§ <§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §#"%§() : Boolean
      {
         if(!§ <§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§ <§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§ <§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§ <§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §33§(param1:Number = 3) : void
      {
         this.§6l§ = param1;
      }
      
      public function §&!Q§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§00§.getItemBodyType() == §"!=§.§]">§)
         {
            _loc2_ = this.§&"C§.width * this.§&"C§.height * (§'!1§.§<!@§ * §'!1§.§<!@§);
         }
         else
         {
            _loc2_ = § <§().GetMass() / §<'§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§<!E§();
            }
         }
         return _loc2_;
      }
      
      public function §<!E§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§&"C§.§5!I§ - 1) / 10);
      }
      
      public function §1]§(param1:Number) : void
      {
         var _loc2_:Number = § <§().GetLinearVelocity().x;
         var _loc3_:Number = § <§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         § <§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§class§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      protected function addDestructionParticles(param1:§class§) : void
      {
      }
      
      public function addDamageParticles(param1:§class§, param2:int) : void
      {
      }
      
      public function §&R§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = § <§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         § <§().SetPosition(_loc4_);
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         return 1;
      }
      
      public function applyGravity() : Boolean
      {
         return § <§().IsAwake();
      }
   }
}
