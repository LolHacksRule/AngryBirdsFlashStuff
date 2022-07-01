package §%Z§
{
   import § 2§.§&p§;
   import § 2§.§3t§;
   import § 2§.§=+§;
   import §!m§.§'!P§;
   import §'I§.b2Settings;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §2!s§.§+f§;
   import §2!s§.§1"'§;
   import §2!s§.§2!_§;
   import §8+§.§5"-§;
   import §9!Z§.b2BodyDef;
   import §9!Z§.b2FilterData;
   import §9!Z§.b2Fixture;
   import §9!Z§.b2World;
   import §;X§.§4!@§;
   import §?"'§.b2Vec2;
   import §`!B§.Sprite;
   import flash.geom.Point;
   
   public class §&!-§ extends §]B§
   {
      
      public static const § !N§:String = "normal";
      
      public static const §0!M§:uint = 1 << 1;
      
      public static const §!",§:uint = 1 << 2;
      
      public static const § !w§:uint = 1 << 3;
      
      public static const §;h§:uint = 1 << 4;
       
      
      private var §5!x§:int;
      
      private var §!!`§:int;
      
      private var §3u§:b2Vec2;
      
      private var §^"#§:b2Vec2;
      
      private var §[" §:Number;
      
      private var §8!Y§:Number;
      
      private var §8!r§:Number;
      
      private var §[_§:Boolean;
      
      private var §0!!§:Boolean = false;
      
      private var §4!r§:Number = 1;
      
      private var §2A§:Boolean = false;
      
      protected var §41§:§?%§;
      
      private var §3z§:§+!?§;
      
      private var §0y§:Number = 1.0;
      
      private var §7!B§:Boolean = true;
      
      private var §^O§:Boolean = false;
      
      private var §?!j§:int = 0;
      
      protected var §]!e§:Number = -1.0;
      
      private var §?!t§:Boolean = false;
      
      private var §0"3§:Boolean = false;
      
      protected var §%H§:String = "";
      
      protected var §+G§:int = 1;
      
      public function §&!-§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number)
      {
         this.§^"#§ = new b2Vec2();
         super(param1,param3,param4,param5);
         this.§3z§ = param2;
         this.§0y§ = param6;
         this.§!!`§ = §,!$§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§41§ = this.§#!d§();
         this.§41§.§-B§(§,!$§.shape is §1"'§);
         this.§+X§(§7!+§.x,§7!+§.y);
         §>!e§ = param5.§>!e§;
         this.§8!r§ = §,!$§.getItemDefence();
         if(§,!$§.healthMax > 0)
         {
            this.initializeHealth(§,!$§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§3!K§(true) * §,!$§.getItemStrength()));
         }
         if(§,!$§.itemType == §!e§.get)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§+V§(param5.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = §,!$§.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.§41§.§2"7§(§,!$§.shape);
      }
      
      public static function § w§(param1:int, param2:§2!_§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§8>§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§+!A§;
            }
            §4!@§.§#"§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§[" §;
      }
      
      public function set health(param1:Number) : void
      {
         this.§[" § = param1;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§[_§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         this.§[_§ = param1;
      }
      
      public function get §#"0§() : Boolean
      {
         return this.§0!!§;
      }
      
      public function set §#"0§(param1:Boolean) : void
      {
         this.§0!!§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§8!Y§;
      }
      
      public function get itemName() : String
      {
         return §,!$§.itemName;
      }
      
      public function get §=",§() : Number
      {
         return this.§4!r§;
      }
      
      public function get §9!o§() : §+!?§
      {
         return this.§3z§;
      }
      
      public function get x() : Number
      {
         return §0O§;
      }
      
      public function get y() : Number
      {
         return §=!v§;
      }
      
      public function get scale() : Number
      {
         return this.§0y§;
      }
      
      public function get id() : int
      {
         return this.§?!j§;
      }
      
      public function get §`!_§() : Boolean
      {
         return this.§8!r§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§8!r§;
      }
      
      public function get §1"5§() : Boolean
      {
         return this.§7!B§;
      }
      
      public function set §1"5§(param1:Boolean) : void
      {
         this.§7!B§ = param1;
      }
      
      public function get §^i§() : Number
      {
         return this.§]!e§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §"!t§() : Boolean
      {
         return this.§?!t§;
      }
      
      public function set §"!t§(param1:Boolean) : void
      {
         this.§?!t§ = param1;
      }
      
      public function get §'S§() : Boolean
      {
         return this.§2A§;
      }
      
      public function set §'S§(param1:Boolean) : void
      {
         this.§2A§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §@!9§() : §?%§
      {
         return this.§41§;
      }
      
      public final function §5!d§(param1:int) : void
      {
         if(!this.§^O§)
         {
            this.§^O§ = true;
            this.§?!j§ = param1;
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
         this.§8!Y§ = param1;
         this.§[" § = param1;
      }
      
      protected function §`!g§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§[" § += param1;
         }
      }
      
      protected function §+X§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §4R§ = §?F§.CreateBody(_loc3_);
         §4R§.SetUserData(this);
         §0q§ = this.§8x§();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§,!$§.isColliding)
         {
            _loc4_.§ <§ = 0;
         }
         this.§'k§(_loc4_);
      }
      
      protected function §8x§() : b2Fixture
      {
         var _loc1_:b2Fixture = §4R§.CreateFixture2(§,!$§.shape.getB2Shape(this.§0y§),§,!$§.getItemDensity());
         _loc1_.§-j§(§,!$§.getItemFriction());
         _loc1_.§?!Y§(§,!$§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function §#!d§() : §?%§
      {
         return new §?%§(this.§9!o§,sprite);
      }
      
      public function §'k§(param1:b2FilterData) : void
      {
         if(§0q§)
         {
            §0q§.SetFilterData(param1);
         }
      }
      
      public function §^!U§(param1:§!e§) : void
      {
         §,!$§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §,!$§.getItemBodyType();
         _loc3_.§ !C§ = true;
         _loc3_.active = true;
         _loc3_.§'!^§ = true;
         _loc3_.§]!c§ = 1;
         _loc3_.§`!$§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§41§.dispose();
         this.§3u§ = null;
         §,!$§ = null;
      }
      
      public function §+V§(param1:Number) : void
      {
         §-!N§().SetAngle(param1);
      }
      
      public function §[!o§() : Number
      {
         return §-!N§().GetAngle();
      }
      
      public function §28§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §-!N§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§"w§();
         }
         if(param3)
         {
            this.§!E§();
         }
      }
      
      public function §-C§(param1:b2Vec2) : void
      {
         this.§3u§ = param1;
      }
      
      private function §0!+§() : void
      {
         if(this.§3u§)
         {
            this.§28§(this.§3u§,false);
            this.§3u§ = null;
         }
      }
      
      protected function §6N§() : void
      {
         if(§4R§)
         {
            this.§^"#§.SetV(§4R§.GetLinearVelocity());
         }
      }
      
      public function §<"%§() : b2Vec2
      {
         return this.§^"#§;
      }
      
      public function §"w§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §-!N§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §-!N§().SetAngularVelocity(0);
         }
         else
         {
            §-!N§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §!E§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §-!N§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§+V§(_loc2_);
      }
      
      public function §`v§(param1:Number) : void
      {
         §-!N§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§41§.update(param1);
         sprite.x = §0O§;
         sprite.y = §=!v§;
         sprite.rotation = §2!j§;
         if(§,!&§)
         {
            §,!&§.x = §0O§;
            §,!&§.y = §=!v§;
            §,!&§.rotation = §2!j§;
         }
      }
      
      override public function update(param1:Number, param2:§8!m§) : void
      {
         this.§0!+§();
         super.update(param1,param2);
         if(this.§]!e§ >= 0)
         {
            this.§]!e§ += param1;
         }
         this.§6N§();
      }
      
      public function updateOutOfBounds(param1:§8!m§) : void
      {
         this.§0"3§ = true;
      }
      
      public function updateBeforeRemoving(param1:§8!m§) : void
      {
         if(!this.§0"3§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §^8§() : Boolean
      {
         return this.§!!`§ == §!e§.§+!`§;
      }
      
      public function §5[§() : Boolean
      {
         return this.§!!`§ == §!e§.get;
      }
      
      public function §<!o§() : Boolean
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
      
      public function §@!d§() : Number
      {
         return Number(Math.sqrt(§-!N§().GetLinearVelocity().x * §-!N§().GetLinearVelocity().x + §-!N§().GetLinearVelocity().y * §-!N§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§]!e§ = 0;
      }
      
      protected function §?6§() : void
      {
      }
      
      protected function §^!j§() : void
      {
         this.§9!9§(§2!_§.§ V§);
      }
      
      protected function §,z§() : void
      {
         this.§9!9§(§2!_§.§!!I§);
      }
      
      protected function §>!1§() : void
      {
         this.§9!9§(§2!_§.§>!K§);
      }
      
      public function applyDamage(param1:Number, param2:§8!m§, param3:§&!-§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§]!e§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.§?6§();
         }
         if(this.§8!r§ < 0 || this.§8!r§ >= 1000000)
         {
            if(param1 > 30)
            {
               this.§^!j§();
            }
            else if(param1 > 12)
            {
               this.§,z§();
            }
            else if(param1 > 3)
            {
               this.§>!1§();
            }
            return this.§[" §;
         }
         if(param1 <= this.§8!r§)
         {
            if(param1 > 3)
            {
               this.§>!1§();
            }
            return this.§[" §;
         }
         param1 -= this.§8!r§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§[" §,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§&p§.§1p§,this.§[" § > param1,§-!N§().GetPosition().x,§-!N§().GetPosition().y,§'!P§.§^!l§(this.itemName));
         }
         this.§[" § -= param1;
         if(this.§[" § < 1)
         {
            this.§[" § = 0;
            this.§^!j§();
         }
         else
         {
            this.§,z§();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§[" §;
      }
      
      protected function setDamageState(param1:Number, param2:§8!m§) : Boolean
      {
         return this.§41§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §9!9§(param1:int) : void
      {
         §&!-§.§ w§(param1,§,!$§.soundResource);
      }
      
      public function §!U§(param1:String) : Number
      {
         return §,!$§.getDamageMultiplier(param1) * this.§4!r§;
      }
      
      public function §=K§(param1:String) : Number
      {
         return §,!$§.getVelocityMultiplier(param1);
      }
      
      public function §,",§() : String
      {
         return §,!$§.materialName;
      }
      
      public function §+!3§() : Number
      {
         return §,!$§.getItemStrength();
      }
      
      public function §]6§() : Boolean
      {
         return §-!N§().IsAwake() && (this is §=!V§ && this.§[" § == this.§8!Y§ || Math.abs(§-!N§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§-!N§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§-!N§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §7G§() : Boolean
      {
         if(!§-!N§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§-!N§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§-!N§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§-!N§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §]l§(param1:Number = 3) : void
      {
         this.§4!r§ = param1;
      }
      
      public function §3!K§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§,!$§.getItemBodyType() == §+f§.§,!6§)
         {
            _loc2_ = this.§41§.width * this.§41§.height * (§=+§.§5!w§ * §=+§.§5!w§);
         }
         else
         {
            _loc2_ = §-!N§().GetMass() / §0q§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§;"&§();
            }
            _loc2_ /= this.§0y§ * this.§0y§;
         }
         return _loc2_;
      }
      
      public function §;"&§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§41§.§5!V§ - 1) / 10);
      }
      
      public function §5"!§(param1:Number) : void
      {
         var _loc2_:Number = §-!N§().GetLinearVelocity().x;
         var _loc3_:Number = §-!N§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §-!N§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§8!m§) : Boolean
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
      
      protected function addDestructionParticles(param1:§8!m§) : void
      {
      }
      
      public function addDamageParticles(param1:§8!m§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§^!1§)
         {
            case GravityFilterCategory.FORCE_OBJECT:
               §4R§.SetLinearDamping(§3t§.§@K§);
               §4R§.SetAngularDamping(§3t§.§7X§);
               §4R§.SetGravityScale(0);
               break;
            case GravityFilterCategory.YODA_FORCE_OBJECT:
               §4R§.SetLinearDamping(§3t§.§`?§);
               §4R§.SetAngularDamping(§3t§.§,M§);
               §4R§.SetGravityScale(0);
               break;
            case GravityFilterCategory.LEIA_FORCE_OBJECT:
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §!!v§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §-!N§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §-!N§().SetPosition(_loc4_);
      }
      
      public function §3!x§(param1:String, param2:String, param3:§8!m§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §>!e§ = -1;
         }
      }
   }
}
