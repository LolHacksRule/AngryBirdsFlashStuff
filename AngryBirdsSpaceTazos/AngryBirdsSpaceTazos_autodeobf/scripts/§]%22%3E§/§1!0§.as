package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§<s§;
   import §"!&§.§="A§;
   import §"!&§.§=C§;
   import §'!&§.b2BodyDef;
   import §'!&§.b2FilterData;
   import §'!&§.b2Fixture;
   import §'!&§.b2World;
   import §'4§.§!!t§;
   import §'4§.§^g§;
   import §1"H§.§2!V§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import flash.geom.Point;
   
   public class §1!0§ extends §%!+§
   {
      
      public static const §,!Y§:String = "normal";
      
      public static const §>!C§:uint = 1 << 1;
      
      public static const §-"#§:uint = 1 << 2;
      
      public static const §`"E§:uint = 1 << 3;
      
      public static const §@o§:uint = 1 << 4;
       
      
      private var §!b§:int;
      
      private var §,S§:int;
      
      private var §7?§:b2Vec2;
      
      private var §^!+§:b2Vec2;
      
      private var §`Z§:Number;
      
      private var §,L§:Number;
      
      private var §`!2§:Number;
      
      private var §[" §:Number = 1;
      
      private var §<"=§:Boolean = false;
      
      protected var §'%§:§&5§;
      
      private var §]!k§:§#r§;
      
      private var §=T§:Number = 1.0;
      
      private var §5!§:Boolean = true;
      
      private var §#§:Boolean = false;
      
      private var §[!o§:int = 0;
      
      protected var §"!A§:Number = -1.0;
      
      private var §8!F§:Boolean = false;
      
      private var §^'§:Boolean = false;
      
      public function §1!0§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         this.§^!+§ = new b2Vec2();
         super(param1,param3,param4,param5,param6,param7);
         this.§]!k§ = param2;
         this.§=T§ = param8;
         this.§,S§ = §7!h§.itemType;
         param1.scaleX = param8;
         param1.scaleY = param8;
         this.§'%§ = this.initObjectRenderer();
         this.§'%§.§0#§(§7!h§.shape is §="A§);
         this.createPhysicsBody(param5,param6);
         this.§`!2§ = §7!h§.getItemDefence();
         if(§7!h§.healthMax > 0)
         {
            this.initializeHealth(§7!h§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§+<§(true) * §7!h§.getItemStrength()));
         }
         if(§7!h§.itemType == §8X§.§!!K§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param7 != 0)
         {
            this.§^e§(param7 * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§'%§.§>D§(§7!h§.shape);
      }
      
      public static function §3!V§(param1:int, param2:§=C§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§5"A§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§&!W§;
            }
            §<!O§.§`h§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§`Z§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§`Z§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§,L§;
      }
      
      public function get itemName() : String
      {
         return §7!h§.itemName;
      }
      
      public function get § !K§() : Number
      {
         return this.§[" §;
      }
      
      public function get animation() : §#r§
      {
         return this.§]!k§;
      }
      
      public function get x() : Number
      {
         return §""4§;
      }
      
      public function get y() : Number
      {
         return §%W§;
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function get id() : int
      {
         return this.§[!o§;
      }
      
      public function get §8Z§() : Boolean
      {
         return this.§`!2§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§`!2§;
      }
      
      public function get §44§() : Boolean
      {
         return this.§5!§;
      }
      
      public function set §44§(param1:Boolean) : void
      {
         this.§5!§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§"!A§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §,M§() : Boolean
      {
         return this.§8!F§;
      }
      
      public function set §,M§(param1:Boolean) : void
      {
         this.§8!F§ = param1;
      }
      
      public function get §>_§() : Boolean
      {
         return this.§<"=§;
      }
      
      public function set §>_§(param1:Boolean) : void
      {
         this.§<"=§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get renderer() : §&5§
      {
         return this.§'%§;
      }
      
      public final function §2!6§(param1:int) : void
      {
         if(!this.§#§)
         {
            this.§#§ = true;
            this.§[!o§ = param1;
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
         this.§,L§ = param1;
         this.§`Z§ = param1;
      }
      
      protected function § N§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§`Z§ += param1;
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §'"F§ = mWorld.CreateBody(_loc3_);
         §'"F§.SetUserData(this);
         § ]§ = this.§2w§();
         var _loc4_:b2FilterData = this.createFilterData();
         this.§0q§(_loc4_);
      }
      
      protected function §2w§() : b2Fixture
      {
         var _loc1_:b2Fixture = §'"F§.CreateFixture2(§7!h§.shape.getB2Shape(),§7!h§.getItemDensity());
         _loc1_.§&X§(§7!h§.getItemFriction());
         _loc1_.§>W§(§7!h§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §&5§
      {
         return new §&5§(this.animation,sprite);
      }
      
      public function §0q§(param1:b2FilterData) : void
      {
         if(§ ]§)
         {
            § ]§.SetFilterData(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §7!h§.getItemBodyType();
         _loc3_.§#6§ = true;
         _loc3_.§`^§ = true;
         _loc3_.§"o§ = true;
         _loc3_.§@0§ = 1;
         _loc3_.§<!F§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§'%§.dispose();
         this.§7?§ = null;
         §7!h§ = null;
      }
      
      public function §^e§(param1:Number) : void
      {
         §^!z§().SetAngle(param1);
      }
      
      public function §+!c§() : Number
      {
         return §^!z§().GetAngle();
      }
      
      public function §=9§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §^!z§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§+![§();
         }
         if(param3)
         {
            this.§;"'§();
         }
      }
      
      public function §%!>§(param1:b2Vec2) : void
      {
         this.§7?§ = param1;
      }
      
      private function §@!u§() : void
      {
         if(this.§7?§)
         {
            this.§=9§(this.§7?§,false);
            this.§7?§ = null;
         }
      }
      
      private function § u§() : void
      {
         if(§'"F§)
         {
            this.§^!+§.SetV(§'"F§.GetLinearVelocity());
         }
      }
      
      public function §#?§() : b2Vec2
      {
         return this.§^!+§;
      }
      
      public function §+![§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §^!z§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §^!z§().SetAngularVelocity(0);
         }
         else
         {
            §^!z§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §;"'§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §^!z§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§^e§(_loc2_);
      }
      
      public function §>"7§(param1:Number) : void
      {
         §^!z§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§'%§.update(param1);
         sprite.x = §""4§;
         sprite.y = §%W§;
         sprite.rotation = §1"3§;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         this.§@!u§();
         super.update(param1,param2);
         if(this.§"!A§ >= 0)
         {
            this.§"!A§ += param1;
         }
         this.§ u§();
      }
      
      public function updateOutOfBounds(param1:§;U§) : void
      {
         this.§^'§ = true;
      }
      
      public function updateBeforeRemoving(param1:§;U§) : void
      {
         if(!this.§^'§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §6L§() : Boolean
      {
         return this.§,S§ == §8X§.§1!Q§;
      }
      
      public function §&-§() : Boolean
      {
         return this.§,S§ == §8X§.§!!K§;
      }
      
      public function §<!0§() : Boolean
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
      
      public function §=!k§() : Number
      {
         return Number(Math.sqrt(§^!z§().GetLinearVelocity().x * §^!z§().GetLinearVelocity().x + §^!z§().GetLinearVelocity().y * §^!z§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§"!A§ = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         this.§'!p§(§=C§.§;!G§);
      }
      
      protected function playDamagedSound() : void
      {
         this.§'!p§(§=C§.§+5§);
      }
      
      protected function playCollisionSound() : void
      {
         this.§'!p§(§=C§.§[!I§);
      }
      
      public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§"!A§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.§`!2§ < 0 || this.§`!2§ >= 1000000)
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
            return this.§`Z§;
         }
         if(param1 <= this.§`!2§)
         {
            if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§`Z§;
         }
         param1 -= this.§`!2§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§`Z§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§!!t§.§#!L§,this.§`Z§ > param1,§^!z§().GetPosition().x,§^!z§().GetPosition().y,§2!V§.§-"§(this.itemName));
         }
         this.§`Z§ -= param1;
         if(this.§`Z§ < 1)
         {
            this.§`Z§ = 0;
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
         return this.§`Z§;
      }
      
      protected function setDamageState(param1:Number, param2:§;U§) : Boolean
      {
         return this.§'%§.setDamageState(param1);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §'!p§(param1:int) : void
      {
         §1!0§.§3!V§(param1,§7!h§.soundResource);
      }
      
      public function §^^§(param1:String) : Number
      {
         return §7!h§.getDamageMultiplier(param1) * this.§[" §;
      }
      
      public function §%!O§(param1:String) : Number
      {
         return §7!h§.getVelocityMultiplier(param1);
      }
      
      public function §^I§() : String
      {
         return §7!h§.materialName;
      }
      
      public function §=W§() : Number
      {
         return §7!h§.getItemStrength();
      }
      
      public function §6!b§() : Boolean
      {
         return §^!z§().IsAwake() && (this is § 6§ && this.§`Z§ == this.§,L§ || Math.abs(§^!z§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§^!z§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§^!z§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §%!8§() : Boolean
      {
         if(!§^!z§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§^!z§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§^!z§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§^!z§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §&!f§(param1:Number = 3) : void
      {
         this.§[" § = param1;
      }
      
      public function §+<§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§7!h§.getItemBodyType() == §<s§.§%!2§)
         {
            _loc2_ = this.§'%§.width * this.§'%§.height * (§^g§.§5!-§ * §^g§.§5!-§);
         }
         else
         {
            _loc2_ = §^!z§().GetMass() / § ]§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§]"B§();
            }
         }
         return _loc2_;
      }
      
      public function §]"B§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§'%§.§,!D§ - 1) / 10);
      }
      
      public function §var§(param1:Number) : void
      {
         var _loc2_:Number = §^!z§().GetLinearVelocity().x;
         var _loc3_:Number = §^!z§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §^!z§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§;U§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      protected function addDestructionParticles(param1:§;U§) : void
      {
      }
      
      public function addDamageParticles(param1:§;U§, param2:int) : void
      {
      }
      
      public function §@!F§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §^!z§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §^!z§().SetPosition(_loc4_);
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         return 1;
      }
      
      public function applyGravity() : Boolean
      {
         return §^!z§().IsAwake();
      }
   }
}
