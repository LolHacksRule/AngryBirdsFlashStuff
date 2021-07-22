package §6!3§
{
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §-#X§.§2"7§;
   import §2!l§.§&y§;
   import §2!l§.§0"[§;
   import §2!l§.§4"3§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§-!o§;
   import §8#K§.§3Z§;
   import §>2§.§ $,§;
   import §>2§.§!!W§;
   import §>2§.§!6§;
   import §?!C§.b2Vec2;
   import §?$<§.§'!s§;
   import §?$<§.§9!V§;
   import §?$<§.§;<§;
   import §?$<§.§?$>§;
   import §?N§.b2Settings;
   import §@!S§.b2Body;
   import §@!S§.b2BodyDef;
   import §@!S§.b2FilterData;
   import §@!S§.b2Fixture;
   import §@!S§.b2World;
   import §^!_§.§7"m§;
   import §`#@§.§7n§;
   import flash.geom.Point;
   
   public class §;!U§ extends §+0§ implements §5<§, §&y§
   {
      
      public static const §@#X§:Number = -1;
      
      public static const §8D§:Number = 20;
      
      public static const §>!c§:Number = 100;
      
      public static const §"U§:String = "creation";
      
      public static const §,#c§:String = "normal";
      
      public static const §;8§:String = "blink";
      
      public static const §<#M§:String = "yell";
      
      public static const §-"g§:String = "slipping";
      
      private static const §`#V§:Array = [§;8§,§<#M§,§-"g§];
      
      public static const §4§:Number = 1000;
      
      public static const §3M§:Number = 500;
      
      protected static const §[#>§:int = 1000;
      
      public static const §<"s§:uint = 3000;
      
      public static const §!!_§:uint = 1 << 1;
      
      public static const §'[§:uint = 1 << 2;
      
      public static const §#!_§:uint = 1 << 3;
      
      public static const §8!j§:uint = 1 << 4;
      
      public static const §-"3§:uint = 1 << 5;
      
      public static const §1"r§:uint = 1 << 6;
      
      private static const §&$+§:int = 200;
      
      public static var §?!"§:int = 4;
      
      public static var §>#j§:int = 12;
      
      private static const §8#e§:int = 1;
       
      
      protected var include:Number = -1.0;
      
      protected var §4N§:Number = -1.0;
      
      private var §^$7§:Boolean = false;
      
      protected var §6#>§:int = 0;
      
      private var §73§:Number = 0;
      
      private var §6"z§:int;
      
      private var §@I§:int;
      
      private var §"!'§:b2Vec2;
      
      private var §6"G§:b2Vec2;
      
      private var §<"t§:Number;
      
      private var §1#l§:Number;
      
      private var §?!B§:Number;
      
      private var §8"p§:Boolean;
      
      private var §;"r§:Boolean = false;
      
      protected var §8#X§:Object;
      
      protected var §;"I§:Object;
      
      protected var §;!`§:Boolean;
      
      private var §?!@§:Boolean = false;
      
      protected var §="!§:§0&§;
      
      private var §&#N§:§;D§;
      
      private var §5>§:Number = 1.0;
      
      private var §<!t§:Boolean = true;
      
      private var §>!q§:Boolean = false;
      
      private var mId:int = 0;
      
      protected var §0"^§:Number = -1.0;
      
      private var §0"q§:Boolean = false;
      
      private var §@"@§:Boolean = false;
      
      protected var §6$C§:String = "";
      
      protected var §8#`§:int = 1;
      
      private var §2$C§:Boolean;
      
      private var §3#K§:§0"[§;
      
      private var §[!D§:Vector.<String>;
      
      private var §4$A§:Boolean;
      
      private var §?# §:int = 0;
      
      private var §##X§:int;
      
      protected var §9#v§:Object;
      
      private var §0#'§:String = "Effect_Block_Destruction_Core";
      
      private var §-#!§:§7"m§;
      
      protected var §0!U§:int = 0;
      
      protected var §""I§:Boolean = false;
      
      protected var §0"V§:Array;
      
      protected var §]#[§:int;
      
      private var §0;§:Boolean = false;
      
      private var §;#a§:Number = 0;
      
      private var §]o§:Boolean;
      
      private var §?!F§:Boolean = false;
      
      private var §?!n§:Boolean = false;
      
      private var §-!h§:Number = 0;
      
      private var §3#r§:Number;
      
      private var §"#N§:Number;
      
      private var §4#x§:DisplayObject;
      
      private var §3l§:§7$C§;
      
      private var §7!,§:Boolean = false;
      
      public function §;!U§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         this.§6"G§ = new b2Vec2();
         this.§[!D§ = new Vector.<String>();
         super(param1,param3,param4,param5);
         this.§2$C§ = false;
         this.§&#N§ = param2;
         this.§5>§ = param6;
         this.§@I§ = §"#6§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§="!§ = this.initObjectRenderer();
         this.§="!§.§#!H§ = this;
         this.§="!§.§ !Q§(§"#6§.shape is §'!s§);
         this.§4$A§ = false;
         this.createPhysicsBody(§@#h§.x,§@#h§.y);
         §3!F§ = param5.§3!F§;
         this.§?!B§ = §"#6§.getItemDefence();
         if(§"#6§.maxStrength > 0)
         {
            this.initializeHealth(§"#6§.maxStrength);
         }
         else
         {
            this.initializeHealth(Math.round(this.§'"l§(true) * §"#6§.getItemStrength()));
         }
         if(§"#6§.itemType == §?$>§.§!#A§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§9"p§(param5.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = §"#6§.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.§="!§.§2"S§(§"#6§.shape);
         this.§73§ = §<"s§;
         this.§9#v§ = new Object();
         this.§]#[§ = §?!"§;
         this.§]o§ = false;
      }
      
      public function get health() : Number
      {
         return this.§<"t§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§<"t§ = param1;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§8"p§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         this.§8"p§ = param1;
      }
      
      public function get §9#4§() : Boolean
      {
         return this.§;"r§;
      }
      
      public function set §9#4§(param1:Boolean) : void
      {
         this.§;"r§ = param1;
      }
      
      public function get §6"k§() : Number
      {
         return this.§1#l§;
      }
      
      public function set §6"k§(param1:Number) : void
      {
         this.§1#l§ = param1;
      }
      
      public function get itemName() : String
      {
         if(§"#6§)
         {
            return §"#6§.itemName;
         }
         return "";
      }
      
      public function get animation() : §;D§
      {
         return this.§&#N§;
      }
      
      public function get x() : Number
      {
         return §["d§;
      }
      
      public function get y() : Number
      {
         return §%#z§;
      }
      
      public function get scale() : Number
      {
         return this.§5>§;
      }
      
      public function get id() : int
      {
         return this.mId;
      }
      
      public function get §0"w§() : Boolean
      {
         return this.§?!B§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§?!B§;
      }
      
      public function get §`!R§() : Boolean
      {
         return this.§<!t§;
      }
      
      public function set §`!R§(param1:Boolean) : void
      {
         this.§<!t§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§0"^§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return §@#h§.hasSpecialBehavior;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §+$-§() : Boolean
      {
         return this.§0"q§;
      }
      
      public function set §+$-§(param1:Boolean) : void
      {
         this.§0"q§ = param1;
      }
      
      public function get §!"N§() : Boolean
      {
         return this.§?!@§;
      }
      
      public function set §!"N§(param1:Boolean) : void
      {
         this.§?!@§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §8#1§() : §0&§
      {
         return this.§="!§;
      }
      
      public function §1!-§(param1:b2Vec2) : void
      {
         §@#h§.linearForce = param1;
      }
      
      public function §;",§() : b2Vec2
      {
         return §@#h§.linearForce;
      }
      
      public function applyLinearForce() : void
      {
         if(§@#h§.linearForce)
         {
            § "8§.ApplyForce(new b2Vec2(§@#h§.linearForce.x * § "8§.GetMass(),§@#h§.linearForce.y * § "8§.GetMass()),§ "8§.GetWorldCenter());
         }
      }
      
      public final function §&!6§(param1:int) : void
      {
         if(!this.§>!q§)
         {
            this.§>!q§ = true;
            this.mId = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      public function §?!q§() : void
      {
         var _loc1_:Number = §"#6§.maxStrength - §&#r§.health;
         this.applyDamage(_loc1_,null,null,false);
         getBody().SetAngularDamping(§&#r§.angularDamping);
         getBody().SetLinearDamping(§&#r§.linearDamping);
         getBody().SetAngularVelocity(§&#r§.angularVelocity);
         if(§&#r§.linearForce != null)
         {
            this.§1!-§(§&#r§.linearForce);
         }
         getBody().SetAwake(true);
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§1#l§ = param1;
         this.§<"t§ = param1;
      }
      
      protected function §`!?§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§<"t§ += param1;
         }
      }
      
      public function §%!N§(param1:b2Body) : void
      {
         if(mWorld && § "8§)
         {
            mWorld.DestroyBody(§ "8§);
         }
         § "8§ = param1;
         § "8§.SetUserData(this);
         §;"^§ = this.createFixture();
         var _loc2_:b2FilterData = this.createFilterData();
         if(!§"#6§.isColliding)
         {
            _loc2_.§#!+§ = 0;
         }
         this.§4!`§(_loc2_);
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         § "8§ = mWorld.CreateBody(_loc3_);
         § "8§.SetUserData(this);
         §;"^§ = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§"#6§.isColliding)
         {
            _loc4_.§#!+§ = 0;
         }
         this.§4!`§(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = § "8§.CreateFixture2(§"#6§.shape.getB2Shape(this.§5>§),§"#6§.getItemDensity());
         _loc1_.SetFriction(§"#6§.getItemFriction());
         _loc1_.SetRestitution(§"#6§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §0&§
      {
         return new §0&§(this.animation,sprite);
      }
      
      public function §4!`§(param1:b2FilterData) : void
      {
         if(§;"^§)
         {
            §;"^§.SetFilterData(param1);
         }
      }
      
      public function §;"&§() : b2FilterData
      {
         if(§;"^§)
         {
            return §;"^§.GetFilterData();
         }
         return null;
      }
      
      public function §"%§(param1:§?$>§) : void
      {
         §"#6§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §"#6§.getItemBodyType();
         _loc3_.§^#&§ = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.§`#J§ = false;
         return _loc3_;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         this.§"#<§();
         this.§="!§.dispose();
         this.§"!'§ = null;
         §"#6§ = null;
         if(this.§3l§)
         {
            this.§3l§.stop();
            this.§3l§ = null;
         }
      }
      
      public function §9"p§(param1:Number) : void
      {
         getBody().SetAngle(param1);
      }
      
      public function §%#4§() : Number
      {
         return getBody().GetAngle();
      }
      
      public function §-#l§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1 || param1.x == 0 && param1.y == 0)
         {
            return;
         }
         getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§9!h§();
         }
         if(param3)
         {
            this.§`"Y§();
         }
      }
      
      public function §1!j§(param1:b2Vec2) : void
      {
         this.§"!'§ = param1;
      }
      
      private function §#"4§() : void
      {
         if(this.§"!'§)
         {
            this.§-#l§(this.§"!'§,false);
            this.§"!'§ = null;
         }
      }
      
      protected function § #g§() : void
      {
         if(§ "8§)
         {
            this.§6"G§.SetV(§ "8§.GetLinearVelocity());
         }
      }
      
      public function §]#y§() : b2Vec2
      {
         return this.§6"G§;
      }
      
      public function §9!h§(param1:b2Vec2 = null) : void
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
      
      public function §`"Y§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§9"p§(_loc2_);
      }
      
      public function §9"&§(param1:Number) : void
      {
         getBody().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§2&§)
         {
            this.include -= param1;
         }
         if(this.§]"R§)
         {
            this.§4N§ -= param1;
         }
         if(this.§13§)
         {
            this.§6#>§ -= param1;
            this.§9!6§();
         }
         if(this.§ Z§)
         {
            this.§,!6§();
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
         this.§="!§.update(param1);
         sprite.x = §["d§;
         sprite.y = §%#z§;
         sprite.rotation = §'$5§;
         if(backgroundSprite)
         {
            backgroundSprite.x = §["d§;
            backgroundSprite.y = §%#z§;
            backgroundSprite.rotation = §'$5§;
         }
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         this.§#"4§();
         super.update(param1,param2);
         if(this.§0"^§ >= 0)
         {
            this.§0"^§ += param1;
         }
         this.§ #g§();
         this.applyLinearForce();
         if(this.§73§ > 0)
         {
            this.§73§ -= param1;
         }
         else
         {
            this.§"#F§();
         }
         if(this.§##X§ > 0)
         {
            this.§##X§ -= param1;
         }
         this.addTrail(param2);
         this.§3"1§(param1);
         if(§"#6§.spawnParticlesDefinition && §"#6§.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.§;#a§ = Math.min(§"#6§.spawnParticlesDefinition.frequencyInSeconds * 5,this.§;#a§ + param1);
            while(this.§;#a§ >= §"#6§.spawnParticlesDefinition.frequencyInSeconds)
            {
               this.§;#a§ -= §"#6§.spawnParticlesDefinition.frequencyInSeconds;
               this.§`#x§(§"#6§.spawnParticlesDefinition.particleName);
            }
         }
      }
      
      public function updateOutOfBounds(param1:§8$B§) : void
      {
         this.§@"@§ = true;
      }
      
      public function updateBeforeRemoving(param1:§8$B§, param2:Boolean) : void
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
         if(!this.§@"@§)
         {
            this.addDestructionParticles(param1);
         }
         if(this.§<"t§ > 0)
         {
            this.playDestroyedSound();
            if(this.isDamageAwardingScore() && param2)
            {
               _loc3_ = this.§<"t§;
               _loc4_ = 0;
               _loc5_ = 0;
               if(§"#6§.maxStrength > 0)
               {
                  _loc6_ = Math.floor(§"#6§.damageScore * ((§"#6§.maxStrength - _loc3_) / §"#6§.maxStrength));
                  _loc5_ = (_loc7_ = Math.floor(§"#6§.damageScore * ((§"#6§.maxStrength - _loc4_) / §"#6§.maxStrength))) - _loc6_;
               }
               if(_loc5_ > 0)
               {
                  param1.addScore(_loc5_,§ $,§.§ ";§,true,getBody().GetPosition().x,getBody().GetPosition().y,§6!9§.§[T§(this.itemName),§"#6§.floatingScoreFont);
               }
            }
         }
         this.explodeBeforeRemoving(param1);
         this.spawnBlock(param1);
      }
      
      protected function explodeBeforeRemoving(param1:§8$B§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(§"#6§.specialty == "BOMB")
         {
            _loc2_ = getBody().GetPosition().x;
            _loc3_ = getBody().GetPosition().y;
            if(param1)
            {
               param1.§;"8§(_loc2_,_loc3_,§"#6§.explosionRadius,§"#6§.explosionForce,§"#6§.explosionDamageRadius,§"#6§.explosionDamage);
            }
         }
      }
      
      protected function spawnBlock(param1:§8$B§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:b2Vec2 = null;
         var _loc9_:§;!U§ = null;
         var _loc10_:String = null;
         var _loc11_:§-!o§ = null;
         var _loc12_:String = null;
         var _loc13_:§9!V§ = null;
         if(§"#6§.spawnBlockDefinition)
         {
            _loc2_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < §"#6§.spawnBlockDefinition.spawnCount)
            {
               _loc4_ = _loc3_ / §"#6§.spawnBlockDefinition.spawnCount * Math.PI;
               _loc5_ = Math.cos(-_loc4_);
               _loc6_ = Math.sin(-_loc4_);
               _loc7_ = §"#6§.spawnBlockDefinition.spawnMinSpeed + (§"#6§.spawnBlockDefinition.spawnMaxSpeed - §"#6§.spawnBlockDefinition.spawnMinSpeed) * Math.random();
               _loc8_ = getBody().GetPosition();
               (_loc9_ = param1.addObject(§"#6§.spawnBlockDefinition.spawnDefinition,_loc8_.x + _loc5_ * §"#6§.spawnBlockDefinition.spawnDistance,_loc8_.y + _loc6_ * §"#6§.spawnBlockDefinition.spawnDistance,0,§'!§.ID_NEXT_FREE,false,false,false,1,false,true) as §;!U§).§-#l§(new b2Vec2(_loc5_ * _loc7_,_loc6_ * _loc7_));
               _loc9_.§9"&§(§"#6§.spawnBlockDefinition.spawnMaxAngularSpeed * (Math.random() * 2 - 1));
               for each(_loc10_ in §"#6§.spawnBlockDefinition.spawnAudios)
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
                  _loc12_ = §3Z§.§8#R§;
                  if(§"#6§.soundResource)
                  {
                     _loc11_ = §3Z§.§8!K§(_loc10_,§"#6§.soundResource.channelName);
                     _loc12_ = §"#6§.soundResource.channelName;
                  }
                  else
                  {
                     _loc11_ = §3Z§.§8!K§(_loc10_);
                  }
                  if(!_loc11_)
                  {
                     if(_loc13_ = §7n§.§6#K§.levelItemManager.getSoundResource(_loc10_))
                     {
                        §3Z§.playSound(_loc13_.§'N§(),_loc12_);
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
      
      public function §4"v§() : Boolean
      {
         return this.§@I§ == §?$>§.§&h§;
      }
      
      public function §1F§() : String
      {
         return §"#6§.textureType;
      }
      
      public function §5!u§() : Boolean
      {
         return this.§@I§ == §?$>§.§!#A§;
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
         if(this.§!"N§)
         {
            return false;
         }
         return §"#6§.isDamageAwardingScore();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §4">§() : Number
      {
         return Number(Math.sqrt(getBody().GetLinearVelocity().x * getBody().GetLinearVelocity().x + getBody().GetLinearVelocity().y * getBody().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§0"^§ = 0;
         if(§3!F§ == §9"+§.§"!F§)
         {
            §3!F§ = §9"+§.DEFAULT;
         }
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      public function §-#"§() : void
      {
         if(!§"#6§.soundResource)
         {
            return;
         }
         var _loc1_:String = §"#6§.soundResource.getLaunchSound();
         if(_loc1_)
         {
            §3Z§.playSound(_loc1_,§"#6§.soundResource.channelName);
         }
      }
      
      public function §[#w§() : void
      {
         if(!§"#6§.soundResource)
         {
            return;
         }
         var _loc1_:String = §"#6§.soundResource.getSpecialSound();
         if(_loc1_)
         {
            §3Z§.playSound(_loc1_,§"#6§.soundResource.channelName);
         }
      }
      
      public function playDestroyedSound() : void
      {
         if(!§"#6§.soundResource)
         {
            return;
         }
         var _loc1_:String = §"#6§.soundResource.getDestroyedSound();
         if(_loc1_)
         {
            §3Z§.playSound(_loc1_,§"#6§.soundResource.channelName);
         }
      }
      
      protected function playCollisionSound() : void
      {
         if(!§"#6§.soundResource)
         {
            return;
         }
         var _loc1_:String = §"#6§.soundResource.getCollisionSound();
         if(_loc1_)
         {
            §3Z§.playSound(_loc1_,§"#6§.soundResource.channelName);
         }
      }
      
      protected function playDamagedSound() : void
      {
         if(!§"#6§.soundResource)
         {
            return;
         }
         var _loc1_:String = §"#6§.soundResource.getDamagedSound();
         if(_loc1_)
         {
            §3Z§.playSound(_loc1_,§"#6§.soundResource.channelName);
         }
      }
      
      public function §,!6§() : void
      {
         if(!§"#6§.soundResource)
         {
            return;
         }
         var _loc1_:String = §"#6§.soundResource.getRollingSound();
         if(_loc1_)
         {
            if(!§3Z§.§&#D§(_loc1_,§"#6§.soundResource.channelName))
            {
               §3Z§.playSound(_loc1_,§"#6§.soundResource.channelName);
            }
         }
      }
      
      public function §%"t§() : void
      {
         if(!§"#6§.soundResource)
         {
            return;
         }
         var _loc1_:String = §"#6§.soundResource.getIdleSounds();
         if(_loc1_)
         {
            §3Z§.playSound(_loc1_,§"#6§.soundResource.channelName);
         }
      }
      
      public function §9!6§() : void
      {
         if(!§"#6§.soundResource)
         {
            return;
         }
         var _loc1_:String = §"#6§.soundResource.getSlippingSound();
         if(_loc1_)
         {
            §3Z§.playSound(_loc1_,§"#6§.soundResource.channelName);
         }
      }
      
      public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(this.§0"^§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         this.§9##§(param1,param2);
         if(!param5)
         {
            if(this.§?!B§ < 0)
            {
               if(param1 > 10)
               {
                  this.playDamagedSound();
               }
               else if(param1 > 3)
               {
                  this.playCollisionSound();
               }
               return this.§<"t§;
            }
            if(param1 <= this.§?!B§)
            {
               if(param1 > 10)
               {
                  this.playDamagedSound();
               }
               else if(param1 > 3)
               {
                  this.playCollisionSound();
               }
               return this.§<"t§;
            }
            param1 -= this.§?!B§;
         }
         var _loc6_:Number = this.§<"t§;
         var _loc7_:Number = Math.min(param1,_loc6_);
         var _loc8_:Number = _loc6_ - _loc7_;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc9_ = 0;
            if(§"#6§.maxStrength > 0)
            {
               _loc10_ = Math.floor(§"#6§.damageScore * ((§"#6§.maxStrength - _loc6_) / §"#6§.maxStrength));
               _loc9_ = (_loc11_ = Math.floor(§"#6§.damageScore * ((§"#6§.maxStrength - _loc8_) / §"#6§.maxStrength))) - _loc10_;
            }
            if(_loc9_ > 0)
            {
               param2.addScore(_loc9_,§ $,§.§ ";§,this.§<"t§ > param1,getBody().GetPosition().x,getBody().GetPosition().y,§6!9§.§[T§(this.itemName),§"#6§.floatingScoreFont);
            }
         }
         this.§<"t§ = _loc8_;
         if(this.§<"t§ <= 0)
         {
            this.§<"t§ = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.playDamagedSound();
         }
         if(this.setDamageState(1 - this.health / this.§6"k§,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§<"t§;
      }
      
      protected function setDamageState(param1:Number, param2:§8$B§) : Boolean
      {
         return this.§="!§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §%!5§(param1:String) : Number
      {
         if(this.§8#X§)
         {
            if(this.§8#X§.hasOwnProperty(param1))
            {
               return this.§8#X§[param1];
            }
         }
         return §"#6§.getDamageMultiplier(param1);
      }
      
      public function §1!J§(param1:String) : Number
      {
         if(this.§;"I§)
         {
            if(this.§;"I§.hasOwnProperty(param1))
            {
               return this.§;"I§[param1];
            }
         }
         return §"#6§.getVelocityMultiplier(param1);
      }
      
      public function §5"1§() : String
      {
         return §"#6§.materialName;
      }
      
      public function §]!L§() : Number
      {
         return §"#6§.getItemStrength();
      }
      
      public function §'"<§() : Boolean
      {
         return getBody().IsAwake() && (this is §,s§ && this.§<"t§ == this.§1#l§ || Math.abs(getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §>"@§() : Boolean
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
      
      public function §?$&§(param1:Object) : void
      {
         this.§8#X§ = param1;
      }
      
      public function §0_§(param1:Object) : void
      {
         this.§;"I§ = param1;
      }
      
      public function §-"7§(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§;!`§ = param1;
         if(param1 && shape is §'!s§)
         {
            _loc2_ = (shape as §'!s§).radius;
            _loc3_ = _loc2_ * this.scale;
            _loc5_ = (_loc4_ = this.§ #I§() * Math.PI * _loc2_ * _loc2_) / (Math.PI * _loc3_ * _loc3_);
            this.§>!5§(_loc5_);
         }
      }
      
      public function §'"l§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§"#6§.getItemBodyType() == §;<§.BODY_TYPE_STATIC)
         {
            _loc2_ = this.§="!§.width * this.§="!§.height * (§!6§.§[#v§ * §!6§.§[#v§);
         }
         else
         {
            _loc2_ = getBody().GetMass() / §;"^§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§7$2§();
            }
            _loc2_ /= this.§5>§ * this.§5>§;
         }
         return _loc2_;
      }
      
      public function §7$2§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§="!§.§`#l§ - 1) / 10);
      }
      
      public function §&!Q§(param1:Number) : void
      {
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         var _loc3_:Number = getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§8$B§) : Boolean
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
         var _loc2_:Number = this.x * §!6§.§[#v§;
         var _loc3_:Number = this.y * §!6§.§[#v§;
         if(this.§0;§)
         {
            param1.addParticle(§6!9§.§>w§,§<#]§.§@"5§,§6!9§.§1"g§,_loc2_,_loc3_,-1,"",§6!9§.§`$ §);
            this.§0!U§ = 0;
            this.§0;§ = false;
         }
         else
         {
            _loc4_ = §6!9§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§0!U§ == 1)
            {
               _loc4_ = §6!9§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§0!U§ == 2)
            {
               _loc4_ = §6!9§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§0!U§ = (this.§0!U§ + 1) % 3;
            param1.addParticle(_loc4_,§<#]§.§@"5§,§6!9§.§1"g§,_loc2_,_loc3_,-1,"",§6!9§.§`$ §);
         }
         this.addTrailParticles(_loc2_,_loc3_);
         return true;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return this.§""I§;
      }
      
      public function set isLeavingTrail(param1:Boolean) : void
      {
         this.§""I§ = param1;
      }
      
      public function §4$7§() : void
      {
         this.§0;§ = true;
      }
      
      public function §5!f§() : Boolean
      {
         return this.§0;§;
      }
      
      protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(!this.§0"V§)
         {
            return;
         }
         var _loc3_:int = Math.random() * this.§]#[§;
         var _loc4_:Number = 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = Math.random() * (Math.PI * 2);
            _loc7_ = 0.5 * §>#j§ + §>#j§ * (Math.random() * 0.5);
            _loc8_ = 0;
            if(this.§0"V§.length > 1)
            {
               _loc8_ = Math.random() * this.§0"V§.length;
            }
            if(this.§0"V§[_loc8_] == "POWERUP_POWERPOTION_TRAIL")
            {
               _loc4_ = 0.2 + Math.random() * 0.2;
            }
            §7n§.§6#K§.particles.addSimpleParticle(this.§0"V§[_loc8_],§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§6!9§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
            _loc5_++;
         }
      }
      
      public function §%!1§(param1:String) : void
      {
         if(!this.§0"V§)
         {
            this.§0"V§ = [];
         }
         this.§0"V§.push(param1);
      }
      
      public function §4_§(param1:int) : void
      {
         this.§]#[§ = param1;
      }
      
      protected function addDestructionParticles(param1:§8$B§) : void
      {
      }
      
      public function addDamageParticles(param1:§8$B§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§7!]§)
         {
            case §9"+§.§="#§:
               § "8§.SetLinearDamping(§!!W§.§=#-§);
               § "8§.SetAngularDamping(§!!W§.§2s§);
               § "8§.SetGravityScale(0);
               break;
            case §9"+§.§`#C§:
               § "8§.SetLinearDamping(§!!W§.§=!h§);
               § "8§.SetAngularDamping(§!!W§.§^b§);
               § "8§.SetGravityScale(0);
               break;
            case §9"+§.§%#M§:
               break;
            case §9"+§.§["'§:
            case §9"+§.§"!F§:
               § "8§.SetGravityScale(0);
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §#$E§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         getBody().SetPosition(_loc4_);
      }
      
      public function §2#>§(param1:String, param2:String, param3:§8$B§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §3!F§ = -1;
         }
      }
      
      public function get §]"R§() : Boolean
      {
         return this.§4N§ >= 0;
      }
      
      public function get §2&§() : Boolean
      {
         return this.include >= 0;
      }
      
      public function get §<!3§() : Boolean
      {
         return this.§^$7§;
      }
      
      public function get §13§() : Boolean
      {
         return this.§6#>§ > 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§]"R§ && !this.§2&§ && !this.§13§ && !this.§<!3§ && !this.§ Z§;
      }
      
      protected function §"#F§() : void
      {
         var _loc1_:int = 0;
         if(!this.§="!§.§="_§(§-"g§))
         {
            return;
         }
         if(!this.§13§)
         {
            _loc1_ = this.§6"7§();
            if(_loc1_ != 0)
            {
               this.§="!§.setAnimation(§-"g§,false);
               this.§="!§.§-#T§(_loc1_ == 1);
               this.§6#>§ = §[#>§;
               this.§4N§ = -1;
               this.include = -1;
               this.§^$7§ = false;
            }
         }
      }
      
      public function scream() : void
      {
         if(!this.§13§ && !this.§<!3§)
         {
            this.include = §4§;
            this.§4N§ = -1;
            this.§="!§.setAnimation(§<#M§,false);
            this.playScreamSound();
         }
      }
      
      protected function playScreamSound() : void
      {
         if(!§"#6§.soundResource)
         {
            return;
         }
         var _loc1_:String = §"#6§.soundResource.getScreamSound();
         if(_loc1_)
         {
            §3Z§.playSound(_loc1_,§"#6§.soundResource.channelName);
         }
      }
      
      public function playFearSound() : §-!o§
      {
         return null;
      }
      
      public function blink() : void
      {
         if(!this.§13§ && !this.§<!3§)
         {
            this.§4N§ = §3M§;
            this.include = -1;
            this.§="!§.setAnimation(§;8§,false);
         }
      }
      
      protected function normalize() : void
      {
         var _loc1_:String = §,#c§;
         if(!this.§2$C§)
         {
            if(this.§="!§.§="_§(this.§="!§.§@"A§()))
            {
               _loc1_ = this.§="!§.§@"A§();
               this.§="!§.setAnimation(_loc1_,false);
               this.§^$7§ = true;
            }
            else if(this.§="!§.§="_§(§"U§))
            {
               _loc1_ = §"U§;
               this.§="!§.setAnimation(_loc1_,false);
               this.§^$7§ = true;
            }
            this.§2$C§ = true;
         }
         else
         {
            this.§="!§.setAnimation(_loc1_);
         }
      }
      
      public function §&$#§(param1:String) : §-!o§
      {
         var _loc2_:§;D§ = null;
         if(this.animation)
         {
            _loc2_ = this.animation.getSubAnimation(param1);
            if(_loc2_ && _loc2_.soundName)
            {
               return §3Z§.§8!K§(_loc2_.soundName,_loc2_.soundChannel);
            }
         }
         return null;
      }
      
      public function §5#+§() : Boolean
      {
         if(this.animation)
         {
            return this.animation.hasAnySubAnimations(§`#V§);
         }
         return false;
      }
      
      public function §?#-§(param1:String, param2:int, param3:int) : void
      {
         if(param1 == §"U§ || param1 == this.§="!§.§@"A§())
         {
            this.§^$7§ = false;
            this.normalize();
         }
      }
      
      public function playSound(param1:String) : void
      {
      }
      
      public function §?"W§(param1:§0"[§, param2:§2"7§) : void
      {
         this.§3#K§ = param1;
         this.§[!D§.push(param2.event);
         param1.§"a§(this,param2.event);
      }
      
      private function §"#<§() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!D§.length)
         {
            _loc2_ = this.§[!D§[_loc1_];
            this.§3#K§.§?"?§(this,_loc2_);
            _loc1_++;
         }
      }
      
      public function §+P§(param1:§4"3§) : void
      {
      }
      
      public function §>$2§(param1:Boolean) : void
      {
         this.§4$A§ = param1;
         sprite.visible = !param1;
      }
      
      public function get §1`§() : Boolean
      {
         return this.§4$A§;
      }
      
      protected function §6"7§() : int
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
      
      protected function §5#J§() : int
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
      
      override public function collidedWith(param1:§!y§) : void
      {
         if(this.§?# § == 0)
         {
            this.§##X§ = §&$+§;
         }
         ++this.§?# §;
      }
      
      override public function collisionEnded(param1:§!y§) : void
      {
         --this.§?# §;
         if(this.§?# § <= 0)
         {
            this.§?# § = 0;
            this.§##X§ = 0;
         }
      }
      
      public function get § Z§() : Boolean
      {
         return this.§?# § > 0 && this.§##X§ <= 0 && this.§6"7§() != 0 && §"#6§.shape is §'!s§;
      }
      
      public function §[!Z§(param1:String) : Object
      {
         return this.§9#v§[param1];
      }
      
      public function §]y§(param1:String, param2:Object) : void
      {
         this.§9#v§[param1] = param2;
      }
      
      public function get §[#5§() : String
      {
         return this.§0#'§;
      }
      
      public function set §[#5§(param1:String) : void
      {
         this.§0#'§ = param1;
      }
      
      public function §,"I§(param1:Number) : void
      {
         §;"^§.SetRestitution(param1);
      }
      
      public function §[I§() : Number
      {
         return §;"^§.GetRestitution();
      }
      
      public function §>!5§(param1:Number) : void
      {
         §;"^§.SetDensity(param1);
      }
      
      public function § #I§() : Number
      {
         return §;"^§.GetDensity();
      }
      
      public function §,r§(param1:Number) : void
      {
         §;"^§.SetFriction(param1);
      }
      
      public function §8!l§() : Number
      {
         return §;"^§.GetFriction();
      }
      
      public function §]#6§(param1:§7"m§) : void
      {
         this.§-#!§ = param1;
      }
      
      public function §6#V§() : §7"m§
      {
         return this.§-#!§;
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
      
      public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         return false;
      }
      
      protected function §9##§(param1:Number, param2:§8$B§) : void
      {
         if(this.§-#!§)
         {
            this.§-#!§.§""E§(param1,getBody().GetMass(),param2,getBody().GetPosition().x + this.§="!§.width * 0.5 * §!6§.§[#v§,getBody().GetPosition().y + this.§="!§.width * 0.5 * §!6§.§[#v§,getBody().GetAngle(),getBody().GetLinearVelocity());
         }
      }
      
      protected function handleLevelEndCheck() : void
      {
         if(!this.§]o§)
         {
            §7n§.§ "'§.checkForLevelEnd();
            this.§]o§ = true;
         }
      }
      
      public function get §##Y§() : Boolean
      {
         return this.§?!F§;
      }
      
      public function §'$!§(param1:Number, param2:Number, param3:Number) : void
      {
         this.§?!F§ = true;
         this.§-!h§ = param1;
         this.§3#r§ = param2;
         this.§"#N§ = param3;
         var _loc4_:§;D§ = §7n§.§6#K§.animationManager.getAnimation("STELLA_BUBBLE");
         this.§4#x§ = _loc4_.getFrame(int(Math.random() * _loc4_.frameCount));
         this.§3l§ = §"!&§.§`"H§.§?"§(§"!&§.§`"H§.§1"W§(this.§4#x§,{
            "scaleX":2.1,
            "scaleY":2.25
         },{
            "scaleX":1.9,
            "scaleY":1.75
         },0.5,§"!&§.§6!j§),§"!&§.§`"H§.§1"W§(this.§4#x§,{
            "scaleX":1.75,
            "scaleY":1.9
         },{
            "scaleX":2.1,
            "scaleY":2.25
         },0.5,§"!&§.§%# §),§"!&§.§`"H§.§1"W§(this.§4#x§,{
            "scaleX":2.25,
            "scaleY":2.1
         },{
            "scaleX":1.75,
            "scaleY":1.9
         },0.5,§"!&§.§6!j§),§"!&§.§`"H§.§1"W§(this.§4#x§,{
            "scaleX":1.9,
            "scaleY":1.75
         },{
            "scaleX":2.25,
            "scaleY":2.1
         },0.5,§"!&§.§%# §));
         this.§3l§.§6!'§ = false;
      }
      
      private function §3"1§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(this.§?!F§)
         {
            if(this.§-!h§ > 0)
            {
               this.§-!h§ -= param1;
               _loc2_ = getBody().GetLinearVelocity().x;
               _loc3_ = getBody().GetLinearVelocity().y;
               _loc4_ = 10;
               if(this.§4">§() < _loc4_)
               {
                  getBody().SetAwake(true);
                  § "8§.ApplyForce(new b2Vec2(this.§3#r§ * getBody().GetMass(),-getBody().GetWorld().GetGravity().y * getBody().GetMass() * this.§"#N§),§ "8§.GetWorldCenter());
               }
            }
            else
            {
               this.§-!h§ = 0;
               this.§3#r§ = 0;
               this.§"#N§ = 0;
               this.§?!F§ = false;
               this.§]#$§(getBody().GetPosition().x,getBody().GetPosition().y,6);
               §3Z§.§8!K§("pumpkin_collision_04");
               if(this is §,s§)
               {
                  this.§<"t§ = 0;
               }
               else if(levelItem.bubbleDamage > 0)
               {
                  this.applyDamage(levelItem.bubbleDamage,null,null,false,true);
               }
               else
               {
                  this.applyDamage(§8#e§,null,null,false,true);
               }
            }
            if(!this.§?!n§)
            {
               this.§3l§.play();
               sprite.addChildAt(this.§4#x§,sprite.numChildren);
               this.§?!n§ = true;
            }
            if(§7n§.isPaused)
            {
               if(!this.§7!,§)
               {
                  if(this.§3l§)
                  {
                     this.§3l§.pause();
                  }
                  this.§7!,§ = true;
               }
            }
            else if(this.§7!,§)
            {
               if(this.§3l§)
               {
                  this.§3l§.play();
               }
               this.§7!,§ = false;
            }
         }
         else if(this.§?!n§)
         {
            if(this.§3l§)
            {
               this.§3l§.stop();
               this.§3l§ = null;
            }
            sprite.removeChild(this.§4#x§);
            this.§?!n§ = false;
         }
      }
      
      protected function §]#$§(param1:Number, param2:Number, param3:int) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            _loc5_ = 1 + Math.random() * 6;
            §7n§.§6#K§.particles.addSimpleParticle("BUBBLE_POP" + _loc5_,§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,400 + Math.random() * 200,"",§6!9§.getParticleMaterialFromEngineMaterial("BIRD_RED"),Math.random() * 20 - 10,Math.random() * 20 - 10,5,Math.random() * 200);
            _loc4_++;
         }
      }
      
      protected function §`#x§(param1:String) : void
      {
      }
   }
}
