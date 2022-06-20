package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+!C§.§1!$§;
   import §+!C§.§2"b§;
   import §1!+§.b2Body;
   import §1!+§.b2BodyDef;
   import §1!+§.b2FilterData;
   import §1!+§.b2Fixture;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §1#W§.§="D§;
   import §4o§.§!"e§;
   import §4o§.§3H§;
   import §4o§.§8"1§;
   import §6$"§.§#B§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§>#H§;
   import §7"&§.§^"Q§;
   import §9#K§.b2Settings;
   import §^$1§.§2"^§;
   import flash.geom.Point;
   
   public class §^"9§ extends §1!C§ implements §!#r§, §8"1§
   {
      
      public static const §!"V§:Number = -1;
      
      public static const §%!5§:Number = 20;
      
      public static const §6F§:Number = 100;
      
      public static const §&!F§:String = "creation";
      
      public static const §5!G§:String = "normal";
      
      public static const §2"W§:String = "blink";
      
      public static const §'$"§:String = "yell";
      
      public static const §`N§:String = "slipping";
      
      private static const §'#p§:Array = [§2"W§,§'$"§,§`N§];
      
      public static const §@$<§:Number = 1000;
      
      public static const §#!H§:Number = 500;
      
      protected static const §+M§:int = 1000;
      
      public static const §]"?§:uint = 3000;
      
      public static const §'!W§:uint = 1 << 1;
      
      public static const § "v§:uint = 1 << 2;
      
      public static const §"!`§:uint = 1 << 3;
      
      public static const §'"e§:uint = 1 << 4;
      
      public static const §@"f§:uint = 1 << 5;
      
      private static const §1s§:int = 200;
       
      
      protected var §!!k§:Number = -1.0;
      
      protected var §'"?§:Number = -1.0;
      
      private var §-!5§:Boolean = false;
      
      protected var dynamic:int = 0;
      
      private var §&#"§:Number = 0;
      
      private var §>"G§:int;
      
      private var §9t§:int;
      
      private var §2!v§:b2Vec2;
      
      private var §>"I§:b2Vec2;
      
      private var §3#2§:Number;
      
      private var §^A§:Number;
      
      private var §6"l§:Number;
      
      private var §;#i§:Boolean;
      
      private var §&$6§:Boolean = false;
      
      protected var §,#W§:Object;
      
      protected var §'>§:Object;
      
      private var §[!>§:Boolean = false;
      
      protected var §implements§:§!;§;
      
      private var § @§:§8#B§;
      
      private var § "A§:Number = 1.0;
      
      private var §;#'§:Boolean = true;
      
      private var §,!K§:Boolean = false;
      
      private var mId:int = 0;
      
      protected var §#b§:Number = -1.0;
      
      private var §9!D§:Boolean = false;
      
      private var §-$8§:Boolean = false;
      
      protected var §#"6§:String = "";
      
      protected var §##H§:int = 1;
      
      private var §7§:Boolean;
      
      private var §8!N§:§!"e§;
      
      private var §#!M§:Vector.<String>;
      
      private var §,#r§:Boolean;
      
      private var §>#i§:int = 0;
      
      private var §`$2§:int;
      
      public function §^"9§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         this.§>"I§ = new b2Vec2();
         this.§#!M§ = new Vector.<String>();
         super(param1,param3,param4,param5);
         this.§7§ = false;
         this.§ @§ = param2;
         this.§ "A§ = param6;
         this.§9t§ = §8"3§.itemType;
         param1.scaleX = param6;
         param1.scaleY = param6;
         this.§implements§ = this.initObjectRenderer();
         this.§implements§.§'!R§ = this;
         this.§implements§.§[#v§(§8"3§.shape is §>#H§);
         this.§,#r§ = false;
         this.createPhysicsBody(§=@§.x,§=@§.y);
         §>#j§ = param5.§>#j§;
         this.§6"l§ = §8"3§.getItemDefence();
         if(§8"3§.maxStrength > 0)
         {
            this.initializeHealth(§8"3§.maxStrength);
         }
         else
         {
            this.initializeHealth(Math.round(this.§'Y§(true) * §8"3§.getItemStrength()));
         }
         if(§8"3§.itemType == §!"v§.§<#X§)
         {
            param1.visible = false;
         }
         else
         {
            this.setDamageState(0,null);
         }
         if(param5.angle != 0)
         {
            this.§"#o§(param5.angle * (Math.PI / 180));
         }
         this.disableBirdPassThrough = §8"3§.disableBirdPassThrough;
         this.update(0,null);
         this.render(0,1,0);
         this.§implements§.§'!,§(§8"3§.shape);
         this.§&#"§ = §]"?§;
      }
      
      public function get health() : Number
      {
         return this.§3#2§;
      }
      
      public function set health(param1:Number) : void
      {
         this.§3#2§ = param1;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§;#i§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         this.§;#i§ = param1;
      }
      
      public function get §7#p§() : Boolean
      {
         return this.§&$6§;
      }
      
      public function set §7#p§(param1:Boolean) : void
      {
         this.§&$6§ = param1;
      }
      
      public function get §##6§() : Number
      {
         return this.§^A§;
      }
      
      public function get itemName() : String
      {
         if(§8"3§)
         {
            return §8"3§.itemName;
         }
         return "";
      }
      
      public function get animation() : §8#B§
      {
         return this.§ @§;
      }
      
      public function get x() : Number
      {
         return §?!l§;
      }
      
      public function get y() : Number
      {
         return §`"T§;
      }
      
      public function get scale() : Number
      {
         return this.§ "A§;
      }
      
      public function get id() : int
      {
         return this.mId;
      }
      
      public function get §'!§() : Boolean
      {
         return this.§6"l§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§6"l§;
      }
      
      public function get §?"5§() : Boolean
      {
         return this.§;#'§;
      }
      
      public function set §?"5§(param1:Boolean) : void
      {
         this.§;#'§ = param1;
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§#b§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return §=@§.hasSpecialBehavior;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §!U§() : Boolean
      {
         return this.§9!D§;
      }
      
      public function set §!U§(param1:Boolean) : void
      {
         this.§9!D§ = param1;
      }
      
      public function get §0#l§() : Boolean
      {
         return this.§[!>§;
      }
      
      public function set §0#l§(param1:Boolean) : void
      {
         this.§[!>§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §<!?§() : §!;§
      {
         return this.§implements§;
      }
      
      public function §8#9§(param1:b2Vec2) : void
      {
         §=@§.linearForce = param1;
      }
      
      public function §>#1§() : b2Vec2
      {
         return §=@§.linearForce;
      }
      
      public function applyLinearForce() : void
      {
         if(§=@§.linearForce)
         {
            §-[§.ApplyForce(new b2Vec2(§=@§.linearForce.x * §-[§.GetMass(),§=@§.linearForce.y * §-[§.GetMass()),§-[§.GetWorldCenter());
         }
      }
      
      public final function §import§(param1:int) : void
      {
         if(!this.§,!K§)
         {
            this.§,!K§ = true;
            this.mId = param1;
            return;
         }
         throw new Error("Trying to assign LevelObject id twice !!!");
      }
      
      public function §#""§() : void
      {
         var _loc1_:Number = §8"3§.maxStrength - §]#<§.health;
         this.applyDamage(_loc1_,null,null,false);
         getBody().SetAngularDamping(§]#<§.angularDamping);
         getBody().SetLinearDamping(§]#<§.linearDamping);
         getBody().SetAngularVelocity(§]#<§.angularVelocity);
         if(§]#<§.linearForce != null)
         {
            this.§8#9§(§]#<§.linearForce);
         }
         getBody().SetAwake(true);
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         if(param1 < 1)
         {
            param1 = 1;
         }
         this.§^A§ = param1;
         this.§3#2§ = param1;
      }
      
      protected function §,!?§(param1:Number) : void
      {
         if(param1 < 0)
         {
            this.§3#2§ += param1;
         }
      }
      
      public function §[#2§(param1:b2Body) : void
      {
         if(mWorld && §-[§)
         {
            mWorld.DestroyBody(§-[§);
         }
         §-[§ = param1;
         §-[§.SetUserData(this);
         §1"T§ = this.createFixture();
         var _loc2_:b2FilterData = this.createFilterData();
         if(!§8"3§.isColliding)
         {
            _loc2_.§4"?§ = 0;
         }
         this.§+!Q§(_loc2_);
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         §-[§ = mWorld.CreateBody(_loc3_);
         §-[§.SetUserData(this);
         §1"T§ = this.createFixture();
         var _loc4_:b2FilterData = this.createFilterData();
         if(!§8"3§.isColliding)
         {
            _loc4_.§4"?§ = 0;
         }
         this.§+!Q§(_loc4_);
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §-[§.CreateFixture2(§8"3§.shape.getB2Shape(this.§ "A§),§8"3§.getItemDensity());
         _loc1_.SetFriction(§8"3§.getItemFriction());
         _loc1_.SetRestitution(§8"3§.getItemRestitution());
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §!;§
      {
         return new §!;§(this.animation,sprite);
      }
      
      public function §+!Q§(param1:b2FilterData) : void
      {
         if(§1"T§)
         {
            §1"T§.SetFilterData(param1);
         }
      }
      
      public function §`"q§() : b2FilterData
      {
         if(§1"T§)
         {
            return §1"T§.GetFilterData();
         }
         return null;
      }
      
      public function §3!R§(param1:§!"v§) : void
      {
         §8"3§ = param1;
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = §8"3§.getItemBodyType();
         _loc3_.§>!P§ = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.§="§ = false;
         return _loc3_;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         this.§7!^§();
         this.§implements§.dispose();
         this.§2!v§ = null;
         §8"3§ = null;
      }
      
      public function §"#o§(param1:Number) : void
      {
         getBody().SetAngle(param1);
      }
      
      public function §%D§() : Number
      {
         return getBody().GetAngle();
      }
      
      public function §!!b§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(!param1 || param1.x == 0 && param1.y == 0)
         {
            return;
         }
         getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§]#]§();
         }
         if(param3)
         {
            this.§&#3§();
         }
      }
      
      public function §+#D§(param1:b2Vec2) : void
      {
         this.§2!v§ = param1;
      }
      
      private function §;"z§() : void
      {
         if(this.§2!v§)
         {
            this.§!!b§(this.§2!v§,false);
            this.§2!v§ = null;
         }
      }
      
      protected function §,"s§() : void
      {
         if(§-[§)
         {
            this.§>"I§.SetV(§-[§.GetLinearVelocity());
         }
      }
      
      public function §4#Z§() : b2Vec2
      {
         return this.§>"I§;
      }
      
      public function §]#]§(param1:b2Vec2 = null) : void
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
      
      public function §&#3§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x);
         this.§"#o§(_loc2_);
      }
      
      public function §+N§(param1:Number) : void
      {
         getBody().SetAngularVelocity(param1);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§7#f§)
         {
            this.§!!k§ -= param1;
         }
         if(this.§-#'§)
         {
            this.§'"?§ -= param1;
         }
         if(this.§ #$§)
         {
            this.dynamic -= param1;
            this.§>"u§();
         }
         if(this.§5#R§)
         {
            this.§0"q§();
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
         this.§implements§.update(param1);
         sprite.x = §?!l§;
         sprite.y = §`"T§;
         sprite.rotation = §,!H§;
         if(backgroundSprite)
         {
            backgroundSprite.x = §?!l§;
            backgroundSprite.y = §`"T§;
            backgroundSprite.rotation = §,!H§;
         }
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         this.§;"z§();
         super.update(param1,param2);
         if(this.§#b§ >= 0)
         {
            this.§#b§ += param1;
         }
         this.§,"s§();
         this.applyLinearForce();
         if(this.§&#"§ > 0)
         {
            this.§&#"§ -= param1;
         }
         else
         {
            this.§?m§();
         }
         if(this.§`$2§ > 0)
         {
            this.§`$2§ -= param1;
         }
      }
      
      public function updateOutOfBounds(param1:§-!S§) : void
      {
         this.§-$8§ = true;
      }
      
      public function updateBeforeRemoving(param1:§-!S§, param2:Boolean) : void
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
         if(!this.§-$8§)
         {
            this.addDestructionParticles(param1);
         }
         if(this.§3#2§ > 0)
         {
            this.playDestroyedSound();
            if(this.isDamageAwardingScore() && param2)
            {
               _loc3_ = this.§3#2§;
               _loc4_ = 0;
               _loc5_ = 0;
               if(§8"3§.maxStrength > 0)
               {
                  _loc6_ = Math.floor(§8"3§.damageScore * ((§8"3§.maxStrength - _loc3_) / §8"3§.maxStrength));
                  _loc5_ = (_loc7_ = Math.floor(§8"3§.damageScore * ((§8"3§.maxStrength - _loc4_) / §8"3§.maxStrength))) - _loc6_;
               }
               if(_loc5_ > 0)
               {
                  param1.addScore(_loc5_,§2"b§.§%$-§,true,getBody().GetPosition().x,getBody().GetPosition().y,§2"^§.§9!O§(this.itemName),§8"3§.floatingScoreFont);
               }
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §5!P§() : Boolean
      {
         return this.§9t§ == §!"v§.§!A§;
      }
      
      public function §0t§() : String
      {
         return §8"3§.textureType;
      }
      
      public function §-"V§() : Boolean
      {
         return this.§9t§ == §!"v§.§<#X§;
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
         if(this.§0#l§)
         {
            return false;
         }
         return §8"3§.isDamageAwardingScore();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §?%§() : Number
      {
         return Number(Math.sqrt(getBody().GetLinearVelocity().x * getBody().GetLinearVelocity().x + getBody().GetLinearVelocity().y * getBody().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         this.§#b§ = 0;
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      public function §'#=§() : void
      {
         if(!§8"3§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8"3§.soundResource.getLaunchSound();
         if(_loc1_)
         {
            §!#&§.playSound(_loc1_,§8"3§.soundResource.channelName);
         }
      }
      
      public function §@"Y§() : void
      {
         if(!§8"3§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8"3§.soundResource.getSpecialSound();
         if(_loc1_)
         {
            §!#&§.playSound(_loc1_,§8"3§.soundResource.channelName);
         }
      }
      
      public function playDestroyedSound() : void
      {
         if(!§8"3§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8"3§.soundResource.getDestroyedSound();
         if(_loc1_)
         {
            §!#&§.playSound(_loc1_,§8"3§.soundResource.channelName);
         }
      }
      
      protected function playCollisionSound() : void
      {
         if(!§8"3§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8"3§.soundResource.getCollisionSound();
         if(_loc1_)
         {
            §!#&§.playSound(_loc1_,§8"3§.soundResource.channelName);
         }
      }
      
      protected function §&",§() : void
      {
         if(!§8"3§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8"3§.soundResource.getDamagedSound();
         if(_loc1_)
         {
            §!#&§.playSound(_loc1_,§8"3§.soundResource.channelName);
         }
      }
      
      public function §0"q§() : void
      {
         if(!§8"3§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8"3§.soundResource.getRollingSound();
         if(_loc1_)
         {
            if(!§!#&§.§`#]§(_loc1_,§8"3§.soundResource.channelName))
            {
               §!#&§.playSound(_loc1_,§8"3§.soundResource.channelName);
            }
         }
      }
      
      public function §?! §() : void
      {
         if(!§8"3§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8"3§.soundResource.getIdleSounds();
         if(_loc1_)
         {
            §!#&§.playSound(_loc1_,§8"3§.soundResource.channelName);
         }
      }
      
      public function §>"u§() : void
      {
         if(!§8"3§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8"3§.soundResource.getSlippingSound();
         if(_loc1_)
         {
            §!#&§.playSound(_loc1_,§8"3§.soundResource.channelName);
         }
      }
      
      public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(this.§#b§ < 0)
         {
            this.handleInitialCollision();
         }
         else
         {
            this.handleAnotherCollision();
         }
         if(this.§6"l§ < 0)
         {
            if(param1 > 10)
            {
               this.§&",§();
            }
            else if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§3#2§;
         }
         if(param1 <= this.§6"l§)
         {
            if(param1 > 10)
            {
               this.§&",§();
            }
            else if(param1 > 3)
            {
               this.playCollisionSound();
            }
            return this.§3#2§;
         }
         param1 -= this.§6"l§;
         var _loc5_:Number = this.§3#2§;
         var _loc6_:Number = Math.min(param1,_loc5_);
         var _loc7_:Number = _loc5_ - _loc6_;
         if(param4 && this.isDamageAwardingScore())
         {
            _loc8_ = 0;
            if(§8"3§.maxStrength > 0)
            {
               _loc9_ = Math.floor(§8"3§.damageScore * ((§8"3§.maxStrength - _loc5_) / §8"3§.maxStrength));
               _loc8_ = (_loc10_ = Math.floor(§8"3§.damageScore * ((§8"3§.maxStrength - _loc7_) / §8"3§.maxStrength))) - _loc9_;
            }
            if(_loc8_ > 0)
            {
               param2.addScore(_loc8_,§2"b§.§%$-§,this.§3#2§ > param1,getBody().GetPosition().x,getBody().GetPosition().y,§2"^§.§9!O§(this.itemName),§8"3§.floatingScoreFont);
            }
         }
         this.§3#2§ = _loc7_;
         if(this.§3#2§ <= 0)
         {
            this.§3#2§ = 0;
            this.playDestroyedSound();
         }
         else
         {
            this.§&",§();
         }
         if(this.setDamageState(1 - this.health / this.§##6§,param2))
         {
            this.addDamageParticles(param2,param1);
         }
         return this.§3#2§;
      }
      
      protected function setDamageState(param1:Number, param2:§-!S§) : Boolean
      {
         return this.§implements§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §=!%§(param1:String) : Number
      {
         if(this.§,#W§)
         {
            if(this.§,#W§.hasOwnProperty(param1))
            {
               return this.§,#W§[param1];
            }
         }
         return §8"3§.getDamageMultiplier(param1);
      }
      
      public function §>2§(param1:String) : Number
      {
         if(this.§'>§)
         {
            if(this.§'>§.hasOwnProperty(param1))
            {
               return this.§'>§[param1];
            }
         }
         return §8"3§.getVelocityMultiplier(param1);
      }
      
      public function §0!C§() : String
      {
         return §8"3§.materialName;
      }
      
      public function §4!o§() : Number
      {
         return §8"3§.getItemStrength();
      }
      
      public function §;#D§() : Boolean
      {
         return getBody().IsAwake() && (this is §"7§ && this.§3#2§ == this.§^A§ || Math.abs(getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §6#&§() : Boolean
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
      
      public function §[#m§(param1:Object) : void
      {
         this.§,#W§ = param1;
      }
      
      public function §%$&§(param1:Object) : void
      {
         this.§'>§ = param1;
      }
      
      public function §'Y§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(§8"3§.getItemBodyType() == §^"Q§.§2n§)
         {
            _loc2_ = this.§implements§.width * this.§implements§.height * (§!!S§.§,"3§ * §!!S§.§,"3§);
         }
         else
         {
            _loc2_ = getBody().GetMass() / §1"T§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§%$"§();
            }
            _loc2_ /= this.§ "A§ * this.§ "A§;
         }
         return _loc2_;
      }
      
      public function §%$"§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§implements§.§>"0§ - 1) / 10);
      }
      
      public function §["u§(param1:Number) : void
      {
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         var _loc3_:Number = getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      protected function addTrail(param1:§-!S§) : Boolean
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
      
      protected function addDestructionParticles(param1:§-!S§) : void
      {
      }
      
      public function addDamageParticles(param1:§-!S§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         switch(§?#@§)
         {
            case §4@§.§-c§:
               §-[§.SetLinearDamping(§1!$§.§6""§);
               §-[§.SetAngularDamping(§1!$§.§?h§);
               §-[§.SetGravityScale(0);
               break;
            case §4@§.§<#Q§:
               §-[§.SetLinearDamping(§1!$§.§8j§);
               §-[§.SetAngularDamping(§1!$§.§ x§);
               §-[§.SetGravityScale(0);
               break;
            case §4@§.§<#P§:
               break;
            case §4@§.§+!4§:
               §-[§.SetGravityScale(0);
               break;
            default:
               super.updateGravityFilter();
         }
      }
      
      public function §[!'§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         getBody().SetPosition(_loc4_);
      }
      
      public function §]#c§(param1:String, param2:String, param3:§-!S§) : void
      {
         switch(param1)
         {
            case "removeGravityFilterCategory":
               §>#j§ = -1;
         }
      }
      
      public function get §-#'§() : Boolean
      {
         return this.§'"?§ >= 0;
      }
      
      public function get §7#f§() : Boolean
      {
         return this.§!!k§ >= 0;
      }
      
      public function get §3#O§() : Boolean
      {
         return this.§-!5§;
      }
      
      public function get § #$§() : Boolean
      {
         return this.dynamic > 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§-#'§ && !this.§7#f§ && !this.§ #$§ && !this.§3#O§ && !this.§5#R§;
      }
      
      protected function §?m§() : void
      {
         var _loc1_:int = 0;
         if(!this.§implements§.§-$7§(§`N§))
         {
            return;
         }
         if(!this.§ #$§)
         {
            _loc1_ = this.§^"[§();
            if(_loc1_ != 0)
            {
               this.§implements§.setAnimation(§`N§,false);
               this.§implements§.§%"[§(_loc1_ == 1);
               this.dynamic = §+M§;
               this.§'"?§ = -1;
               this.§!!k§ = -1;
               this.§-!5§ = false;
            }
         }
      }
      
      public function scream() : void
      {
         if(!this.§ #$§ && !this.§3#O§)
         {
            this.§!!k§ = §@$<§;
            this.§'"?§ = -1;
            this.§implements§.setAnimation(§'$"§,false);
            this.playScreamSound();
         }
      }
      
      protected function playScreamSound() : void
      {
         if(!§8"3§.soundResource)
         {
            return;
         }
         var _loc1_:String = §8"3§.soundResource.getScreamSound();
         if(_loc1_)
         {
            §!#&§.playSound(_loc1_,§8"3§.soundResource.channelName);
         }
      }
      
      public function playFearSound() : §="D§
      {
         return null;
      }
      
      public function blink() : void
      {
         if(!this.§ #$§ && !this.§3#O§)
         {
            this.§'"?§ = §#!H§;
            this.§!!k§ = -1;
            this.§implements§.setAnimation(§2"W§,false);
         }
      }
      
      protected function normalize() : void
      {
         var _loc1_:String = §5!G§;
         if(!this.§7§)
         {
            if(this.§implements§.§-$7§(this.§implements§.§,"f§()))
            {
               _loc1_ = this.§implements§.§,"f§();
               this.§implements§.setAnimation(_loc1_,false);
               this.§-!5§ = true;
            }
            else if(this.§implements§.§-$7§(§&!F§))
            {
               _loc1_ = §&!F§;
               this.§implements§.setAnimation(_loc1_,false);
               this.§-!5§ = true;
            }
            this.§7§ = true;
         }
         else
         {
            this.§implements§.setAnimation(_loc1_);
         }
      }
      
      public function §'#]§(param1:String) : §="D§
      {
         var _loc2_:§8#B§ = null;
         if(this.animation)
         {
            _loc2_ = this.animation.getSubAnimation(param1);
            if(_loc2_ && _loc2_.soundName)
            {
               return §!#&§.§2!A§(_loc2_.soundName,_loc2_.soundChannel);
            }
         }
         return null;
      }
      
      public function §3#n§() : Boolean
      {
         if(this.animation)
         {
            return this.animation.hasAnySubAnimations(§'#p§);
         }
         return false;
      }
      
      public function §##F§(param1:String, param2:int, param3:int) : void
      {
         if(param1 == §&!F§ || param1 == this.§implements§.§,"f§())
         {
            this.§-!5§ = false;
            this.normalize();
         }
      }
      
      public function playSound(param1:String) : void
      {
      }
      
      public function §,!m§(param1:§!"e§, param2:§#B§) : void
      {
         this.§8!N§ = param1;
         this.§#!M§.push(param2.event);
         param1.§"$§(this,param2.event);
      }
      
      private function §7!^§() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#!M§.length)
         {
            _loc2_ = this.§#!M§[_loc1_];
            this.§8!N§.§7!`§(this,_loc2_);
            _loc1_++;
         }
      }
      
      public function § N§(param1:§3H§) : void
      {
      }
      
      public function §%t§(param1:Boolean) : void
      {
         this.§,#r§ = param1;
         sprite.visible = !param1;
      }
      
      public function get §-!#§() : Boolean
      {
         return this.§,#r§;
      }
      
      protected function §^"[§() : int
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
      
      protected function §-!A§() : int
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
      
      override public function collidedWith(param1:§#-§) : void
      {
         if(this.§>#i§ == 0)
         {
            this.§`$2§ = §1s§;
         }
         ++this.§>#i§;
      }
      
      override public function collisionEnded(param1:§#-§) : void
      {
         --this.§>#i§;
         if(this.§>#i§ <= 0)
         {
            this.§>#i§ = 0;
            this.§`$2§ = 0;
         }
      }
      
      public function get §5#R§() : Boolean
      {
         return this.§>#i§ > 0 && this.§`$2§ <= 0 && this.§^"[§() != 0 && §8"3§.shape is §>#H§;
      }
   }
}
