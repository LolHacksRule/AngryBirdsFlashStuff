package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§0!0§;
   import §"§.§96§;
   import §"§.§;!E§;
   import §#g§.§!+§;
   import §#g§.§<b§;
   import §#g§.§["%§;
   import §#g§.§^i§;
   import §7!I§.b2Settings;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2BodyDef;
   import §>"_§.b2FilterData;
   import §>"_§.b2Fixture;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §`"1§.§=Q§;
   import flash.geom.Point;
   import §use§.Sprite;
   
   public class §0N§ extends §]e§
   {
      
      public static const §'"T§:String = "normal";
      
      public static const §9V§:uint = 1 << 1;
      
      public static const §9!t§:uint = 1 << 2;
      
      public static const §5"H§:uint = 1 << 3;
      
      public static const §5!a§:uint = 1 << 4;
       
      
      private var §5!t§:int;
      
      private var §@!0§:int;
      
      private var §<?§:b2Vec2;
      
      private var §9r§:b2Vec2;
      
      private var §%"A§:Number;
      
      private var §>! §:Number;
      
      private var §1Y§:Number;
      
      private var §==§:Number = 1;
      
      private var §4!?§:Boolean = false;
      
      protected var §]!g§:§0"3§;
      
      private var §#!9§:§1!^§;
      
      private var §#"5§:Number = 1.0;
      
      private var §##,§:Boolean = true;
      
      private var §@!v§:Boolean = false;
      
      private var §]!R§:int = 0;
      
      protected var §@5§:Number = -1.0;
      
      private var §3!+§:Boolean = false;
      
      private var §'K§:Boolean = false;
      
      protected var §@!9§:String = "";
      
      protected var §"m§:int = 1;
      
      public function §0N§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number)
      {
         this.§9r§ = new b2Vec2();
         super(param1,param3,param4,param5);
         this.§#!9§ = param2;
         this.§#"5§ = param6;
         this.§@!0§ = §+!j§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§]!g§ = this.initObjectRenderer();
         this.§]!g§.§<"J§(§+!j§.shape is §<b§);
         this.createPhysicsBody(§"C§.x,§"C§.y);
         §1!E§ = param5.§1!E§;
         this.§1Y§ = §+!j§.getItemDefence();
         if(§+!j§.healthMax > 0)
         {
            this.initializeHealth(§+!j§.healthMax);
         }
         else
         {
            this.initializeHealth(Math.round(this.§0"-§(true) * §+!j§.getItemStrength()));
         }
         if(§+!j§.itemType == §["%§.§6#-§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§ "H§(param5.angle * (Math.PI / 180));
         }
         this.update(0,null);
         this.render(0,1,0);
         this.§]!g§.§#X§(§+!j§.shape);
      }
      
      public static function §,m§(param1:int, param2:§^i§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§16§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8!A§;
            }
            §=Q§.§5"w§(_loc4_,param3);
         }
      }
      
      public function get health() : Number
      {
         return this.§%"A§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§%"A§ = param1;
      }
      
      public function get healthMax() : Number
      {
         return this.§>! §;
      }
      
      public function get itemName() : String
      {
         return §+!j§.itemName;
      }
      
      public function get §<!T§() : Number
      {
         return this.§==§;
      }
      
      public function get animation() : §1!^§
      {
         return this.§#!9§;
      }
      
      public function get x() : Number
      {
         return §0U§;
      }
      
      public function get y() : Number
      {
         return §3"[§;
      }
      
      public function get scale() : Number
      {
         return this.§#"5§;
      }
      
      public function get id() : int
      {
         return this.§]!R§;
      }
      
      public function get §=!K§() : Boolean
      {
         return this.§1Y§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§1Y§;
      }
      
      public function get §`!l§() : Boolean
      {
         return this.§##,§;
      }
      
      public function set §`!l§(param1:Boolean) : void
      {
         this.§##,§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§@5§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §>+§() : Boolean
      {
         return this.§3!+§;
      }
      
      public function set §>+§(param1:Boolean) : void
      {
         this.§3!+§ = param1;
      }
      
      public function get §2v§() : Boolean
      {
         return this.§4!?§;
      }
      
      public function set §2v§(param1:Boolean) : void
      {
         this.§4!?§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §?!A§() : §0"3§
      {
         return this.§]!g§;
      }
      
      public final function §>8§(param1:int) : void
      {
         if(!this.§@!v§)
         {
            this.§@!v§ = true;
            this.§]!R§ = param1;
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
         this.§>! § = param1;
         this.§%"A§ = param1;
      }
      
      protected function §%"&§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§%"A§ += param1;
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §-#6§ = mWorld.CreateBody(_loc3_);
         §-#6§.SetUserData(this);
         §&"B§ = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§+!j§.isColliding)
         {
            _loc4_.§ "b§ = 0;
         }
         this.§8"X§(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §-#6§.CreateFixture2(§+!j§.shape.getB2Shape(),§+!j§.getItemDensity());
         _loc1_.§#!O§(§+!j§.getItemFriction());
         _loc1_.§4"K§(§+!j§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §0"3§
      {
         return new §0"3§(this.animation,sprite);
      }
      
      public function §8"X§(param1:b2FilterData) : void
      {
         if(§&"B§)
         {
            §&"B§.SetFilterData(param1);
         }
      }
      
      public function §&"U§(param1:§["%§) : void
      {
         §+!j§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §+!j§.getItemBodyType();
         _loc3_.§0!p§ = true;
         _loc3_.active = true;
         _loc3_.§+!@§ = true;
         _loc3_.§-#0§ = 1;
         _loc3_.§^!Z§ = false;
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§]!g§.dispose();
         this.§<?§ = null;
         §+!j§ = null;
      }
      
      public function § "H§(param1:Number) : void
      {
         §3"s§().SetAngle(param1);
      }
      
      public function §<"g§() : Number
      {
         return §3"s§().GetAngle();
      }
      
      public function §]"i§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         §3"s§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§;"O§();
         }
         if(param3)
         {
            this.§?+§();
         }
      }
      
      public function §>%§(param1:b2Vec2) : void
      {
         this.§<?§ = param1;
      }
      
      private function §+"D§() : void
      {
         if(this.§<?§)
         {
            this.§]"i§(this.§<?§,false);
            this.§<?§ = null;
         }
      }
      
      private function §=0§() : void
      {
         if(§-#6§)
         {
            this.§9r§.SetV(§-#6§.GetLinearVelocity());
         }
      }
      
      public function §!" §() : b2Vec2
      {
         return this.§9r§;
      }
      
      public function §;"O§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §3"s§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            §3"s§().SetAngularVelocity(0);
         }
         else
         {
            §3"s§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §?+§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = §3"s§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§ "H§(_loc2_);
      }
      
      public function § J§(param1:Number) : void
      {
         §3"s§().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§]!g§.update(param1);
         sprite.x = §0U§;
         sprite.y = §3"[§;
         sprite.rotation = §-T§;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         this.§+"D§();
         super.update(param1,param2);
         if(this.§@5§ >= 0)
         {
            this.§@5§ += param1;
         }
         this.§=0§();
      }
      
      public function updateOutOfBounds(param1:§'=§) : void
      {
         this.§'K§ = true;
      }
      
      public function updateBeforeRemoving(param1:§'=§) : void
      {
         if(!this.§'K§)
         {
            this.addDestructionParticles(param1);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §^[§() : Boolean
      {
         return this.§@!0§ == §["%§.§ !c§;
      }
      
      public function §0E§() : Boolean
      {
         return this.§@!0§ == §["%§.§6#-§;
      }
      
      public function §-!9§() : Boolean
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
      
      public function §+"9§() : Number
      {
         return Number(Math.sqrt(§3"s§().GetLinearVelocity().x * §3"s§().GetLinearVelocity().x + §3"s§().GetLinearVelocity().y * §3"s§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§@5§ = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         this.§!5§(§^i§.§=`§);
      }
      
      protected function playDamagedSound() : void
      {
         this.§!5§(§^i§.§ #+§);
      }
      
      protected function playCollisionSound() : void
      {
         this.§!5§(§^i§.§8!S§);
      }
      
      public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§@5§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.§1Y§ < 0 || this.§1Y§ >= 1000000)
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
            return this.§%"A§;
         }
         if(param1 <= this.§1Y§)
         {
            if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§%"A§;
         }
         param1 -= this.§1Y§;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc6_ = _loc5_ = Math.min(this.§%"A§,int(param1));
            if(param2)
            {
               _loc6_ *= param2.damageScoreMultiplier;
            }
            param2.addScore(_loc6_,§0!0§.§&#-§,this.§%"A§ > param1,§3"s§().GetPosition().x,§3"s§().GetPosition().y,§?"E§.§@G§(this.itemName));
         }
         this.§%"A§ -= param1;
         if(this.§%"A§ < 1)
         {
            this.§%"A§ = 0;
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
         return this.§%"A§;
      }
      
      protected function setDamageState(param1:Number, param2:§'=§) : Boolean
      {
         return this.§]!g§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §!5§(param1:int) : void
      {
         §0N§.§,m§(param1,§+!j§.soundResource);
      }
      
      public function §=!_§(param1:String) : Number
      {
         return §+!j§.getDamageMultiplier(param1) * this.§==§;
      }
      
      public function §!!W§(param1:String) : Number
      {
         return §+!j§.getVelocityMultiplier(param1);
      }
      
      public function §8!Y§() : String
      {
         return §+!j§.materialName;
      }
      
      public function §4!q§() : Number
      {
         return §+!j§.getItemStrength();
      }
      
      public function §76§() : Boolean
      {
         return §3"s§().IsAwake() && (this is §;!T§ && this.§%"A§ == this.§>! § || Math.abs(§3"s§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§3"s§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(§3"s§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §;!K§() : Boolean
      {
         if(!§3"s§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(§3"s§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§3"s§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(§3"s§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §1+§(param1:Number = 3) : void
      {
         this.§==§ = param1;
      }
      
      public function §0"-§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§+!j§.getItemBodyType() == §!+§.§-"7§)
         {
            _loc2_ = this.§]!g§.width * this.§]!g§.height * (§;!E§.§0"?§ * §;!E§.§0"?§);
         }
         else
         {
            _loc2_ = §3"s§().GetMass() / §&"B§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§>#0§();
            }
         }
         return _loc2_;
      }
      
      public function §>#0§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§]!g§.§>"O§ - 1) / 10);
      }
      
      public function §]"H§(param1:Number) : void
      {
         var _loc2_:Number = §3"s§().GetLinearVelocity().x;
         var _loc3_:Number = §3"s§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         §3"s§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§'=§) : Boolean
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
      
      protected function addDestructionParticles(param1:§'=§) : void
      {
      }
      
      public function addDamageParticles(param1:§'=§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§&!s§)
         {
            case GravityFilterCategory.FORCE_OBJECT:
               §-#6§.SetLinearDamping(§96§.§1"5§);
               §-#6§.SetAngularDamping(§96§.§ ^§);
               §-#6§.SetGravityScale(0);
               break;
            case GravityFilterCategory.YODA_FORCE_OBJECT:
               §-#6§.SetLinearDamping(§96§.§@"y§);
               §-#6§.SetAngularDamping(§96§.§5"i§);
               §-#6§.SetGravityScale(0);
               break;
            case GravityFilterCategory.LEIA_FORCE_OBJECT:
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §&"`§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = §3"s§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         §3"s§().SetPosition(_loc4_);
      }
      
      public function §&"6§(param1:String, param2:String, param3:§'=§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §1!E§ = -1;
         }
      }
   }
}
