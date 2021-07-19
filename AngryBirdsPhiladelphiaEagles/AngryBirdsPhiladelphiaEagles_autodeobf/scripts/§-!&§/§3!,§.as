package §-!&§
{
   import § N§.Sprite;
   import §&^§.§[!7§;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §2G§.§+b§;
   import §2G§.§,6§;
   import §2G§.§0Z§;
   import §2G§.§5!1§;
   import §2G§.§>U§;
   import §9T§.§1r§;
   import §9T§.§<!!§;
   import §`K§.§ L§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §3!,§
   {
      
      public static const override:uint = 1 << 1;
      
      public static const §+p§:uint = 1 << 2;
      
      public static const §'A§:uint = 1 << 3;
      
      public static const §0m§:uint = 1 << 4;
      
      public static const §`!?§:Boolean = true;
      
      public static const §&z§:Number = 5;
      
      public static const §#!M§:Number = 10;
       
      
      private var §%!%§:String;
      
      private var §>8§:int;
      
      private var §4T§:int;
      
      public var §4V§:String;
      
      public var §]^§:int;
      
      private var § Q§:§5!1§;
      
      private var §"F§:§20§;
      
      private var §8f§:b2World;
      
      protected var §7!H§:String = "";
      
      protected var §8!O§:int = 1;
      
      private var §5@§:b2Fixture;
      
      private var §%'§:b2Body;
      
      private var §9!#§:b2Vec2;
      
      public var §8!2§:Number;
      
      public var §53§:Number;
      
      private var §`O§:Number;
      
      private var §@!4§:Boolean = false;
      
      private var §6_§:Number;
      
      private var §!V§:Number;
      
      private var § 5§:Number;
      
      private var §>M§:Number;
      
      private var §67§:Number;
      
      private var §4$§:Number;
      
      public var §&!N§:Number = 1;
      
      private var § 4§:Boolean = false;
      
      public var §2q§:Number = 0;
      
      public var §2m§:Number = 0;
      
      protected var §;Q§:Boolean = false;
      
      public var §3! §:§?k§;
      
      private var §8A§:Sprite;
      
      private var §]!B§:Number = 0;
      
      private var §5G§:Number = 0;
      
      private var § !'§:Number = 0;
      
      private var §6-§:Number = 1.0;
      
      private var §^!-§:Boolean = false;
      
      protected var §^2§:§^U§;
      
      private var §]Y§:Boolean = true;
      
      public function §3!,§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§4V§ = param6;
         this.§ Q§ = §>U§.§=v§(param6);
         this.§"F§ = param1;
         this.§8A§ = param2;
         this.§6-§ = param10;
         this.§^!-§ = param11;
         this.§>8§ = param5;
         this.§]^§ = this.§ Q§.§]^§;
         this.§4T§ = this.§ Q§.§]!Q§();
         this.§^2§ = new §^U§(§&z§,§#!M§);
         this.§3! § = new §?k§(this,param2,param4);
         if(!this.§3! §.§[!B§(param1.§;§.§<'§))
         {
            this.§3! §.§+,§(this.§4T§,this.§ Q§.§2!>§(),this.§ Q§.§@!&§() / §1r§.§[M§,this.§ Q§.§7!!§() / §1r§.§[M§);
         }
         this.§3! §.§7G§(this.§4T§ == §+b§.§%<§);
         this.§8f§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§%'§ = this.§8f§.CreateBody(_loc12_);
         this.§%'§.SetUserData(this);
         if(this.§4T§ == §+b§.§ do§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§ Q§.shape.§6! § * param10,this.§ Q§.shape.§@g§ * param10);
            this.§5@§ = this.§%'§.CreateFixture2(_loc14_,this.§ Q§.§9!O§());
         }
         else if(this.§4T§ == §+b§.§%<§ || this.§4T§ == §+b§.§'J§)
         {
            this.§5@§ = this.§%'§.CreateFixture2(this.§ Q§.shape.§3@§(param10),this.§ Q§.§9!O§());
         }
         this.§5@§.SetFriction(this.§ Q§.§'!@§());
         this.§5@§.SetRestitution(this.§ Q§.§!F§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§?s§())
         {
            _loc13_.categoryBits = override;
            _loc13_.maskBits = 65535 & ~§+p§;
         }
         else if(this.§4V§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§4V§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §+p§;
            _loc13_.maskBits = 65535 & ~override;
         }
         this.§5@§.SetFilterData(_loc13_);
         this.§`O§ = this.§ Q§.§4r§();
         if(this.§ Q§.§53§ > 0)
         {
            this.§8!2§ = this.§53§ = this.§ Q§.§53§;
         }
         else
         {
            this.§8!2§ = this.§53§ = Math.round(this.§8!D§(true) * this.§ Q§.§<m§());
            if(this.§8!2§ < 1)
            {
               this.§8!2§ = this.§53§ = 1;
            }
         }
         if(this.§ Q§.§]^§ == §5!1§.§2!M§)
         {
            this.§8A§.visible = false;
         }
         else
         {
            this.§3! §.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§<H§(param9);
         }
         this.§ !4§();
         this.§break§(0,1);
         this.§3! §.§!!,§(this.§ Q§.shape);
      }
      
      public static function §,!I§(param1:int, param2:§0Z§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§=[§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§<j§;
            }
            §[!7§.§,!5§(_loc4_,param3);
         }
      }
      
      public static function §"j§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §?!#§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§8A§;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function get scale() : Number
      {
         return this.§6-§;
      }
      
      public function get front() : Boolean
      {
         return this.§^!-§;
      }
      
      public function get §49§() : Number
      {
         return this.§%'§.GetPosition().x;
      }
      
      public function get §"!<§() : Number
      {
         return this.§%'§.GetPosition().y;
      }
      
      public function get §+!?§() : §5!1§
      {
         return this.§ Q§;
      }
      
      public function get § [§() : Boolean
      {
         return this.§`O§ >= 0;
      }
      
      public function get container() : §20§
      {
         return this.§"F§;
      }
      
      public function get §+!>§() : Boolean
      {
         return this.§]Y§;
      }
      
      public function set §+!>§(param1:Boolean) : void
      {
         this.§]Y§ = param1;
      }
      
      public function set §@!1§(param1:Boolean) : void
      {
         this.§@!4§ = param1;
      }
      
      public function set §7!G§(param1:uint) : void
      {
         this.§^2§.§7!G§ = param1;
      }
      
      public function get §7!G§() : uint
      {
         return this.§^2§.§7!G§;
      }
      
      public function get §5§() : Boolean
      {
         return this.§ 4§;
      }
      
      public function set §5§(param1:Boolean) : void
      {
         this.§ 4§ = param1;
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
         return this.§%!%§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§%!%§ = param1;
      }
      
      public function §?[§(param1:b2FilterData) : void
      {
         if(this.§5@§)
         {
            this.§5@§.SetFilterData(param1);
         }
      }
      
      protected function §[q§(param1:String) : int
      {
         return §8R§.§[q§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§ Q§.§&'§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§8f§)
         {
            this.§8f§.DestroyBody(this.§`%§());
            this.§8f§ = null;
         }
         this.§3! §.dispose();
         if(this.§8A§)
         {
            this.§8A§.dispose();
            this.§8A§ = null;
         }
         this.§5@§ = null;
         this.§9!#§ = null;
         this.§ Q§ = null;
      }
      
      public function §<H§(param1:Number) : void
      {
         this.§`%§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §'!I§() : Number
      {
         return (360 - this.§`%§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §37§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§`%§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§!k§();
         }
         if(param3)
         {
            this.§4j§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§5@§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§`%§().GetPosition().x >= param3 && this.§`%§().GetPosition().x <= param4 && this.§`%§().GetPosition().y >= param1 && this.§`%§().GetPosition().y <= param2;
      }
      
      public function §use§(param1:b2Vec2) : void
      {
         this.§9!#§ = param1;
      }
      
      public function §@y§() : void
      {
         if(this.§9!#§)
         {
            this.§37§(this.§9!#§,false);
            this.§9!#§ = null;
         }
      }
      
      public function §!k§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`%§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§`%§().SetAngularVelocity(0);
         }
         else
         {
            this.§`%§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §4j§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`%§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§<H§(_loc2_);
      }
      
      public function §5!O§(param1:Number) : void
      {
         this.§`%§().SetAngularVelocity(param1);
      }
      
      public function §`%§() : b2Body
      {
         if(this.§5@§ != null)
         {
            return this.§5@§.GetBody();
         }
         return null;
      }
      
      public function §]7§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§]!B§ = param1;
            this.§5G§ = param2;
         }
         this.§`%§().GetPosition().x = this.§]!B§ * §1r§.§[M§;
         this.§`%§().GetPosition().y = this.§5G§ * §1r§.§[M§;
      }
      
      public function §break§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§;Q§)
         {
            _loc3_ = true;
            this.§;Q§ = false;
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
            this.§3! §.§08§();
         }
         if(this.§&!N§ > 1 && this.§3! §.§@O§)
         {
            _loc4_ = 4 + (this.§3! §.§@O§.blurX - 4 + param2 / 20) % 28;
            this.§3! §.§@O§.blurX = _loc4_;
            this.§3! §.§@O§.blurY = _loc4_;
         }
         this.§3! §.§56§(param2);
         if(§`!?§)
         {
            this.§%K§(param1);
         }
         else
         {
            this.§ !'§ = this.§ 5§;
            this.§]!B§ = this.§6_§;
            this.§5G§ = this.§!V§;
         }
         this.§8A§.x = Math.round(this.§]!B§);
         this.§8A§.y = Math.round(this.§5G§);
         this.§8A§.rotation = this.§ !'§ / 180 * Math.PI;
      }
      
      public function § !4§() : void
      {
         var _loc1_:Number = this.§`%§().GetPosition().x;
         var _loc2_:Number = this.§`%§().GetPosition().y;
         this.§4$§ = this.§ 5§;
         this.§>M§ = this.§6_§;
         this.§67§ = this.§!V§;
         this.§ 5§ = this.§`%§().GetAngle() * (180 / Math.PI) % 360;
         this.§6_§ = _loc1_ / §1r§.§[M§;
         this.§!V§ = _loc2_ / §1r§.§[M§;
         this.§^2§.§9!G§();
         this.§^2§.§-5§(this.§`%§());
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
      
      public function §%K§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            § L§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§"F§.§;§.§-!H§.§>f§ * 1000;
         }
         param1 *= -1;
         if(this.§6_§ == this.§>M§ || param1 == 0)
         {
            this.§2q§ = 0;
            this.§]!B§ = this.§6_§;
         }
         else
         {
            this.§2q§ = param1 * (this.§>M§ - this.§6_§) / param2;
            this.§]!B§ = this.§6_§ + this.§2q§;
         }
         if(this.§!V§ == this.§67§ || param1 == 0)
         {
            this.§2m§ = 0;
            this.§5G§ = this.§!V§;
         }
         else
         {
            this.§2m§ = param1 * (this.§67§ - this.§!V§) / param2;
            this.§5G§ = this.§!V§ + this.§2m§;
         }
         if(this.§ 5§ == this.§4$§ || param1 == 0)
         {
            this.§ !'§ = this.§ 5§;
         }
         else if(this.§4$§ > this.§ 5§ && this.§4$§ - this.§ 5§ <= 180)
         {
            this.§ !'§ = this.§ 5§ + param1 * (this.§4$§ - this.§ 5§) / param2;
         }
         else if(this.§4$§ > this.§ 5§ && this.§4$§ - this.§ 5§ > 180)
         {
            this.§ !'§ = this.§ 5§ + param1 * (this.§4$§ - 360 - this.§ 5§) / param2;
         }
         else if(this.§4$§ < this.§ 5§ && this.§ 5§ - this.§4$§ <= 180)
         {
            this.§ !'§ = this.§ 5§ + param1 * (this.§4$§ - this.§ 5§) / param2;
         }
         else if(this.§4$§ < this.§ 5§ && this.§ 5§ - this.§4$§ > 180)
         {
            this.§ !'§ = this.§ 5§ + param1 * (this.§4$§ + 360 - this.§ 5§) / param2;
         }
      }
      
      public function get §0v§() : Point
      {
         if(!§`!?§)
         {
         }
         return null;
      }
      
      public function §?s§() : Boolean
      {
         return this.§]^§ == §5!1§.§5J§ || this.§]^§ == §5!1§.§0z§;
      }
      
      public function §&l§() : Boolean
      {
         return this.§]^§ == §5!1§.§4!,§;
      }
      
      public function §&0§() : Boolean
      {
         return this.§]^§ == §5!1§.§#p§;
      }
      
      public function §for§() : Boolean
      {
         return this.§]^§ == §5!1§.§0z§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§]^§ == §5!1§.§[!2§;
      }
      
      public function isGround() : Boolean
      {
         return this.§]^§ == §5!1§.§2!M§;
      }
      
      public function §4H§() : Boolean
      {
         return this.§]^§ == §5!1§.§?m§;
      }
      
      public function §[!F§() : Boolean
      {
         return this.§]^§ == §5!1§.§9D§;
      }
      
      public function §51§() : Boolean
      {
         if(this.§4V§ == "MISC_EXPLOSIVE_TNT" || this.§4V§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §83§() : Boolean
      {
         return (this.§&l§() || this.§4H§() || this.§[!F§()) && !this.§5§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §?D§() : Number
      {
         return Number(Math.sqrt(this.§`%§().GetLinearVelocity().x * this.§`%§().GetLinearVelocity().x + this.§`%§().GetLinearVelocity().y * this.§`%§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§&0§())
         {
            return this.§8!2§;
         }
         if(!this.§"F§.§6!8§())
         {
            return this.§8!2§;
         }
         if(this.§`O§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§,A§(§0Z§.§-q§);
            }
            else if(param1 > 12)
            {
               this.§,A§(§0Z§.§-C§);
            }
            else if(param1 > 3)
            {
               this.§,A§(§0Z§.§9q§);
            }
            return this.§8!2§;
         }
         if(param1 <= this.§`O§)
         {
            if(param1 >= this.§`O§ / 2)
            {
               this.§,A§(§0Z§.§9q§);
            }
            if(this.§?s§() && this.§8!2§ == this.§53§)
            {
               this.§8!2§ = this.§53§ - 1;
            }
            return this.§8!2§;
         }
         param1 -= this.§`O§;
         if(param2 && this.§83§())
         {
            _loc7_ = Math.min(this.§8!2§,int(param1));
            _loc8_ = §1r§.§5m§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §1r§.§0!1§;
            }
            this.§"F§.§;§.addScore(_loc8_,§<!!§.§3^§,this.§8!2§ > param1 && param3,this.§`%§().GetPosition().x,this.§`%§().GetPosition().y,§8R§.§4!§(this.§4V§));
         }
         if(!(param5 && this.§@!4§))
         {
            this.§8!2§ -= param1;
         }
         if(this.§8!2§ < 1 && this.§?s§())
         {
            this.§8!2§ = 1;
         }
         if(this.§8!2§ < 1)
         {
            this.§8!2§ = 0;
            §3!,§.§,!I§(§0Z§.§-q§,this.§ Q§.§1h§,"ChannelDestroyed");
         }
         else
         {
            this.§,A§(§0Z§.§-C§);
            this.addDamageParticles(this.§"F§.§;§.particles,param1);
         }
         this.§3! §.setDamagedFrame();
         return this.§8!2§;
      }
      
      public function §,A§(param1:int) : void
      {
         §3!,§.§,!I§(param1,this.§ Q§.§1h§);
      }
      
      public function §3!'§(param1:String) : Number
      {
         return this.§ Q§.material.§%!"§(param1) * this.§&!N§;
      }
      
      public function §&F§(param1:String) : Number
      {
         return this.§ Q§.material.§?r§(param1);
      }
      
      public function §-X§() : String
      {
         return this.§ Q§.material.mName;
      }
      
      public function §=!$§() : Number
      {
         return this.§ Q§.§<m§();
      }
      
      public function §'q§() : int
      {
         return this.§ Q§.§@i§();
      }
      
      public function §@G§() : Boolean
      {
         return this.§`%§().IsAwake() && (this.§?s§() && this.§8!2§ == this.§53§ || Math.abs(this.§`%§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`%§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`%§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §6D§() : Boolean
      {
         if(!this.§`%§().IsAwake())
         {
            return true;
         }
         return !this.§0n§();
      }
      
      protected function §0n§() : Boolean
      {
         return this.§^2§.§0n§();
      }
      
      public function §@!A§(param1:Number = 3) : void
      {
         this.§&!N§ = param1;
         if(this.§&!N§ > 1)
         {
            this.§3! §.§0V§();
         }
         else
         {
            this.§3! §.§@O§ = null;
         }
      }
      
      public function §8!D§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§ Q§.§&'§() == §,6§.§"I§)
         {
            _loc2_ = this.§3! §.mW * this.§3! §.mH * (§1r§.§[M§ * §1r§.§[M§);
         }
         else
         {
            _loc2_ = this.§`%§().GetMass() / this.§5@§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§[o§();
            }
            _loc2_ /= this.§6-§ * this.§6-§;
         }
         return _loc2_;
      }
      
      public function §[o§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§3! §.§;!=§ - 1) / 10);
      }
      
      public function §[!5§(param1:Number) : void
      {
         var _loc2_:Number = this.§`%§().GetLinearVelocity().x;
         var _loc3_:Number = this.§`%§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§`%§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§20§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§5!5§) : void
      {
      }
      
      public function addDamageParticles(param1:§5!5§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §4#§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§`%§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§`%§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§'!I§()) + 360) % 360;
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
            this.§<H§(_loc4_);
         }
         var _loc3_:Number = this.§'!I§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§<H§(_loc3_);
      }
      
      public function §8N§(param1:Number) : void
      {
         var _loc2_:Number = §"j§(this.§`%§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §?!#§(_loc2_);
         this.§`%§().SetAngle(_loc2_);
      }
      
      public function §!-§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§`%§().GetPosition().Copy();
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
         this.§`%§().SetPosition(_loc13_);
      }
   }
}
