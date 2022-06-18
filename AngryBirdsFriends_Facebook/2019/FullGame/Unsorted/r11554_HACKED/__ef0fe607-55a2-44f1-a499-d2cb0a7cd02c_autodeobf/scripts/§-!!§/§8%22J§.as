package §-!!§
{
   import § !D§.§'"u§;
   import § !D§.§;#W§;
   import § !D§.§@#z§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §-"i§.§"!Y§;
   import §-"i§.§+!7§;
   import §-"i§.§@M§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §8#t§.b2Body;
   import §8#t§.b2BodyDef;
   import §8#t§.b2FilterData;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §9$+§.§<$<§;
   import §=!2§.§%"T§;
   import §>"9§.§1"T§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §?§.§0F§;
   import §?§.§4I§;
   import §?§.§7!$§;
   import §[!3§.b2Settings;
   import §["9§.§`"i§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §8"J§ extends §""L§ implements §@B§, §@M§
   {
      
      public static const §9$9§:Number = -1;
      
      public static const §9!=§:Number = 20;
      
      public static const §>!i§:Number = 100;
      
      public static const §%"@§:String = "creation";
      
      public static const §>!N§:String = "normal";
      
      public static const §9#N§:String = "blink";
      
      public static const §6$$§:String = "yell";
      
      public static const §&"`§:String = "slipping";
      
      private static const §2"R§:Array = [§9#N§,§6$$§,§&"`§];
      
      public static const §8+§:Number = 1000;
      
      public static const §<#<§:Number = 500;
      
      protected static const §@#,§:int = 1000;
      
      public static const §8m§:uint = 3000;
      
      public static const §2!F§:uint = 1 << 1;
      
      public static const §&"e§:uint = 1 << 2;
      
      public static const §>!h§:uint = 1 << 3;
      
      public static const §8%§:uint = 1 << 4;
      
      public static const §4!G§:uint = 1 << 5;
      
      public static const §[!n§:uint = 1 << 6;
      
      private static const § "w§:int = 200;
      
      public static var §5I§:int = 4;
      
      public static var §`"=§:int = 12;
      
      private static const §##x§:int = 1;
       
      
      protected var §7!i§:Number = -1.0;
      
      protected var §#]§:Number = -1.0;
      
      private var §1P§:Boolean = false;
      
      protected var §^"U§:int = 0;
      
      private var §,A§:Number = 0;
      
      private var §7#9§:int;
      
      private var §3!O§:int;
      
      private var §]#"§:b2Vec2;
      
      private var §`#P§:b2Vec2;
      
      private var §-#@§:Number;
      
      private var §!e§:Number;
      
      private var §[#N§:Number;
      
      private var §,#,§:Boolean;
      
      private var §5"`§:Boolean = false;
      
      protected var §&?§:Object;
      
      protected var §2"c§:Object;
      
      protected var §@$&§:Boolean;
      
      private var §1"G§:Boolean = false;
      
      protected var §]+§:§+!&§;
      
      private var §"m§:§4!8§;
      
      private var §6z§:Number = 1.0;
      
      private var §,!_§:Boolean = true;
      
      private var §7#P§:Boolean = false;
      
      private var mId:int = 0;
      
      protected var §7?§:Number = -1.0;
      
      private var §<$A§:Boolean = false;
      
      private var §]w§:Boolean = false;
      
      protected var §`#,§:String = "";
      
      protected var §^"5§:int = 1;
      
      private var §," §:Boolean;
      
      private var §=#v§:§"!Y§;
      
      private var §;e§:Vector.<String>;
      
      private var §2"U§:Boolean;
      
      private var §6"s§:int = 0;
      
      private var §+!M§:int;
      
      protected var §7$!§:Object;
      
      private var §]"_§:String = "Effect_Block_Destruction_Core";
      
      private var §8!Z§:§`"i§;
      
      protected var §1n§:int = 0;
      
      protected var §3$%§:Boolean = false;
      
      protected var § #f§:Array;
      
      protected var §0U§:int;
      
      private var §6"g§:Boolean = false;
      
      private var §#Z§:Number = 0;
      
      private var §?!v§:Boolean;
      
      private var §^z§:Boolean = false;
      
      private var §8"_§:Boolean = false;
      
      private var §^"D§:Number = 0;
      
      private var §`$;§:Number;
      
      private var §@r§:Number;
      
      private var §!n§:DisplayObject;
      
      private var §?!"§:§]%§;
      
      private var §]!n§:Boolean = false;
      
      public function §8"J§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         this.§`#P§ = new b2Vec2();
         this.§;e§ = new Vector.<String>();
         super(param1,param3,param4,param5);
         this.§," § = false;
         this.§"m§ = param2;
         this.§6z§ = param6;
         this.§3!O§ = §!!H§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§]+§ = this.initObjectRenderer();
         this.§]+§.§`%§ = this;
         this.§]+§.§5$=§(§!!H§.shape is §0F§);
         this.§2"U§ = false;
         this.createPhysicsBody(§4!_§.x,§4!_§.y);
         §&"X§ = param5.§&"X§;
         this.§[#N§ = §!!H§.getItemDefence();
         if(§!!H§.maxStrength > 0)
         {
            this.initializeHealth(§!!H§.maxStrength);
         }
         else
         {
            this.initializeHealth(Math.round(this.§`$5§(true) * §!!H§.getItemStrength()));
         }
         if(§!!H§.itemType == §,Y§.§^B§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§=z§(param5.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = §!!H§.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.§]+§.§>#P§(§!!H§.shape);
         this.§,A§ = §8m§;
         this.§7$!§ = new Object();
         this.§0U§ = §5I§;
         this.§?!v§ = false;
      }
      
      public function get health() : Number
      {
         return this.§-#@§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§-#@§ = param1;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§,#,§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         this.§,#,§ = param1;
      }
      
      public function get §8$1§() : Boolean
      {
         return this.§5"`§;
      }
      
      public function set §8$1§(param1:Boolean) : void
      {
         this.§5"`§ = param1;
      }
      
      public function get §1#H§() : Number
      {
         return this.§!e§;
      }
      
      public function set §1#H§(param1:Number) : void
      {
         this.§!e§ = param1;
      }
      
      public function get itemName() : String
      {
         if(§!!H§)
         {
            return §!!H§.itemName;
         }
         return "";
      }
      
      public function get animation() : §4!8§
      {
         return this.§"m§;
      }
      
      public function get x() : Number
      {
         return §-##§;
      }
      
      public function get y() : Number
      {
         return §0#[§;
      }
      
      public function get scale() : Number
      {
         return this.§6z§;
      }
      
      public function get id() : int
      {
         return this.mId;
      }
      
      public function get §""f§() : Boolean
      {
         return this.§[#N§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§[#N§;
      }
      
      public function get §7#§() : Boolean
      {
         return this.§,!_§;
      }
      
      public function set §7#§(param1:Boolean) : void
      {
         this.§,!_§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§7?§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return §4!_§.hasSpecialBehavior;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §-"a§() : Boolean
      {
         return this.§<$A§;
      }
      
      public function set §-"a§(param1:Boolean) : void
      {
         this.§<$A§ = param1;
      }
      
      public function get §^#v§() : Boolean
      {
         return this.§1"G§;
      }
      
      public function set §^#v§(param1:Boolean) : void
      {
         this.§1"G§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get § !7§() : §+!&§
      {
         return this.§]+§;
      }
      
      public function §<"8§(param1:b2Vec2) : void
      {
         §4!_§.linearForce = param1;
      }
      
      public function §-"N§() : b2Vec2
      {
         return §4!_§.linearForce;
      }
      
      public function applyLinearForce() : void
      {
         if(§4!_§.linearForce)
         {
            §=#w§.ApplyForce(new b2Vec2(§4!_§.linearForce.x * §=#w§.GetMass(),§4!_§.linearForce.y * §=#w§.GetMass()),§=#w§.GetWorldCenter());
         }
      }
      
      public final function §7p§(param1:int) : void
      {
         if(!this.§7#P§)
         {
            this.§7#P§ = true;
            this.mId = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      public function §9$ §() : void
      {
         var _loc1_:Number = §!!H§.maxStrength - §?#=§.health;
         this.applyDamage(_loc1_,null,null,false);
         getBody().SetAngularDamping(§?#=§.angularDamping);
         getBody().SetLinearDamping(§?#=§.linearDamping);
         getBody().SetAngularVelocity(§?#=§.angularVelocity);
         if(§?#=§.linearForce != null)
         {
            this.§<"8§(§?#=§.linearForce);
         }
         getBody().SetAwake(true);
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§!e§ = param1;
         this.§-#@§ = param1;
      }
      
      protected function §&!+§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§-#@§ += param1;
         }
      }
      
      public function §]"0§(param1:b2Body) : void
      {
         if(mWorld && §=#w§)
         {
            mWorld.DestroyBody(§=#w§);
         }
         §=#w§ = param1;
         §=#w§.SetUserData(this);
         §2"T§ = this.createFixture();
         var _loc2_:b2FilterData = this.createFilterData();
         if(!§!!H§.isColliding)
         {
            _loc2_.§#"5§ = 0;
         }
         this.§5#y§(_loc2_);
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §=#w§ = mWorld.CreateBody(_loc3_);
         §=#w§.SetUserData(this);
         §2"T§ = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§!!H§.isColliding)
         {
            _loc4_.§#"5§ = 0;
         }
         this.§5#y§(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §=#w§.CreateFixture2(§!!H§.shape.getB2Shape(this.§6z§),§!!H§.getItemDensity());
         _loc1_.SetFriction(§!!H§.getItemFriction());
         _loc1_.SetRestitution(§!!H§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §+!&§
      {
         return new §+!&§(this.animation,sprite);
      }
      
      public function §5#y§(param1:b2FilterData) : void
      {
         if(§2"T§)
         {
            §2"T§.SetFilterData(param1);
         }
      }
      
      public function §%#7§() : b2FilterData
      {
         if(§2"T§)
         {
            return §2"T§.GetFilterData();
         }
         return null;
      }
      
      public function §'! §(param1:§,Y§) : void
      {
         §!!H§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §!!H§.getItemBodyType();
         _loc3_.§&!z§ = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.§`#+§ = false;
         return _loc3_;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         this.§["@§();
         this.§]+§.dispose();
         this.§]#"§ = null;
         §!!H§ = null;
         if(this.§?!"§)
         {
            this.§?!"§.stop();
            this.§?!"§ = null;
         }
      }
      
      public function §=z§(param1:Number) : void
      {
         getBody().SetAngle(param1);
      }
      
      public function §30§() : Number
      {
         return getBody().GetAngle();
      }
      
      public function § #+§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1 || param1.x == 0 && param1.y == 0)
         {
            return;
         }
         getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§>r§();
         }
         if(param3)
         {
            this.§;"O§();
         }
      }
      
      public function §6#Q§(param1:b2Vec2) : void
      {
         this.§]#"§ = param1;
      }
      
      private function §;!9§() : void
      {
         if(this.§]#"§)
         {
            this.§ #+§(this.§]#"§,false);
            this.§]#"§ = null;
         }
      }
      
      protected function §!"p§() : void
      {
         if(§=#w§)
         {
            this.§`#P§.SetV(§=#w§.GetLinearVelocity());
         }
      }
      
      public function §2!y§() : b2Vec2
      {
         return this.§`#P§;
      }
      
      public function §>r§(param1:b2Vec2 = null) : void
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
      
      public function §;"O§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§=z§(_loc2_);
      }
      
      public function §6-§(param1:Number) : void
      {
         getBody().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§"!i§)
         {
            this.§7!i§ -= param1;
         }
         if(this.§3"P§)
         {
            this.§#]§ -= param1;
         }
         if(this.§@"q§)
         {
            this.§^"U§ -= param1;
            this.§9!l§();
         }
         if(this.§,#E§)
         {
            this.§2"E§();
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
         this.§]+§.update(param1);
         sprite.x = §-##§;
         sprite.y = §0#[§;
         sprite.rotation = §%"b§;
         if(backgroundSprite)
         {
            backgroundSprite.x = §-##§;
            backgroundSprite.y = §0#[§;
            backgroundSprite.rotation = §%"b§;
         }
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         this.§;!9§();
         super.update(param1,param2);
         if(this.§7?§ >= 0)
         {
            this.§7?§ += param1;
         }
         this.§!"p§();
         this.applyLinearForce();
         if(this.§,A§ > 0)
         {
            this.§,A§ -= param1;
         }
         else
         {
            this.§0s§();
         }
         if(this.§+!M§ > 0)
         {
            this.§+!M§ -= param1;
         }
         this.addTrail(param2);
         this.§4#P§(param1);
         if(§!!H§.spawnParticlesDefinition && §!!H§.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.§#Z§ = Math.min(§!!H§.spawnParticlesDefinition.frequencyInSeconds * 5,this.§#Z§ + param1);
            while(this.§#Z§ >= §!!H§.spawnParticlesDefinition.frequencyInSeconds)
            {
               this.§#Z§ -= §!!H§.spawnParticlesDefinition.frequencyInSeconds;
               this.§0#E§(§!!H§.spawnParticlesDefinition.particleName);
            }
         }
      }
      
      public function updateOutOfBounds(param1:§ #'§) : void
      {
         this.§]w§ = true;
      }
      
      public function updateBeforeRemoving(param1:§ #'§, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(!this.§]w§)
         {
            this.addDestructionParticles(param1);
         }
         if(this.§-#@§ > 0)
         {
            this.playDestroyedSound();
            if(this.isDamageAwardingScore() && param2)
            {
               _loc3_ = this.§-#@§;
               _loc4_ = 0;
               _loc5_ = 0;
               if(§!!H§.maxStrength > 0)
               {
                  _loc6_ = Math.floor(§!!H§.damageScore * ((§!!H§.maxStrength - _loc3_) / §!!H§.maxStrength));
                  _loc5_ = Math.floor(§!!H§.damageScore * ((§!!H§.maxStrength - _loc4_) / §!!H§.maxStrength)) - _loc6_;
               }
               if(_loc5_ > 0)
               {
                  param1.addScore(_loc5_,§@#z§.§&#'§,true,getBody().GetPosition().x,getBody().GetPosition().y,§'Y§.§!,§(this.itemName),§!!H§.floatingScoreFont);
               }
            }
         }
         this.explodeBeforeRemoving(param1);
         this.spawnBlock(param1);
      }
      
      protected function explodeBeforeRemoving(param1:§ #'§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(§!!H§.specialty == "BOMB")
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            if(param1)
            {
               param1.§2,§(_loc2_,_loc3_,§!!H§.explosionRadius,§!!H§.explosionForce,§!!H§.explosionDamageRadius,§!!H§.explosionDamage);
            }
         }
      }
      
      protected function spawnBlock(param1:§ #'§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:b2Vec2 = null;
         var _loc9_:§8"J§ = null;
         var _loc10_:String = null;
         var _loc11_:§1"T§ = null;
         var _loc12_:String = null;
         var _loc13_:§4I§ = null;
         if(§!!H§.spawnBlockDefinition)
         {
            _loc2_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < §!!H§.spawnBlockDefinition.spawnCount)
            {
               _loc4_ = _loc3_ / §!!H§.spawnBlockDefinition.spawnCount * Math.PI;
               _loc5_ = Math.cos(-_loc4_);
               _loc6_ = Math.sin(-_loc4_);
               _loc7_ = §!!H§.spawnBlockDefinition.spawnMinSpeed + (§!!H§.spawnBlockDefinition.spawnMaxSpeed - §!!H§.spawnBlockDefinition.spawnMinSpeed) * Math.random();
               _loc8_ = getBody().GetPosition();
               (_loc9_ = param1.addObject(§!!H§.spawnBlockDefinition.spawnDefinition,_loc8_.x + _loc5_ * §!!H§.spawnBlockDefinition.spawnDistance,_loc8_.y + _loc6_ * §!!H§.spawnBlockDefinition.spawnDistance,0,§7S§.ID_NEXT_FREE,false,false,false,1,false,true) as §8"J§).§ #+§(new b2Vec2(_loc5_ * _loc7_,_loc6_ * _loc7_));
               _loc9_.§6-§(§!!H§.spawnBlockDefinition.spawnMaxAngularSpeed * (Math.random() * 2 - 1));
               for each(_loc10_ in §!!H§.spawnBlockDefinition.spawnAudios)
               {
                  if(_loc2_.indexOf(_loc10_) == -1)
                  {
                     _loc2_.push(_loc10_);
                  }
               }
               _loc3_++;
            }
            if(_loc2_)
            {
               for each(_loc10_ in _loc2_)
               {
                  _loc12_ = §[#%§.§0"f§;
                  if(§!!H§.soundResource)
                  {
                     _loc11_ = §[#%§.§!"0§(_loc10_,§!!H§.soundResource.channelName);
                     _loc12_ = §!!H§.soundResource.channelName;
                  }
                  else
                  {
                     _loc11_ = §[#%§.§!"0§(_loc10_);
                  }
                  if(!_loc11_)
                  {
                     if(_loc13_ = §%"T§.§;`§.levelItemManager.getSoundResource(_loc10_))
                     {
                        §[#%§.playSound(_loc13_.§6"x§(),_loc12_);
                     }
                  }
               }
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §"!g§() : Boolean
      {
         return this.§3!O§ == §,Y§.§-$B§;
      }
      
      public function §1!%§() : String
      {
         return §!!H§.textureType;
      }
      
      public function §&"y§() : Boolean
      {
         return this.§3!O§ == §,Y§.§^B§;
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
         if(this.§^#v§)
         {
            return false;
         }
         return §!!H§.isDamageAwardingScore();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §?#R§() : Number
      {
         return Number(Math.sqrt(getBody().GetLinearVelocity().x * getBody().GetLinearVelocity().x + getBody().GetLinearVelocity().y * getBody().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§7?§ = 0;
         if(§&"X§ == §-#L§.§9"u§)
         {
            §&"X§ = §-#L§.DEFAULT;
         }
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      public function § !W§() : void
      {
         if(!§!!H§.soundResource)
         {
            return;
         }
         var _loc1_:String = §!!H§.soundResource.getLaunchSound();
         if(_loc1_)
         {
            §[#%§.playSound(_loc1_,§!!H§.soundResource.channelName);
         }
      }
      
      public function §7#?§() : void
      {
         if(!§!!H§.soundResource)
         {
            return;
         }
         var _loc1_:String = §!!H§.soundResource.getSpecialSound();
         if(_loc1_)
         {
            §[#%§.playSound(_loc1_,§!!H§.soundResource.channelName);
         }
      }
      
      public function playDestroyedSound() : void
      {
         if(!§!!H§.soundResource)
         {
            return;
         }
         var _loc1_:String = §!!H§.soundResource.getDestroyedSound();
         if(_loc1_)
         {
            §[#%§.playSound(_loc1_,§!!H§.soundResource.channelName);
         }
      }
      
      protected function playCollisionSound() : void
      {
         if(!§!!H§.soundResource)
         {
            return;
         }
         var _loc1_:String = §!!H§.soundResource.getCollisionSound();
         if(_loc1_)
         {
            §[#%§.playSound(_loc1_,§!!H§.soundResource.channelName);
         }
      }
      
      protected function playDamagedSound() : void
      {
         if(!§!!H§.soundResource)
         {
            return;
         }
         var _loc1_:String = §!!H§.soundResource.getDamagedSound();
         if(_loc1_)
         {
            §[#%§.playSound(_loc1_,§!!H§.soundResource.channelName);
         }
      }
      
      public function §2"E§() : void
      {
         if(!§!!H§.soundResource)
         {
            return;
         }
         var _loc1_:String = §!!H§.soundResource.getRollingSound();
         if(_loc1_)
         {
            if(!§[#%§.§!$&§(_loc1_,§!!H§.soundResource.channelName))
            {
               §[#%§.playSound(_loc1_,§!!H§.soundResource.channelName);
            }
         }
      }
      
      public function §""Z§() : void
      {
         if(!§!!H§.soundResource)
         {
            return;
         }
         var _loc1_:String = §!!H§.soundResource.getIdleSounds();
         if(_loc1_)
         {
            §[#%§.playSound(_loc1_,§!!H§.soundResource.channelName);
         }
      }
      
      public function §9!l§() : void
      {
         if(!§!!H§.soundResource)
         {
            return;
         }
         var _loc1_:String = §!!H§.soundResource.getSlippingSound();
         if(_loc1_)
         {
            §[#%§.playSound(_loc1_,§!!H§.soundResource.channelName);
         }
      }
      
      public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(this.§7?§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         this.§1c§(param1,param2);
         if(!param5)
         {
            if(this.§[#N§ < 0)
            {
               if(param1 > 10)
               {
                  this.playDamagedSound();
               }
               else if(param1 > 3)
               {
                  this.playCollisionSound();
               }
               return this.§-#@§;
            }
            if(param1 <= this.§[#N§)
            {
               if(param1 > 10)
               {
                  this.playDamagedSound();
               }
               else if(param1 > 3)
               {
                  this.playCollisionSound();
               }
               return this.§-#@§;
            }
            param1 -= this.§[#N§;
         }
         var _loc6_:Number = this.§-#@§;
         var _loc7_:Number = Math.min(param1,_loc6_);
         var _loc8_:Number = _loc6_ - _loc7_;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc9_ = 0;
            if(§!!H§.maxStrength > 0)
            {
               _loc10_ = Math.floor(§!!H§.damageScore * ((§!!H§.maxStrength - _loc6_) / §!!H§.maxStrength));
               _loc9_ = Math.floor(§!!H§.damageScore * ((§!!H§.maxStrength - _loc8_) / §!!H§.maxStrength)) - _loc10_;
            }
            if(_loc9_ > 0)
            {
               param2.addScore(_loc9_,§@#z§.§&#'§,this.§-#@§ > param1,getBody().GetPosition().x,getBody().GetPosition().y,§'Y§.§!,§(this.itemName),§!!H§.floatingScoreFont);
            }
         }
         this.§-#@§ = _loc8_;
         if(this.§-#@§ <= 0)
         {
            this.§-#@§ = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.playDamagedSound();
         }
         if(this.setDamageState(1 - this.health / this.§1#H§,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§-#@§;
      }
      
      protected function setDamageState(param1:Number, param2:§ #'§) : Boolean
      {
         return this.§]+§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §7"C§(param1:String) : Number
      {
         if(this.§&?§)
         {
            if(this.§&?§.hasOwnProperty(param1))
            {
               return this.§&?§[param1];
            }
         }
         return §!!H§.getDamageMultiplier(param1);
      }
      
      public function §+O§(param1:String) : Number
      {
         if(this.§2"c§)
         {
            if(this.§2"c§.hasOwnProperty(param1))
            {
               return this.§2"c§[param1];
            }
         }
         return §!!H§.getVelocityMultiplier(param1);
      }
      
      public function §[#C§() : String
      {
         return §!!H§.materialName;
      }
      
      public function §9"w§() : Number
      {
         return §!!H§.getItemStrength();
      }
      
      public function §;"s§() : Boolean
      {
         return getBody().IsAwake() && (this is §5"W§ && this.§-#@§ == this.§!e§ || Math.abs(getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §=!a§() : Boolean
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
      
      public function §,!9§(param1:Object) : void
      {
         this.§&?§ = param1;
      }
      
      public function §=!8§(param1:Object) : void
      {
         this.§2"c§ = param1;
      }
      
      public function §3##§(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§@$&§ = param1;
         if(param1 && shape is §0F§)
         {
            _loc2_ = (shape as §0F§).radius;
            _loc3_ = _loc2_ * this.scale;
            _loc5_ = Number(this.§^!J§() * Math.PI * _loc2_ * _loc2_) / (Math.PI * _loc3_ * _loc3_);
            this.§"#p§(_loc5_);
         }
      }
      
      public function §`$5§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§!!H§.getItemBodyType() == §7!$§.BODY_TYPE_STATIC)
         {
            _loc2_ = this.§]+§.width * this.§]+§.height * (§'"u§.§'#e§ * §'"u§.§'#e§);
         }
         else
         {
            _loc2_ = getBody().GetMass() / §2"T§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§6"i§();
            }
            _loc2_ /= this.§6z§ * this.§6z§;
         }
         return _loc2_;
      }
      
      public function §6"i§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§]+§.§-"6§ - 1) / 10);
      }
      
      public function §??§(param1:Number) : void
      {
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         var _loc3_:Number = getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§ #'§) : Boolean
      {
         var _loc4_:String = null;
         if(!this.isLeavingTrail)
         {
            return false;
         }
         if(!param1)
         {
            return true;
         }
         var _loc2_:Number = this.x * §'"u§.§'#e§;
         var _loc3_:Number = this.y * §'"u§.§'#e§;
         if(this.§6"g§)
         {
            param1.addParticle(§'Y§.§2!n§,§>F§.§ 4§,§'Y§.§1"J§,_loc2_,_loc3_,-1,"",§'Y§.§0=§);
            this.§1n§ = 0;
            this.§6"g§ = false;
         }
         else
         {
            _loc4_ = §'Y§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§1n§ == 1)
            {
               _loc4_ = §'Y§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§1n§ == 2)
            {
               _loc4_ = §'Y§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§1n§ = (this.§1n§ + 1) % 3;
            param1.addParticle(_loc4_,§>F§.§ 4§,§'Y§.§1"J§,_loc2_,_loc3_,-1,"",§'Y§.§0=§);
         }
         this.addTrailParticles(_loc2_,_loc3_);
         return true;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return this.§3$%§;
      }
      
      public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§3$%§ = param1;
      }
      
      public function §-!o§() : void
      {
         this.§6"g§ = true;
      }
      
      public function §>"O§() : Boolean
      {
         return this.§6"g§;
      }
      
      protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!this.§ #f§)
         {
            return;
         }
         var _loc3_:int = Math.random() * this.§0U§;
         var _loc4_:Number = 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * (Math.PI * 2);
            _loc7_ = 0.5 * §`"=§ + §`"=§ * (Math.random() * 0.5);
            _loc8_ = 0;
            if(this.§ #f§.length > 1)
            {
               _loc8_ = Math.random() * this.§ #f§.length;
            }
            if(this.§ #f§[_loc8_] == "POWERUP_POWERPOTION_TRAIL")
            {
               _loc4_ = 0.2 + Math.random() * 0.2;
            }
            §%"T§.§;`§.particles.addSimpleParticle(this.§ #f§[_loc8_],§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§'Y§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
            _loc5_++;
         }
      }
      
      public function §[#<§(param1:String) : void
      {
         if(!this.§ #f§)
         {
            this.§ #f§ = [];
         }
         this.§ #f§.push(param1);
      }
      
      public function §<"X§(param1:int) : void
      {
         this.§0U§ = param1;
      }
      
      protected function addDestructionParticles(param1:§ #'§) : void
      {
      }
      
      public function addDamageParticles(param1:§ #'§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§<@§)
         {
            case §-#L§.§=j§:
               §=#w§.SetLinearDamping(§;#W§.§!#C§);
               §=#w§.SetAngularDamping(§;#W§.§!o§);
               §=#w§.SetGravityScale(0);
               break;
            case §-#L§.§+$9§:
               §=#w§.SetLinearDamping(§;#W§.§;#n§);
               §=#w§.SetAngularDamping(§;#W§.§`!4§);
               §=#w§.SetGravityScale(0);
               break;
            case §-#L§.§>!@§:
               break;
            case §-#L§.§;"P§:
            case §-#L§.§9"u§:
               §=#w§.SetGravityScale(0);
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §]V§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         getBody().SetPosition(_loc4_);
      }
      
      public function § $6§(param1:String, param2:String, param3:§ #'§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §&"X§ = -1;
         }
      }
      
      public function get §3"P§() : Boolean
      {
         return this.§#]§ >= 0;
      }
      
      public function get §"!i§() : Boolean
      {
         return this.§7!i§ >= 0;
      }
      
      public function get §+$#§() : Boolean
      {
         return this.§1P§;
      }
      
      public function get §@"q§() : Boolean
      {
         return this.§^"U§ > 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§3"P§ && !this.§"!i§ && !this.§@"q§ && !this.§+$#§ && !this.§,#E§;
      }
      
      protected function §0s§() : void
      {
         var _loc1_:int = 0;
         if(!this.§]+§.§"#o§(§&"`§))
         {
            return;
         }
         if(!this.§@"q§)
         {
            _loc1_ = this.§"#x§();
            if(_loc1_ != 0)
            {
               this.§]+§.setAnimation(§&"`§,false);
               this.§]+§.§;#6§(_loc1_ == 1);
               this.§^"U§ = §@#,§;
               this.§#]§ = -1;
               this.§7!i§ = -1;
               this.§1P§ = false;
            }
         }
      }
      
      public function scream() : void
      {
         if(!this.§@"q§ && !this.§+$#§)
         {
            this.§7!i§ = §8+§;
            this.§#]§ = -1;
            this.§]+§.setAnimation(§6$$§,false);
            this.playScreamSound();
         }
      }
      
      protected function playScreamSound() : void
      {
         if(!§!!H§.soundResource)
         {
            return;
         }
         var _loc1_:String = §!!H§.soundResource.getScreamSound();
         if(_loc1_)
         {
            §[#%§.playSound(_loc1_,§!!H§.soundResource.channelName);
         }
      }
      
      public function playFearSound() : §1"T§
      {
         return null;
      }
      
      public function blink() : void
      {
         if(!this.§@"q§ && !this.§+$#§)
         {
            this.§#]§ = §<#<§;
            this.§7!i§ = -1;
            this.§]+§.setAnimation(§9#N§,false);
         }
      }
      
      protected function normalize() : void
      {
         var _loc1_:String = §>!N§;
         if(!this.§," §)
         {
            if(this.§]+§.§"#o§(this.§]+§.§?"<§()))
            {
               _loc1_ = this.§]+§.§?"<§();
               this.§]+§.setAnimation(_loc1_,false);
               this.§1P§ = true;
            }
            else if(this.§]+§.§"#o§(§%"@§))
            {
               _loc1_ = §%"@§;
               this.§]+§.setAnimation(_loc1_,false);
               this.§1P§ = true;
            }
            this.§," § = true;
         }
         else
         {
            this.§]+§.setAnimation(_loc1_);
         }
      }
      
      public function §+"q§(param1:String) : §1"T§
      {
         var _loc2_:§4!8§ = null;
         if(this.animation)
         {
            _loc2_ = this.animation.getSubAnimation(param1);
            if(_loc2_ && _loc2_.soundName)
            {
               return §[#%§.§!"0§(_loc2_.soundName,_loc2_.soundChannel);
            }
         }
         return null;
      }
      
      public function §9#&§() : Boolean
      {
         if(this.animation)
         {
            return this.animation.hasAnySubAnimations(§2"R§);
         }
         return false;
      }
      
      public function §1"^§(param1:String, param2:int, param3:int) : void
      {
         if(param1 == §%"@§ || param1 == this.§]+§.§?"<§())
         {
            this.§1P§ = false;
            this.normalize();
         }
      }
      
      public function playSound(param1:String) : void
      {
      }
      
      public function §=$E§(param1:§"!Y§, param2:§<$<§) : void
      {
         this.§=#v§ = param1;
         this.§;e§.push(param2.event);
         param1.§=$A§(this,param2.event);
      }
      
      private function §["@§() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;e§.length)
         {
            _loc2_ = this.§;e§[_loc1_];
            this.§=#v§.§-"8§(this,_loc2_);
            _loc1_++;
         }
      }
      
      public function §`#!§(param1:§+!7§) : void
      {
      }
      
      public function §5"-§(param1:Boolean) : void
      {
         this.§2"U§ = param1;
         sprite.visible = !param1;
      }
      
      public function get §^$@§() : Boolean
      {
         return this.§2"U§;
      }
      
      protected function §"#x§() : int
      {
         var _loc2_:Number = b2Settings.b2_linearSleepTolerance * 4;
         var _loc3_:Number = getBody().GetLinearVelocity().x;
         if(_loc3_ > _loc2_)
         {
            return 1;
         }
         if(_loc3_ < -_loc2_)
         {
            return 2;
         }
         return 0;
      }
      
      protected function §8$'§() : int
      {
         var _loc2_:Number = b2Settings.b2_linearSleepTolerance * 3;
         var _loc3_:Number = getBody().GetLinearVelocity().y;
         if(_loc3_ > _loc2_)
         {
            return 1;
         }
         if(_loc3_ < -_loc2_)
         {
            return 2;
         }
         return 0;
      }
      
      override public function collidedWith(param1:§1#B§) : void
      {
         if(this.§6"s§ == 0)
         {
            this.§+!M§ = § "w§;
         }
         ++this.§6"s§;
      }
      
      override public function collisionEnded(param1:§1#B§) : void
      {
         --this.§6"s§;
         if(this.§6"s§ <= 0)
         {
            this.§6"s§ = 0;
            this.§+!M§ = 0;
         }
      }
      
      public function get §,#E§() : Boolean
      {
         return this.§6"s§ > 0 && this.§+!M§ <= 0 && this.§"#x§() != 0 && §!!H§.shape is §0F§;
      }
      
      public function §,X§(param1:String) : Object
      {
         return this.§7$!§[param1];
      }
      
      public function §+"l§(param1:String, param2:Object) : void
      {
         this.§7$!§[param1] = param2;
      }
      
      public function get §<#r§() : String
      {
         return this.§]"_§;
      }
      
      public function set §<#r§(param1:String) : void
      {
         this.§]"_§ = param1;
      }
      
      public function §0!D§(param1:Number) : void
      {
         §2"T§.SetRestitution(param1);
      }
      
      public function §#!3§() : Number
      {
         return §2"T§.GetRestitution();
      }
      
      public function §"#p§(param1:Number) : void
      {
         §2"T§.SetDensity(param1);
      }
      
      public function §^!J§() : Number
      {
         return §2"T§.GetDensity();
      }
      
      public function §="C§(param1:Number) : void
      {
         §2"T§.SetFriction(param1);
      }
      
      public function §85§() : Number
      {
         return §2"T§.GetFriction();
      }
      
      public function §1!E§(param1:§`"i§) : void
      {
         this.§8!Z§ = param1;
      }
      
      public function §0j§() : §`"i§
      {
         return this.§8!Z§;
      }
      
      public function get isFlying() : Boolean
      {
         return false;
      }
      
      public function get canActivateSpecialPower() : Boolean
      {
         return false;
      }
      
      public function get specialPowerUsed() : Boolean
      {
         return false;
      }
      
      public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         return false;
      }
      
      protected function §1c§(param1:Number, param2:§ #'§) : void
      {
         if(this.§8!Z§)
         {
            this.§8!Z§.§;# §(param1,getBody().GetMass(),param2,getBody().GetPosition().x + this.§]+§.width * 0.5 * §'"u§.§'#e§,getBody().GetPosition().y + this.§]+§.width * 0.5 * §'"u§.§'#e§,getBody().GetAngle(),getBody().GetLinearVelocity());
         }
      }
      
      protected function handleLevelEndCheck() : void
      {
         if(!this.§?!v§)
         {
            §%"T§.§+"M§.checkForLevelEnd();
            this.§?!v§ = true;
         }
      }
      
      public function get §2#y§() : Boolean
      {
         return this.§^z§;
      }
      
      public function §@#S§(param1:Number, param2:Number, param3:Number) : void
      {
         this.§^z§ = true;
         this.§^"D§ = param1;
         this.§`$;§ = param2;
         this.§@r§ = param3;
         var _loc4_:§4!8§ = §%"T§.§;`§.animationManager.getAnimation("STELLA_BUBBLE");
         this.§!n§ = _loc4_.getFrame(int(Math.random() * _loc4_.frameCount));
         this.§?!"§ = §'#n§.§?q§.§[#F§(§'#n§.§?q§.§9!N§(this.§!n§,{
            "scaleX":2.1,
            "scaleY":2.25
         },{
            "scaleX":1.9,
            "scaleY":1.75
         },0.5,§'#n§.§`"E§),§'#n§.§?q§.§9!N§(this.§!n§,{
            "scaleX":1.75,
            "scaleY":1.9
         },{
            "scaleX":2.1,
            "scaleY":2.25
         },0.5,§'#n§.§[i§),§'#n§.§?q§.§9!N§(this.§!n§,{
            "scaleX":2.25,
            "scaleY":2.1
         },{
            "scaleX":1.75,
            "scaleY":1.9
         },0.5,§'#n§.§`"E§),§'#n§.§?q§.§9!N§(this.§!n§,{
            "scaleX":1.9,
            "scaleY":1.75
         },{
            "scaleX":2.25,
            "scaleY":2.1
         },0.5,§'#n§.§[i§));
         this.§?!"§.§#$0§ = false;
      }
      
      private function §4#P§(param1:Number) : void
      {
         var _loc4_:int = 0;
         if(this.§^z§)
         {
            if(this.§^"D§ > 0)
            {
               this.§^"D§ -= param1;
               Number(getBody().GetLinearVelocity().x);
               Number(getBody().GetLinearVelocity().y);
               _loc4_ = 10;
               if(this.§?#R§() < _loc4_)
               {
                  getBody().SetAwake(true);
                  §=#w§.ApplyForce(new b2Vec2(this.§`$;§ * getBody().GetMass(),-getBody().GetWorld().GetGravity().y * getBody().GetMass() * this.§@r§),§=#w§.GetWorldCenter());
               }
            }
            else
            {
               this.§^"D§ = 0;
               this.§`$;§ = 0;
               this.§@r§ = 0;
               this.§^z§ = false;
               this.§!!B§(getBody().GetPosition().x,getBody().GetPosition().y,6);
               §[#%§.§!"0§("pumpkin_collision_04");
               if(this is §5"W§)
               {
                  this.§-#@§ = 0;
               }
               else if(levelItem.bubbleDamage > 0)
               {
                  this.applyDamage(levelItem.bubbleDamage,null,null,false,true);
               }
               else
               {
                  this.applyDamage(§##x§,null,null,false,true);
               }
            }
            if(!this.§8"_§)
            {
               this.§?!"§.play();
               sprite.addChildAt(this.§!n§,sprite.numChildren);
               this.§8"_§ = true;
            }
            if(§%"T§.isPaused)
            {
               if(!this.§]!n§)
               {
                  if(this.§?!"§)
                  {
                     this.§?!"§.pause();
                  }
                  this.§]!n§ = true;
               }
            }
            else if(this.§]!n§)
            {
               if(this.§?!"§)
               {
                  this.§?!"§.play();
               }
               this.§]!n§ = false;
            }
         }
         else if(this.§8"_§)
         {
            if(this.§?!"§)
            {
               this.§?!"§.stop();
               this.§?!"§ = null;
            }
            sprite.removeChild(this.§!n§);
            this.§8"_§ = false;
         }
      }
      
      protected function §!!B§(param1:Number, param2:Number, param3:int) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            _loc5_ = 1 + Math.random() * 6;
            §%"T§.§;`§.particles.addSimpleParticle("BUBBLE_POP" + _loc5_,§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,400 + Math.random() * 200,"",§'Y§.getParticleMaterialFromEngineMaterial("BIRD_RED"),Math.random() * 20 - 10,Math.random() * 20 - 10,5,Math.random() * 200);
            _loc4_++;
         }
      }
      
      protected function §0#E§(param1:String) : void
      {
      }
   }
}
