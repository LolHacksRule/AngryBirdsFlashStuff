package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FilterData;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§&!x§;
   import §2"Y§.§'§;
   import §2"Y§.§?#Q§;
   import §5"i§.b2Settings;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §="2§.§?!r§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§&'§;
   import §^#>§.§0"x§;
   import §`!r§.§ U§;
   import flash.geom.Point;
   
   public class §&#=§ extends §#m§
   {
      
      public static const §'%§:String = "normal";
      
      public static const §7!6§:uint = 1 << 1;
      
      public static const §!z§:uint = 1 << 2;
      
      public static const §3a§:uint = 1 << 3;
      
      public static const §[!>§:uint = 1 << 4;
       
      
      private var §`f§:int;
      
      private var §[!-§:int;
      
      private var §&!V§:b2Vec2;
      
      private var §7!j§:b2Vec2;
      
      private var §@"i§:Number;
      
      private var § B§:Number;
      
      private var §4O§:Number;
      
      private var §<",§:Number = 1;
      
      private var §9%§:Boolean = false;
      
      protected var §2N§:§,D§;
      
      private var §]!`§:§>"G§;
      
      private var §8"2§:Number = 1.0;
      
      private var §0K§:Boolean = true;
      
      private var §-"w§:Boolean = false;
      
      private var §6##§:int = 0;
      
      protected var § d§:Number = -1.0;
      
      private var §<Q§:Boolean = false;
      
      private var §2#%§:Boolean = false;
      
      protected var §@t§:String = "";
      
      protected var §2"7§:int = 1;
      
      public function §&#=§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         this.§7!j§ = new b2Vec2();
         super(param1,param3,param4,param5);
         this.§]!`§ = param2;
         this.§8"2§ = param6;
         this.§[!-§ = §;B§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§2N§ = this.initObjectRenderer();
         this.§2N§.§<!X§(§;B§.shape is §?#Q§);
         this.createPhysicsBody(§1!!§.x,§1!!§.y);
         §=G§ = param5.§=G§;
         this.§4O§ = §;B§.getItemDefence();
         if(§;B§.healthMax > 0)
         {
            this.initializeHealth(§;B§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§0"X§(true) * §;B§.getItemStrength()));
         }
         if(§;B§.itemType == §"t§.§1"A§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§6#<§(param5.angle * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§2N§.§5!s§(§;B§.shape);
      }
      
      public static function §4!#§(param1:int, param2:§'#2§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§[M§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8#a§;
            }
            §?!r§.§]!H§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§@"i§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§@"i§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§ B§;
      }
      
      public function get itemName() : String
      {
         return §;B§.itemName;
      }
      
      public function get §<z§() : Number
      {
         return this.§<",§;
      }
      
      public function get animation() : §>"G§
      {
         return this.§]!`§;
      }
      
      public function get x() : Number
      {
         return §8!+§;
      }
      
      public function get y() : Number
      {
         return §=!Z§;
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function get id() : int
      {
         return this.§6##§;
      }
      
      public function get §=i§() : Boolean
      {
         return this.§4O§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§4O§;
      }
      
      public function get §3#$§() : Boolean
      {
         return this.§0K§;
      }
      
      public function set §3#$§(param1:Boolean) : void
      {
         this.§0K§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§ d§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §,"W§() : Boolean
      {
         return this.§<Q§;
      }
      
      public function set §,"W§(param1:Boolean) : void
      {
         this.§<Q§ = param1;
      }
      
      public function get §=!s§() : Boolean
      {
         return this.§9%§;
      }
      
      public function set §=!s§(param1:Boolean) : void
      {
         this.§9%§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §4d§() : §,D§
      {
         return this.§2N§;
      }
      
      public final function §3#A§(param1:int) : void
      {
         if(!this.§-"w§)
         {
            this.§-"w§ = true;
            this.§6##§ = param1;
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
         this.§ B§ = param1;
         this.§@"i§ = param1;
      }
      
      protected function §?!x§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§@"i§ += param1;
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §04§ = mWorld.CreateBody(_loc3_);
         §04§.SetUserData(this);
         §^!L§ = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§;B§.isColliding)
         {
            _loc4_.§8"A§ = 0;
         }
         this.§#"'§(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §04§.CreateFixture2(§;B§.shape.getB2Shape(),§;B§.getItemDensity());
         _loc1_.§"Y§(§;B§.getItemFriction());
         _loc1_.§5q§(§;B§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §,D§
      {
         return new §,D§(this.animation,sprite);
      }
      
      public function §#"'§(param1:b2FilterData) : void
      {
         if(§^!L§)
         {
            §^!L§.SetFilterData(param1);
         }
      }
      
      public function §?#V§(param1:§"t§) : void
      {
         §;B§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §;B§.getItemBodyType();
         _loc3_.§@!'§ = true;
         _loc3_.active = true;
         _loc3_.§4!@§ = true;
         _loc3_.§>!f§ = 1;
         _loc3_.§%#2§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§2N§.dispose();
         this.§&!V§ = null;
         §;B§ = null;
      }
      
      public function §6#<§(param1:Number) : void
      {
         §3!t§().SetAngle(param1);
      }
      
      public function §"#,§() : Number
      {
         return §3!t§().GetAngle();
      }
      
      public function § &§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §3!t§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§4"L§();
         }
         if(param3)
         {
            this.§;#B§();
         }
      }
      
      public function §3l§(param1:b2Vec2) : void
      {
         this.§&!V§ = param1;
      }
      
      private function §-"@§() : void
      {
         if(this.§&!V§)
         {
            this.§ &§(this.§&!V§,false);
            this.§&!V§ = null;
         }
      }
      
      private function §5"4§() : void
      {
         if(§04§)
         {
            this.§7!j§.SetV(§04§.GetLinearVelocity());
         }
      }
      
      public function §;!x§() : b2Vec2
      {
         return this.§7!j§;
      }
      
      public function §4"L§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §3!t§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §3!t§().SetAngularVelocity(0);
         }
         else
         {
            §3!t§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §;#B§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §3!t§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§6#<§(_loc2_);
      }
      
      public function §;#!§(param1:Number) : void
      {
         §3!t§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§2N§.update(param1);
         sprite.x = §8!+§;
         sprite.y = §=!Z§;
         sprite.rotation = §<#W§;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         this.§-"@§();
         super.update(param1,param2);
         if(this.§ d§ >= 0)
         {
            this.§ d§ += param1;
         }
         this.§5"4§();
      }
      
      public function updateOutOfBounds(param1:§;$§) : void
      {
         this.§2#%§ = true;
      }
      
      public function updateBeforeRemoving(param1:§;$§) : void
      {
         if(!this.§2#%§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §"!@§() : Boolean
      {
         return this.§[!-§ == §"t§.§5k§;
      }
      
      public function §[#L§() : Boolean
      {
         return this.§[!-§ == §"t§.§1"A§;
      }
      
      public function §2g§() : Boolean
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
      
      public function §>o§() : Number
      {
         return Number(Math.sqrt(§3!t§().GetLinearVelocity().x * §3!t§().GetLinearVelocity().x + §3!t§().GetLinearVelocity().y * §3!t§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§ d§ = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         this.§[v§(§'#2§.§&x§);
      }
      
      protected function playDamagedSound() : void
      {
         this.§[v§(§'#2§.§@N§);
      }
      
      protected function playCollisionSound() : void
      {
         this.§[v§(§'#2§.§#!5§);
      }
      
      public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§ d§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.§4O§ < 0 || this.§4O§ >= 1000000)
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
            return this.§@"i§;
         }
         if(param1 <= this.§4O§)
         {
            if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§@"i§;
         }
         param1 -= this.§4O§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§@"i§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§&'§.§'#?§,this.§@"i§ > param1,§3!t§().GetPosition().x,§3!t§().GetPosition().y,§ U§.§0#`§(this.itemName));
         }
         this.§@"i§ -= param1;
         if(this.§@"i§ < 1)
         {
            this.§@"i§ = 0;
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
         return this.§@"i§;
      }
      
      protected function setDamageState(param1:Number, param2:§;$§) : Boolean
      {
         return this.§2N§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §[v§(param1:int) : void
      {
         §&#=§.§4!#§(param1,§;B§.soundResource);
      }
      
      public function §!!>§(param1:String) : Number
      {
         return §;B§.getDamageMultiplier(param1) * this.§<",§;
      }
      
      public function §5#Q§(param1:String) : Number
      {
         return §;B§.getVelocityMultiplier(param1);
      }
      
      public function §+"J§() : String
      {
         return §;B§.materialName;
      }
      
      public function §+"`§() : Number
      {
         return §;B§.getItemStrength();
      }
      
      public function §@"W§() : Boolean
      {
         return §3!t§().IsAwake() && (this is §?"N§ && this.§@"i§ == this.§ B§ || Math.abs(§3!t§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§3!t§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§3!t§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §+"6§() : Boolean
      {
         if(!§3!t§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§3!t§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§3!t§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§3!t§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §8" §(param1:Number = 3) : void
      {
         this.§<",§ = param1;
      }
      
      public function §0"X§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§;B§.getItemBodyType() == §&!x§.§&#_§)
         {
            _loc2_ = this.§2N§.width * this.§2N§.height * (§#_§.§8]§ * §#_§.§8]§);
         }
         else
         {
            _loc2_ = §3!t§().GetMass() / §^!L§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§>#,§();
            }
         }
         return _loc2_;
      }
      
      public function §>#,§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§2N§.§^l§ - 1) / 10);
      }
      
      public function §["t§(param1:Number) : void
      {
         var _loc2_:Number = §3!t§().GetLinearVelocity().x;
         var _loc3_:Number = §3!t§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §3!t§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§;$§) : Boolean
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
      
      protected function addDestructionParticles(param1:§;$§) : void
      {
      }
      
      public function addDamageParticles(param1:§;$§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§ 3§)
         {
            case GravityFilterCategory.FORCE_OBJECT:
               §04§.SetLinearDamping(§0"x§.§["1§);
               §04§.SetAngularDamping(§0"x§.§4"e§);
               §04§.SetGravityScale(0);
               break;
            case GravityFilterCategory.YODA_FORCE_OBJECT:
               §04§.SetLinearDamping(§0"x§.§;"7§);
               §04§.SetAngularDamping(§0"x§.§>!+§);
               §04§.SetGravityScale(0);
               break;
            case GravityFilterCategory.LEIA_FORCE_OBJECT:
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §!"f§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §3!t§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §3!t§().SetPosition(_loc4_);
      }
      
      public function §="D§(param1:String, param2:String, param3:§;$§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §=G§ = -1;
         }
      }
   }
}
