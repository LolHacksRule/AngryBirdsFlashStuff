package §8§#8
{
   import § "%§.b2Vec2;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §'!L§.§-$?§;
   import §'!L§.§5",§;
   import §'!L§.§8"y§;
   import §+"T§.§]6§;
   import §,!s§.b2Settings;
   import §4"O§.b2Body;
   import §4"O§.b2BodyDef;
   import §4"O§.b2FilterData;
   import §4"O§.b2Fixture;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §8"L§.§8g§;
   import §8"L§.§?"b§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §>M§.§[N§;
   import §@!M§.§!"p§;
   import §@!M§.§^#p§;
   import §@0§.§%!q§;
   import §@0§.§&"A§;
   import §@0§.§1§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.geom.Point;
   
   public class §4!y§ extends §`";§ implements §[#i§, §-$?§
   {
      
      public static const §8[§:Number = -1;
      
      public static const §"!l§:Number = 20;
      
      public static const §9#C§:Number = 100;
      
      public static const §%"Y§:String = "creation";
      
      public static const §<#J§:String = "normal";
      
      public static const §7=§:String = "blink";
      
      public static const §+#8§:String = "yell";
      
      public static const §#"N§:String = "slipping";
      
      private static const §>#F§:Array = [§7=§,§+#8§,§#"N§];
      
      public static const §##A§:Number = 1000;
      
      public static const §3!h§:Number = 500;
      
      protected static const §=o§:int = 1000;
      
      public static const §7!m§:uint = 3000;
      
      public static const §6!a§:uint = 1 << 1;
      
      public static const §,-§:uint = 1 << 2;
      
      public static const §0B§:uint = 1 << 3;
      
      public static const §!"R§:uint = 1 << 4;
      
      public static const §1"b§:uint = 1 << 5;
      
      public static const §+"'§:uint = 1 << 6;
      
      private static const §6p§:int = 200;
      
      public static var §[c§:int = 4;
      
      public static var §&!N§:int = 12;
      
      private static const §8#J§:int = 1;
       
      
      protected var §5#s§:Number = -1.0;
      
      protected var §]"N§:Number = -1.0;
      
      private var §"#Q§:Boolean = false;
      
      protected var §1$9§:int = 0;
      
      private var §["2§:Number = 0;
      
      private var §5w§:int;
      
      private var §9#l§:int;
      
      private var §%"K§:b2Vec2;
      
      private var § #K§:b2Vec2;
      
      private var §=s§:Number;
      
      private var §0"j§:Number;
      
      private var §-"&§:Number;
      
      private var §6#h§:Boolean;
      
      private var §+$2§:Boolean = false;
      
      protected var §'#7§:Object;
      
      protected var §5!o§:Object;
      
      protected var §9$&§:Boolean;
      
      private var §?$5§:Boolean = false;
      
      protected var §9"6§:§ "m§;
      
      private var §&n§:§0$2§;
      
      private var §^#5§:Number = 1.0;
      
      private var §'"q§:Boolean = true;
      
      private var §2S§:Boolean = false;
      
      private var mId:int = 0;
      
      protected var §9"Z§:Number = -1.0;
      
      private var §>!$§:Boolean = false;
      
      private var §^!'§:Boolean = false;
      
      protected var §#!H§:String = "";
      
      protected var §8Q§:int = 1;
      
      private var §3$&§:Boolean;
      
      private var §&l§:§8"y§;
      
      private var §7#f§:Vector.<String>;
      
      private var §8d§:Boolean;
      
      private var §5#7§:int = 0;
      
      private var §%#2§:int;
      
      protected var §0!f§:Object;
      
      private var §&"?§:String = "Effect_Block_Destruction_Core";
      
      private var §3#n§:§]6§;
      
      protected var §@"u§:int = 0;
      
      protected var §#1§:Boolean = false;
      
      protected var §&"z§:Array;
      
      protected var §+!y§:int;
      
      private var §,P§:Boolean = false;
      
      private var §&#+§:Boolean;
      
      private var §?"&§:Boolean = false;
      
      private var §?$#§:Boolean = false;
      
      private var §2=§:Number = 0;
      
      private var §0#N§:Number;
      
      private var §'V§:Number;
      
      private var §-!L§:DisplayObject;
      
      private var §"c§:§4[§;
      
      private var §=#^§:Boolean = false;
      
      public function §4!y§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         this.§ #K§ = new b2Vec2();
         this.§7#f§ = new Vector.<String>();
         super(param1,param3,param4,param5);
         this.§3$&§ = false;
         this.§&n§ = param2;
         this.§^#5§ = param6;
         this.§9#l§ = §'!i§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§9"6§ = this.initObjectRenderer();
         this.§9"6§.§+#c§ = this;
         this.§9"6§.§@#X§(§'!i§.shape is §8g§);
         this.§8d§ = false;
         this.createPhysicsBody(§%!@§.x,§%!@§.y);
         §>"H§ = param5.§>"H§;
         this.§-"&§ = §'!i§.getItemDefence();
         if(§'!i§.maxStrength > 0)
         {
            this.initializeHealth(§'!i§.maxStrength);
         }
         else
         {
            this.initializeHealth(Math.round(this.§3"C§(true) * §'!i§.getItemStrength()));
         }
         if(§'!i§.itemType == §4U§.§^"c§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§5#W§(param5.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = §'!i§.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.§9"6§.§##'§(§'!i§.shape);
         this.§["2§ = §7!m§;
         this.§0!f§ = new Object();
         this.§+!y§ = §[c§;
         this.§&#+§ = false;
      }
      
      public function get health() : Number
      {
         return this.§=s§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§=s§ = param1;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§6#h§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         this.§6#h§ = param1;
      }
      
      public function get §=#]§() : Boolean
      {
         return this.§+$2§;
      }
      
      public function set §=#]§(param1:Boolean) : void
      {
         this.§+$2§ = param1;
      }
      
      public function get §""5§() : Number
      {
         return this.§0"j§;
      }
      
      public function set §""5§(param1:Number) : void
      {
         this.§0"j§ = param1;
      }
      
      public function get itemName() : String
      {
         if(§'!i§)
         {
            return §'!i§.itemName;
         }
         return "";
      }
      
      public function get animation() : §0$2§
      {
         return this.§&n§;
      }
      
      public function get x() : Number
      {
         return §8u§;
      }
      
      public function get y() : Number
      {
         return §!#§;
      }
      
      public function get scale() : Number
      {
         return this.§^#5§;
      }
      
      public function get id() : int
      {
         return this.mId;
      }
      
      public function get §]",§() : Boolean
      {
         return this.§-"&§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§-"&§;
      }
      
      public function get §9!I§() : Boolean
      {
         return this.§'"q§;
      }
      
      public function set §9!I§(param1:Boolean) : void
      {
         this.§'"q§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§9"Z§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return §%!@§.hasSpecialBehavior;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §`c§() : Boolean
      {
         return this.§>!$§;
      }
      
      public function set §`c§(param1:Boolean) : void
      {
         this.§>!$§ = param1;
      }
      
      public function get §[#x§() : Boolean
      {
         return this.§?$5§;
      }
      
      public function set §[#x§(param1:Boolean) : void
      {
         this.§?$5§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §##-§() : § "m§
      {
         return this.§9"6§;
      }
      
      public function §]U§(param1:b2Vec2) : void
      {
         §%!@§.linearForce = param1;
      }
      
      public function §1"#§() : b2Vec2
      {
         return §%!@§.linearForce;
      }
      
      public function applyLinearForce() : void
      {
         if(§%!@§.linearForce)
         {
            §=#D§.ApplyForce(new b2Vec2(§%!@§.linearForce.x * §=#D§.GetMass(),§%!@§.linearForce.y * §=#D§.GetMass()),§=#D§.GetWorldCenter());
         }
      }
      
      public final function §["p§(param1:int) : void
      {
         if(!this.§2S§)
         {
            this.§2S§ = true;
            this.mId = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      public function §4"7§() : void
      {
         var _loc1_:Number = §'!i§.maxStrength - §9"f§.health;
         this.applyDamage(_loc1_,null,null,false);
         getBody().SetAngularDamping(§9"f§.angularDamping);
         getBody().SetLinearDamping(§9"f§.linearDamping);
         getBody().SetAngularVelocity(§9"f§.angularVelocity);
         if(§9"f§.linearForce != null)
         {
            this.§]U§(§9"f§.linearForce);
         }
         getBody().SetAwake(true);
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§0"j§ = param1;
         this.§=s§ = param1;
      }
      
      protected function §^"h§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§=s§ += param1;
         }
      }
      
      public function §-$1§(param1:b2Body) : void
      {
         if(mWorld && §=#D§)
         {
            mWorld.DestroyBody(§=#D§);
         }
         §=#D§ = param1;
         §=#D§.SetUserData(this);
         §'"K§ = this.createFixture();
         var _loc2_:b2FilterData = this.createFilterData();
         if(!§'!i§.isColliding)
         {
            _loc2_.§5!H§ = 0;
         }
         this.§+"n§(_loc2_);
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §=#D§ = mWorld.CreateBody(_loc3_);
         §=#D§.SetUserData(this);
         §'"K§ = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§'!i§.isColliding)
         {
            _loc4_.§5!H§ = 0;
         }
         this.§+"n§(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §=#D§.CreateFixture2(§'!i§.shape.getB2Shape(this.§^#5§),§'!i§.getItemDensity());
         _loc1_.SetFriction(§'!i§.getItemFriction());
         _loc1_.SetRestitution(§'!i§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : § "m§
      {
         return new § "m§(this.animation,sprite);
      }
      
      public function §+"n§(param1:b2FilterData) : void
      {
         if(§'"K§)
         {
            §'"K§.SetFilterData(param1);
         }
      }
      
      public function §=$;§() : b2FilterData
      {
         if(§'"K§)
         {
            return §'"K§.GetFilterData();
         }
         return null;
      }
      
      public function §8"<§(param1:§4U§) : void
      {
         §'!i§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §'!i§.getItemBodyType();
         _loc3_.§@A§ = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.§6!t§ = false;
         return _loc3_;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         this.§##,§();
         this.§9"6§.dispose();
         this.§%"K§ = null;
         §'!i§ = null;
         if(this.§"c§)
         {
            this.§"c§.stop();
            this.§"c§ = null;
         }
      }
      
      public function §5#W§(param1:Number) : void
      {
         getBody().SetAngle(param1);
      }
      
      public function §`$"§() : Number
      {
         return getBody().GetAngle();
      }
      
      public function §5"[§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1 || param1.x == 0 && param1.y == 0)
         {
            return;
         }
         getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§@"Q§();
         }
         if(param3)
         {
            this.§#"X§();
         }
      }
      
      public function §6"0§(param1:b2Vec2) : void
      {
         this.§%"K§ = param1;
      }
      
      private function §4$4§() : void
      {
         if(this.§%"K§)
         {
            this.§5"[§(this.§%"K§,false);
            this.§%"K§ = null;
         }
      }
      
      protected function §1x§() : void
      {
         if(§=#D§)
         {
            this.§ #K§.SetV(§=#D§.GetLinearVelocity());
         }
      }
      
      public function §!"a§() : b2Vec2
      {
         return this.§ #K§;
      }
      
      public function §@"Q§(param1:b2Vec2 = null) : void
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
      
      public function §#"X§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§5#W§(_loc2_);
      }
      
      public function §`#o§(param1:Number) : void
      {
         getBody().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§2!n§)
         {
            this.§5#s§ -= param1;
         }
         if(this.§?#z§)
         {
            this.§]"N§ -= param1;
         }
         if(this.§`!c§)
         {
            this.§1$9§ -= param1;
            this.§@$?§();
         }
         if(this.§4$?§)
         {
            this.§;#K§();
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
         this.§9"6§.update(param1);
         sprite.x = §8u§;
         sprite.y = §!#§;
         sprite.rotation = §]#8§;
         if(backgroundSprite)
         {
            backgroundSprite.x = §8u§;
            backgroundSprite.y = §!#§;
            backgroundSprite.rotation = §]#8§;
         }
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         this.§4$4§();
         super.update(param1,param2);
         if(this.§9"Z§ >= 0)
         {
            this.§9"Z§ += param1;
         }
         this.§1x§();
         this.applyLinearForce();
         if(this.§["2§ > 0)
         {
            this.§["2§ -= param1;
         }
         else
         {
            this.§ !r§();
         }
         if(this.§%#2§ > 0)
         {
            this.§%#2§ -= param1;
         }
         this.addTrail(param2);
         this.§,! §(param1);
      }
      
      public function updateOutOfBounds(param1:§&#V§) : void
      {
         this.§^!'§ = true;
      }
      
      public function updateBeforeRemoving(param1:§&#V§, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(!this.§^!'§)
         {
            this.addDestructionParticles(param1);
         }
         if(this.§=s§ > 0)
         {
            this.playDestroyedSound();
            if(this.isDamageAwardingScore() && param2)
            {
               _loc3_ = this.§=s§;
               _loc4_ = 0;
               _loc5_ = 0;
               if(§'!i§.maxStrength > 0)
               {
                  _loc6_ = Math.floor(§'!i§.damageScore * ((§'!i§.maxStrength - _loc3_) / §'!i§.maxStrength));
                  _loc5_ = (_loc7_ = Math.floor(§'!i§.damageScore * ((§'!i§.maxStrength - _loc4_) / §'!i§.maxStrength))) - _loc6_;
               }
               if(_loc5_ > 0)
               {
                  param1.addScore(_loc5_,§&"A§.§!e§,true,getBody().GetPosition().x,getBody().GetPosition().y,§@>§.§9#N§(this.itemName),§'!i§.floatingScoreFont);
               }
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §83§() : Boolean
      {
         return this.§9#l§ == §4U§.§?#G§;
      }
      
      public function §^"2§() : String
      {
         return §'!i§.textureType;
      }
      
      public function §=$,§() : Boolean
      {
         return this.§9#l§ == §4U§.§^"c§;
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
         if(this.§[#x§)
         {
            return false;
         }
         return §'!i§.isDamageAwardingScore();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §]!@§() : Number
      {
         return Number(Math.sqrt(getBody().GetLinearVelocity().x * getBody().GetLinearVelocity().x + getBody().GetLinearVelocity().y * getBody().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§9"Z§ = 0;
         if(§>"H§ == §3"8§.§![§)
         {
            §>"H§ = §3"8§.DEFAULT;
         }
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      public function § r§() : void
      {
         if(!§'!i§.soundResource)
         {
            return;
         }
         var _loc1_:String = §'!i§.soundResource.getLaunchSound();
         if(_loc1_)
         {
            §!"p§.playSound(_loc1_,§'!i§.soundResource.channelName);
         }
      }
      
      public function §5#C§() : void
      {
         if(!§'!i§.soundResource)
         {
            return;
         }
         var _loc1_:String = §'!i§.soundResource.getSpecialSound();
         if(_loc1_)
         {
            §!"p§.playSound(_loc1_,§'!i§.soundResource.channelName);
         }
      }
      
      public function playDestroyedSound() : void
      {
         if(!§'!i§.soundResource)
         {
            return;
         }
         var _loc1_:String = §'!i§.soundResource.getDestroyedSound();
         if(_loc1_)
         {
            §!"p§.playSound(_loc1_,§'!i§.soundResource.channelName);
         }
      }
      
      protected function playCollisionSound() : void
      {
         if(!§'!i§.soundResource)
         {
            return;
         }
         var _loc1_:String = §'!i§.soundResource.getCollisionSound();
         if(_loc1_)
         {
            §!"p§.playSound(_loc1_,§'!i§.soundResource.channelName);
         }
      }
      
      protected function playDamagedSound() : void
      {
         if(!§'!i§.soundResource)
         {
            return;
         }
         var _loc1_:String = §'!i§.soundResource.getDamagedSound();
         if(_loc1_)
         {
            §!"p§.playSound(_loc1_,§'!i§.soundResource.channelName);
         }
      }
      
      public function §;#K§() : void
      {
         if(!§'!i§.soundResource)
         {
            return;
         }
         var _loc1_:String = §'!i§.soundResource.getRollingSound();
         if(_loc1_)
         {
            if(!§!"p§.§+#0§(_loc1_,§'!i§.soundResource.channelName))
            {
               §!"p§.playSound(_loc1_,§'!i§.soundResource.channelName);
            }
         }
      }
      
      public function §^#_§() : void
      {
         if(!§'!i§.soundResource)
         {
            return;
         }
         var _loc1_:String = §'!i§.soundResource.getIdleSounds();
         if(_loc1_)
         {
            §!"p§.playSound(_loc1_,§'!i§.soundResource.channelName);
         }
      }
      
      public function §@$?§() : void
      {
         if(!§'!i§.soundResource)
         {
            return;
         }
         var _loc1_:String = §'!i§.soundResource.getSlippingSound();
         if(_loc1_)
         {
            §!"p§.playSound(_loc1_,§'!i§.soundResource.channelName);
         }
      }
      
      public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(this.§9"Z§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         this.§%"2§(param1,param2);
         if(this.§-"&§ < 0)
         {
            if(param1 > 10)
            {
               this.playDamagedSound();
            }
            else if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§=s§;
         }
         if(param1 <= this.§-"&§)
         {
            if(param1 > 10)
            {
               this.playDamagedSound();
            }
            else if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§=s§;
         }
         param1 -= this.§-"&§;
         var _loc5_:Number = this.§=s§;
         var _loc6_:Number = Math.min(param1,_loc5_);
         var _loc7_:Number = _loc5_ - _loc6_;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc8_ = 0;
            if(§'!i§.maxStrength > 0)
            {
               _loc9_ = Math.floor(§'!i§.damageScore * ((§'!i§.maxStrength - _loc5_) / §'!i§.maxStrength));
               _loc8_ = (_loc10_ = Math.floor(§'!i§.damageScore * ((§'!i§.maxStrength - _loc7_) / §'!i§.maxStrength))) - _loc9_;
            }
            if(_loc8_ > 0)
            {
               param2.addScore(_loc8_,§&"A§.§!e§,this.§=s§ > param1,getBody().GetPosition().x,getBody().GetPosition().y,§@>§.§9#N§(this.itemName),§'!i§.floatingScoreFont);
            }
         }
         this.§=s§ = _loc7_;
         if(this.§=s§ <= 0)
         {
            this.§=s§ = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.playDamagedSound();
         }
         if(this.setDamageState(1 - this.health / this.§""5§,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§=s§;
      }
      
      protected function setDamageState(param1:Number, param2:§&#V§) : Boolean
      {
         return this.§9"6§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §2$9§(param1:String) : Number
      {
         if(this.§'#7§)
         {
            if(this.§'#7§.hasOwnProperty(param1))
            {
               return this.§'#7§[param1];
            }
         }
         return §'!i§.getDamageMultiplier(param1);
      }
      
      public function §4Q§(param1:String) : Number
      {
         if(this.§5!o§)
         {
            if(this.§5!o§.hasOwnProperty(param1))
            {
               return this.§5!o§[param1];
            }
         }
         return §'!i§.getVelocityMultiplier(param1);
      }
      
      public function §;#B§() : String
      {
         return §'!i§.materialName;
      }
      
      public function §5#$§() : Number
      {
         return §'!i§.getItemStrength();
      }
      
      public function §2"g§() : Boolean
      {
         return getBody().IsAwake() && (this is §?$%§ && this.§=s§ == this.§0"j§ || Math.abs(getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §7#]§() : Boolean
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
      
      public function §]#'§(param1:Object) : void
      {
         this.§'#7§ = param1;
      }
      
      public function §?!V§(param1:Object) : void
      {
         this.§5!o§ = param1;
      }
      
      public function §!"7§(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§9$&§ = param1;
         if(param1 && shape is §8g§)
         {
            _loc2_ = (shape as §8g§).radius;
            _loc3_ = _loc2_ * this.scale;
            _loc5_ = (_loc4_ = this.§;0§() * Math.PI * _loc2_ * _loc2_) / (Math.PI * _loc3_ * _loc3_);
            this.§-">§(_loc5_);
         }
      }
      
      public function §3"C§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§'!i§.getItemBodyType() == §?"b§.BODY_TYPE_STATIC)
         {
            _loc2_ = this.§9"6§.width * this.§9"6§.height * (§%!q§.§6q§ * §%!q§.§6q§);
         }
         else
         {
            _loc2_ = getBody().GetMass() / §'"K§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§]#d§();
            }
            _loc2_ /= this.§^#5§ * this.§^#5§;
         }
         return _loc2_;
      }
      
      public function §]#d§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§9"6§.§@$<§ - 1) / 10);
      }
      
      public function §9"O§(param1:Number) : void
      {
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         var _loc3_:Number = getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§&#V§) : Boolean
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
         var _loc2_:Number = this.x * §%!q§.§6q§;
         var _loc3_:Number = this.y * §%!q§.§6q§;
         if(this.§,P§)
         {
            param1.addParticle(§@>§.§4T§,§[p§.§7"+§,§@>§.§3!E§,_loc2_,_loc3_,-1,"",§@>§.§%#5§);
            this.§@"u§ = 0;
            this.§,P§ = false;
         }
         else
         {
            _loc4_ = §@>§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§@"u§ == 1)
            {
               _loc4_ = §@>§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§@"u§ == 2)
            {
               _loc4_ = §@>§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§@"u§ = (this.§@"u§ + 1) % 3;
            param1.addParticle(_loc4_,§[p§.§7"+§,§@>§.§3!E§,_loc2_,_loc3_,-1,"",§@>§.§%#5§);
         }
         this.addTrailParticles(_loc2_,_loc3_);
         return true;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return this.§#1§;
      }
      
      public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§#1§ = param1;
      }
      
      public function § !A§() : void
      {
         this.§,P§ = true;
      }
      
      public function §!"o§() : Boolean
      {
         return this.§,P§;
      }
      
      protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!this.§&"z§)
         {
            return;
         }
         var _loc3_:int = Math.random() * this.§+!y§;
         var _loc4_:Number = 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * (Math.PI * 2);
            _loc7_ = 0.5 * §&!N§ + §&!N§ * (Math.random() * 0.5);
            _loc8_ = 0;
            if(this.§&"z§.length > 1)
            {
               _loc8_ = Math.random() * this.§&"z§.length;
            }
            if(this.§&"z§[_loc8_] == "POWERUP_POWERPOTION_TRAIL")
            {
               _loc4_ = 0.2 + Math.random() * 0.2;
            }
            §3#U§.§#$4§.particles.addSimpleParticle(this.§&"z§[_loc8_],§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§@>§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
            _loc5_++;
         }
      }
      
      public function §=1§(param1:String) : void
      {
         if(!this.§&"z§)
         {
            this.§&"z§ = [];
         }
         this.§&"z§.push(param1);
      }
      
      public function §1@§(param1:int) : void
      {
         this.§+!y§ = param1;
      }
      
      protected function addDestructionParticles(param1:§&#V§) : void
      {
      }
      
      public function addDamageParticles(param1:§&#V§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§^!2§)
         {
            case §3"8§.§-!<§:
               §=#D§.SetLinearDamping(§1#7§.§+p§);
               §=#D§.SetAngularDamping(§1#7§.§6!`§);
               §=#D§.SetGravityScale(0);
               break;
            case §3"8§.§;$A§:
               §=#D§.SetLinearDamping(§1#7§.§2$%§);
               §=#D§.SetAngularDamping(§1#7§.§-!D§);
               §=#D§.SetGravityScale(0);
               break;
            case §3"8§.§%#I§:
               break;
            case §3"8§.§+l§:
            case §3"8§.§![§:
               §=#D§.SetGravityScale(0);
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §@K§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         getBody().SetPosition(_loc4_);
      }
      
      public function § !@§(param1:String, param2:String, param3:§&#V§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §>"H§ = -1;
         }
      }
      
      public function get §?#z§() : Boolean
      {
         return this.§]"N§ >= 0;
      }
      
      public function get §2!n§() : Boolean
      {
         return this.§5#s§ >= 0;
      }
      
      public function get §'"E§() : Boolean
      {
         return this.§"#Q§;
      }
      
      public function get §`!c§() : Boolean
      {
         return this.§1$9§ > 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§?#z§ && !this.§2!n§ && !this.§`!c§ && !this.§'"E§ && !this.§4$?§;
      }
      
      protected function § !r§() : void
      {
         var _loc1_:int = 0;
         if(!this.§9"6§.§+!3§(§#"N§))
         {
            return;
         }
         if(!this.§`!c§)
         {
            _loc1_ = this.§8#+§();
            if(_loc1_ != 0)
            {
               this.§9"6§.setAnimation(§#"N§,false);
               this.§9"6§.§&L§(_loc1_ == 1);
               this.§1$9§ = §=o§;
               this.§]"N§ = -1;
               this.§5#s§ = -1;
               this.§"#Q§ = false;
            }
         }
      }
      
      public function scream() : void
      {
         if(!this.§`!c§ && !this.§'"E§)
         {
            this.§5#s§ = §##A§;
            this.§]"N§ = -1;
            this.§9"6§.setAnimation(§+#8§,false);
            this.playScreamSound();
         }
      }
      
      protected function playScreamSound() : void
      {
         if(!§'!i§.soundResource)
         {
            return;
         }
         var _loc1_:String = §'!i§.soundResource.getScreamSound();
         if(_loc1_)
         {
            §!"p§.playSound(_loc1_,§'!i§.soundResource.channelName);
         }
      }
      
      public function playFearSound() : §^#p§
      {
         return null;
      }
      
      public function blink() : void
      {
         if(!this.§`!c§ && !this.§'"E§)
         {
            this.§]"N§ = §3!h§;
            this.§5#s§ = -1;
            this.§9"6§.setAnimation(§7=§,false);
         }
      }
      
      protected function normalize() : void
      {
         var _loc1_:String = §<#J§;
         if(!this.§3$&§)
         {
            if(this.§9"6§.§+!3§(this.§9"6§.§-$!§()))
            {
               _loc1_ = this.§9"6§.§-$!§();
               this.§9"6§.setAnimation(_loc1_,false);
               this.§"#Q§ = true;
            }
            else if(this.§9"6§.§+!3§(§%"Y§))
            {
               _loc1_ = §%"Y§;
               this.§9"6§.setAnimation(_loc1_,false);
               this.§"#Q§ = true;
            }
            this.§3$&§ = true;
         }
         else
         {
            this.§9"6§.setAnimation(_loc1_);
         }
      }
      
      public function §>!]§(param1:String) : §^#p§
      {
         var _loc2_:§0$2§ = null;
         if(this.animation)
         {
            _loc2_ = this.animation.getSubAnimation(param1);
            if(_loc2_ && _loc2_.soundName)
            {
               return §!"p§.§%!R§(_loc2_.soundName,_loc2_.soundChannel);
            }
         }
         return null;
      }
      
      public function §5!3§() : Boolean
      {
         if(this.animation)
         {
            return this.animation.hasAnySubAnimations(§>#F§);
         }
         return false;
      }
      
      public function §@w§(param1:String, param2:int, param3:int) : void
      {
         if(param1 == §%"Y§ || param1 == this.§9"6§.§-$!§())
         {
            this.§"#Q§ = false;
            this.normalize();
         }
      }
      
      public function playSound(param1:String) : void
      {
      }
      
      public function §3!N§(param1:§8"y§, param2:§[N§) : void
      {
         this.§&l§ = param1;
         this.§7#f§.push(param2.event);
         param1.§4l§(this,param2.event);
      }
      
      private function §##,§() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7#f§.length)
         {
            _loc2_ = this.§7#f§[_loc1_];
            this.§&l§.§-8§(this,_loc2_);
            _loc1_++;
         }
      }
      
      public function §%+§(param1:§5",§) : void
      {
      }
      
      public function §%#E§(param1:Boolean) : void
      {
         this.§8d§ = param1;
         sprite.visible = !param1;
      }
      
      public function get §%#S§() : Boolean
      {
         return this.§8d§;
      }
      
      protected function §8#+§() : int
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
      
      protected function §#`§() : int
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
      
      override public function collidedWith(param1:§,#5§) : void
      {
         if(this.§5#7§ == 0)
         {
            this.§%#2§ = §6p§;
         }
         ++this.§5#7§;
      }
      
      override public function collisionEnded(param1:§,#5§) : void
      {
         --this.§5#7§;
         if(this.§5#7§ <= 0)
         {
            this.§5#7§ = 0;
            this.§%#2§ = 0;
         }
      }
      
      public function get §4$?§() : Boolean
      {
         return this.§5#7§ > 0 && this.§%#2§ <= 0 && this.§8#+§() != 0 && §'!i§.shape is §8g§;
      }
      
      public function §6"J§(param1:String) : Object
      {
         return this.§0!f§[param1];
      }
      
      public function §""h§(param1:String, param2:Object) : void
      {
         this.§0!f§[param1] = param2;
      }
      
      public function get §&"g§() : String
      {
         return this.§&"?§;
      }
      
      public function set §&"g§(param1:String) : void
      {
         this.§&"?§ = param1;
      }
      
      public function §8!f§(param1:Number) : void
      {
         §'"K§.SetRestitution(param1);
      }
      
      public function §@"g§() : Number
      {
         return §'"K§.GetRestitution();
      }
      
      public function §-">§(param1:Number) : void
      {
         §'"K§.SetDensity(param1);
      }
      
      public function §;0§() : Number
      {
         return §'"K§.GetDensity();
      }
      
      public function § !W§(param1:Number) : void
      {
         §'"K§.SetFriction(param1);
      }
      
      public function §"$'§() : Number
      {
         return §'"K§.GetFriction();
      }
      
      public function §3!u§(param1:§]6§) : void
      {
         this.§3#n§ = param1;
      }
      
      public function §[$,§() : §]6§
      {
         return this.§3#n§;
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
      
      public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         return false;
      }
      
      protected function §%"2§(param1:Number, param2:§&#V§) : void
      {
         if(this.§3#n§)
         {
            this.§3#n§.§8$4§(param1,getBody().GetMass(),param2,getBody().GetPosition().x + this.§9"6§.width * 0.5 * §%!q§.§6q§,getBody().GetPosition().y + this.§9"6§.width * 0.5 * §%!q§.§6q§,getBody().GetAngle(),getBody().GetLinearVelocity());
         }
      }
      
      protected function handleLevelEndCheck() : void
      {
         if(!this.§&#+§)
         {
            §3#U§.§8I§.checkForLevelEnd();
            this.§&#+§ = true;
         }
      }
      
      public function get §4#d§() : Boolean
      {
         return this.§?"&§;
      }
      
      public function §`[§(param1:Number, param2:Number, param3:Number) : void
      {
         this.§?"&§ = true;
         this.§2=§ = param1;
         this.§0#N§ = param2;
         this.§'V§ = param3;
         var _loc4_:§0$2§ = §3#U§.§#$4§.animationManager.getAnimation("STELLA_BUBBLE");
         this.§-!L§ = _loc4_.getFrame(int(Math.random() * _loc4_.frameCount));
         this.§"c§ = §&"H§.§6!§.§>##§(§&"H§.§6!§.§6C§(this.§-!L§,{
            "scaleX":2.1,
            "scaleY":2.25
         },{
            "scaleX":1.9,
            "scaleY":1.75
         },0.5,§&"H§.§;a§),§&"H§.§6!§.§6C§(this.§-!L§,{
            "scaleX":1.75,
            "scaleY":1.9
         },{
            "scaleX":2.1,
            "scaleY":2.25
         },0.5,§&"H§.§!!;§),§&"H§.§6!§.§6C§(this.§-!L§,{
            "scaleX":2.25,
            "scaleY":2.1
         },{
            "scaleX":1.75,
            "scaleY":1.9
         },0.5,§&"H§.§;a§),§&"H§.§6!§.§6C§(this.§-!L§,{
            "scaleX":1.9,
            "scaleY":1.75
         },{
            "scaleX":2.25,
            "scaleY":2.1
         },0.5,§&"H§.§!!;§));
         this.§"c§.§"$ § = false;
      }
      
      private function §,! §(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(this.§?"&§)
         {
            if(this.§2=§ > 0)
            {
               this.§2=§ -= param1;
               _loc2_ = getBody().GetLinearVelocity().x;
               _loc3_ = getBody().GetLinearVelocity().y;
               _loc4_ = 10;
               if(this.§]!@§() < _loc4_)
               {
                  getBody().SetAwake(true);
                  §=#D§.ApplyForce(new b2Vec2(this.§0#N§ * getBody().GetMass(),-getBody().GetWorld().GetGravity().y * getBody().GetMass() * this.§'V§),§=#D§.GetWorldCenter());
               }
            }
            else
            {
               this.§2=§ = 0;
               this.§0#N§ = 0;
               this.§'V§ = 0;
               this.§?"&§ = false;
               this.§%!?§(getBody().GetPosition().x,getBody().GetPosition().y,6);
               §!"p§.§%!R§("pumpkin_collision_04");
               if(this is §?$%§)
               {
                  this.§=s§ = 0;
               }
               else if(levelItem.bubbleDamage > 0)
               {
                  this.applyDamage(levelItem.bubbleDamage,null,null,false);
               }
               else
               {
                  this.applyDamage(§8#J§,null,null,false);
               }
            }
            if(!this.§?$#§)
            {
               this.§"c§.play();
               sprite.addChildAt(this.§-!L§,sprite.numChildren);
               this.§?$#§ = true;
            }
            if(§3#U§.isPaused)
            {
               if(!this.§=#^§)
               {
                  if(this.§"c§)
                  {
                     this.§"c§.pause();
                  }
                  this.§=#^§ = true;
               }
            }
            else if(this.§=#^§)
            {
               if(this.§"c§)
               {
                  this.§"c§.play();
               }
               this.§=#^§ = false;
            }
         }
         else if(this.§?$#§)
         {
            if(this.§"c§)
            {
               this.§"c§.stop();
               this.§"c§ = null;
            }
            sprite.removeChild(this.§-!L§);
            this.§?$#§ = false;
         }
      }
      
      protected function §%!?§(param1:Number, param2:Number, param3:int) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            _loc5_ = 1 + Math.random() * 6;
            §3#U§.§#$4§.particles.addSimpleParticle("BUBBLE_POP" + _loc5_,§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,400 + Math.random() * 200,"",§@>§.getParticleMaterialFromEngineMaterial("BIRD_RED"),Math.random() * 20 - 10,Math.random() * 20 - 10,5,Math.random() * 200);
            _loc4_++;
         }
      }
   }
}
