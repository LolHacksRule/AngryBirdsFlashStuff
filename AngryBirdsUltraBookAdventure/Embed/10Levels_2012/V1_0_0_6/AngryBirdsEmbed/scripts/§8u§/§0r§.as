package §8u§
{
   import §#h§.§ !H§;
   import §,!C§.§+X§;
   import §,!C§.§0v§;
   import §,!C§.§6m§;
   import §,!C§.§8!3§;
   import §,!C§.§implements§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§4f§;
   import §>K§.§9X§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §0r§
   {
      
      public static const §^!F§:uint = 1 << 1;
      
      public static const §<!,§:uint = 1 << 2;
      
      public static const §%!-§:uint = 1 << 3;
      
      public static const §5^§:uint = 1 << 4;
      
      public static const §``§:Boolean = true;
      
      public static const §!G§:Number = 5;
      
      public static const §+f§:Number = 10;
       
      
      private var §9f§:String;
      
      private var §'E§:int;
      
      private var §7!5§:int;
      
      public var §>!"§:String;
      
      public var §!U§:int;
      
      private var §=!#§:§+X§;
      
      private var §46§:§6a§;
      
      private var §<!F§:b2World;
      
      protected var §+M§:String = "";
      
      protected var §?!I§:int = 1;
      
      private var §]0§:b2Fixture;
      
      private var §7!!§:b2Body;
      
      private var §,r§:b2Vec2;
      
      public var §@^§:Number;
      
      public var §%!J§:Number;
      
      private var §#w§:Number;
      
      private var §7L§:Boolean = false;
      
      private var §`!@§:Number;
      
      private var §`=§:Number;
      
      private var §!9§:Number;
      
      private var §8?§:Number;
      
      private var §"! §:Number;
      
      private var §"H§:Number;
      
      public var §&1§:Number = 1;
      
      private var §8!$§:Boolean = false;
      
      public var §+!A§:Number = 0;
      
      public var §[=§:Number = 0;
      
      protected var §>;§:Boolean = false;
      
      public var §7!;§:§44§;
      
      private var §62§:Sprite;
      
      private var §^C§:Number = 0;
      
      private var §0§:Number = 0;
      
      private var §@!$§:Number = 0;
      
      private var §]H§:Number = 1.0;
      
      private var §?"§:Boolean = false;
      
      protected var §@m§:§0a§;
      
      private var §!]§:Boolean = true;
      
      public function §0r§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§>!"§ = param6;
         this.§=!#§ = §0v§.§&2§(param6);
         this.§46§ = param1;
         this.§62§ = param2;
         this.§]H§ = param10;
         this.§?"§ = param11;
         this.§'E§ = param5;
         this.§!U§ = this.§=!#§.§!U§;
         this.§7!5§ = this.§=!#§.§7a§();
         this.§@m§ = new §0a§(§!G§,§+f§);
         this.§7!;§ = new §44§(this,param2,param4);
         if(!this.§7!;§.§#!5§(param1.§33§.§ use§))
         {
            this.§7!;§.§+!>§(this.§7!5§,this.§=!#§.§![§(),this.§=!#§.§;r§() / §!E§.§#N§,this.§=!#§.§#G§() / §!E§.§#N§);
         }
         this.§7!;§.§6x§(this.§7!5§ == §6m§.§#a§);
         this.§<!F§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§7!!§ = this.§<!F§.CreateBody(_loc12_);
         this.§7!!§.SetUserData(this);
         if(this.§7!5§ == §6m§.§%e§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§=!#§.shape.§5;§ * param10,this.§=!#§.shape.§>!'§ * param10);
            this.§]0§ = this.§7!!§.CreateFixture2(_loc14_,this.§=!#§.override());
         }
         else if(this.§7!5§ == §6m§.§#a§ || this.§7!5§ == §6m§.§8-§)
         {
            this.§]0§ = this.§7!!§.CreateFixture2(this.§=!#§.shape.§@I§(param10),this.§=!#§.override());
         }
         this.§]0§.SetFriction(this.§=!#§.§6S§());
         this.§]0§.SetRestitution(this.§=!#§.§-U§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§3r§())
         {
            _loc13_.categoryBits = §^!F§;
            _loc13_.maskBits = 65535 & ~§<!,§;
         }
         else if(this.§>!"§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§>!"§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §<!,§;
            _loc13_.maskBits = 65535 & ~§^!F§;
         }
         this.§]0§.SetFilterData(_loc13_);
         this.§#w§ = this.§=!#§.§<<§();
         if(this.§=!#§.§%!J§ > 0)
         {
            this.§@^§ = this.§%!J§ = this.§=!#§.§%!J§;
         }
         else
         {
            this.§@^§ = this.§%!J§ = Math.round(this.§;?§(true) * this.§=!#§.§9>§());
            if(this.§@^§ < 1)
            {
               this.§@^§ = this.§%!J§ = 1;
            }
         }
         if(this.§=!#§.§!U§ == §+X§.§9?§)
         {
            this.§62§.visible = false;
         }
         else
         {
            this.§7!;§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§>X§(param9);
         }
         this.§`!+§();
         this.§;C§(0,1);
         this.§7!;§.§17§(this.§=!#§.shape);
      }
      
      public static function §>Y§(param1:int, param2:§implements§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§,L§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§^!E§;
            }
            § !H§.§]p§(_loc4_,param3);
         }
      }
      
      public static function §&Q§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §%n§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§62§;
      }
      
      public function get x() : Number
      {
         return this.§^C§;
      }
      
      public function get y() : Number
      {
         return this.§0§;
      }
      
      public function get scale() : Number
      {
         return this.§]H§;
      }
      
      public function get front() : Boolean
      {
         return this.§?"§;
      }
      
      public function get §#!0§() : Number
      {
         return this.§7!!§.GetPosition().x;
      }
      
      public function get § c§() : Number
      {
         return this.§7!!§.GetPosition().y;
      }
      
      public function get § x§() : §+X§
      {
         return this.§=!#§;
      }
      
      public function get §@!+§() : Boolean
      {
         return this.§#w§ >= 0;
      }
      
      public function get container() : §6a§
      {
         return this.§46§;
      }
      
      public function get §'2§() : Boolean
      {
         return this.§!]§;
      }
      
      public function set §'2§(param1:Boolean) : void
      {
         this.§!]§ = param1;
      }
      
      public function set §?'§(param1:Boolean) : void
      {
         this.§7L§ = param1;
      }
      
      public function set § w§(param1:uint) : void
      {
         this.§@m§.§ w§ = param1;
      }
      
      public function get § w§() : uint
      {
         return this.§@m§.§ w§;
      }
      
      public function get §9R§() : Boolean
      {
         return this.§8!$§;
      }
      
      public function set §9R§(param1:Boolean) : void
      {
         this.§8!$§ = param1;
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
         return this.§9f§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§9f§ = param1;
      }
      
      public function §"t§(param1:b2FilterData) : void
      {
         if(this.§]0§)
         {
            this.§]0§.SetFilterData(param1);
         }
      }
      
      protected function §?Q§(param1:String) : int
      {
         return §,i§.§?Q§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§=!#§.§1]§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§<!F§)
         {
            this.§<!F§.DestroyBody(this.§?n§());
            this.§<!F§ = null;
         }
         this.§7!;§.dispose();
         if(this.§62§)
         {
            this.§62§.dispose();
            this.§62§ = null;
         }
         this.§]0§ = null;
         this.§,r§ = null;
         this.§=!#§ = null;
      }
      
      public function §>X§(param1:Number) : void
      {
         this.§?n§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function § for§() : Number
      {
         return (360 - this.§?n§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §96§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§?n§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§@P§();
         }
         if(param3)
         {
            this.§'!G§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§]0§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§?n§().GetPosition().x >= param3 && this.§?n§().GetPosition().x <= param4 && this.§?n§().GetPosition().y >= param1 && this.§?n§().GetPosition().y <= param2;
      }
      
      public function §-n§(param1:b2Vec2) : void
      {
         this.§,r§ = param1;
      }
      
      public function §9-§() : void
      {
         if(this.§,r§)
         {
            this.§96§(this.§,r§,false);
            this.§,r§ = null;
         }
      }
      
      public function §@P§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?n§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§?n§().SetAngularVelocity(0);
         }
         else
         {
            this.§?n§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §'!G§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?n§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§>X§(_loc2_);
      }
      
      public function §!!5§(param1:Number) : void
      {
         this.§?n§().SetAngularVelocity(param1);
      }
      
      public function §?n§() : b2Body
      {
         if(this.§]0§ != null)
         {
            return this.§]0§.GetBody();
         }
         return null;
      }
      
      public function §]W§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§^C§ = param1;
            this.§0§ = param2;
         }
         this.§?n§().GetPosition().x = this.§^C§ * §!E§.§#N§;
         this.§?n§().GetPosition().y = this.§0§ * §!E§.§#N§;
      }
      
      public function §;C§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§>;§)
         {
            _loc3_ = true;
            this.§>;§ = false;
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
            this.§7!;§.§'q§();
         }
         if(this.§&1§ > 1 && this.§7!;§.§ !<§)
         {
            _loc4_ = 4 + (this.§7!;§.§ !<§.blurX - 4 + param2 / 20) % 28;
            this.§7!;§.§ !<§.blurX = _loc4_;
            this.§7!;§.§ !<§.blurY = _loc4_;
         }
         this.§7!;§.§,l§(param2);
         if(§``§)
         {
            this.§;!?§(param1);
         }
         else
         {
            this.§@!$§ = this.§!9§;
            this.§^C§ = this.§`!@§;
            this.§0§ = this.§`=§;
         }
         this.§62§.x = Math.round(this.§^C§);
         this.§62§.y = Math.round(this.§0§);
         this.§62§.rotation = this.§@!$§ / 180 * Math.PI;
      }
      
      public function §`!+§() : void
      {
         var _loc1_:Number = this.§?n§().GetPosition().x;
         var _loc2_:Number = this.§?n§().GetPosition().y;
         this.§"H§ = this.§!9§;
         this.§8?§ = this.§`!@§;
         this.§"! § = this.§`=§;
         this.§!9§ = this.§?n§().GetAngle() * (180 / Math.PI) % 360;
         this.§`!@§ = _loc1_ / §!E§.§#N§;
         this.§`=§ = _loc2_ / §!E§.§#N§;
         this.§@m§.§-O§();
         this.§@m§.§[!>§(this.§?n§());
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
      
      public function §;!?§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §9X§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§46§.§33§.§=!D§.§=!4§ * 1000;
         }
         param1 *= -1;
         if(this.§`!@§ == this.§8?§ || param1 == 0)
         {
            this.§+!A§ = 0;
            this.§^C§ = this.§`!@§;
         }
         else
         {
            this.§+!A§ = param1 * (this.§8?§ - this.§`!@§) / param2;
            this.§^C§ = this.§`!@§ + this.§+!A§;
         }
         if(this.§`=§ == this.§"! § || param1 == 0)
         {
            this.§[=§ = 0;
            this.§0§ = this.§`=§;
         }
         else
         {
            this.§[=§ = param1 * (this.§"! § - this.§`=§) / param2;
            this.§0§ = this.§`=§ + this.§[=§;
         }
         if(this.§!9§ == this.§"H§ || param1 == 0)
         {
            this.§@!$§ = this.§!9§;
         }
         else if(this.§"H§ > this.§!9§ && this.§"H§ - this.§!9§ <= 180)
         {
            this.§@!$§ = this.§!9§ + param1 * (this.§"H§ - this.§!9§) / param2;
         }
         else if(this.§"H§ > this.§!9§ && this.§"H§ - this.§!9§ > 180)
         {
            this.§@!$§ = this.§!9§ + param1 * (this.§"H§ - 360 - this.§!9§) / param2;
         }
         else if(this.§"H§ < this.§!9§ && this.§!9§ - this.§"H§ <= 180)
         {
            this.§@!$§ = this.§!9§ + param1 * (this.§"H§ - this.§!9§) / param2;
         }
         else if(this.§"H§ < this.§!9§ && this.§!9§ - this.§"H§ > 180)
         {
            this.§@!$§ = this.§!9§ + param1 * (this.§"H§ + 360 - this.§!9§) / param2;
         }
      }
      
      public function get §6J§() : Point
      {
         if(!§``§)
         {
         }
         return null;
      }
      
      public function §3r§() : Boolean
      {
         return this.§!U§ == §+X§.§1!C§ || this.§!U§ == §+X§.§2p§;
      }
      
      public function §?V§() : Boolean
      {
         return this.§!U§ == §+X§.§92§;
      }
      
      public function §%!@§() : Boolean
      {
         return this.§!U§ == §+X§.§!q§;
      }
      
      public function §@1§() : Boolean
      {
         return this.§!U§ == §+X§.§2p§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§!U§ == §+X§.§ 2§;
      }
      
      public function isGround() : Boolean
      {
         return this.§!U§ == §+X§.§9?§;
      }
      
      public function §%z§() : Boolean
      {
         return this.§!U§ == §+X§.§ !'§;
      }
      
      public function §9;§() : Boolean
      {
         return this.§!U§ == §+X§.§ >§;
      }
      
      public function §#!-§() : Boolean
      {
         if(this.§>!"§ == "MISC_EXPLOSIVE_TNT" || this.§>!"§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §[!G§() : Boolean
      {
         return (this.§?V§() || this.§%z§() || this.§9;§()) && !this.§9R§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §2Y§() : Number
      {
         return Number(Math.sqrt(this.§?n§().GetLinearVelocity().x * this.§?n§().GetLinearVelocity().x + this.§?n§().GetLinearVelocity().y * this.§?n§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§%!@§())
         {
            return this.§@^§;
         }
         if(!this.§46§.§'n§())
         {
            return this.§@^§;
         }
         if(this.§#w§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§'!"§(§implements§.§&H§);
            }
            else if(param1 > 12)
            {
               this.§'!"§(§implements§.§?8§);
            }
            else if(param1 > 3)
            {
               this.§'!"§(§implements§.§,!6§);
            }
            return this.§@^§;
         }
         if(param1 <= this.§#w§)
         {
            if(param1 >= this.§#w§ / 2)
            {
               this.§'!"§(§implements§.§,!6§);
            }
            if(this.§3r§() && this.§@^§ == this.§%!J§)
            {
               this.§@^§ = this.§%!J§ - 1;
            }
            return this.§@^§;
         }
         param1 -= this.§#w§;
         if(param2 && this.§[!G§())
         {
            _loc7_ = Math.min(this.§@^§,int(param1));
            _loc8_ = §!E§.§<!#§.getValue() * _loc7_;
            this.§46§.§33§.addScore(_loc8_,§4f§.§!l§,this.§@^§ > param1 && param3,this.§?n§().GetPosition().x,this.§?n§().GetPosition().y,§,i§.§[!1§(this.§>!"§));
         }
         if(!(param5 && this.§7L§))
         {
            this.§@^§ -= param1;
         }
         if(this.§@^§ < 1 && this.§3r§())
         {
            this.§@^§ = 1;
         }
         if(this.§@^§ < 1)
         {
            this.§@^§ = 0;
            §0r§.§>Y§(§implements§.§&H§,this.§=!#§.§#T§,"ChannelDestroyed");
         }
         else
         {
            this.§'!"§(§implements§.§?8§);
            this.addDamageParticles(this.§46§.§33§.particles,param1);
         }
         this.§7!;§.setDamagedFrame();
         return this.§@^§;
      }
      
      public function §'!"§(param1:int) : void
      {
         §0r§.§>Y§(param1,this.§=!#§.§#T§);
      }
      
      public function §%h§(param1:String) : Number
      {
         return this.§=!#§.material.§^?§(param1) * this.§&1§;
      }
      
      public function §]F§(param1:String) : Number
      {
         return this.§=!#§.material.§!!E§(param1);
      }
      
      public function §8M§() : String
      {
         return this.§=!#§.material.mName;
      }
      
      public function §9]§() : Number
      {
         return this.§=!#§.§9>§();
      }
      
      public function §4U§() : int
      {
         return this.§=!#§.§1!%§();
      }
      
      public function §9!"§() : Boolean
      {
         return this.§?n§().IsAwake() && (this.§3r§() && this.§@^§ == this.§%!J§ || Math.abs(this.§?n§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?n§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?n§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §-[§() : Boolean
      {
         if(!this.§?n§().IsAwake())
         {
            return true;
         }
         return !this.§#[§();
      }
      
      protected function §#[§() : Boolean
      {
         return this.§@m§.§#[§();
      }
      
      public function §=!-§(param1:Number = 3) : void
      {
         this.§&1§ = param1;
         if(this.§&1§ > 1)
         {
            this.§7!;§.§&p§();
         }
         else
         {
            this.§7!;§.§ !<§ = null;
         }
      }
      
      public function §;?§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§=!#§.§1]§() == §8!3§.§%2§)
         {
            _loc2_ = this.§7!;§.mW * this.§7!;§.mH * (§!E§.§#N§ * §!E§.§#N§);
         }
         else
         {
            _loc2_ = this.§?n§().GetMass() / this.§]0§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§]4§();
            }
            _loc2_ /= this.§]H§ * this.§]H§;
         }
         return _loc2_;
      }
      
      public function §]4§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§7!;§.§try§ - 1) / 10);
      }
      
      public function §^§(param1:Number) : void
      {
         var _loc2_:Number = this.§?n§().GetLinearVelocity().x;
         var _loc3_:Number = this.§?n§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§?n§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§6a§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§;x§) : void
      {
      }
      
      public function addDamageParticles(param1:§;x§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §3!H§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§?n§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§?n§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§ for§()) + 360) % 360;
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
            this.§>X§(_loc4_);
         }
         var _loc3_:Number = this.§ for§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§>X§(_loc3_);
      }
      
      public function §7Q§(param1:Number) : void
      {
         var _loc2_:Number = §&Q§(this.§?n§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §%n§(_loc2_);
         this.§?n§().SetAngle(_loc2_);
      }
      
      public function §77§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§?n§().GetPosition().Copy();
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
         this.§?n§().SetPosition(_loc13_);
      }
   }
}
