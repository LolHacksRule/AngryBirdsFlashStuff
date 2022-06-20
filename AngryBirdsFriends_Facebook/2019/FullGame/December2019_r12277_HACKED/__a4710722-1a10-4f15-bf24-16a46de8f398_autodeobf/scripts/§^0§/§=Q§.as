package §^0§
{
   import § "v§.§+o§;
   import § "v§.§4$4§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!"§.§@#E§;
   import §+!n§.§+!p§;
   import §-!j§.§&!@§;
   import §-!j§.§,#V§;
   import §-!j§.§-"8§;
   import §-!j§.§5!,§;
   import §0#I§.§+#P§;
   import §0#I§.§-!6§;
   import §0#I§.§3s§;
   import §1#F§.b2Settings;
   import §3#h§.b2Body;
   import §3#h§.b2BodyDef;
   import §3#h§.b2FilterData;
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§&$0§;
   import §?$#§.§-V§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   import §@"v§.§^"B§;
   import flash.geom.Point;
   
   public class §=Q§ extends §3Q§ implements §1!J§, §+#P§
   {
      
      public static const §-!g§:Number = -1;
      
      public static const §6"c§:Number = 20;
      
      public static const §"!h§:Number = 100;
      
      public static const §`"q§:String = "creation";
      
      public static const §6!t§:String = "normal";
      
      public static const §%x§:String = "blink";
      
      public static const §7"Y§:String = "yell";
      
      public static const §9"H§:String = "slipping";
      
      private static const §!"6§:Array = [§%x§,§7"Y§,§9"H§];
      
      public static const §6"b§:Number = 1000;
      
      public static const §5r§:Number = 500;
      
      protected static const §6?§:int = 1000;
      
      public static const §8!Z§:uint = 3000;
      
      public static const §?M§:uint = 1 << 1;
      
      public static const §,!u§:uint = 1 << 2;
      
      public static const §@?§:uint = 1 << 3;
      
      public static const §0!=§:uint = 1 << 4;
      
      public static const §;D§:uint = 1 << 5;
      
      public static const §%#L§:uint = 1 << 6;
      
      private static const §!#;§:int = 200;
      
      public static var §,"o§:int = 4;
      
      public static var §=#B§:int = 12;
      
      private static const §`!9§:int = 1;
       
      
      protected var §1"o§:Number = -1.0;
      
      protected var §[!g§:Number = -1.0;
      
      private var §8#z§:Boolean = false;
      
      protected var §="c§:int = 0;
      
      private var §^#V§:Number = 0;
      
      private var §2"R§:int;
      
      private var §=v§:int;
      
      private var §7#_§:b2Vec2;
      
      private var §#"w§:b2Vec2;
      
      private var §=M§:Number;
      
      private var §2",§:Number;
      
      private var §3!k§:Number;
      
      private var §]#X§:Boolean;
      
      private var §9#w§:Boolean = false;
      
      protected var § if§:Object;
      
      protected var § "s§:Object;
      
      protected var §;"z§:Boolean;
      
      private var § !K§:Boolean = false;
      
      protected var §-"p§:§ "Q§;
      
      private var §&"J§:§,`§;
      
      private var §6#q§:Number = 1.0;
      
      private var §<$$§:Boolean = true;
      
      private var §0^§:Boolean = false;
      
      private var mId:int = 0;
      
      protected var § #c§:Number = -1.0;
      
      private var §,#?§:Boolean = false;
      
      private var §=#4§:Boolean = false;
      
      protected var §#!§:String = "";
      
      protected var §#`§:int = 1;
      
      private var §9E§:Boolean;
      
      private var §3"j§:§-!6§;
      
      private var §7$B§:Vector.<String>;
      
      private var §,#P§:Boolean;
      
      private var §5#r§:int = 0;
      
      private var §-";§:int;
      
      protected var §[!c§:Object;
      
      private var §1"6§:String = "Effect_Block_Destruction_Core";
      
      private var §8!e§:§@#E§;
      
      protected var §"!B§:int = 0;
      
      protected var §<#?§:Boolean = false;
      
      protected var §""i§:Array;
      
      protected var §4"'§:int;
      
      private var §?#k§:Boolean = false;
      
      private var §1#A§:Number = 0;
      
      private var §6"O§:Boolean;
      
      private var §,!`§:Boolean = false;
      
      private var §'#r§:Boolean = false;
      
      private var §1e§:Number = 0;
      
      private var §<#$§:Number;
      
      private var §9"N§:Number;
      
      private var §5#S§:DisplayObject;
      
      private var §%#d§:§@#5§;
      
      private var §0#s§:Boolean = false;
      
      public function §=Q§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         this.§#"w§ = new b2Vec2();
         this.§7$B§ = new Vector.<String>();
         super(param1,param3,param4,param5);
         this.§9E§ = false;
         this.§&"J§ = param2;
         this.§6#q§ = param6;
         this.§=v§ = §8!'§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§-"p§ = this.initObjectRenderer();
         this.§-"p§.§%#[§ = this;
         this.§-"p§.§+#b§(§8!'§.shape is §,#V§);
         this.§,#P§ = false;
         this.createPhysicsBody(§7b§.x,§7b§.y);
         §<!x§ = param5.§<!x§;
         this.§3!k§ = §8!'§.getItemDefence();
         if(§8!'§.maxStrength > 0)
         {
            this.initializeHealth(§8!'§.maxStrength);
         }
         else
         {
            this.initializeHealth(Math.round(this.§%$$§(true) * §8!'§.getItemStrength()));
         }
         if(§8!'§.itemType == §-"8§.§>"5§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§%"C§(param5.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = §8!'§.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.§-"p§.§4"Z§(§8!'§.shape);
         this.§^#V§ = §8!Z§;
         this.§[!c§ = new Object();
         this.§4"'§ = §,"o§;
         this.§6"O§ = false;
      }
      
      public function get health() : Number
      {
         return this.§=M§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§=M§ = param1;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§]#X§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         this.§]#X§ = param1;
      }
      
      public function get §!"B§() : Boolean
      {
         return this.§9#w§;
      }
      
      public function set §!"B§(param1:Boolean) : void
      {
         this.§9#w§ = param1;
      }
      
      public function get §,D§() : Number
      {
         return this.§2",§;
      }
      
      public function set §,D§(param1:Number) : void
      {
         this.§2",§ = param1;
      }
      
      public function get itemName() : String
      {
         if(§8!'§)
         {
            return §8!'§.itemName;
         }
         return "";
      }
      
      public function get animation() : §,`§
      {
         return this.§&"J§;
      }
      
      public function get x() : Number
      {
         return §0k§;
      }
      
      public function get y() : Number
      {
         return §@_§;
      }
      
      public function get scale() : Number
      {
         return this.§6#q§;
      }
      
      public function get id() : int
      {
         return this.mId;
      }
      
      public function get §>"W§() : Boolean
      {
         return this.§3!k§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§3!k§;
      }
      
      public function get §#!4§() : Boolean
      {
         return this.§<$$§;
      }
      
      public function set §#!4§(param1:Boolean) : void
      {
         this.§<$$§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§ #c§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return §7b§.hasSpecialBehavior;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §`"Q§() : Boolean
      {
         return this.§,#?§;
      }
      
      public function set §`"Q§(param1:Boolean) : void
      {
         this.§,#?§ = param1;
      }
      
      public function get §@"<§() : Boolean
      {
         return this.§ !K§;
      }
      
      public function set §@"<§(param1:Boolean) : void
      {
         this.§ !K§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §2#+§() : § "Q§
      {
         return this.§-"p§;
      }
      
      public function §8"Y§(param1:b2Vec2) : void
      {
         §7b§.linearForce = param1;
      }
      
      public function §>w§() : b2Vec2
      {
         return §7b§.linearForce;
      }
      
      public function applyLinearForce() : void
      {
         if(§7b§.linearForce)
         {
            §%#b§.ApplyForce(new b2Vec2(§7b§.linearForce.x * §%#b§.GetMass(),§7b§.linearForce.y * §%#b§.GetMass()),§%#b§.GetWorldCenter());
         }
      }
      
      public final function §3!8§(param1:int) : void
      {
         if(!this.§0^§)
         {
            this.§0^§ = true;
            this.mId = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      public function §9!W§() : void
      {
         var _loc1_:Number = §8!'§.maxStrength - §0"^§.health;
         this.applyDamage(_loc1_,null,null,false);
         getBody().SetAngularDamping(§0"^§.angularDamping);
         getBody().SetLinearDamping(§0"^§.linearDamping);
         getBody().SetAngularVelocity(§0"^§.angularVelocity);
         if(§0"^§.linearForce != null)
         {
            this.§8"Y§(§0"^§.linearForce);
         }
         getBody().SetAwake(true);
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§2",§ = param1;
         this.§=M§ = param1;
      }
      
      protected function §;!`§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§=M§ += param1;
         }
      }
      
      public function §^!2§(param1:b2Body) : void
      {
         if(mWorld && §%#b§)
         {
            mWorld.DestroyBody(§%#b§);
         }
         §%#b§ = param1;
         §%#b§.SetUserData(this);
         §?#B§ = this.createFixture();
         var _loc2_:b2FilterData = this.createFilterData();
         if(!§8!'§.isColliding)
         {
            _loc2_.§@>§ = 0;
         }
         this.§,z§(_loc2_);
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §%#b§ = mWorld.CreateBody(_loc3_);
         §%#b§.SetUserData(this);
         §?#B§ = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§8!'§.isColliding)
         {
            _loc4_.§@>§ = 0;
         }
         this.§,z§(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §%#b§.CreateFixture2(§8!'§.shape.getB2Shape(this.§6#q§),§8!'§.getItemDensity());
         _loc1_.SetFriction(§8!'§.getItemFriction());
         _loc1_.SetRestitution(§8!'§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : § "Q§
      {
         return new § "Q§(this.animation,sprite);
      }
      
      public function §,z§(param1:b2FilterData) : void
      {
         if(§?#B§)
         {
            §?#B§.SetFilterData(param1);
         }
      }
      
      public function §@5§() : b2FilterData
      {
         if(§?#B§)
         {
            return §?#B§.GetFilterData();
         }
         return null;
      }
      
      public function §1"i§(param1:§-"8§) : void
      {
         §8!'§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §8!'§.getItemBodyType();
         _loc3_.§]#R§ = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.§#s§ = false;
         return _loc3_;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         this.§;#W§();
         this.§-"p§.dispose();
         this.§7#_§ = null;
         §8!'§ = null;
         if(this.§%#d§)
         {
            this.§%#d§.stop();
            this.§%#d§ = null;
         }
      }
      
      public function §%"C§(param1:Number) : void
      {
         getBody().SetAngle(param1);
      }
      
      public function §<!C§() : Number
      {
         return getBody().GetAngle();
      }
      
      public function §+!!§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1 || param1.x == 0 && param1.y == 0)
         {
            return;
         }
         getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§0#r§();
         }
         if(param3)
         {
            this.§>"<§();
         }
      }
      
      public function §;"c§(param1:b2Vec2) : void
      {
         this.§7#_§ = param1;
      }
      
      private function §6#4§() : void
      {
         if(this.§7#_§)
         {
            this.§+!!§(this.§7#_§,false);
            this.§7#_§ = null;
         }
      }
      
      protected function §3o§() : void
      {
         if(§%#b§)
         {
            this.§#"w§.SetV(§%#b§.GetLinearVelocity());
         }
      }
      
      public function §%!8§() : b2Vec2
      {
         return this.§#"w§;
      }
      
      public function §0#r§(param1:b2Vec2 = null) : void
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
      
      public function §>"<§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§%"C§(_loc2_);
      }
      
      public function §^l§(param1:Number) : void
      {
         getBody().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§#$8§)
         {
            this.§1"o§ -= param1;
         }
         if(this.§-#8§)
         {
            this.§[!g§ -= param1;
         }
         if(this.§&#"§)
         {
            this.§="c§ -= param1;
            this.§'!B§();
         }
         if(this.§+#q§)
         {
            this.§1! §();
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
         this.§-"p§.update(param1);
         sprite.x = §0k§;
         sprite.y = §@_§;
         sprite.rotation = §^I§;
         if(backgroundSprite)
         {
            backgroundSprite.x = §0k§;
            backgroundSprite.y = §@_§;
            backgroundSprite.rotation = §^I§;
         }
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         this.§6#4§();
         super.update(param1,param2);
         if(this.§ #c§ >= 0)
         {
            this.§ #c§ += param1;
         }
         this.§3o§();
         this.applyLinearForce();
         if(this.§^#V§ > 0)
         {
            this.§^#V§ -= param1;
         }
         else
         {
            this.§-O§();
         }
         if(this.§-";§ > 0)
         {
            this.§-";§ -= param1;
         }
         this.addTrail(param2);
         this.§6!x§(param1);
         if(§8!'§.spawnParticlesDefinition && §8!'§.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.§1#A§ = Math.min(§8!'§.spawnParticlesDefinition.frequencyInSeconds * 5,this.§1#A§ + param1);
            while(this.§1#A§ >= §8!'§.spawnParticlesDefinition.frequencyInSeconds)
            {
               this.§1#A§ -= §8!'§.spawnParticlesDefinition.frequencyInSeconds;
               this.§2##§(§8!'§.spawnParticlesDefinition.particleName);
            }
         }
      }
      
      public function updateOutOfBounds(param1:§>"T§) : void
      {
         this.§=#4§ = true;
      }
      
      public function updateBeforeRemoving(param1:§>"T§, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(!this.§=#4§)
         {
            this.addDestructionParticles(param1);
         }
         if(this.§=M§ > 0)
         {
            this.playDestroyedSound();
            if(this.isDamageAwardingScore() && param2)
            {
               _loc3_ = this.§=M§;
               _loc4_ = 0;
               _loc5_ = 0;
               if(§8!'§.maxStrength > 0)
               {
                  _loc6_ = Math.floor(§8!'§.damageScore * ((§8!'§.maxStrength - _loc3_) / §8!'§.maxStrength));
                  _loc5_ = Math.floor(§8!'§.damageScore * ((§8!'§.maxStrength - _loc4_) / §8!'§.maxStrength)) - _loc6_;
               }
               if(_loc5_ > 0)
               {
                  param1.addScore(_loc5_,§-V§.§5"§,true,getBody().GetPosition().x,getBody().GetPosition().y,§`#I§.§`#i§(this.itemName),§8!'§.floatingScoreFont);
               }
            }
         }
         this.explodeBeforeRemoving(param1);
         this.spawnBlock(param1);
      }
      
      protected function explodeBeforeRemoving(param1:§>"T§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(§8!'§.specialty == "BOMB")
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            if(param1)
            {
               param1.§]#i§(_loc2_,_loc3_,§8!'§.explosionRadius,§8!'§.explosionForce,§8!'§.explosionDamageRadius,§8!'§.explosionDamage);
            }
         }
      }
      
      protected function spawnBlock(param1:§>"T§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:b2Vec2 = null;
         var _loc9_:§=Q§ = null;
         var _loc10_:String = null;
         var _loc11_:§+o§ = null;
         var _loc12_:String = null;
         var _loc13_:§&!@§ = null;
         if(§8!'§.spawnBlockDefinition)
         {
            _loc2_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < §8!'§.spawnBlockDefinition.spawnCount)
            {
               _loc4_ = _loc3_ / §8!'§.spawnBlockDefinition.spawnCount * Math.PI;
               _loc5_ = Math.cos(-_loc4_);
               _loc6_ = Math.sin(-_loc4_);
               _loc7_ = §8!'§.spawnBlockDefinition.spawnMinSpeed + (§8!'§.spawnBlockDefinition.spawnMaxSpeed - §8!'§.spawnBlockDefinition.spawnMinSpeed) * Math.random();
               _loc8_ = getBody().GetPosition();
               (_loc9_ = param1.addObject(§8!'§.spawnBlockDefinition.spawnDefinition,_loc8_.x + _loc5_ * §8!'§.spawnBlockDefinition.spawnDistance,_loc8_.y + _loc6_ * §8!'§.spawnBlockDefinition.spawnDistance,0,§%"^§.ID_NEXT_FREE,false,false,false,1,false,true) as §=Q§).§+!!§(new b2Vec2(_loc5_ * _loc7_,_loc6_ * _loc7_));
               _loc9_.§^l§(§8!'§.spawnBlockDefinition.spawnMaxAngularSpeed * (Math.random() * 2 - 1));
               for each(_loc10_ in §8!'§.spawnBlockDefinition.spawnAudios)
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
                  _loc12_ = §4$4§.§6!H§;
                  if(§8!'§.soundResource)
                  {
                     _loc11_ = §4$4§.§'"j§(_loc10_,§8!'§.soundResource.channelName);
                     _loc12_ = §8!'§.soundResource.channelName;
                  }
                  else
                  {
                     _loc11_ = §4$4§.§'"j§(_loc10_);
                  }
                  if(!_loc11_)
                  {
                     if(_loc13_ = §+!p§.§`?§.levelItemManager.getSoundResource(_loc10_))
                     {
                        §4$4§.playSound(_loc13_.§@$E§(),_loc12_);
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
      
      public function §[#o§() : Boolean
      {
         return this.§=v§ == §-"8§.§8$9§;
      }
      
      public function § "0§() : String
      {
         return §8!'§.textureType;
      }
      
      public function §0#o§() : Boolean
      {
         return this.§=v§ == §-"8§.§>"5§;
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
         if(this.§@"<§)
         {
            return false;
         }
         return §8!'§.isDamageAwardingScore();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §,$<§() : Number
      {
         return Number(Math.sqrt(getBody().GetLinearVelocity().x * getBody().GetLinearVelocity().x + getBody().GetLinearVelocity().y * getBody().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§ #c§ = 0;
         if(§<!x§ == §`"p§.§##+§)
         {
            §<!x§ = §`"p§.DEFAULT;
         }
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      public function §&"?§() : void
      {
         if(!§8!'§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8!'§.soundResource.getLaunchSound();
         if(_loc1_)
         {
            §4$4§.playSound(_loc1_,§8!'§.soundResource.channelName);
         }
      }
      
      public function §9$ §() : void
      {
         if(!§8!'§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8!'§.soundResource.getSpecialSound();
         if(_loc1_)
         {
            §4$4§.playSound(_loc1_,§8!'§.soundResource.channelName);
         }
      }
      
      public function playDestroyedSound() : void
      {
         if(!§8!'§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8!'§.soundResource.getDestroyedSound();
         if(_loc1_)
         {
            §4$4§.playSound(_loc1_,§8!'§.soundResource.channelName);
         }
      }
      
      protected function playCollisionSound() : void
      {
         if(!§8!'§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8!'§.soundResource.getCollisionSound();
         if(_loc1_)
         {
            §4$4§.playSound(_loc1_,§8!'§.soundResource.channelName);
         }
      }
      
      protected function playDamagedSound() : void
      {
         if(!§8!'§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8!'§.soundResource.getDamagedSound();
         if(_loc1_)
         {
            §4$4§.playSound(_loc1_,§8!'§.soundResource.channelName);
         }
      }
      
      public function §1! §() : void
      {
         if(!§8!'§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8!'§.soundResource.getRollingSound();
         if(_loc1_)
         {
            if(!§4$4§.§1!F§(_loc1_,§8!'§.soundResource.channelName))
            {
               §4$4§.playSound(_loc1_,§8!'§.soundResource.channelName);
            }
         }
      }
      
      public function §="K§() : void
      {
         if(!§8!'§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8!'§.soundResource.getIdleSounds();
         if(_loc1_)
         {
            §4$4§.playSound(_loc1_,§8!'§.soundResource.channelName);
         }
      }
      
      public function §'!B§() : void
      {
         if(!§8!'§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8!'§.soundResource.getSlippingSound();
         if(_loc1_)
         {
            §4$4§.playSound(_loc1_,§8!'§.soundResource.channelName);
         }
      }
      
      public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(this.§ #c§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         this.§4$"§(param1,param2);
         if(!param5)
         {
            if(this.§3!k§ < 0)
            {
               if(param1 > 10)
               {
                  this.playDamagedSound();
               }
               else if(param1 > 3)
               {
                  this.playCollisionSound();
               }
               return this.§=M§;
            }
            if(param1 <= this.§3!k§)
            {
               if(param1 > 10)
               {
                  this.playDamagedSound();
               }
               else if(param1 > 3)
               {
                  this.playCollisionSound();
               }
               return this.§=M§;
            }
            param1 -= this.§3!k§;
         }
         var _loc6_:Number = this.§=M§;
         var _loc7_:Number = Math.min(param1,_loc6_);
         var _loc8_:Number = _loc6_ - _loc7_;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc9_ = 0;
            if(§8!'§.maxStrength > 0)
            {
               _loc10_ = Math.floor(§8!'§.damageScore * ((§8!'§.maxStrength - _loc6_) / §8!'§.maxStrength));
               _loc9_ = Math.floor(§8!'§.damageScore * ((§8!'§.maxStrength - _loc8_) / §8!'§.maxStrength)) - _loc10_;
            }
            if(_loc9_ > 0)
            {
               param2.addScore(_loc9_,§-V§.§5"§,this.§=M§ > param1,getBody().GetPosition().x,getBody().GetPosition().y,§`#I§.§`#i§(this.itemName),§8!'§.floatingScoreFont);
            }
         }
         this.§=M§ = _loc8_;
         if(this.§=M§ <= 0)
         {
            this.§=M§ = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.playDamagedSound();
         }
         if(this.setDamageState(1 - this.health / this.§,D§,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§=M§;
      }
      
      protected function setDamageState(param1:Number, param2:§>"T§) : Boolean
      {
         return this.§-"p§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §7p§(param1:String) : Number
      {
         if(this.§ if§)
         {
            if(this.§ if§.hasOwnProperty(param1))
            {
               return this.§ if§[param1];
            }
         }
         return §8!'§.getDamageMultiplier(param1);
      }
      
      public function §9!`§(param1:String) : Number
      {
         if(this.§ "s§)
         {
            if(this.§ "s§.hasOwnProperty(param1))
            {
               return this.§ "s§[param1];
            }
         }
         return §8!'§.getVelocityMultiplier(param1);
      }
      
      public function §!#'§() : String
      {
         return §8!'§.materialName;
      }
      
      public function §??§() : Number
      {
         return §8!'§.getItemStrength();
      }
      
      public function §%!^§() : Boolean
      {
         return getBody().IsAwake() && (this is §[# § && this.§=M§ == this.§2",§ || Math.abs(getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function § A§() : Boolean
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
      
      public function §>"[§(param1:Object) : void
      {
         this.§ if§ = param1;
      }
      
      public function §&! §(param1:Object) : void
      {
         this.§ "s§ = param1;
      }
      
      public function §<#u§(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§;"z§ = param1;
         if(param1 && shape is §,#V§)
         {
            _loc2_ = (shape as §,#V§).radius;
            _loc3_ = _loc2_ * this.scale;
            _loc5_ = Number(this.§=#W§() * Math.PI * _loc2_ * _loc2_) / (Math.PI * _loc3_ * _loc3_);
            this.§"#i§(_loc5_);
         }
      }
      
      public function §%$$§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§8!'§.getItemBodyType() == §5!,§.BODY_TYPE_STATIC)
         {
            _loc2_ = this.§-"p§.width * this.§-"p§.height * (§<d§.§6@§ * §<d§.§6@§);
         }
         else
         {
            _loc2_ = getBody().GetMass() / §?#B§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§5#B§();
            }
            _loc2_ /= this.§6#q§ * this.§6#q§;
         }
         return _loc2_;
      }
      
      public function §5#B§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§-"p§.§#$6§ - 1) / 10);
      }
      
      public function §1"v§(param1:Number) : void
      {
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         var _loc3_:Number = getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§>"T§) : Boolean
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
         var _loc2_:Number = this.x * §<d§.§6@§;
         var _loc3_:Number = this.y * §<d§.§6@§;
         if(this.§?#k§)
         {
            param1.addParticle(§`#I§.§1J§,§2#Z§.§,!]§,§`#I§.§%"D§,_loc2_,_loc3_,-1,"",§`#I§.§!!6§);
            this.§"!B§ = 0;
            this.§?#k§ = false;
         }
         else
         {
            _loc4_ = §`#I§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§"!B§ == 1)
            {
               _loc4_ = §`#I§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§"!B§ == 2)
            {
               _loc4_ = §`#I§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§"!B§ = (this.§"!B§ + 1) % 3;
            param1.addParticle(_loc4_,§2#Z§.§,!]§,§`#I§.§%"D§,_loc2_,_loc3_,-1,"",§`#I§.§!!6§);
         }
         this.addTrailParticles(_loc2_,_loc3_);
         return true;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return this.§<#?§;
      }
      
      public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§<#?§ = param1;
      }
      
      public function §]!b§() : void
      {
         this.§?#k§ = true;
      }
      
      public function §#!r§() : Boolean
      {
         return this.§?#k§;
      }
      
      protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!this.§""i§)
         {
            return;
         }
         var _loc3_:int = Math.random() * this.§4"'§;
         var _loc4_:Number = 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * (Math.PI * 2);
            _loc7_ = 0.5 * §=#B§ + §=#B§ * (Math.random() * 0.5);
            _loc8_ = 0;
            if(this.§""i§.length > 1)
            {
               _loc8_ = Math.random() * this.§""i§.length;
            }
            if(this.§""i§[_loc8_] == "POWERUP_POWERPOTION_TRAIL")
            {
               _loc4_ = 0.2 + Math.random() * 0.2;
            }
            §+!p§.§`?§.particles.addSimpleParticle(this.§""i§[_loc8_],§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§`#I§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
            _loc5_++;
         }
      }
      
      public function §]#=§(param1:String) : void
      {
         if(!this.§""i§)
         {
            this.§""i§ = [];
         }
         this.§""i§.push(param1);
      }
      
      public function §%"x§(param1:int) : void
      {
         this.§4"'§ = param1;
      }
      
      protected function addDestructionParticles(param1:§>"T§) : void
      {
      }
      
      public function addDamageParticles(param1:§>"T§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§###§)
         {
            case §`"p§.§`!L§:
               §%#b§.SetLinearDamping(§&$0§.§?m§);
               §%#b§.SetAngularDamping(§&$0§.§=! §);
               §%#b§.SetGravityScale(0);
               break;
            case §`"p§.§`t§:
               §%#b§.SetLinearDamping(§&$0§.§[#>§);
               §%#b§.SetAngularDamping(§&$0§.§8T§);
               §%#b§.SetGravityScale(0);
               break;
            case §`"p§.§'$0§:
               break;
            case §`"p§.§6$6§:
            case §`"p§.§##+§:
               §%#b§.SetGravityScale(0);
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §32§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         getBody().SetPosition(_loc4_);
      }
      
      public function §=!]§(param1:String, param2:String, param3:§>"T§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §<!x§ = -1;
         }
      }
      
      public function get §-#8§() : Boolean
      {
         return this.§[!g§ >= 0;
      }
      
      public function get §#$8§() : Boolean
      {
         return this.§1"o§ >= 0;
      }
      
      public function get §%#$§() : Boolean
      {
         return this.§8#z§;
      }
      
      public function get §&#"§() : Boolean
      {
         return this.§="c§ > 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§-#8§ && !this.§#$8§ && !this.§&#"§ && !this.§%#$§ && !this.§+#q§;
      }
      
      protected function §-O§() : void
      {
         var _loc1_:int = 0;
         if(!this.§-"p§.§5!D§(§9"H§))
         {
            return;
         }
         if(!this.§&#"§)
         {
            _loc1_ = this.§2!2§();
            if(_loc1_ != 0)
            {
               this.§-"p§.setAnimation(§9"H§,false);
               this.§-"p§.§?#w§(_loc1_ == 1);
               this.§="c§ = §6?§;
               this.§[!g§ = -1;
               this.§1"o§ = -1;
               this.§8#z§ = false;
            }
         }
      }
      
      public function scream() : void
      {
         if(!this.§&#"§ && !this.§%#$§)
         {
            this.§1"o§ = §6"b§;
            this.§[!g§ = -1;
            this.§-"p§.setAnimation(§7"Y§,false);
            this.playScreamSound();
         }
      }
      
      protected function playScreamSound() : void
      {
         if(!§8!'§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8!'§.soundResource.getScreamSound();
         if(_loc1_)
         {
            §4$4§.playSound(_loc1_,§8!'§.soundResource.channelName);
         }
      }
      
      public function playFearSound() : §+o§
      {
         return null;
      }
      
      public function blink() : void
      {
         if(!this.§&#"§ && !this.§%#$§)
         {
            this.§[!g§ = §5r§;
            this.§1"o§ = -1;
            this.§-"p§.setAnimation(§%x§,false);
         }
      }
      
      protected function normalize() : void
      {
         var _loc1_:String = §6!t§;
         if(!this.§9E§)
         {
            if(this.§-"p§.§5!D§(this.§-"p§.§=#Y§()))
            {
               _loc1_ = this.§-"p§.§=#Y§();
               this.§-"p§.setAnimation(_loc1_,false);
               this.§8#z§ = true;
            }
            else if(this.§-"p§.§5!D§(§`"q§))
            {
               _loc1_ = §`"q§;
               this.§-"p§.setAnimation(_loc1_,false);
               this.§8#z§ = true;
            }
            this.§9E§ = true;
         }
         else
         {
            this.§-"p§.setAnimation(_loc1_);
         }
      }
      
      public function §#4§(param1:String) : §+o§
      {
         var _loc2_:§,`§ = null;
         if(this.animation)
         {
            _loc2_ = this.animation.getSubAnimation(param1);
            if(_loc2_ && _loc2_.soundName)
            {
               return §4$4§.§'"j§(_loc2_.soundName,_loc2_.soundChannel);
            }
         }
         return null;
      }
      
      public function §#!W§() : Boolean
      {
         if(this.animation)
         {
            return this.animation.hasAnySubAnimations(§!"6§);
         }
         return false;
      }
      
      public function §8u§(param1:String, param2:int, param3:int) : void
      {
         if(param1 == §`"q§ || param1 == this.§-"p§.§=#Y§())
         {
            this.§8#z§ = false;
            this.normalize();
         }
      }
      
      public function playSound(param1:String) : void
      {
      }
      
      public function §#">§(param1:§-!6§, param2:§^"B§) : void
      {
         this.§3"j§ = param1;
         this.§7$B§.push(param2.event);
         param1.§^"7§(this,param2.event);
      }
      
      private function §;#W§() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7$B§.length)
         {
            _loc2_ = this.§7$B§[_loc1_];
            this.§3"j§.§6#G§(this,_loc2_);
            _loc1_++;
         }
      }
      
      public function §=$7§(param1:§3s§) : void
      {
      }
      
      public function §=#s§(param1:Boolean) : void
      {
         this.§,#P§ = param1;
         sprite.visible = !param1;
      }
      
      public function get §8<§() : Boolean
      {
         return this.§,#P§;
      }
      
      protected function §2!2§() : int
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
      
      protected function §]!$§() : int
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
      
      override public function collidedWith(param1:§4!t§) : void
      {
         if(this.§5#r§ == 0)
         {
            this.§-";§ = §!#;§;
         }
         ++this.§5#r§;
      }
      
      override public function collisionEnded(param1:§4!t§) : void
      {
         --this.§5#r§;
         if(this.§5#r§ <= 0)
         {
            this.§5#r§ = 0;
            this.§-";§ = 0;
         }
      }
      
      public function get §+#q§() : Boolean
      {
         return this.§5#r§ > 0 && this.§-";§ <= 0 && this.§2!2§() != 0 && §8!'§.shape is §,#V§;
      }
      
      public function §7!;§(param1:String) : Object
      {
         return this.§[!c§[param1];
      }
      
      public function §5$3§(param1:String, param2:Object) : void
      {
         this.§[!c§[param1] = param2;
      }
      
      public function get §##M§() : String
      {
         return this.§1"6§;
      }
      
      public function set §##M§(param1:String) : void
      {
         this.§1"6§ = param1;
      }
      
      public function §["@§(param1:Number) : void
      {
         §?#B§.SetRestitution(param1);
      }
      
      public function §1!;§() : Number
      {
         return §?#B§.GetRestitution();
      }
      
      public function §"#i§(param1:Number) : void
      {
         §?#B§.SetDensity(param1);
      }
      
      public function §=#W§() : Number
      {
         return §?#B§.GetDensity();
      }
      
      public function §]!L§(param1:Number) : void
      {
         §?#B§.SetFriction(param1);
      }
      
      public function §^#^§() : Number
      {
         return §?#B§.GetFriction();
      }
      
      public function §5#W§(param1:§@#E§) : void
      {
         this.§8!e§ = param1;
      }
      
      public function §]!Q§() : §@#E§
      {
         return this.§8!e§;
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
      
      public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         return false;
      }
      
      protected function §4$"§(param1:Number, param2:§>"T§) : void
      {
         if(this.§8!e§)
         {
            this.§8!e§.§5M§(param1,getBody().GetMass(),param2,getBody().GetPosition().x + this.§-"p§.width * 0.5 * §<d§.§6@§,getBody().GetPosition().y + this.§-"p§.width * 0.5 * §<d§.§6@§,getBody().GetAngle(),getBody().GetLinearVelocity());
         }
      }
      
      protected function handleLevelEndCheck() : void
      {
         if(!this.§6"O§)
         {
            §+!p§.§-#W§.checkForLevelEnd();
            this.§6"O§ = true;
         }
      }
      
      public function get §%"m§() : Boolean
      {
         return this.§,!`§;
      }
      
      public function §7d§(param1:Number, param2:Number, param3:Number) : void
      {
         this.§,!`§ = true;
         this.§1e§ = param1;
         this.§<#$§ = param2;
         this.§9"N§ = param3;
         var _loc4_:§,`§ = §+!p§.§`?§.animationManager.getAnimation("STELLA_BUBBLE");
         this.§5#S§ = _loc4_.getFrame(int(Math.random() * _loc4_.frameCount));
         this.§%#d§ = §5"<§.§3"1§.§]#6§(§5"<§.§3"1§.§3#§(this.§5#S§,{
            "scaleX":2.1,
            "scaleY":2.25
         },{
            "scaleX":1.9,
            "scaleY":1.75
         },0.5,§5"<§.§`#3§),§5"<§.§3"1§.§3#§(this.§5#S§,{
            "scaleX":1.75,
            "scaleY":1.9
         },{
            "scaleX":2.1,
            "scaleY":2.25
         },0.5,§5"<§.§6=§),§5"<§.§3"1§.§3#§(this.§5#S§,{
            "scaleX":2.25,
            "scaleY":2.1
         },{
            "scaleX":1.75,
            "scaleY":1.9
         },0.5,§5"<§.§`#3§),§5"<§.§3"1§.§3#§(this.§5#S§,{
            "scaleX":1.9,
            "scaleY":1.75
         },{
            "scaleX":2.25,
            "scaleY":2.1
         },0.5,§5"<§.§6=§));
         this.§%#d§.§]!3§ = false;
      }
      
      private function §6!x§(param1:Number) : void
      {
         var _loc4_:int = 0;
         if(this.§,!`§)
         {
            if(this.§1e§ > 0)
            {
               this.§1e§ -= param1;
               Number(getBody().GetLinearVelocity().x);
               Number(getBody().GetLinearVelocity().y);
               _loc4_ = 10;
               if(this.§,$<§() < _loc4_)
               {
                  getBody().SetAwake(true);
                  §%#b§.ApplyForce(new b2Vec2(this.§<#$§ * getBody().GetMass(),-getBody().GetWorld().GetGravity().y * getBody().GetMass() * this.§9"N§),§%#b§.GetWorldCenter());
               }
            }
            else
            {
               this.§1e§ = 0;
               this.§<#$§ = 0;
               this.§9"N§ = 0;
               this.§,!`§ = false;
               this.§]_§(getBody().GetPosition().x,getBody().GetPosition().y,6);
               §4$4§.§'"j§("pumpkin_collision_04");
               if(this is §[# §)
               {
                  this.§=M§ = 0;
               }
               else if(levelItem.bubbleDamage > 0)
               {
                  this.applyDamage(levelItem.bubbleDamage,null,null,false,true);
               }
               else
               {
                  this.applyDamage(§`!9§,null,null,false,true);
               }
            }
            if(!this.§'#r§)
            {
               this.§%#d§.play();
               sprite.addChildAt(this.§5#S§,sprite.numChildren);
               this.§'#r§ = true;
            }
            if(§+!p§.isPaused)
            {
               if(!this.§0#s§)
               {
                  if(this.§%#d§)
                  {
                     this.§%#d§.pause();
                  }
                  this.§0#s§ = true;
               }
            }
            else if(this.§0#s§)
            {
               if(this.§%#d§)
               {
                  this.§%#d§.play();
               }
               this.§0#s§ = false;
            }
         }
         else if(this.§'#r§)
         {
            if(this.§%#d§)
            {
               this.§%#d§.stop();
               this.§%#d§ = null;
            }
            sprite.removeChild(this.§5#S§);
            this.§'#r§ = false;
         }
      }
      
      protected function §]_§(param1:Number, param2:Number, param3:int) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            _loc5_ = 1 + Math.random() * 6;
            §+!p§.§`?§.particles.addSimpleParticle("BUBBLE_POP" + _loc5_,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,400 + Math.random() * 200,"",§`#I§.getParticleMaterialFromEngineMaterial("BIRD_RED"),Math.random() * 20 - 10,Math.random() * 20 - 10,5,Math.random() * 200);
            _loc4_++;
         }
      }
      
      protected function §2##§(param1:String) : void
      {
      }
   }
}
