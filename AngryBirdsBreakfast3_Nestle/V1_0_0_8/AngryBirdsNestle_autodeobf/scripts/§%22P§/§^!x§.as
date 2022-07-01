package §"P§
{
   import §!"+§.§!o§;
   import §!"+§.§'!7§;
   import §!"+§.§,D§;
   import §!"+§.§2N§;
   import §!f§.§@"§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §7!F§.b2Settings;
   import §8q§.§]d§;
   import §9G§.§0i§;
   import §9G§.§2F§;
   import §9G§.§7!y§;
   import §=!c§.b2BodyDef;
   import §=!c§.b2FilterData;
   import §=!c§.b2Fixture;
   import §=!c§.b2World;
   import §[K§.b2Vec2;
   import flash.geom.Point;
   
   public class §^!x§ extends §3!2§
   {
      
      public static const §!#§:String = "normal";
      
      public static const §""3§:uint = 1 << 1;
      
      public static const §<J§:uint = 1 << 2;
      
      public static const §?n§:uint = 1 << 3;
      
      public static const §7!T§:uint = 1 << 4;
       
      
      private var §8!a§:int;
      
      private var §0<§:int;
      
      private var §^!F§:b2Vec2;
      
      private var §0o§:b2Vec2;
      
      private var §??§:Number;
      
      private var §2!F§:Number;
      
      private var §5i§:Number;
      
      private var §=$§:Number = 1;
      
      private var §2D§:Boolean = false;
      
      protected var §9!t§:§!!_§;
      
      private var §!r§:§-!i§;
      
      private var §1+§:Number = 1.0;
      
      private var §-!s§:Boolean = true;
      
      private var §8z§:Boolean = false;
      
      private var §3!J§:int = 0;
      
      protected var §7!C§:Number = -1.0;
      
      private var §&!B§:Boolean = false;
      
      private var §8!m§:Boolean = false;
      
      protected var §95§:String = "";
      
      protected var §5"7§:int = 1;
      
      public function §^!x§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number)
      {
         this.§0o§ = new b2Vec2();
         super(param1,param3,param4,param5);
         this.§!r§ = param2;
         this.§1+§ = param6;
         this.§0<§ = §6!-§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§9!t§ = this.§ !c§();
         this.§9!t§.§!@§(§6!-§.shape is §2N§);
         this.§9!§(§!!6§.x,§!!6§.y);
         §3"$§ = param5.§3"$§;
         this.§5i§ = §6!-§.getItemDefence();
         if(§6!-§.healthMax > 0)
         {
            this.initializeHealth(§6!-§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§`z§(true) * §6!-§.getItemStrength()));
         }
         if(§6!-§.itemType == §!o§.§+o§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§%"8§(param5.angle * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§9!t§.§&]§(§6!-§.shape);
      }
      
      public static function §7!2§(param1:int, param2:§'!7§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§]D§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§5W§;
            }
            §]d§.§;!X§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§??§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§??§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§2!F§;
      }
      
      public function get itemName() : String
      {
         return §6!-§.itemName;
      }
      
      public function get § !L§() : Number
      {
         return this.§=$§;
      }
      
      public function get §"!<§() : §-!i§
      {
         return this.§!r§;
      }
      
      public function get x() : Number
      {
         return §@!-§;
      }
      
      public function get y() : Number
      {
         return §'!0§;
      }
      
      public function get scale() : Number
      {
         return this.§1+§;
      }
      
      public function get id() : int
      {
         return this.§3!J§;
      }
      
      public function get §!A§() : Boolean
      {
         return this.§5i§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§5i§;
      }
      
      public function get §@a§() : Boolean
      {
         return this.§-!s§;
      }
      
      public function set §@a§(param1:Boolean) : void
      {
         this.§-!s§ = param1;
      }
      
      public function get §-K§() : Number
      {
         return this.§7!C§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §?!N§() : Boolean
      {
         return this.§&!B§;
      }
      
      public function set §?!N§(param1:Boolean) : void
      {
         this.§&!B§ = param1;
      }
      
      public function get §"A§() : Boolean
      {
         return this.§2D§;
      }
      
      public function set §"A§(param1:Boolean) : void
      {
         this.§2D§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §,!`§() : §!!_§
      {
         return this.§9!t§;
      }
      
      public final function §2"'§(param1:int) : void
      {
         if(!this.§8z§)
         {
            this.§8z§ = true;
            this.§3!J§ = param1;
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
         this.§2!F§ = param1;
         this.§??§ = param1;
      }
      
      protected function §01§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§??§ += param1;
         }
      }
      
      protected function §9!§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §!"$§ = §>%§.CreateBody(_loc3_);
         §!"$§.SetUserData(this);
         §"F§ = this.§&!e§();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§6!-§.isColliding)
         {
            _loc4_.§!G§ = 0;
         }
         this.§;§(_loc4_);
      }
      
      protected function §&!e§() : b2Fixture
      {
         var _loc1_:b2Fixture = §!"$§.CreateFixture2(§6!-§.shape.getB2Shape(),§6!-§.getItemDensity());
         _loc1_.§,!v§(§6!-§.getItemFriction());
         _loc1_.§'!`§(§6!-§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function § !c§() : §!!_§
      {
         return new §!!_§(this.§"!<§,sprite);
      }
      
      public function §;§(param1:b2FilterData) : void
      {
         if(§"F§)
         {
            §"F§.SetFilterData(param1);
         }
      }
      
      public function §"!C§(param1:§!o§) : void
      {
         §6!-§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §6!-§.getItemBodyType();
         _loc3_.§@!Y§ = true;
         _loc3_.active = true;
         _loc3_.§=!a§ = true;
         _loc3_.§,!2§ = 1;
         _loc3_.§#!9§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§9!t§.dispose();
         this.§^!F§ = null;
         §6!-§ = null;
      }
      
      public function §%"8§(param1:Number) : void
      {
         §7J§().SetAngle(param1);
      }
      
      public function §<"$§() : Number
      {
         return §7J§().GetAngle();
      }
      
      public function §]j§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §7J§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§"T§();
         }
         if(param3)
         {
            this.§4"§();
         }
      }
      
      public function §]!d§(param1:b2Vec2) : void
      {
         this.§^!F§ = param1;
      }
      
      private function §]!U§() : void
      {
         if(this.§^!F§)
         {
            this.§]j§(this.§^!F§,false);
            this.§^!F§ = null;
         }
      }
      
      private function §+!R§() : void
      {
         if(§!"$§)
         {
            this.§0o§.SetV(§!"$§.GetLinearVelocity());
         }
      }
      
      public function §5"#§() : b2Vec2
      {
         return this.§0o§;
      }
      
      public function §"T§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §7J§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §7J§().SetAngularVelocity(0);
         }
         else
         {
            §7J§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §4"§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §7J§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§%"8§(_loc2_);
      }
      
      public function § !'§(param1:Number) : void
      {
         §7J§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§9!t§.update(param1);
         sprite.x = §@!-§;
         sprite.y = §'!0§;
         sprite.rotation = §4D§;
      }
      
      override public function update(param1:Number, param2:§0w§) : void
      {
         this.§]!U§();
         super.update(param1,param2);
         if(this.§7!C§ >= 0)
         {
            this.§7!C§ += param1;
         }
         this.§+!R§();
      }
      
      public function updateOutOfBounds(param1:§0w§) : void
      {
         this.§8!m§ = true;
      }
      
      public function updateBeforeRemoving(param1:§0w§) : void
      {
         if(!this.§8!m§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §6!V§() : Boolean
      {
         return this.§0<§ == §!o§.§3L§;
      }
      
      public function §+F§() : Boolean
      {
         return this.§0<§ == §!o§.§+o§;
      }
      
      public function §7!?§() : Boolean
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
      
      public function §+!@§() : Number
      {
         return Number(Math.sqrt(§7J§().GetLinearVelocity().x * §7J§().GetLinearVelocity().x + §7J§().GetLinearVelocity().y * §7J§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§7!C§ = 0;
      }
      
      protected function §7^§() : void
      {
      }
      
      protected function §?!f§() : void
      {
         this.§5E§(§'!7§.§^!Q§);
      }
      
      protected function §<T§() : void
      {
         this.§5E§(§'!7§.§8H§);
      }
      
      protected function §'?§() : void
      {
         this.§5E§(§'!7§.§=!o§);
      }
      
      public function applyDamage(param1:Number, param2:§0w§, param3:§^!x§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§7!C§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.§7^§();
         }
         if(this.§5i§ < 0 || this.§5i§ >= 1000000)
         {
            if(param1 > 30)
            {
               this.§?!f§();
            }
            else if(param1 > 12)
            {
               this.§<T§();
            }
            else if(param1 > 3)
            {
               this.§'?§();
            }
            return this.§??§;
         }
         if(param1 <= this.§5i§)
         {
            if(param1 > 3)
            {
               this.§'?§();
            }
            return this.§??§;
         }
         param1 -= this.§5i§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§??§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§7!y§.§%p§,this.§??§ > param1,§7J§().GetPosition().x,§7J§().GetPosition().y,§@"§.§'9§(this.itemName));
         }
         this.§??§ -= param1;
         if(this.§??§ < 1)
         {
            this.§??§ = 0;
            this.§?!f§();
         }
         else
         {
            this.§<T§();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§??§;
      }
      
      protected function setDamageState(param1:Number, param2:§0w§) : Boolean
      {
         return this.§9!t§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §5E§(param1:int) : void
      {
         §^!x§.§7!2§(param1,§6!-§.soundResource);
      }
      
      public function §,!5§(param1:String) : Number
      {
         return §6!-§.getDamageMultiplier(param1) * this.§=$§;
      }
      
      public function § "5§(param1:String) : Number
      {
         return §6!-§.getVelocityMultiplier(param1);
      }
      
      public function §'R§() : String
      {
         return §6!-§.materialName;
      }
      
      public function §1!g§() : Number
      {
         return §6!-§.getItemStrength();
      }
      
      public function §&!^§() : Boolean
      {
         return §7J§().IsAwake() && (this is §?!§ && this.§??§ == this.§2!F§ || Math.abs(§7J§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§7J§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§7J§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §%!;§() : Boolean
      {
         if(!§7J§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§7J§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§7J§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§7J§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §!!Z§(param1:Number = 3) : void
      {
         this.§=$§ = param1;
      }
      
      public function §`z§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§6!-§.getItemBodyType() == §,D§.§?4§)
         {
            _loc2_ = this.§9!t§.width * this.§9!t§.height * (§2F§.§6+§ * §2F§.§6+§);
         }
         else
         {
            _loc2_ = §7J§().GetMass() / §"F§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§]!Z§();
            }
         }
         return _loc2_;
      }
      
      public function §]!Z§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§9!t§.§5K§ - 1) / 10);
      }
      
      public function §?!J§(param1:Number) : void
      {
         var _loc2_:Number = §7J§().GetLinearVelocity().x;
         var _loc3_:Number = §7J§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §7J§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§0w§) : Boolean
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
      
      protected function addDestructionParticles(param1:§0w§) : void
      {
      }
      
      public function addDamageParticles(param1:§0w§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§=!Q§)
         {
            case GravityFilterCategory.FORCE_OBJECT:
               §!"$§.SetLinearDamping(§0i§.§]!9§);
               §!"$§.SetAngularDamping(§0i§.§'!,§);
               §!"$§.SetGravityScale(0);
               break;
            case GravityFilterCategory.YODA_FORCE_OBJECT:
               §!"$§.SetLinearDamping(§0i§.§="#§);
               §!"$§.SetAngularDamping(§0i§.§5""§);
               §!"$§.SetGravityScale(0);
               break;
            case GravityFilterCategory.LEIA_FORCE_OBJECT:
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §>!g§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §7J§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §7J§().SetPosition(_loc4_);
      }
      
      public function §[!j§(param1:String, param2:String, param3:§0w§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §3"$§ = -1;
         }
      }
   }
}
