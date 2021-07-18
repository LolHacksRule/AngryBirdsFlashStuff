package §@!"§
{
   import §%8§.§%!S§;
   import §%8§.§89§;
   import §%8§.§@-§;
   import §%8§.§^f§;
   import §'!_§.b2Settings;
   import §0"!§.b2BodyDef;
   import §0"!§.b2FilterData;
   import §0"!§.b2Fixture;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   import §@V§.§#=§;
   import §@V§.§&z§;
   import §@V§.§52§;
   import §[!Z§.§>D§;
   import §`2§.§`""§;
   import flash.geom.Point;
   
   public class §@_§ extends §6"$§
   {
      
      public static const §&P§:String = "normal";
      
      public static const §[<§:uint = 1 << 1;
      
      public static const §"!]§:uint = 1 << 2;
      
      public static const § !p§:uint = 1 << 3;
      
      public static const §48§:uint = 1 << 4;
       
      
      private var §@"'§:int;
      
      private var §;!`§:int;
      
      private var §0!@§:b2Vec2;
      
      private var §<"7§:b2Vec2;
      
      private var §&0§:Number;
      
      private var §0!N§:Number;
      
      private var §=s§:Number;
      
      private var §"P§:Boolean;
      
      private var §?!`§:Boolean = false;
      
      private var §2!O§:Number = 1;
      
      private var §1!9§:Boolean = false;
      
      protected var §=K§:§8!T§;
      
      private var §@!5§:§;!Q§;
      
      private var §2c§:Number = 1.0;
      
      private var §>"2§:Boolean = true;
      
      private var §6r§:Boolean = false;
      
      private var §?0§:int = 0;
      
      protected var §8@§:Number = -1.0;
      
      private var §8"5§:Boolean = false;
      
      private var §^w§:Boolean = false;
      
      protected var §@"%§:String = "";
      
      protected var §8W§:int = 1;
      
      public function §@_§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number)
      {
         this.§<"7§ = new b2Vec2();
         super(param1,param3,param4,param5);
         this.§@!5§ = param2;
         this.§2c§ = param6;
         this.§;!`§ = §93§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§=K§ = this.§0",§();
         this.§=K§.§!!c§(§93§.shape is §%!S§);
         this.§;!L§(§ "8§.x,§ "8§.y);
         §<v§ = param5.§<v§;
         this.§=s§ = §93§.getItemDefence();
         if(§93§.healthMax > 0)
         {
            this.initializeHealth(§93§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§&!a§(true) * §93§.getItemStrength()));
         }
         if(§93§.itemType == §@-§.§4!w§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§[!X§(param5.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = §93§.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.§=K§.§'+§(§93§.shape);
      }
      
      public static function §>!z§(param1:int, param2:§89§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§#0§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8",§;
            }
            §>D§.§4W§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§&0§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§&0§ = param1;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§"P§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         this.§"P§ = param1;
      }
      
      public function get §<!;§() : Boolean
      {
         return this.§?!`§;
      }
      
      public function set §<!;§(param1:Boolean) : void
      {
         this.§?!`§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§0!N§;
      }
      
      public function get itemName() : String
      {
         return §93§.itemName;
      }
      
      public function get §3!G§() : Number
      {
         return this.§2!O§;
      }
      
      public function get §<c§() : §;!Q§
      {
         return this.§@!5§;
      }
      
      public function get x() : Number
      {
         return §]!B§;
      }
      
      public function get y() : Number
      {
         return §9=§;
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function get id() : int
      {
         return this.§?0§;
      }
      
      public function get §1"+§() : Boolean
      {
         return this.§=s§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§=s§;
      }
      
      public function get §50§() : Boolean
      {
         return this.§>"2§;
      }
      
      public function set §50§(param1:Boolean) : void
      {
         this.§>"2§ = param1;
      }
      
      public function get §>!'§() : Number
      {
         return this.§8@§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §]!Q§() : Boolean
      {
         return this.§8"5§;
      }
      
      public function set §]!Q§(param1:Boolean) : void
      {
         this.§8"5§ = param1;
      }
      
      public function get §@5§() : Boolean
      {
         return this.§1!9§;
      }
      
      public function set §@5§(param1:Boolean) : void
      {
         this.§1!9§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §'",§() : §8!T§
      {
         return this.§=K§;
      }
      
      public final function §=G§(param1:int) : void
      {
         if(!this.§6r§)
         {
            this.§6r§ = true;
            this.§?0§ = param1;
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
         this.§0!N§ = param1;
         this.§&0§ = param1;
      }
      
      protected function §6![§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§&0§ += param1;
         }
      }
      
      protected function §;!L§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §<!@§ = §^d§.CreateBody(_loc3_);
         §<!@§.SetUserData(this);
         §," § = this.§%!Q§();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§93§.isColliding)
         {
            _loc4_.§+!+§ = 0;
         }
         this.§9!$§(_loc4_);
      }
      
      protected function §%!Q§() : b2Fixture
      {
         var _loc1_:b2Fixture = §<!@§.CreateFixture2(§93§.shape.getB2Shape(this.§2c§),§93§.getItemDensity());
         _loc1_.§-!e§(§93§.getItemFriction());
         _loc1_.§,!C§(§93§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function §0",§() : §8!T§
      {
         return new §8!T§(this.§<c§,sprite);
      }
      
      public function §9!$§(param1:b2FilterData) : void
      {
         if(§," §)
         {
            §," §.SetFilterData(param1);
         }
      }
      
      public function §!+§(param1:§@-§) : void
      {
         §93§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §93§.getItemBodyType();
         _loc3_.§`",§ = true;
         _loc3_.active = true;
         _loc3_.§0!z§ = true;
         _loc3_.§7e§ = 1;
         _loc3_.§5!J§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§=K§.dispose();
         this.§0!@§ = null;
         §93§ = null;
      }
      
      public function §[!X§(param1:Number) : void
      {
         §!!I§().SetAngle(param1);
      }
      
      public function §`p§() : Number
      {
         return §!!I§().GetAngle();
      }
      
      public function §^y§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §!!I§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§7!l§();
         }
         if(param3)
         {
            this.§9"6§();
         }
      }
      
      public function §<!j§(param1:b2Vec2) : void
      {
         this.§0!@§ = param1;
      }
      
      private function §@;§() : void
      {
         if(this.§0!@§)
         {
            this.§^y§(this.§0!@§,false);
            this.§0!@§ = null;
         }
      }
      
      protected function §,!t§() : void
      {
         if(§<!@§)
         {
            this.§<"7§.SetV(§<!@§.GetLinearVelocity());
         }
      }
      
      public function §=m§() : b2Vec2
      {
         return this.§<"7§;
      }
      
      public function §7!l§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §!!I§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §!!I§().SetAngularVelocity(0);
         }
         else
         {
            §!!I§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §9"6§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §!!I§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§[!X§(_loc2_);
      }
      
      public function §27§(param1:Number) : void
      {
         §!!I§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§=K§.update(param1);
         sprite.x = §]!B§;
         sprite.y = §9=§;
         sprite.rotation = §0!-§;
         if(§]![§)
         {
            §]![§.x = §]!B§;
            §]![§.y = §9=§;
            §]![§.rotation = §0!-§;
         }
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         this.§@;§();
         super.update(param1,param2);
         if(this.§8@§ >= 0)
         {
            this.§8@§ += param1;
         }
         this.§,!t§();
      }
      
      public function updateOutOfBounds(param1:§`!m§) : void
      {
         this.§^w§ = true;
      }
      
      public function updateBeforeRemoving(param1:§`!m§) : void
      {
         if(!this.§^w§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §]^§() : Boolean
      {
         return this.§;!`§ == §@-§.§9!r§;
      }
      
      public function § "7§() : Boolean
      {
         return this.§;!`§ == §@-§.§4!w§;
      }
      
      public function §<!M§() : Boolean
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
      
      public function § else§() : Number
      {
         return Number(Math.sqrt(§!!I§().GetLinearVelocity().x * §!!I§().GetLinearVelocity().x + §!!I§().GetLinearVelocity().y * §!!I§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§8@§ = 0;
      }
      
      protected function §5z§() : void
      {
      }
      
      protected function §^!l§() : void
      {
         this.§8!U§(§89§.§6K§);
      }
      
      protected function §5M§() : void
      {
         this.§8!U§(§89§.§&7§);
      }
      
      protected function §4!O§() : void
      {
         this.§8!U§(§89§.§!!x§);
      }
      
      public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§8@§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.§5z§();
         }
         if(this.§=s§ < 0 || this.§=s§ >= 1000000)
         {
            if(param1 > 30)
            {
               this.§^!l§();
            }
            else if(param1 > 12)
            {
               this.§5M§();
            }
            else if(param1 > 3)
            {
               this.§4!O§();
            }
            return this.§&0§;
         }
         if(param1 <= this.§=s§)
         {
            if(param1 > 3)
            {
               this.§4!O§();
            }
            return this.§&0§;
         }
         param1 -= this.§=s§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§&0§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§52§.§^Y§,this.§&0§ > param1,§!!I§().GetPosition().x,§!!I§().GetPosition().y,§`""§.§?!7§(this.itemName));
         }
         this.§&0§ -= param1;
         if(this.§&0§ < 1)
         {
            this.§&0§ = 0;
            this.§^!l§();
         }
         else
         {
            this.§5M§();
         }
         if(this.setDamageState(1 - this.health / this.healthMax,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§&0§;
      }
      
      protected function setDamageState(param1:Number, param2:§`!m§) : Boolean
      {
         return this.§=K§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §8!U§(param1:int) : void
      {
         §@_§.§>!z§(param1,§93§.soundResource);
      }
      
      public function §>!@§(param1:String) : Number
      {
         return §93§.getDamageMultiplier(param1) * this.§2!O§;
      }
      
      public function §3$§(param1:String) : Number
      {
         return §93§.getVelocityMultiplier(param1);
      }
      
      public function §;!F§() : String
      {
         return §93§.materialName;
      }
      
      public function §2!c§() : Number
      {
         return §93§.getItemStrength();
      }
      
      public function §&!x§() : Boolean
      {
         return §!!I§().IsAwake() && (this is §^"2§ && this.§&0§ == this.§0!N§ || Math.abs(§!!I§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§!!I§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§!!I§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §!'§() : Boolean
      {
         if(!§!!I§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§!!I§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§!!I§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§!!I§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §4B§(param1:Number = 3) : void
      {
         this.§2!O§ = param1;
      }
      
      public function §&!a§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§93§.getItemBodyType() == §^f§.§7!C§)
         {
            _loc2_ = this.§=K§.width * this.§=K§.height * (§#=§.§^!2§ * §#=§.§^!2§);
         }
         else
         {
            _loc2_ = §!!I§().GetMass() / §," §.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§-",§();
            }
            _loc2_ /= this.§2c§ * this.§2c§;
         }
         return _loc2_;
      }
      
      public function §-",§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§=K§.§@!l§ - 1) / 10);
      }
      
      public function §-§(param1:Number) : void
      {
         var _loc2_:Number = §!!I§().GetLinearVelocity().x;
         var _loc3_:Number = §!!I§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §!!I§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§`!m§) : Boolean
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
      
      protected function addDestructionParticles(param1:§`!m§) : void
      {
      }
      
      public function addDamageParticles(param1:§`!m§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§>N§)
         {
            case GravityFilterCategory.FORCE_OBJECT:
               §<!@§.SetLinearDamping(§&z§.§`6§);
               §<!@§.SetAngularDamping(§&z§.§6E§);
               §<!@§.SetGravityScale(0);
               break;
            case GravityFilterCategory.YODA_FORCE_OBJECT:
               §<!@§.SetLinearDamping(§&z§.§#!5§);
               §<!@§.SetAngularDamping(§&z§.§2&§);
               §<!@§.SetGravityScale(0);
               break;
            case GravityFilterCategory.LEIA_FORCE_OBJECT:
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §?"&§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §!!I§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §!!I§().SetPosition(_loc4_);
      }
      
      public function §^!3§(param1:String, param2:String, param3:§`!m§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §<v§ = -1;
         }
      }
   }
}
