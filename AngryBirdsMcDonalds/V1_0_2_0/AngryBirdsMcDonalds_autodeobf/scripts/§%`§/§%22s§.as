package §%`§
{
   import § !m§.§6h§;
   import §"U§.b2Vec2;
   import §'a§.§#!`§;
   import §'a§.§0!f§;
   import §,7§.b2PolygonShape;
   import §2!`§.§3F§;
   import §2!`§.§8!;§;
   import §3!g§.b2Body;
   import §3!g§.b2BodyDef;
   import §3!g§.b2FilterData;
   import §3!g§.b2Fixture;
   import §3!g§.b2World;
   import §4s§.§0R§;
   import §4s§.§>!"§;
   import §4s§.§?!O§;
   import §4s§.§[!_§;
   import §4s§.§[-§;
   import §5x§.Sprite;
   import §=!X§.b2Settings;
   import §=<§.§1+§;
   import flash.geom.Point;
   
   public class §"s§
   {
      
      public static const §`F§:uint = 1 << 1;
      
      public static const §'[§:uint = 1 << 2;
      
      public static const §"$§:uint = 1 << 3;
      
      public static const §^?§:uint = 1 << 4;
      
      public static const §5p§:Boolean = true;
      
      public static const §,v§:Number = 5;
      
      public static const §,!#§:Number = 10;
       
      
      private var §'!d§:String;
      
      private var §%!2§:int;
      
      private var §5'§:int;
      
      public var §6!?§:String;
      
      public var §=!6§:int;
      
      private var §^!6§:§?!O§;
      
      private var §<O§:§,!k§;
      
      private var mWorld:b2World;
      
      protected var §9O§:String = "";
      
      protected var §5!d§:int = 1;
      
      private var §49§:b2Fixture;
      
      private var §#!=§:b2Body;
      
      private var §7!;§:b2Vec2;
      
      public var §%!a§:Number;
      
      public var §"!j§:Number;
      
      private var §2=§:Number;
      
      private var §@A§:Boolean = false;
      
      private var §%O§:Number;
      
      private var §^!K§:Number;
      
      private var §8!0§:Number;
      
      private var §+!l§:Number;
      
      private var §7! §:Number;
      
      private var §>!=§:Number;
      
      public var §`!f§:Number = 1;
      
      private var §'!&§:Boolean = false;
      
      public var §&G§:Number = 0;
      
      public var §4!a§:Number = 0;
      
      protected var §`&§:Boolean = false;
      
      public var §2R§:§;!"§;
      
      private var §`n§:Sprite;
      
      private var § +§:Number = 0;
      
      private var §'Z§:Number = 0;
      
      private var §6O§:Number = 0;
      
      private var §>c§:Number = 1.0;
      
      private var §]N§:Boolean = false;
      
      protected var §@!R§:§4!B§;
      
      private var §!Y§:Boolean = true;
      
      public function §"s§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§6!?§ = param6;
         this.§^!6§ = §>!"§.§??§(param6);
         this.§<O§ = param1;
         this.§`n§ = param2;
         this.§>c§ = param10;
         this.§]N§ = param11;
         this.§%!2§ = param5;
         this.§=!6§ = this.§^!6§.§=!6§;
         this.§5'§ = this.§^!6§.§]!7§();
         this.§@!R§ = new §4!B§(§,v§,§,!#§);
         this.§2R§ = new §;!"§(this,param2,param4);
         if(!this.§2R§.§+p§(param1.mLevelMain.animationManager))
         {
            this.§2R§.§9!0§(this.§5'§,this.§^!6§.§=;§(),this.§^!6§.§&s§() / §0!f§.§<C§,this.§^!6§.§<[§() / §0!f§.§<C§);
         }
         this.§2R§.§4!n§(this.§5'§ == §[!_§.§!!H§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§#!=§ = this.mWorld.§&!7§(_loc12_);
         this.§#!=§.§-1§(this);
         if(this.§5'§ == §[!_§.§8y§)
         {
            _loc14_ = b2PolygonShape.§1!j§(this.§^!6§.shape.§;a§ * param10,this.§^!6§.shape.§"[§ * param10);
            this.§49§ = this.§#!=§.CreateFixture2(_loc14_,this.§^!6§.§0!^§());
         }
         else if(this.§5'§ == §[!_§.§!!H§ || this.§5'§ == §[!_§.§1!1§)
         {
            this.§49§ = this.§#!=§.CreateFixture2(this.§^!6§.shape.§5!-§(param10),this.§^!6§.§0!^§());
         }
         this.§49§.§8-§(this.§^!6§.§[R§());
         this.§49§.§6w§(this.§^!6§.§ N§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§6$§())
         {
            _loc13_.§<!9§ = §`F§;
            _loc13_.§8!A§ = 65535 & ~§'[§;
         }
         else if(this.§6!?§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§6!?§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§<!9§ = §'[§;
            _loc13_.§8!A§ = 65535 & ~§`F§;
         }
         this.§49§.§1!V§(_loc13_);
         this.§2=§ = this.§^!6§.§?6§();
         if(this.§^!6§.§"!j§ > 0)
         {
            this.§%!a§ = this.§"!j§ = this.§^!6§.§"!j§;
         }
         else
         {
            this.§%!a§ = this.§"!j§ = Math.round(this.§'k§(true) * this.§^!6§.§ !@§());
            if(this.§%!a§ < 1)
            {
               this.§%!a§ = this.§"!j§ = 1;
            }
         }
         if(this.§^!6§.§=!6§ == §?!O§.§8!a§)
         {
            this.§`n§.visible = false;
         }
         else
         {
            this.§2R§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§-S§(param9);
         }
         this.§+!A§();
         this.§;J§(0,1);
         this.§2R§.§<V§(this.§^!6§.shape);
      }
      
      public static function §"v§(param1:int, param2:§[-§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§7'§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§#c§;
            }
            §6h§.§5#§(_loc4_,param3);
         }
      }
      
      public static function §"j§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §0M§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§`n§;
      }
      
      public function get x() : Number
      {
         return this.§ +§;
      }
      
      public function get y() : Number
      {
         return this.§'Z§;
      }
      
      public function get scale() : Number
      {
         return this.§>c§;
      }
      
      public function get front() : Boolean
      {
         return this.§]N§;
      }
      
      public function get §'!B§() : Number
      {
         return this.§#!=§.GetPosition().x;
      }
      
      public function get §"-§() : Number
      {
         return this.§#!=§.GetPosition().y;
      }
      
      public function get §>!@§() : §?!O§
      {
         return this.§^!6§;
      }
      
      public function get §!!@§() : Boolean
      {
         return this.§2=§ >= 0;
      }
      
      public function get container() : §,!k§
      {
         return this.§<O§;
      }
      
      public function get §?A§() : Boolean
      {
         return this.§!Y§;
      }
      
      public function set §?A§(param1:Boolean) : void
      {
         this.§!Y§ = param1;
      }
      
      public function set §"z§(param1:Boolean) : void
      {
         this.§@A§ = param1;
      }
      
      public function set §!!0§(param1:uint) : void
      {
         this.§@!R§.§!!0§ = param1;
      }
      
      public function get §!!0§() : uint
      {
         return this.§@!R§.§!!0§;
      }
      
      public function get §'l§() : Boolean
      {
         return this.§'!&§;
      }
      
      public function set §'l§(param1:Boolean) : void
      {
         this.§'!&§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function get uniqueID() : String
      {
         return this.§'!d§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§'!d§ = param1;
      }
      
      public function §>!R§(param1:b2FilterData) : void
      {
         if(this.§49§)
         {
            this.§49§.§1!V§(param1);
         }
      }
      
      protected function §2!n§(param1:String) : int
      {
         return §8!;§.§2!n§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§^!6§.§#!a§();
         _loc3_.§+b§ = true;
         _loc3_.§0!`§ = true;
         _loc3_.§7D§ = true;
         _loc3_.§@R§ = 1;
         _loc3_.§"?§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§1l§(this.§%9§());
            this.mWorld = null;
         }
         this.§2R§.dispose();
         if(this.§`n§)
         {
            this.§`n§.dispose();
            this.§`n§ = null;
         }
         this.§49§ = null;
         this.§7!;§ = null;
         this.§^!6§ = null;
      }
      
      public function §-S§(param1:Number) : void
      {
         this.§%9§().§2!>§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §#f§() : Number
      {
         return (360 - this.§%9§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §[^§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§%9§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§!!m§();
         }
         if(param3)
         {
            this.§1w§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§49§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§%9§().GetPosition().x >= param3 && this.§%9§().GetPosition().x <= param4 && this.§%9§().GetPosition().y >= param1 && this.§%9§().GetPosition().y <= param2;
      }
      
      public function §?d§(param1:b2Vec2) : void
      {
         this.§7!;§ = param1;
      }
      
      public function §4!b§() : void
      {
         if(this.§7!;§)
         {
            this.§[^§(this.§7!;§,false);
            this.§7!;§ = null;
         }
      }
      
      public function §!!m§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§%9§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§%9§().§2!a§(0);
         }
         else
         {
            this.§%9§().§2!a§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §1w§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§%9§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§-S§(_loc2_);
      }
      
      public function §,z§(param1:Number) : void
      {
         this.§%9§().§2!a§(param1);
      }
      
      public function §%9§() : b2Body
      {
         if(this.§49§ != null)
         {
            return this.§49§.GetBody();
         }
         return null;
      }
      
      public function §+=§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§ +§ = param1;
            this.§'Z§ = param2;
         }
         this.§%9§().GetPosition().x = this.§ +§ * §0!f§.§<C§;
         this.§%9§().GetPosition().y = this.§'Z§ * §0!f§.§<C§;
      }
      
      public function §;J§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§`&§)
         {
            _loc3_ = true;
            this.§`&§ = false;
         }
         if(this.updateSpecialAnimation(param2))
         {
            _loc3_ = true;
         }
         if(this.updateFlyingFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(this.updateScreamingFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(this.updateBlinkingFrameAnimations(param2))
         {
            _loc3_ = true;
         }
         if(_loc3_)
         {
            this.§2R§.§ J§();
         }
         if(this.§`!f§ > 1 && this.§2R§.§+i§)
         {
            _loc4_ = 4 + (this.§2R§.§+i§.blurX - 4 + param2 / 20) % 28;
            this.§2R§.§+i§.blurX = _loc4_;
            this.§2R§.§+i§.blurY = _loc4_;
         }
         this.§2R§.§5!2§(param2);
         if(§5p§)
         {
            this.§>!?§(param1);
         }
         else
         {
            this.§6O§ = this.§8!0§;
            this.§ +§ = this.§%O§;
            this.§'Z§ = this.§^!K§;
         }
         this.§`n§.x = Math.round(this.§ +§);
         this.§`n§.y = Math.round(this.§'Z§);
         this.§`n§.rotation = this.§6O§ / 180 * Math.PI;
      }
      
      public function §+!A§() : void
      {
         var _loc1_:Number = this.§%9§().GetPosition().x;
         var _loc2_:Number = this.§%9§().GetPosition().y;
         this.§>!=§ = this.§8!0§;
         this.§+!l§ = this.§%O§;
         this.§7! § = this.§^!K§;
         this.§8!0§ = this.§%9§().GetAngle() * (180 / Math.PI) % 360;
         this.§%O§ = _loc1_ / §0!f§.§<C§;
         this.§^!K§ = _loc2_ / §0!f§.§<C§;
         this.§@!R§.§-T§();
         this.§@!R§.§56§(this.§%9§());
      }
      
      protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §>!?§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §1+§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§<O§.mLevelMain.mLevelEngine.§#!g§ * 1000;
         }
         param1 *= -1;
         if(this.§%O§ == this.§+!l§ || param1 == 0)
         {
            this.§&G§ = 0;
            this.§ +§ = this.§%O§;
         }
         else
         {
            this.§&G§ = param1 * (this.§+!l§ - this.§%O§) / param2;
            this.§ +§ = this.§%O§ + this.§&G§;
         }
         if(this.§^!K§ == this.§7! § || param1 == 0)
         {
            this.§4!a§ = 0;
            this.§'Z§ = this.§^!K§;
         }
         else
         {
            this.§4!a§ = param1 * (this.§7! § - this.§^!K§) / param2;
            this.§'Z§ = this.§^!K§ + this.§4!a§;
         }
         if(this.§8!0§ == this.§>!=§ || param1 == 0)
         {
            this.§6O§ = this.§8!0§;
         }
         else if(this.§>!=§ > this.§8!0§ && this.§>!=§ - this.§8!0§ <= 180)
         {
            this.§6O§ = this.§8!0§ + param1 * (this.§>!=§ - this.§8!0§) / param2;
         }
         else if(this.§>!=§ > this.§8!0§ && this.§>!=§ - this.§8!0§ > 180)
         {
            this.§6O§ = this.§8!0§ + param1 * (this.§>!=§ - 360 - this.§8!0§) / param2;
         }
         else if(this.§>!=§ < this.§8!0§ && this.§8!0§ - this.§>!=§ <= 180)
         {
            this.§6O§ = this.§8!0§ + param1 * (this.§>!=§ - this.§8!0§) / param2;
         }
         else if(this.§>!=§ < this.§8!0§ && this.§8!0§ - this.§>!=§ > 180)
         {
            this.§6O§ = this.§8!0§ + param1 * (this.§>!=§ + 360 - this.§8!0§) / param2;
         }
      }
      
      public function get §<!a§() : Point
      {
         if(!§5p§)
         {
         }
         return null;
      }
      
      public function §6$§() : Boolean
      {
         return this.§=!6§ == §?!O§.§;!&§ || this.§=!6§ == §?!O§.§ 6§;
      }
      
      public function §7m§() : Boolean
      {
         return this.§=!6§ == §?!O§.§#!4§;
      }
      
      public function §;T§() : Boolean
      {
         return this.§=!6§ == §?!O§.§9f§;
      }
      
      public function §3M§() : Boolean
      {
         return this.§=!6§ == §?!O§.§ 6§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§=!6§ == §?!O§.§@F§;
      }
      
      public function isGround() : Boolean
      {
         return this.§=!6§ == §?!O§.§8!a§;
      }
      
      public function §,!-§() : Boolean
      {
         return this.§=!6§ == §?!O§.§`5§;
      }
      
      public function §%!W§() : Boolean
      {
         return this.§=!6§ == §?!O§.§4J§;
      }
      
      public function §const§() : Boolean
      {
         if(this.§6!?§ == "MISC_EXPLOSIVE_TNT" || this.§6!?§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §`!0§() : Boolean
      {
         return (this.§7m§() || this.§,!-§() || this.§%!W§()) && !this.§'l§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §'8§() : Number
      {
         return Number(Math.sqrt(this.§%9§().GetLinearVelocity().x * this.§%9§().GetLinearVelocity().x + this.§%9§().GetLinearVelocity().y * this.§%9§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§;T§())
         {
            return this.§%!a§;
         }
         if(!this.§<O§.§9A§())
         {
            return this.§%!a§;
         }
         if(this.§2=§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§"!Z§(§[-§.§-9§);
            }
            else if(param1 > 12)
            {
               this.§"!Z§(§[-§.§^]§);
            }
            else if(param1 > 3)
            {
               this.§"!Z§(§[-§.§3l§);
            }
            return this.§%!a§;
         }
         if(param1 <= this.§2=§)
         {
            if(param1 >= this.§2=§ / 2)
            {
               this.§"!Z§(§[-§.§3l§);
            }
            if(this.§6$§() && this.§%!a§ == this.§"!j§)
            {
               this.§%!a§ = this.§"!j§ - 1;
            }
            return this.§%!a§;
         }
         param1 -= this.§2=§;
         if(param2 && this.§`!0§())
         {
            _loc7_ = Math.min(this.§%!a§,int(param1));
            _loc8_ = §0!f§.§8&§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §0!f§.§!!`§;
            }
            this.§<O§.mLevelMain.addScore(_loc8_,§#!`§.§-r§,this.§%!a§ > param1 && param3,this.§%9§().GetPosition().x,this.§%9§().GetPosition().y,§8!;§.§2$§(this.§6!?§));
         }
         if(!(param5 && this.§@A§))
         {
            this.§%!a§ -= param1;
         }
         if(this.§%!a§ < 1 && this.§6$§())
         {
            this.§%!a§ = 1;
         }
         if(this.§%!a§ < 1)
         {
            this.§%!a§ = 0;
            §"s§.§"v§(§[-§.§-9§,this.§^!6§.§-!@§,"ChannelDestroyed");
         }
         else
         {
            this.§"!Z§(§[-§.§^]§);
            this.addDamageParticles(this.§<O§.mLevelMain.particles,param1);
         }
         this.§2R§.setDamagedFrame();
         return this.§%!a§;
      }
      
      public function §"!Z§(param1:int) : void
      {
         §"s§.§"v§(param1,this.§^!6§.§-!@§);
      }
      
      public function §%!f§(param1:String) : Number
      {
         return this.§^!6§.material.§^!D§(param1) * this.§`!f§;
      }
      
      public function §"!S§(param1:String) : Number
      {
         return this.§^!6§.material.§;H§(param1);
      }
      
      public function §#!j§() : String
      {
         return this.§^!6§.material.mName;
      }
      
      public function §,e§() : Number
      {
         return this.§^!6§.§ !@§();
      }
      
      public function §@G§() : int
      {
         return this.§^!6§.§<T§();
      }
      
      public function §+U§() : Boolean
      {
         return this.§%9§().IsAwake() && (this.§6$§() && this.§%!a§ == this.§"!j§ || Math.abs(this.§%9§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§%9§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§%9§().§"!4§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function § !i§() : Boolean
      {
         if(!this.§%9§().IsAwake())
         {
            return true;
         }
         return !this.§8X§();
      }
      
      protected function §8X§() : Boolean
      {
         return this.§@!R§.§8X§();
      }
      
      public function §-!"§(param1:Number = 3) : void
      {
         this.§`!f§ = param1;
         if(this.§`!f§ > 1)
         {
            this.§2R§.§+!5§();
         }
         else
         {
            this.§2R§.§+i§ = null;
         }
      }
      
      public function §'k§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§^!6§.§#!a§() == §0R§.§7!&§)
         {
            _loc2_ = this.§2R§.mW * this.§2R§.mH * (§0!f§.§<C§ * §0!f§.§<C§);
         }
         else
         {
            _loc2_ = this.§%9§().GetMass() / this.§49§.§"!&§();
            if(param1)
            {
               _loc2_ *= this.§"!8§();
            }
            _loc2_ /= this.§>c§ * this.§>c§;
         }
         return _loc2_;
      }
      
      public function §"!8§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§2R§.§>!k§ - 1) / 10);
      }
      
      public function §^s§(param1:Number) : void
      {
         var _loc2_:Number = this.§%9§().GetLinearVelocity().x;
         var _loc3_:Number = this.§%9§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§%9§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§,!k§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§3F§) : void
      {
      }
      
      public function addDamageParticles(param1:§3F§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §4!`§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§%9§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§%9§().§!!;§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§#f§()) + 360) % 360;
            _loc4_ = Math.round(_loc4_ / 22.5) * 22.5;
            _loc5_ = 0;
            if(param1 != 0)
            {
               _loc5_ = _loc4_ % param1;
            }
            if(_loc5_ < param1 / 2)
            {
               _loc4_ -= _loc5_;
            }
            else
            {
               _loc4_ += param1 - _loc5_;
            }
            this.§-S§(_loc4_);
         }
         var _loc3_:Number = this.§#f§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§-S§(_loc3_);
      }
      
      public function §1!7§(param1:Number) : void
      {
         var _loc2_:Number = §"j§(this.§%9§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §0M§(_loc2_);
         this.§%9§().§2!>§(_loc2_);
      }
      
      public function §?!T§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§%9§().GetPosition().Copy();
         var _loc4_:Number = _loc3_.x - param2.x;
         var _loc5_:Number = _loc3_.y - param2.y;
         if(_loc4_ == 0 && _loc5_ == 0)
         {
            return;
         }
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = _loc4_ / _loc5_;
         var _loc8_:Number = Math.atan(_loc7_) * 180 / Math.PI;
         if(_loc5_ < 0)
         {
            _loc8_ += 180;
         }
         var _loc9_:Number;
         var _loc10_:Number = (_loc9_ = _loc8_ + param1) * Math.PI / 180;
         var _loc11_:Number = Math.sin(_loc10_) * _loc6_;
         var _loc12_:Number = Math.cos(_loc10_) * _loc6_;
         var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
         this.§%9§().§!!;§(_loc13_);
      }
   }
}
