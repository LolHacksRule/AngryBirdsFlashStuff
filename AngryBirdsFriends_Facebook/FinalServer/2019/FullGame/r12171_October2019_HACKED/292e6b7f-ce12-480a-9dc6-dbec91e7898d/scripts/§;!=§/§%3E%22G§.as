package §;!=§
{
   import § !N§.§5"?§;
   import § !N§.§8!U§;
   import §#g§.§%!a§;
   import §#g§.§7#E§;
   import §#g§.§8§;
   import §&$+§.b2Settings;
   import §'#K§.b2Body;
   import §'#K§.b2BodyDef;
   import §'#K§.b2FilterData;
   import §'#K§.b2Fixture;
   import §'#K§.b2World;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §,0§.§0"0§;
   import §,0§.§?h§;
   import §,0§.§`5§;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §3"V§.§9$8§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §8#K§.§+#y§;
   import §8#K§.§8$-§;
   import §8#K§.§=$'§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §;Q§.§3$5§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   
   public class §>"G§ extends §1!V§ implements §^9§, §?h§
   {
      
      public static const §-$"§:Number = -1;
      
      public static const §="[§:Number = 20;
      
      public static const §6l§:Number = 100;
      
      public static const §7!>§:String = "creation";
      
      public static const §+$=§:String = "normal";
      
      public static const §-"e§:String = "blink";
      
      public static const §"9§:String = "yell";
      
      public static const §3!'§:String = "slipping";
      
      private static const §9$>§:Array = [§-"e§,§"9§,§3!'§];
      
      public static const §3"Z§:Number = 1000;
      
      public static const §+J§:Number = 500;
      
      protected static const §1!-§:int = 1000;
      
      public static const §2#'§:uint = 3000;
      
      public static const §+#N§:uint = 1 << 1;
      
      public static const §9!4§:uint = 1 << 2;
      
      public static const §]"M§:uint = 1 << 3;
      
      public static const §<"b§:uint = 1 << 4;
      
      public static const §41§:uint = 1 << 5;
      
      public static const §[!u§:uint = 1 << 6;
      
      private static const §'#+§:int = 200;
      
      public static var §8$,§:int = 4;
      
      public static var §5$#§:int = 12;
      
      private static const §9"R§:int = 1;
       
      
      protected var §4K§:Number = -1.0;
      
      protected var § !W§:Number = -1.0;
      
      private var §&z§:Boolean = false;
      
      protected var §;!s§:int = 0;
      
      private var §9"C§:Number = 0;
      
      private var §""+§:int;
      
      private var §!"q§:int;
      
      private var § N§:b2Vec2;
      
      private var §1"'§:b2Vec2;
      
      private var §6I§:Number;
      
      private var §7#O§:Number;
      
      private var §0#6§:Number;
      
      private var §2!p§:Boolean;
      
      private var §7"2§:Boolean = false;
      
      protected var §9""§:Object;
      
      protected var §^#Q§:Object;
      
      protected var §?"[§:Boolean;
      
      private var §?#a§:Boolean = false;
      
      protected var §]$"§:§1!"§;
      
      private var §#"T§:§7b§;
      
      private var §#!1§:Number = 1.0;
      
      private var §7?§:Boolean = true;
      
      private var §2$7§:Boolean = false;
      
      private var mId:int = 0;
      
      protected var §7"n§:Number = -1.0;
      
      private var §5#r§:Boolean = false;
      
      private var §[![§:Boolean = false;
      
      protected var §?"&§:String = "";
      
      protected var §6$7§:int = 1;
      
      private var §]!4§:Boolean;
      
      private var §9!Q§:§`5§;
      
      private var §-#L§:Vector.<String>;
      
      private var §<#M§:Boolean;
      
      private var §"4§:int = 0;
      
      private var §6"#§:int;
      
      protected var §,!S§:Object;
      
      private var §8!5§:String = "Effect_Block_Destruction_Core";
      
      private var §-d§:§3$5§;
      
      protected var §-"B§:int = 0;
      
      protected var §3#s§:Boolean = false;
      
      protected var §`!a§:Array;
      
      protected var §+#V§:int;
      
      private var §#!K§:Boolean = false;
      
      private var §1!'§:Number = 0;
      
      private var §@$<§:Boolean;
      
      private var §5#8§:Boolean = false;
      
      private var §4"A§:Boolean = false;
      
      private var §"#5§:Number = 0;
      
      private var §1!1§:Number;
      
      private var §+!"§:Number;
      
      private var §""M§:DisplayObject;
      
      private var §`+§:§@$-§;
      
      private var §0";§:Boolean = false;
      
      public function §>"G§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         this.§1"'§ = new b2Vec2();
         this.§-#L§ = new Vector.<String>();
         super(param1,param3,param4,param5);
         this.§]!4§ = false;
         this.§#"T§ = param2;
         this.§#!1§ = param6;
         this.§!"q§ = §]h§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§]$"§ = this.initObjectRenderer();
         this.§]$"§.§1#P§ = this;
         this.§]$"§.§##F§(§]h§.shape is §=$'§);
         this.§<#M§ = false;
         this.createPhysicsBody(§9y§.x,§9y§.y);
         §@#z§ = param5.§@#z§;
         this.§0#6§ = §]h§.getItemDefence();
         if(§]h§.maxStrength > 0)
         {
            this.initializeHealth(§]h§.maxStrength);
         }
         else
         {
            this.initializeHealth(Math.round(this.§>#@§(true) * §]h§.getItemStrength()));
         }
         if(§]h§.itemType == §&2§.§],§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§#"&§(param5.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = §]h§.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.§]$"§.§^"j§(§]h§.shape);
         this.§9"C§ = §2#'§;
         this.§,!S§ = new Object();
         this.§+#V§ = §8$,§;
         this.§@$<§ = false;
      }
      
      public function get health() : Number
      {
         return this.§6I§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§6I§ = param1;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§2!p§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         this.§2!p§ = param1;
      }
      
      public function get §;N§() : Boolean
      {
         return this.§7"2§;
      }
      
      public function set §;N§(param1:Boolean) : void
      {
         this.§7"2§ = param1;
      }
      
      public function get §+#_§() : Number
      {
         return this.§7#O§;
      }
      
      public function set §+#_§(param1:Number) : void
      {
         this.§7#O§ = param1;
      }
      
      public function get itemName() : String
      {
         if(§]h§)
         {
            return §]h§.itemName;
         }
         return "";
      }
      
      public function get animation() : §7b§
      {
         return this.§#"T§;
      }
      
      public function get x() : Number
      {
         return §&$'§;
      }
      
      public function get y() : Number
      {
         return §<#-§;
      }
      
      public function get scale() : Number
      {
         return this.§#!1§;
      }
      
      public function get id() : int
      {
         return this.mId;
      }
      
      public function get §,y§() : Boolean
      {
         return this.§0#6§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§0#6§;
      }
      
      public function get §<$<§() : Boolean
      {
         return this.§7?§;
      }
      
      public function set §<$<§(param1:Boolean) : void
      {
         this.§7?§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§7"n§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return §9y§.hasSpecialBehavior;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §0# §() : Boolean
      {
         return this.§5#r§;
      }
      
      public function set §0# §(param1:Boolean) : void
      {
         this.§5#r§ = param1;
      }
      
      public function get §-##§() : Boolean
      {
         return this.§?#a§;
      }
      
      public function set §-##§(param1:Boolean) : void
      {
         this.§?#a§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §?!V§() : §1!"§
      {
         return this.§]$"§;
      }
      
      public function §@!G§(param1:b2Vec2) : void
      {
         §9y§.linearForce = param1;
      }
      
      public function §=#]§() : b2Vec2
      {
         return §9y§.linearForce;
      }
      
      public function applyLinearForce() : void
      {
         if(§9y§.linearForce)
         {
            §2"j§.ApplyForce(new b2Vec2(§9y§.linearForce.x * §2"j§.GetMass(),§9y§.linearForce.y * §2"j§.GetMass()),§2"j§.GetWorldCenter());
         }
      }
      
      public final function §?$>§(param1:int) : void
      {
         if(!this.§2$7§)
         {
            this.§2$7§ = true;
            this.mId = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      public function §,C§() : void
      {
         var _loc1_:Number = §]h§.maxStrength - §8!E§.health;
         this.applyDamage(_loc1_,null,null,false);
         getBody().SetAngularDamping(§8!E§.angularDamping);
         getBody().SetLinearDamping(§8!E§.linearDamping);
         getBody().SetAngularVelocity(§8!E§.angularVelocity);
         if(§8!E§.linearForce != null)
         {
            this.§@!G§(§8!E§.linearForce);
         }
         getBody().SetAwake(true);
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§7#O§ = param1;
         this.§6I§ = param1;
      }
      
      protected function §>"V§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§6I§ += param1;
         }
      }
      
      public function §5F§(param1:b2Body) : void
      {
         if(mWorld && §2"j§)
         {
            mWorld.DestroyBody(§2"j§);
         }
         §2"j§ = param1;
         §2"j§.SetUserData(this);
         §0>§ = this.createFixture();
         var _loc2_:b2FilterData = this.createFilterData();
         if(!§]h§.isColliding)
         {
            _loc2_.§<L§ = 0;
         }
         this.§`"=§(_loc2_);
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §2"j§ = mWorld.CreateBody(_loc3_);
         §2"j§.SetUserData(this);
         §0>§ = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§]h§.isColliding)
         {
            _loc4_.§<L§ = 0;
         }
         this.§`"=§(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §2"j§.CreateFixture2(§]h§.shape.getB2Shape(this.§#!1§),§]h§.getItemDensity());
         _loc1_.SetFriction(§]h§.getItemFriction());
         _loc1_.SetRestitution(§]h§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §1!"§
      {
         return new §1!"§(this.animation,sprite);
      }
      
      public function §`"=§(param1:b2FilterData) : void
      {
         if(§0>§)
         {
            §0>§.SetFilterData(param1);
         }
      }
      
      public function §]!n§() : b2FilterData
      {
         if(§0>§)
         {
            return §0>§.GetFilterData();
         }
         return null;
      }
      
      public function §2# §(param1:§&2§) : void
      {
         §]h§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §]h§.getItemBodyType();
         _loc3_.§1"&§ = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.§8!1§ = false;
         return _loc3_;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         this.§+!_§();
         this.§]$"§.dispose();
         this.§ N§ = null;
         §]h§ = null;
         if(this.§`+§)
         {
            this.§`+§.stop();
            this.§`+§ = null;
         }
      }
      
      public function §#"&§(param1:Number) : void
      {
         getBody().SetAngle(param1);
      }
      
      public function §3"W§() : Number
      {
         return getBody().GetAngle();
      }
      
      public function §0"y§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1 || param1.x == 0 && param1.y == 0)
         {
            return;
         }
         getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§9#d§();
         }
         if(param3)
         {
            this.§^"z§();
         }
      }
      
      public function §9"7§(param1:b2Vec2) : void
      {
         this.§ N§ = param1;
      }
      
      private function §%"R§() : void
      {
         if(this.§ N§)
         {
            this.§0"y§(this.§ N§,false);
            this.§ N§ = null;
         }
      }
      
      protected function §2#A§() : void
      {
         if(§2"j§)
         {
            this.§1"'§.SetV(§2"j§.GetLinearVelocity());
         }
      }
      
      public function §?#'§() : b2Vec2
      {
         return this.§1"'§;
      }
      
      public function §9#d§(param1:b2Vec2 = null) : void
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
      
      public function §^"z§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§#"&§(_loc2_);
      }
      
      public function §-"m§(param1:Number) : void
      {
         getBody().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§3f§)
         {
            this.§4K§ -= param1;
         }
         if(this.§,#o§)
         {
            this.§ !W§ -= param1;
         }
         if(this.§?s§)
         {
            this.§;!s§ -= param1;
            this.§#",§();
         }
         if(this.§[!g§)
         {
            this.§@"r§();
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
         this.§]$"§.update(param1);
         sprite.x = §&$'§;
         sprite.y = §<#-§;
         sprite.rotation = §^]§;
         if(backgroundSprite)
         {
            backgroundSprite.x = §&$'§;
            backgroundSprite.y = §<#-§;
            backgroundSprite.rotation = §^]§;
         }
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         this.§%"R§();
         super.update(param1,param2);
         if(this.§7"n§ >= 0)
         {
            this.§7"n§ += param1;
         }
         this.§2#A§();
         this.applyLinearForce();
         if(this.§9"C§ > 0)
         {
            this.§9"C§ -= param1;
         }
         else
         {
            this.§`^§();
         }
         if(this.§6"#§ > 0)
         {
            this.§6"#§ -= param1;
         }
         this.addTrail(param2);
         this.§+">§(param1);
         if(§]h§.spawnParticlesDefinition && §]h§.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.§1!'§ = Math.min(§]h§.spawnParticlesDefinition.frequencyInSeconds * 5,this.§1!'§ + param1);
            while(this.§1!'§ >= §]h§.spawnParticlesDefinition.frequencyInSeconds)
            {
               this.§1!'§ -= §]h§.spawnParticlesDefinition.frequencyInSeconds;
               this.§=!r§(§]h§.spawnParticlesDefinition.particleName);
            }
         }
      }
      
      public function updateOutOfBounds(param1:§]!m§) : void
      {
         this.§[![§ = true;
      }
      
      public function updateBeforeRemoving(param1:§]!m§, param2:Boolean) : void
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
         if(!this.§[![§)
         {
            this.addDestructionParticles(param1);
         }
         if(this.§6I§ > 0)
         {
            this.playDestroyedSound();
            if(this.isDamageAwardingScore() && param2)
            {
               _loc3_ = this.§6I§;
               _loc4_ = 0;
               _loc5_ = 0;
               if(§]h§.maxStrength > 0)
               {
                  _loc6_ = Math.floor(§]h§.damageScore * ((§]h§.maxStrength - _loc3_) / §]h§.maxStrength));
                  _loc5_ = (_loc7_ = Math.floor(§]h§.damageScore * ((§]h§.maxStrength - _loc4_) / §]h§.maxStrength))) - _loc6_;
               }
               if(_loc5_ > 0)
               {
                  param1.addScore(_loc5_,§%!a§.§<!u§,true,getBody().GetPosition().x,getBody().GetPosition().y,§=,§.§[!`§(this.itemName),§]h§.floatingScoreFont);
               }
            }
         }
         this.explodeBeforeRemoving(param1);
         this.spawnBlock(param1);
      }
      
      protected function explodeBeforeRemoving(param1:§]!m§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(§]h§.specialty == "BOMB")
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            if(param1)
            {
               param1.§##Q§(_loc2_,_loc3_,§]h§.explosionRadius,§]h§.explosionForce,§]h§.explosionDamageRadius,§]h§.explosionDamage);
            }
         }
      }
      
      protected function spawnBlock(param1:§]!m§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:b2Vec2 = null;
         var _loc9_:§>"G§ = null;
         var _loc10_:String = null;
         var _loc11_:§9$8§ = null;
         var _loc12_:String = null;
         var _loc13_:§8$-§ = null;
         if(§]h§.spawnBlockDefinition)
         {
            _loc2_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < §]h§.spawnBlockDefinition.spawnCount)
            {
               _loc4_ = _loc3_ / §]h§.spawnBlockDefinition.spawnCount * Math.PI;
               _loc5_ = Math.cos(-_loc4_);
               _loc6_ = Math.sin(-_loc4_);
               _loc7_ = §]h§.spawnBlockDefinition.spawnMinSpeed + (§]h§.spawnBlockDefinition.spawnMaxSpeed - §]h§.spawnBlockDefinition.spawnMinSpeed) * Math.random();
               _loc8_ = getBody().GetPosition();
               (_loc9_ = param1.addObject(§]h§.spawnBlockDefinition.spawnDefinition,_loc8_.x + _loc5_ * §]h§.spawnBlockDefinition.spawnDistance,_loc8_.y + _loc6_ * §]h§.spawnBlockDefinition.spawnDistance,0,§ !i§.ID_NEXT_FREE,false,false,false,1,false,true) as §>"G§).§0"y§(new b2Vec2(_loc5_ * _loc7_,_loc6_ * _loc7_));
               _loc9_.§-"m§(§]h§.spawnBlockDefinition.spawnMaxAngularSpeed * (Math.random() * 2 - 1));
               for each(_loc10_ in §]h§.spawnBlockDefinition.spawnAudios)
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
                  _loc12_ = § b§.§1#-§;
                  if(§]h§.soundResource)
                  {
                     _loc11_ = § b§.§^"8§(_loc10_,§]h§.soundResource.channelName);
                     _loc12_ = §]h§.soundResource.channelName;
                  }
                  else
                  {
                     _loc11_ = § b§.§^"8§(_loc10_);
                  }
                  if(!_loc11_)
                  {
                     if(_loc13_ = §]$?§.§2#§.levelItemManager.getSoundResource(_loc10_))
                     {
                        § b§.playSound(_loc13_.§[!0§(),_loc12_);
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
      
      public function §%@§() : Boolean
      {
         return this.§!"q§ == §&2§.§6"!§;
      }
      
      public function §]$@§() : String
      {
         return §]h§.textureType;
      }
      
      public function §&"R§() : Boolean
      {
         return this.§!"q§ == §&2§.§],§;
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
         if(this.§-##§)
         {
            return false;
         }
         return §]h§.isDamageAwardingScore();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §2#z§() : Number
      {
         return Number(Math.sqrt(getBody().GetLinearVelocity().x * getBody().GetLinearVelocity().x + getBody().GetLinearVelocity().y * getBody().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§7"n§ = 0;
         if(§@#z§ == §"#-§.§!#E§)
         {
            §@#z§ = §"#-§.DEFAULT;
         }
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      public function §]!?§() : void
      {
         if(!§]h§.soundResource)
         {
            return;
         }
         var _loc1_:String = §]h§.soundResource.getLaunchSound();
         if(_loc1_)
         {
            § b§.playSound(_loc1_,§]h§.soundResource.channelName);
         }
      }
      
      public function §%$%§() : void
      {
         if(!§]h§.soundResource)
         {
            return;
         }
         var _loc1_:String = §]h§.soundResource.getSpecialSound();
         if(_loc1_)
         {
            § b§.playSound(_loc1_,§]h§.soundResource.channelName);
         }
      }
      
      public function playDestroyedSound() : void
      {
         if(!§]h§.soundResource)
         {
            return;
         }
         var _loc1_:String = §]h§.soundResource.getDestroyedSound();
         if(_loc1_)
         {
            § b§.playSound(_loc1_,§]h§.soundResource.channelName);
         }
      }
      
      protected function playCollisionSound() : void
      {
         if(!§]h§.soundResource)
         {
            return;
         }
         var _loc1_:String = §]h§.soundResource.getCollisionSound();
         if(_loc1_)
         {
            § b§.playSound(_loc1_,§]h§.soundResource.channelName);
         }
      }
      
      protected function playDamagedSound() : void
      {
         if(!§]h§.soundResource)
         {
            return;
         }
         var _loc1_:String = §]h§.soundResource.getDamagedSound();
         if(_loc1_)
         {
            § b§.playSound(_loc1_,§]h§.soundResource.channelName);
         }
      }
      
      public function §@"r§() : void
      {
         if(!§]h§.soundResource)
         {
            return;
         }
         var _loc1_:String = §]h§.soundResource.getRollingSound();
         if(_loc1_)
         {
            if(!§ b§.§,!&§(_loc1_,§]h§.soundResource.channelName))
            {
               § b§.playSound(_loc1_,§]h§.soundResource.channelName);
            }
         }
      }
      
      public function §3"<§() : void
      {
         if(!§]h§.soundResource)
         {
            return;
         }
         var _loc1_:String = §]h§.soundResource.getIdleSounds();
         if(_loc1_)
         {
            § b§.playSound(_loc1_,§]h§.soundResource.channelName);
         }
      }
      
      public function §#",§() : void
      {
         if(!§]h§.soundResource)
         {
            return;
         }
         var _loc1_:String = §]h§.soundResource.getSlippingSound();
         if(_loc1_)
         {
            § b§.playSound(_loc1_,§]h§.soundResource.channelName);
         }
      }
      
      public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(this.§7"n§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         this.§0#C§(param1,param2);
         if(!param5)
         {
            if(this.§0#6§ < 0)
            {
               if(param1 > 10)
               {
                  this.playDamagedSound();
               }
               else if(param1 > 3)
               {
                  this.playCollisionSound();
               }
               return this.§6I§;
            }
            if(param1 <= this.§0#6§)
            {
               if(param1 > 10)
               {
                  this.playDamagedSound();
               }
               else if(param1 > 3)
               {
                  this.playCollisionSound();
               }
               return this.§6I§;
            }
            param1 -= this.§0#6§;
         }
         var _loc6_:Number = this.§6I§;
         var _loc7_:Number = Math.min(param1,_loc6_);
         var _loc8_:Number = _loc6_ - _loc7_;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc9_ = 0;
            if(§]h§.maxStrength > 0)
            {
               _loc10_ = Math.floor(§]h§.damageScore * ((§]h§.maxStrength - _loc6_) / §]h§.maxStrength));
               _loc9_ = (_loc11_ = Math.floor(§]h§.damageScore * ((§]h§.maxStrength - _loc8_) / §]h§.maxStrength))) - _loc10_;
            }
            if(_loc9_ > 0)
            {
               param2.addScore(_loc9_,§%!a§.§<!u§,this.§6I§ > param1,getBody().GetPosition().x,getBody().GetPosition().y,§=,§.§[!`§(this.itemName),§]h§.floatingScoreFont);
            }
         }
         this.§6I§ = _loc8_;
         if(this.§6I§ <= 0)
         {
            this.§6I§ = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.playDamagedSound();
         }
         if(this.setDamageState(1 - this.health / this.§+#_§,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§6I§;
      }
      
      protected function setDamageState(param1:Number, param2:§]!m§) : Boolean
      {
         return this.§]$"§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §-#§(param1:String) : Number
      {
         if(this.§9""§)
         {
            if(this.§9""§.hasOwnProperty(param1))
            {
               return this.§9""§[param1];
            }
         }
         return §]h§.getDamageMultiplier(param1);
      }
      
      public function §2#t§(param1:String) : Number
      {
         if(this.§^#Q§)
         {
            if(this.§^#Q§.hasOwnProperty(param1))
            {
               return this.§^#Q§[param1];
            }
         }
         return §]h§.getVelocityMultiplier(param1);
      }
      
      public function §=#a§() : String
      {
         return §]h§.materialName;
      }
      
      public function §>!Y§() : Number
      {
         return §]h§.getItemStrength();
      }
      
      public function §3!0§() : Boolean
      {
         return getBody().IsAwake() && (this is §[!k§ && this.§6I§ == this.§7#O§ || Math.abs(getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §4A§() : Boolean
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
      
      public function §<#%§(param1:Object) : void
      {
         this.§9""§ = param1;
      }
      
      public function §8X§(param1:Object) : void
      {
         this.§^#Q§ = param1;
      }
      
      public function §,!F§(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§?"[§ = param1;
         if(param1 && shape is §=$'§)
         {
            _loc2_ = (shape as §=$'§).radius;
            _loc3_ = _loc2_ * this.scale;
            _loc5_ = (_loc4_ = this.§-"Q§() * Math.PI * _loc2_ * _loc2_) / (Math.PI * _loc3_ * _loc3_);
            this.§9!F§(_loc5_);
         }
      }
      
      public function §>#@§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§]h§.getItemBodyType() == §+#y§.BODY_TYPE_STATIC)
         {
            _loc2_ = this.§]$"§.width * this.§]$"§.height * (§8#3§.§2K§ * §8#3§.§2K§);
         }
         else
         {
            _loc2_ = getBody().GetMass() / §0>§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§=Z§();
            }
            _loc2_ /= this.§#!1§ * this.§#!1§;
         }
         return _loc2_;
      }
      
      public function §=Z§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§]$"§.§<#Z§ - 1) / 10);
      }
      
      public function §9#O§(param1:Number) : void
      {
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         var _loc3_:Number = getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§]!m§) : Boolean
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
         var _loc2_:Number = this.x * §8#3§.§2K§;
         var _loc3_:Number = this.y * §8#3§.§2K§;
         if(this.§#!K§)
         {
            param1.addParticle(§=,§.§+! §,§##P§.§`#q§,§=,§.§;!0§,_loc2_,_loc3_,-1,"",§=,§.§'!H§);
            this.§-"B§ = 0;
            this.§#!K§ = false;
         }
         else
         {
            _loc4_ = §=,§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§-"B§ == 1)
            {
               _loc4_ = §=,§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§-"B§ == 2)
            {
               _loc4_ = §=,§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§-"B§ = (this.§-"B§ + 1) % 3;
            param1.addParticle(_loc4_,§##P§.§`#q§,§=,§.§;!0§,_loc2_,_loc3_,-1,"",§=,§.§'!H§);
         }
         this.addTrailParticles(_loc2_,_loc3_);
         return true;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return this.§3#s§;
      }
      
      public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§3#s§ = param1;
      }
      
      public function §="H§() : void
      {
         this.§#!K§ = true;
      }
      
      public function §'N§() : Boolean
      {
         return this.§#!K§;
      }
      
      protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!this.§`!a§)
         {
            return;
         }
         var _loc3_:int = Math.random() * this.§+#V§;
         var _loc4_:Number = 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * (Math.PI * 2);
            _loc7_ = 0.5 * §5$#§ + §5$#§ * (Math.random() * 0.5);
            _loc8_ = 0;
            if(this.§`!a§.length > 1)
            {
               _loc8_ = Math.random() * this.§`!a§.length;
            }
            if(this.§`!a§[_loc8_] == "POWERUP_POWERPOTION_TRAIL")
            {
               _loc4_ = 0.2 + Math.random() * 0.2;
            }
            §]$?§.§2#§.particles.addSimpleParticle(this.§`!a§[_loc8_],§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§=,§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
            _loc5_++;
         }
      }
      
      public function §'#o§(param1:String) : void
      {
         if(!this.§`!a§)
         {
            this.§`!a§ = [];
         }
         this.§`!a§.push(param1);
      }
      
      public function §6!>§(param1:int) : void
      {
         this.§+#V§ = param1;
      }
      
      protected function addDestructionParticles(param1:§]!m§) : void
      {
      }
      
      public function addDamageParticles(param1:§]!m§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§`$,§)
         {
            case §"#-§.§+i§:
               §2"j§.SetLinearDamping(§7#E§.§?!k§);
               §2"j§.SetAngularDamping(§7#E§.§=9§);
               §2"j§.SetGravityScale(0);
               break;
            case §"#-§.§,"'§:
               §2"j§.SetLinearDamping(§7#E§.§'!@§);
               §2"j§.SetAngularDamping(§7#E§.§&q§);
               §2"j§.SetGravityScale(0);
               break;
            case §"#-§.§5$;§:
               break;
            case §"#-§.§@"z§:
            case §"#-§.§!#E§:
               §2"j§.SetGravityScale(0);
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §@Q§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         getBody().SetPosition(_loc4_);
      }
      
      public function §[#0§(param1:String, param2:String, param3:§]!m§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §@#z§ = -1;
         }
      }
      
      public function get §,#o§() : Boolean
      {
         return this.§ !W§ >= 0;
      }
      
      public function get §3f§() : Boolean
      {
         return this.§4K§ >= 0;
      }
      
      public function get §2F§() : Boolean
      {
         return this.§&z§;
      }
      
      public function get §?s§() : Boolean
      {
         return this.§;!s§ > 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§,#o§ && !this.§3f§ && !this.§?s§ && !this.§2F§ && !this.§[!g§;
      }
      
      protected function §`^§() : void
      {
         var _loc1_:int = 0;
         if(!this.§]$"§.§`#p§(§3!'§))
         {
            return;
         }
         if(!this.§?s§)
         {
            _loc1_ = this.§9#i§();
            if(_loc1_ != 0)
            {
               this.§]$"§.setAnimation(§3!'§,false);
               this.§]$"§.§;O§(_loc1_ == 1);
               this.§;!s§ = §1!-§;
               this.§ !W§ = -1;
               this.§4K§ = -1;
               this.§&z§ = false;
            }
         }
      }
      
      public function scream() : void
      {
         if(!this.§?s§ && !this.§2F§)
         {
            this.§4K§ = §3"Z§;
            this.§ !W§ = -1;
            this.§]$"§.setAnimation(§"9§,false);
            this.playScreamSound();
         }
      }
      
      protected function playScreamSound() : void
      {
         if(!§]h§.soundResource)
         {
            return;
         }
         var _loc1_:String = §]h§.soundResource.getScreamSound();
         if(_loc1_)
         {
            § b§.playSound(_loc1_,§]h§.soundResource.channelName);
         }
      }
      
      public function playFearSound() : §9$8§
      {
         return null;
      }
      
      public function blink() : void
      {
         if(!this.§?s§ && !this.§2F§)
         {
            this.§ !W§ = §+J§;
            this.§4K§ = -1;
            this.§]$"§.setAnimation(§-"e§,false);
         }
      }
      
      protected function normalize() : void
      {
         var _loc1_:String = §+$=§;
         if(!this.§]!4§)
         {
            if(this.§]$"§.§`#p§(this.§]$"§.§4#R§()))
            {
               _loc1_ = this.§]$"§.§4#R§();
               this.§]$"§.setAnimation(_loc1_,false);
               this.§&z§ = true;
            }
            else if(this.§]$"§.§`#p§(§7!>§))
            {
               _loc1_ = §7!>§;
               this.§]$"§.setAnimation(_loc1_,false);
               this.§&z§ = true;
            }
            this.§]!4§ = true;
         }
         else
         {
            this.§]$"§.setAnimation(_loc1_);
         }
      }
      
      public function §'!g§(param1:String) : §9$8§
      {
         var _loc2_:§7b§ = null;
         if(this.animation)
         {
            _loc2_ = this.animation.getSubAnimation(param1);
            if(_loc2_ && _loc2_.soundName)
            {
               return § b§.§^"8§(_loc2_.soundName,_loc2_.soundChannel);
            }
         }
         return null;
      }
      
      public function §6!v§() : Boolean
      {
         if(this.animation)
         {
            return this.animation.hasAnySubAnimations(§9$>§);
         }
         return false;
      }
      
      public function §1#%§(param1:String, param2:int, param3:int) : void
      {
         if(param1 == §7!>§ || param1 == this.§]$"§.§4#R§())
         {
            this.§&z§ = false;
            this.normalize();
         }
      }
      
      public function playSound(param1:String) : void
      {
      }
      
      public function §0!P§(param1:§`5§, param2:§8!U§) : void
      {
         this.§9!Q§ = param1;
         this.§-#L§.push(param2.event);
         param1.§!@§(this,param2.event);
      }
      
      private function §+!_§() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§-#L§.length)
         {
            _loc2_ = this.§-#L§[_loc1_];
            this.§9!Q§.§ g§(this,_loc2_);
            _loc1_++;
         }
      }
      
      public function §[y§(param1:§0"0§) : void
      {
      }
      
      public function §<!M§(param1:Boolean) : void
      {
         this.§<#M§ = param1;
         sprite.visible = !param1;
      }
      
      public function get §7#N§() : Boolean
      {
         return this.§<#M§;
      }
      
      protected function §9#i§() : int
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
      
      protected function §[$%§() : int
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
      
      override public function collidedWith(param1:§'#N§) : void
      {
         if(this.§"4§ == 0)
         {
            this.§6"#§ = §'#+§;
         }
         ++this.§"4§;
      }
      
      override public function collisionEnded(param1:§'#N§) : void
      {
         --this.§"4§;
         if(this.§"4§ <= 0)
         {
            this.§"4§ = 0;
            this.§6"#§ = 0;
         }
      }
      
      public function get §[!g§() : Boolean
      {
         return this.§"4§ > 0 && this.§6"#§ <= 0 && this.§9#i§() != 0 && §]h§.shape is §=$'§;
      }
      
      public function §["7§(param1:String) : Object
      {
         return this.§,!S§[param1];
      }
      
      public function §%#j§(param1:String, param2:Object) : void
      {
         this.§,!S§[param1] = param2;
      }
      
      public function get §?#r§() : String
      {
         return this.§8!5§;
      }
      
      public function set §?#r§(param1:String) : void
      {
         this.§8!5§ = param1;
      }
      
      public function §7"+§(param1:Number) : void
      {
         §0>§.SetRestitution(param1);
      }
      
      public function §,A§() : Number
      {
         return §0>§.GetRestitution();
      }
      
      public function §9!F§(param1:Number) : void
      {
         §0>§.SetDensity(param1);
      }
      
      public function §-"Q§() : Number
      {
         return §0>§.GetDensity();
      }
      
      public function §6#$§(param1:Number) : void
      {
         §0>§.SetFriction(param1);
      }
      
      public function §7^§() : Number
      {
         return §0>§.GetFriction();
      }
      
      public function §9&§(param1:§3$5§) : void
      {
         this.§-d§ = param1;
      }
      
      public function §6!o§() : §3$5§
      {
         return this.§-d§;
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
      
      public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         return false;
      }
      
      protected function §0#C§(param1:Number, param2:§]!m§) : void
      {
         if(this.§-d§)
         {
            this.§-d§.§2$,§(param1,getBody().GetMass(),param2,getBody().GetPosition().x + this.§]$"§.width * 0.5 * §8#3§.§2K§,getBody().GetPosition().y + this.§]$"§.width * 0.5 * §8#3§.§2K§,getBody().GetAngle(),getBody().GetLinearVelocity());
         }
      }
      
      protected function handleLevelEndCheck() : void
      {
         if(!this.§@$<§)
         {
            §]$?§.§;r§.checkForLevelEnd();
            this.§@$<§ = true;
         }
      }
      
      public function get §-"z§() : Boolean
      {
         return this.§5#8§;
      }
      
      public function §#N§(param1:Number, param2:Number, param3:Number) : void
      {
         this.§5#8§ = true;
         this.§"#5§ = param1;
         this.§1!1§ = param2;
         this.§+!"§ = param3;
         var _loc4_:§7b§ = §]$?§.§2#§.animationManager.getAnimation("STELLA_BUBBLE");
         this.§""M§ = _loc4_.getFrame(int(Math.random() * _loc4_.frameCount));
         this.§`+§ = §6"W§.§+!,§.§9S§(§6"W§.§+!,§.§9!n§(this.§""M§,{
            "scaleX":2.1,
            "scaleY":2.25
         },{
            "scaleX":1.9,
            "scaleY":1.75
         },0.5,§6"W§.§4-§),§6"W§.§+!,§.§9!n§(this.§""M§,{
            "scaleX":1.75,
            "scaleY":1.9
         },{
            "scaleX":2.1,
            "scaleY":2.25
         },0.5,§6"W§.§,$8§),§6"W§.§+!,§.§9!n§(this.§""M§,{
            "scaleX":2.25,
            "scaleY":2.1
         },{
            "scaleX":1.75,
            "scaleY":1.9
         },0.5,§6"W§.§4-§),§6"W§.§+!,§.§9!n§(this.§""M§,{
            "scaleX":1.9,
            "scaleY":1.75
         },{
            "scaleX":2.25,
            "scaleY":2.1
         },0.5,§6"W§.§,$8§));
         this.§`+§.§=!0§ = false;
      }
      
      private function §+">§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(this.§5#8§)
         {
            if(this.§"#5§ > 0)
            {
               this.§"#5§ -= param1;
               _loc2_ = getBody().GetLinearVelocity().x;
               _loc3_ = getBody().GetLinearVelocity().y;
               _loc4_ = 10;
               if(this.§2#z§() < _loc4_)
               {
                  getBody().SetAwake(true);
                  §2"j§.ApplyForce(new b2Vec2(this.§1!1§ * getBody().GetMass(),-getBody().GetWorld().GetGravity().y * getBody().GetMass() * this.§+!"§),§2"j§.GetWorldCenter());
               }
            }
            else
            {
               this.§"#5§ = 0;
               this.§1!1§ = 0;
               this.§+!"§ = 0;
               this.§5#8§ = false;
               this.§9"!§(getBody().GetPosition().x,getBody().GetPosition().y,6);
               § b§.§^"8§("pumpkin_collision_04");
               if(this is §[!k§)
               {
                  this.§6I§ = 0;
               }
               else if(levelItem.bubbleDamage > 0)
               {
                  this.applyDamage(levelItem.bubbleDamage,null,null,false,true);
               }
               else
               {
                  this.applyDamage(§9"R§,null,null,false,true);
               }
            }
            if(!this.§4"A§)
            {
               this.§`+§.play();
               sprite.addChildAt(this.§""M§,sprite.numChildren);
               this.§4"A§ = true;
            }
            if(§]$?§.isPaused)
            {
               if(!this.§0";§)
               {
                  if(this.§`+§)
                  {
                     this.§`+§.pause();
                  }
                  this.§0";§ = true;
               }
            }
            else if(this.§0";§)
            {
               if(this.§`+§)
               {
                  this.§`+§.play();
               }
               this.§0";§ = false;
            }
         }
         else if(this.§4"A§)
         {
            if(this.§`+§)
            {
               this.§`+§.stop();
               this.§`+§ = null;
            }
            sprite.removeChild(this.§""M§);
            this.§4"A§ = false;
         }
      }
      
      protected function §9"!§(param1:Number, param2:Number, param3:int) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            _loc5_ = 1 + Math.random() * 6;
            §]$?§.§2#§.particles.addSimpleParticle("BUBBLE_POP" + _loc5_,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,400 + Math.random() * 200,"",§=,§.getParticleMaterialFromEngineMaterial("BIRD_RED"),Math.random() * 20 - 10,Math.random() * 20 - 10,5,Math.random() * 200);
            _loc4_++;
         }
      }
      
      protected function §=!r§(param1:String) : void
      {
      }
   }
}
