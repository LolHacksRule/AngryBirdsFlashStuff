package §[#a§
{
   import §,#L§.§!#%§;
   import §,#L§.§?W§;
   import §0H§.b2Settings;
   import §0m§.b2Vec2;
   import §52§.§#!,§;
   import §52§.§6" §;
   import §52§.§;!p§;
   import §6§.§,"s§;
   import §6§.§]!Q§;
   import §6§.include;
   import §8§.§#$+§;
   import §8§.§@!"§;
   import §9$§.Sprite;
   import §=!7§.§=$4§;
   import §=#n§.b2Body;
   import §=#n§.b2BodyDef;
   import §=#n§.b2FilterData;
   import §=#n§.b2Fixture;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§0!y§;
   import §`#C§.§3#U§;
   import §`#C§.§8K§;
   import §`#C§.§^#A§;
   import flash.geom.Point;
   
   public class §="@§ extends §'?§ implements §%"<§, include
   {
      
      public static const §-!C§:Number = -1;
      
      public static const §>#P§:Number = 20;
      
      public static const §3"S§:Number = 100;
      
      public static const §+!l§:String = "creation";
      
      public static const §0!V§:String = "normal";
      
      public static const §""8§:String = "blink";
      
      public static const §[!k§:String = "yell";
      
      public static const §8#H§:String = "slipping";
      
      private static const §]#X§:Array = [§""8§,§[!k§,§8#H§];
      
      public static const §5@§:Number = 1000;
      
      public static const §>V§:Number = 500;
      
      protected static const §`!&§:int = 1000;
      
      public static const §2"c§:uint = 3000;
      
      public static const §+#S§:uint = 1 << 1;
      
      public static const §>"2§:uint = 1 << 2;
      
      public static const §?!4§:uint = 1 << 3;
      
      public static const §?0§:uint = 1 << 4;
      
      public static const § !j§:uint = 1 << 5;
       
      
      protected var §&c§:Number = -1.0;
      
      protected var §<@§:Number = -1.0;
      
      private var §6F§:Boolean = false;
      
      protected var §%!z§:int = 0;
      
      private var §5$8§:Number = 0;
      
      private var §6#=§:int;
      
      private var §8!v§:int;
      
      private var §,"c§:b2Vec2;
      
      private var §!]§:b2Vec2;
      
      private var §>#b§:Number;
      
      private var §=#I§:Number;
      
      private var §3![§:Number;
      
      private var §9I§:Boolean;
      
      private var §@r§:Boolean = false;
      
      private var §#!9§:Number = 1;
      
      private var §1#M§:Boolean = false;
      
      protected var §'"s§:§]#m§;
      
      private var §"!c§:§`"W§;
      
      private var §]"?§:Number = 1.0;
      
      private var §8!l§:Boolean = true;
      
      private var §!H§:Boolean = false;
      
      private var mId:int = 0;
      
      protected var §@#D§:Number = -1.0;
      
      private var §0#%§:Boolean = false;
      
      private var §"!m§:Boolean = false;
      
      protected var §-#9§:String = "";
      
      protected var §]#C§:int = 1;
      
      private var §%X§:Boolean;
      
      private var §2"^§:§]!Q§;
      
      private var §8#b§:Vector.<String>;
      
      public function §="@§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         this.§!]§ = new b2Vec2();
         this.§8#b§ = new Vector.<String>();
         super(param1,param3,param4,param5);
         this.§%X§ = false;
         this.§"!c§ = param2;
         this.§]"?§ = param6;
         this.§8!v§ = §`!w§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§'"s§ = this.initObjectRenderer();
         this.§'"s§.§<q§ = this;
         this.§'"s§.§[&§(§`!w§.shape is §3#U§);
         this.createPhysicsBody(§!P§.x,§!P§.y);
         §9"P§ = param5.§9"P§;
         this.§3![§ = §`!w§.getItemDefence();
         if(§`!w§.maxStrength > 0)
         {
            this.initializeHealth(§`!w§.maxStrength);
         }
         else
         {
            this.initializeHealth(Math.round(this.§[r§(true) * §`!w§.getItemStrength()));
         }
         if(§`!w§.itemType == §8K§.§@!U§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§?$+§(param5.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = §`!w§.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.§'"s§.§2"n§(§`!w§.shape);
         this.§5$8§ = §2"c§;
      }
      
      public static function §<#,§(param1:int, param2:§0!y§, param3:String = "") : §@!"§
      {
         if(param2 == null)
         {
            return null;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§]#%§(param1)).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§+""§;
            }
            return §#$+§.§=#P§(_loc4_,param3);
         }
         return null;
      }
      
      public function get health() : Number
      {
         return this.§>#b§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§>#b§ = param1;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§9I§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         this.§9I§ = param1;
      }
      
      public function get §4$3§() : Boolean
      {
         return this.§@r§;
      }
      
      public function set §4$3§(param1:Boolean) : void
      {
         this.§@r§ = param1;
      }
      
      public function get §2!w§() : Number
      {
         return this.§=#I§;
      }
      
      public function get itemName() : String
      {
         return §`!w§.itemName;
      }
      
      public function get §=#8§() : Number
      {
         return this.§#!9§;
      }
      
      public function get animation() : §`"W§
      {
         return this.§"!c§;
      }
      
      public function get x() : Number
      {
         return §+!5§;
      }
      
      public function get y() : Number
      {
         return §'! §;
      }
      
      public function get scale() : Number
      {
         return this.§]"?§;
      }
      
      public function get id() : int
      {
         return this.mId;
      }
      
      public function get §]7§() : Boolean
      {
         return this.§3![§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§3![§;
      }
      
      public function get §""s§() : Boolean
      {
         return this.§8!l§;
      }
      
      public function set §""s§(param1:Boolean) : void
      {
         this.§8!l§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§@#D§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return §!P§.hasSpecialBehavior;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §%"Q§() : Boolean
      {
         return this.§0#%§;
      }
      
      public function set §%"Q§(param1:Boolean) : void
      {
         this.§0#%§ = param1;
      }
      
      public function get §]B§() : Boolean
      {
         return this.§1#M§;
      }
      
      public function set §]B§(param1:Boolean) : void
      {
         this.§1#M§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §4"C§() : §]#m§
      {
         return this.§'"s§;
      }
      
      public function §%#f§(param1:b2Vec2) : void
      {
         §!P§.linearForce = param1;
      }
      
      public function §-"F§() : b2Vec2
      {
         return §!P§.linearForce;
      }
      
      public function §]#a§() : void
      {
         if(§!P§.linearForce)
         {
            § !7§.ApplyForce(new b2Vec2(§!P§.linearForce.x * § !7§.GetMass(),§!P§.linearForce.y * § !7§.GetMass()),§ !7§.GetWorldCenter());
         }
      }
      
      public final function §4"c§(param1:int) : void
      {
         if(!this.§!H§)
         {
            this.§!H§ = true;
            this.mId = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      public function § x§() : void
      {
         var _loc1_:Number = §`!w§.maxStrength - §&,§.health;
         this.applyDamage(_loc1_,null,null,false);
         getBody().SetAngularDamping(§&,§.angularDamping);
         getBody().SetLinearDamping(§&,§.linearDamping);
         getBody().SetAngularVelocity(§&,§.angularVelocity);
         if(§&,§.linearForce != null)
         {
            this.§%#f§(§&,§.linearForce);
         }
         getBody().SetAwake(true);
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§=#I§ = param1;
         this.§>#b§ = param1;
      }
      
      protected function §@!E§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§>#b§ += param1;
         }
      }
      
      public function §9!V§(param1:b2Body) : void
      {
         if(mWorld && § !7§)
         {
            mWorld.DestroyBody(§ !7§);
         }
         § !7§ = param1;
         § !7§.SetUserData(this);
         §-#c§ = this.§4!4§();
         var _loc2_:b2FilterData = this.createFilterData();
         if(!§`!w§.isColliding)
         {
            _loc2_.§!"y§ = 0;
         }
         this.§6!y§(_loc2_);
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         § !7§ = mWorld.CreateBody(_loc3_);
         § !7§.SetUserData(this);
         §-#c§ = this.§4!4§();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§`!w§.isColliding)
         {
            _loc4_.§!"y§ = 0;
         }
         this.§6!y§(_loc4_);
      }
      
      protected function §4!4§() : b2Fixture
      {
         var _loc1_:b2Fixture = § !7§.CreateFixture2(§`!w§.shape.getB2Shape(this.§]"?§),§`!w§.getItemDensity());
         _loc1_.SetFriction(§`!w§.getItemFriction());
         _loc1_.SetRestitution(§`!w§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §]#m§
      {
         return new §]#m§(this.animation,sprite);
      }
      
      public function §6!y§(param1:b2FilterData) : void
      {
         if(§-#c§)
         {
            §-#c§.SetFilterData(param1);
         }
      }
      
      public function §#]§(param1:§8K§) : void
      {
         §`!w§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §`!w§.getItemBodyType();
         _loc3_.§,!6§ = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.§`"q§ = false;
         return _loc3_;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         this.§0#,§();
         this.§'"s§.dispose();
         this.§,"c§ = null;
         §`!w§ = null;
      }
      
      public function §?$+§(param1:Number) : void
      {
         getBody().SetAngle(param1);
      }
      
      public function §^!Y§() : Number
      {
         return getBody().GetAngle();
      }
      
      public function §%"R§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1 || param1.x == 0 && param1.y == 0)
         {
            return;
         }
         getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§+#3§();
         }
         if(param3)
         {
            this.§7!2§();
         }
      }
      
      public function §[i§(param1:b2Vec2) : void
      {
         this.§,"c§ = param1;
      }
      
      private function §>##§() : void
      {
         if(this.§,"c§)
         {
            this.§%"R§(this.§,"c§,false);
            this.§,"c§ = null;
         }
      }
      
      protected function §8!2§() : void
      {
         if(§ !7§)
         {
            this.§!]§.SetV(§ !7§.GetLinearVelocity());
         }
      }
      
      public function §]"^§() : b2Vec2
      {
         return this.§!]§;
      }
      
      public function §+#3§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            getBody().SetAngularVelocity(0);
         }
         else
         {
            getBody().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §7!2§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§?$+§(_loc2_);
      }
      
      public function §!!i§(param1:Number) : void
      {
         getBody().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§?#"§)
         {
            this.§&c§ -= param1;
         }
         if(this.§'#d§)
         {
            this.§<@§ -= param1;
         }
         if(this.§8;§)
         {
            this.§%!z§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
         this.§'"s§.update(param1);
         sprite.x = §+!5§;
         sprite.y = §'! §;
         sprite.rotation = §%##§;
         if(backgroundSprite)
         {
            backgroundSprite.x = §+!5§;
            backgroundSprite.y = §'! §;
            backgroundSprite.rotation = §%##§;
         }
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         this.§>##§();
         super.update(param1,param2);
         if(this.§@#D§ >= 0)
         {
            this.§@#D§ += param1;
         }
         this.§8!2§();
         this.§]#a§();
         if(this.§5$8§ > 0)
         {
            this.§5$8§ -= param1;
         }
         else
         {
            this.§[#b§();
         }
      }
      
      public function updateOutOfBounds(param1:§7!O§) : void
      {
         this.§"!m§ = true;
      }
      
      public function updateBeforeRemoving(param1:§7!O§, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(!this.§"!m§)
         {
            this.addDestructionParticles(param1);
         }
         if(this.§>#b§ > 0)
         {
            this.playDestroyedSound();
            if(this.isDamageAwardingScore() && param2)
            {
               _loc3_ = this.§>#b§;
               _loc4_ = 0;
               _loc5_ = 0;
               if(§`!w§.maxStrength > 0)
               {
                  _loc6_ = Math.floor(§`!w§.damageScore * ((§`!w§.maxStrength - _loc3_) / §`!w§.maxStrength));
                  _loc5_ = Math.floor(§`!w§.damageScore * ((§`!w§.maxStrength - _loc4_) / §`!w§.maxStrength)) - _loc6_;
               }
               if(_loc5_ > 0)
               {
                  param1.addScore(_loc5_,§6" §.§8#§,true,getBody().GetPosition().x,getBody().GetPosition().y,§=$4§.§2"]§(this.itemName));
               }
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §?#C§() : Boolean
      {
         return this.§8!v§ == §8K§.§;"f§;
      }
      
      public function §1#a§() : String
      {
         return §`!w§.textureType;
      }
      
      public function §=P§() : Boolean
      {
         return this.§8!v§ == §8K§.§@!U§;
      }
      
      public function isTnt() : Boolean
      {
         if(this.itemName == "MISC_EXPLOSIVE_TNT" || this.itemName == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return §`!w§.isDamageAwardingScore();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §%R§() : Number
      {
         return Number(Math.sqrt(getBody().GetLinearVelocity().x * getBody().GetLinearVelocity().x + getBody().GetLinearVelocity().y * getBody().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§@#D§ = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         this.§&!N§(§0!y§.§#5§);
      }
      
      protected function playDamagedSound() : void
      {
         this.§&!N§(§0!y§.§5#u§);
      }
      
      protected function playCollisionSound() : void
      {
         this.§&!N§(§0!y§.§%#B§);
      }
      
      public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         if(this.§@#D§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.§3![§ < 0)
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
            return this.§>#b§;
         }
         if(param1 <= this.§3![§)
         {
            if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§>#b§;
         }
         param1 -= this.§3![§;
         var _loc5_:Number = this.§>#b§;
         var _loc6_:Number = Math.min(param1,_loc5_);
         var _loc7_:Number = _loc5_ - _loc6_;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc8_ = 0;
            if(§`!w§.maxStrength > 0)
            {
               _loc9_ = Math.floor(§`!w§.damageScore * ((§`!w§.maxStrength - _loc5_) / §`!w§.maxStrength));
               _loc8_ = Math.floor(§`!w§.damageScore * ((§`!w§.maxStrength - _loc7_) / §`!w§.maxStrength)) - _loc9_;
            }
            if(_loc8_ > 0)
            {
               param2.addScore(_loc8_,§6" §.§8#§,this.§>#b§ > param1,getBody().GetPosition().x,getBody().GetPosition().y,§=$4§.§2"]§(this.itemName));
            }
         }
         this.§>#b§ = _loc7_;
         if(this.§>#b§ <= 0)
         {
            this.§>#b§ = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.playDamagedSound();
         }
         if(this.setDamageState(1 - this.health / this.§2!w§,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§>#b§;
      }
      
      protected function setDamageState(param1:Number, param2:§7!O§) : Boolean
      {
         return this.§'"s§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §&!N§(param1:int) : void
      {
         §="@§.§<#,§(param1,§`!w§.soundResource);
      }
      
      public function §!w§(param1:String) : Number
      {
         return §`!w§.getDamageMultiplier(param1) * this.§#!9§;
      }
      
      public function §@^§(param1:String) : Number
      {
         return §`!w§.getVelocityMultiplier(param1);
      }
      
      public function §5"J§() : String
      {
         return §`!w§.materialName;
      }
      
      public function §?!E§() : Number
      {
         return §`!w§.getItemStrength();
      }
      
      public function §7!H§() : Boolean
      {
         return getBody().IsAwake() && (this is §-k§ && this.§>#b§ == this.§=#I§ || Math.abs(getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §[!K§() : Boolean
      {
         if(!getBody().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §%$§(param1:Number = 3) : void
      {
         this.§#!9§ = param1;
      }
      
      public function §[r§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§`!w§.getItemBodyType() == §^#A§.§&M§)
         {
            _loc2_ = this.§'"s§.width * this.§'"s§.height * (§#!,§.§?$#§ * §#!,§.§?$#§);
         }
         else
         {
            _loc2_ = getBody().GetMass() / §-#c§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§,"t§();
            }
            _loc2_ /= this.§]"?§ * this.§]"?§;
         }
         return _loc2_;
      }
      
      public function §,"t§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§'"s§.§[$%§ - 1) / 10);
      }
      
      public function §="m§(param1:Number) : void
      {
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         var _loc3_:Number = getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§7!O§) : Boolean
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
      
      protected function addDestructionParticles(param1:§7!O§) : void
      {
      }
      
      public function addDamageParticles(param1:§7!O§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§'P§)
         {
            case §7#]§.§?"3§:
               § !7§.SetLinearDamping(§;!p§.§%a§);
               § !7§.SetAngularDamping(§;!p§.§"$9§);
               § !7§.SetGravityScale(0);
               break;
            case §7#]§.§>!j§:
               § !7§.SetLinearDamping(§;!p§.§2!B§);
               § !7§.SetAngularDamping(§;!p§.§1"e§);
               § !7§.SetGravityScale(0);
               break;
            case §7#]§.§4"x§:
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §#$9§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         getBody().SetPosition(_loc4_);
      }
      
      public function §1!e§(param1:String, param2:String, param3:§7!O§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §9"P§ = -1;
         }
      }
      
      public function get §'#d§() : Boolean
      {
         return this.§<@§ >= 0;
      }
      
      public function get §?#"§() : Boolean
      {
         return this.§&c§ >= 0;
      }
      
      public function get §`8§() : Boolean
      {
         return this.§6F§;
      }
      
      public function get §8;§() : Boolean
      {
         return this.§%!z§ > 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§'#d§ && !this.§?#"§ && !this.§8;§ && !this.§`8§;
      }
      
      protected function §[#b§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§'"s§.§#"N§(§8#H§))
         {
            return;
         }
         if(!this.§8;§)
         {
            _loc1_ = 0;
            _loc2_ = 3;
            if(Math.abs(getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc2_)
            {
               _loc3_ = b2Settings.b2_linearSleepTolerance * _loc2_;
               if((_loc4_ = getBody().GetLinearVelocity().x) > _loc3_)
               {
                  _loc1_ = 1;
               }
               else if(_loc4_ < 0)
               {
                  _loc1_ = 2;
               }
            }
            if(_loc1_ != 0)
            {
               this.§'"s§.setAnimation(§8#H§,false);
               this.§'"s§.§?r§(_loc1_ == 1);
               this.§%!z§ = §`!&§;
               this.§<@§ = -1;
               this.§&c§ = -1;
               this.§6F§ = false;
            }
         }
      }
      
      public function scream() : void
      {
         if(!this.§8;§ && !this.§`8§)
         {
            this.§&c§ = §5@§;
            this.§<@§ = -1;
            this.§'"s§.setAnimation(§[!k§,false);
            this.playScreamSound();
         }
      }
      
      protected function playScreamSound() : void
      {
      }
      
      public function playFearSound() : §@!"§
      {
         return null;
      }
      
      public function blink() : void
      {
         if(!this.§8;§ && !this.§`8§)
         {
            this.§<@§ = §>V§;
            this.§&c§ = -1;
            this.§'"s§.setAnimation(§""8§,false);
         }
      }
      
      protected function normalize() : void
      {
         var _loc1_:String = §0!V§;
         if(!this.§%X§)
         {
            if(this.§'"s§.§#"N§(§+!l§))
            {
               _loc1_ = §+!l§;
               this.§'"s§.setAnimation(_loc1_,false);
               this.§6F§ = true;
            }
            this.§%X§ = true;
         }
         else
         {
            this.§'"s§.setAnimation(_loc1_);
         }
      }
      
      public function §^"v§(param1:String) : §@!"§
      {
         var _loc2_:§`"W§ = null;
         if(this.animation)
         {
            _loc2_ = this.animation.getSubAnimation(param1);
            if(_loc2_ && _loc2_.soundName)
            {
               return §#$+§.§=#P§(_loc2_.soundName,_loc2_.soundChannel);
            }
         }
         return null;
      }
      
      public function §=!8§() : Boolean
      {
         return this.animation.hasAnySubAnimations(§]#X§);
      }
      
      public function §]#@§(param1:String, param2:int, param3:int) : void
      {
         if(param1 == §+!l§)
         {
            this.§6F§ = false;
            this.normalize();
         }
      }
      
      public function playSound(param1:String) : void
      {
      }
      
      public function §-"k§(param1:§]!Q§, param2:§?W§) : void
      {
         this.§2"^§ = param1;
         this.§8#b§.push(param2.event);
         param1.§^#B§(this,param2.event);
      }
      
      private function §0#,§() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8#b§.length)
         {
            _loc2_ = this.§8#b§[_loc1_];
            this.§2"^§.§]!6§(this,_loc2_);
            _loc1_++;
         }
      }
      
      public function §%N§(param1:§,"s§) : void
      {
      }
   }
}
