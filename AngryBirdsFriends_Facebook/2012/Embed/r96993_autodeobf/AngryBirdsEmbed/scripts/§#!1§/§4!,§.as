package §#!1§
{
   import §'N§.§^]§;
   import §3v§.§1a§;
   import §<!<§.§2!@§;
   import §<!<§.§6e§;
   import §<!<§.§6t§;
   import §<!<§.§>'§;
   import §<!<§.§>2§;
   import §]!6§.Sprite;
   import §]"§.§4!F§;
   import §]"§.§=j§;
   import §`i§.§2W§;
   import §`i§.§;9§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §4!,§
   {
      
      public static const §=Y§:uint = 1 << 1;
      
      public static const §+4§:uint = 1 << 2;
      
      public static const §!§:uint = 1 << 3;
      
      public static const §;!3§:uint = 1 << 4;
      
      public static const §?!'§:Boolean = true;
       
      
      private var §^J§:String;
      
      private var §true §:int;
      
      private var §+!C§:int;
      
      public var §=p§:String;
      
      public var §+!<§:int;
      
      private var §=8§:§6e§;
      
      private var §0&§:§;^§;
      
      private var §8I§:b2World;
      
      protected var §=!H§:String = "";
      
      protected var §[W§:int = 1;
      
      private var §9o§:b2Fixture;
      
      private var §else §:b2Body;
      
      private var §&!$§:b2Vec2;
      
      public var §,s§:Number;
      
      public var §?!+§:Number;
      
      private var §]U§:Number;
      
      private var §>!&§:Boolean = false;
      
      private var §0!4§:Number;
      
      private var §27§:Number;
      
      private var §66§:Number;
      
      private var §+I§:Number;
      
      private var §%q§:Number;
      
      private var §6!$§:Number;
      
      public var §'[§:Number = 1;
      
      private var §>!C§:Boolean = false;
      
      public var §%M§:Number = 0;
      
      public var §-8§:Number = 0;
      
      protected var §5B§:Boolean = false;
      
      public var §>7§:§+q§;
      
      private var §^!>§:Sprite;
      
      private var §4F§:Number = 0;
      
      private var §1v§:Number = 0;
      
      private var §;z§:Number = 0;
      
      private var §[2§:Number = 1.0;
      
      private var §;!H§:Boolean = false;
      
      private var §&§:Vector.<Vector.<Number>>;
      
      private var §+8§:int = 10;
      
      private var §%§:Boolean = true;
      
      public function §4!,§(param1:§;^§, param2:Sprite, param3:b2World, param4:§2W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§&§ = new Vector.<Vector.<Number>>();
         super();
         this.§=p§ = param6;
         this.§=8§ = §6t§.§5,§(param6);
         this.§0&§ = param1;
         this.§^!>§ = param2;
         this.§[2§ = param10;
         this.§;!H§ = param11;
         this.§true § = param5;
         this.§+!<§ = this.§=8§.§+!<§;
         this.§+!C§ = this.§=8§.§6!5§();
         this.§&§[0] = new Vector.<Number>();
         this.§&§[1] = new Vector.<Number>();
         this.§&§[2] = new Vector.<Number>();
         this.§>7§ = new §+q§(this,param2,param4);
         if(!this.§>7§.§,P§(param1.§"8§.§9V§))
         {
            this.§>7§.§#9§(this.§+!C§,this.§=8§.§+E§(),this.§=8§.§^!9§() / §2W§.§0;§,this.§=8§.§49§() / §2W§.§0;§);
         }
         this.§>7§.§@0§(this.§+!C§ == §2!@§.§=$§);
         this.§8I§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§else § = this.§8I§.CreateBody(_loc12_);
         this.§else §.SetUserData(this);
         if(this.§+!C§ == §2!@§.§=Q§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§=8§.shape.§-!6§ * param10,this.§=8§.shape.§ B§ * param10);
            this.§9o§ = this.§else §.CreateFixture2(_loc14_,this.§=8§.§?!G§());
         }
         else if(this.§+!C§ == §2!@§.§=$§ || this.§+!C§ == §2!@§.§%W§)
         {
            this.§9o§ = this.§else §.CreateFixture2(this.§=8§.shape.§?v§(param10),this.§=8§.§?!G§());
         }
         this.§9o§.SetFriction(this.§=8§.§9[§());
         this.§9o§.SetRestitution(this.§=8§.§5T§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§!h§())
         {
            _loc13_.categoryBits = §=Y§;
            _loc13_.maskBits = 65535 & ~§+4§;
         }
         else if(this.§=p§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§=p§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §+4§;
            _loc13_.maskBits = 65535 & ~§=Y§;
         }
         this.§9o§.SetFilterData(_loc13_);
         this.§]U§ = this.§=8§.§<Y§();
         if(this.§=8§.§?!+§ > 0)
         {
            this.§,s§ = this.§?!+§ = this.§=8§.§?!+§;
         }
         else
         {
            this.§,s§ = this.§?!+§ = Math.round(this.§%!F§(true) * this.§=8§.§"!!§());
            if(this.§,s§ < 1)
            {
               this.§,s§ = this.§?!+§ = 1;
            }
         }
         if(this.§=8§.§+!<§ == §6e§.§#M§)
         {
            this.§^!>§.visible = false;
         }
         else
         {
            this.§>7§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§6!#§(param9);
         }
         this.§["§();
         this.§%!6§(0,1);
         this.§>7§.§9S§(this.§=8§.shape);
      }
      
      public static function §%]§(param1:int, param2:§>'§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§7`§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§1,§;
            }
            §^]§.§%!G§(_loc4_,param3);
         }
      }
      
      public static function §^t§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §@!9§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§^!>§;
      }
      
      public function get x() : Number
      {
         return this.§4F§;
      }
      
      public function get y() : Number
      {
         return this.§1v§;
      }
      
      public function get scale() : Number
      {
         return this.§[2§;
      }
      
      public function get front() : Boolean
      {
         return this.§;!H§;
      }
      
      public function get §!s§() : Number
      {
         return this.§else §.GetPosition().x;
      }
      
      public function get §@!%§() : Number
      {
         return this.§else §.GetPosition().y;
      }
      
      public function get §@F§() : §6e§
      {
         return this.§=8§;
      }
      
      public function get §0R§() : Boolean
      {
         return this.§]U§ >= 0;
      }
      
      protected function get container() : §;^§
      {
         return this.§0&§;
      }
      
      public function get §4U§() : Boolean
      {
         return this.§%§;
      }
      
      public function set §4U§(param1:Boolean) : void
      {
         this.§%§ = param1;
      }
      
      public function set § Y§(param1:Boolean) : void
      {
         this.§>!&§ = param1;
      }
      
      public function set §>j§(param1:uint) : void
      {
         this.§+8§ = param1;
      }
      
      public function get §>j§() : uint
      {
         return this.§+8§;
      }
      
      public function get §!! §() : Boolean
      {
         return this.§>!C§;
      }
      
      public function set §!! §(param1:Boolean) : void
      {
         this.§>!C§ = param1;
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
         return this.§^J§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§^J§ = param1;
      }
      
      public function §'9§(param1:b2FilterData) : void
      {
         if(this.§9o§)
         {
            this.§9o§.SetFilterData(param1);
         }
      }
      
      protected function §9-§(param1:String) : int
      {
         return §4!F§.§9-§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§=8§.§[!@§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§8I§)
         {
            this.§8I§.DestroyBody(this.§!v§());
            this.§8I§ = null;
         }
         this.§>7§.dispose();
         if(this.§^!>§)
         {
            this.§^!>§.dispose();
            this.§^!>§ = null;
         }
         this.§9o§ = null;
         this.§&!$§ = null;
         this.§=8§ = null;
      }
      
      public function §6!#§(param1:Number) : void
      {
         this.§!v§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §>!+§() : Number
      {
         return (360 - this.§!v§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §,!D§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§!v§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§69§();
         }
         if(param3)
         {
            this.§]!4§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§9o§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§!v§().GetPosition().x >= param3 && this.§!v§().GetPosition().x <= param4 && this.§!v§().GetPosition().y >= param1 && this.§!v§().GetPosition().y <= param2;
      }
      
      public function §8w§(param1:b2Vec2) : void
      {
         this.§&!$§ = param1;
      }
      
      public function §^!B§() : void
      {
         if(this.§&!$§)
         {
            this.§,!D§(this.§&!$§,false);
            this.§&!$§ = null;
         }
      }
      
      public function §69§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§!v§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§!v§().SetAngularVelocity(0);
         }
         else
         {
            this.§!v§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §]!4§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§!v§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§6!#§(_loc2_);
      }
      
      public function §]&§(param1:Number) : void
      {
         this.§!v§().SetAngularVelocity(param1);
      }
      
      public function §!v§() : b2Body
      {
         if(this.§9o§ != null)
         {
            return this.§9o§.GetBody();
         }
         return null;
      }
      
      public function §;!-§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§4F§ = param1;
            this.§1v§ = param2;
         }
         this.§!v§().GetPosition().x = this.§4F§ * §2W§.§0;§;
         this.§!v§().GetPosition().y = this.§1v§ * §2W§.§0;§;
      }
      
      public function §%!6§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§5B§)
         {
            _loc3_ = true;
            this.§5B§ = false;
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
            this.§>7§.§#[§();
         }
         if(this.§'[§ > 1 && this.§>7§.§#R§)
         {
            _loc4_ = 4 + (this.§>7§.§#R§.blurX - 4 + param2 / 20) % 28;
            this.§>7§.§#R§.blurX = _loc4_;
            this.§>7§.§#R§.blurY = _loc4_;
         }
         this.§>7§.§;5§(param2);
         if(§?!'§)
         {
            this.§?!5§(param1);
         }
         else
         {
            this.§;z§ = this.§66§;
            this.§4F§ = this.§0!4§;
            this.§1v§ = this.§27§;
         }
         this.§^!>§.x = Math.round(this.§4F§);
         this.§^!>§.y = Math.round(this.§1v§);
         this.§^!>§.rotation = this.§;z§ / 180 * Math.PI;
      }
      
      public function §["§() : void
      {
         var _loc1_:Number = this.§!v§().GetPosition().x;
         var _loc2_:Number = this.§!v§().GetPosition().y;
         this.§6!$§ = this.§66§;
         this.§+I§ = this.§0!4§;
         this.§%q§ = this.§27§;
         this.§66§ = this.§!v§().GetAngle() * (180 / Math.PI) % 360;
         this.§0!4§ = _loc1_ / §2W§.§0;§;
         this.§27§ = _loc2_ / §2W§.§0;§;
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
      
      public function §?!5§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §1a§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§0&§.§"8§.§3X§.§+!9§ * 1000;
         }
         param1 *= -1;
         if(this.§0!4§ == this.§+I§ || param1 == 0)
         {
            this.§%M§ = 0;
            this.§4F§ = this.§0!4§;
         }
         else
         {
            this.§%M§ = param1 * (this.§+I§ - this.§0!4§) / param2;
            this.§4F§ = this.§0!4§ + this.§%M§;
         }
         if(this.§27§ == this.§%q§ || param1 == 0)
         {
            this.§-8§ = 0;
            this.§1v§ = this.§27§;
         }
         else
         {
            this.§-8§ = param1 * (this.§%q§ - this.§27§) / param2;
            this.§1v§ = this.§27§ + this.§-8§;
         }
         if(this.§66§ == this.§6!$§ || param1 == 0)
         {
            this.§;z§ = this.§66§;
         }
         else if(this.§6!$§ > this.§66§ && this.§6!$§ - this.§66§ <= 180)
         {
            this.§;z§ = this.§66§ + param1 * (this.§6!$§ - this.§66§) / param2;
         }
         else if(this.§6!$§ > this.§66§ && this.§6!$§ - this.§66§ > 180)
         {
            this.§;z§ = this.§66§ + param1 * (this.§6!$§ - 360 - this.§66§) / param2;
         }
         else if(this.§6!$§ < this.§66§ && this.§66§ - this.§6!$§ <= 180)
         {
            this.§;z§ = this.§66§ + param1 * (this.§6!$§ - this.§66§) / param2;
         }
         else if(this.§6!$§ < this.§66§ && this.§66§ - this.§6!$§ > 180)
         {
            this.§;z§ = this.§66§ + param1 * (this.§6!$§ + 360 - this.§66§) / param2;
         }
      }
      
      public function get §>b§() : Point
      {
         if(!§?!'§)
         {
         }
         return null;
      }
      
      public function §!h§() : Boolean
      {
         return this.§+!<§ == §6e§.§%f§ || this.§+!<§ == §6e§.§>!7§;
      }
      
      public function §?B§() : Boolean
      {
         return this.§+!<§ == §6e§.§[>§;
      }
      
      public function §;w§() : Boolean
      {
         return this.§+!<§ == §6e§.§<K§;
      }
      
      public function §,!I§() : Boolean
      {
         return this.§+!<§ == §6e§.§>!7§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§+!<§ == §6e§.§1X§;
      }
      
      public function isGround() : Boolean
      {
         return this.§+!<§ == §6e§.§#M§;
      }
      
      public function §!A§() : Boolean
      {
         return this.§+!<§ == §6e§.§-!1§;
      }
      
      public function §]!=§() : Boolean
      {
         return this.§+!<§ == §6e§.§4!<§;
      }
      
      public function §#w§() : Boolean
      {
         if(this.§=p§ == "MISC_EXPLOSIVE_TNT" || this.§=p§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §%S§() : Boolean
      {
         return (this.§?B§() || this.§!A§() || this.§]!=§()) && !this.§!! §;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §]=§() : Number
      {
         return Number(Math.sqrt(this.§!v§().GetLinearVelocity().x * this.§!v§().GetLinearVelocity().x + this.§!v§().GetLinearVelocity().y * this.§!v§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§;w§())
         {
            return this.§,s§;
         }
         if(!this.§0&§.§!!6§())
         {
            return this.§,s§;
         }
         if(this.§]U§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§+K§(§>'§.§&u§);
            }
            else if(param1 > 12)
            {
               this.§+K§(§>'§.§0z§);
            }
            else if(param1 > 3)
            {
               this.§+K§(§>'§.§1j§);
            }
            return this.§,s§;
         }
         if(param1 <= this.§]U§)
         {
            if(param1 >= this.§]U§ / 2)
            {
               this.§+K§(§>'§.§1j§);
            }
            if(this.§!h§() && this.§,s§ == this.§?!+§)
            {
               this.§,s§ = this.§?!+§ - 1;
            }
            return this.§,s§;
         }
         param1 -= this.§]U§;
         if(param2 && this.§%S§())
         {
            _loc7_ = Math.min(this.§,s§,int(param1));
            _loc8_ = §2W§.§"!'§.getValue() * _loc7_;
            this.§0&§.§"8§.addScore(_loc8_,§;9§.§!u§,this.§,s§ > param1 && param3,this.§!v§().GetPosition().x,this.§!v§().GetPosition().y,§4!F§.§&q§(this.§=p§));
         }
         if(!(param5 && this.§>!&§))
         {
            this.§,s§ -= param1;
         }
         if(this.§,s§ < 1 && this.§!h§())
         {
            this.§,s§ = 1;
         }
         if(this.§,s§ < 1)
         {
            this.§,s§ = 0;
            §4!,§.§%]§(§>'§.§&u§,this.§=8§.§]!,§,"ChannelDestroyed");
         }
         else
         {
            this.§+K§(§>'§.§0z§);
            this.addDamageParticles(this.§0&§.§"8§.particles,param1);
         }
         this.§>7§.setDamagedFrame();
         return this.§,s§;
      }
      
      public function §+K§(param1:int) : void
      {
         §4!,§.§%]§(param1,this.§=8§.§]!,§);
      }
      
      public function §11§(param1:String) : Number
      {
         return this.§=8§.material.§]s§(param1) * this.§'[§;
      }
      
      public function §`9§(param1:String) : Number
      {
         return this.§=8§.material.§3!=§(param1);
      }
      
      public function §7H§() : String
      {
         return this.§=8§.material.mName;
      }
      
      public function §3!@§() : Number
      {
         return this.§=8§.§"!!§();
      }
      
      public function §<2§() : int
      {
         return this.§=8§.§`K§();
      }
      
      public function §-O§() : Boolean
      {
         return this.§!v§().IsAwake() && (this.§!h§() && this.§,s§ == this.§?!+§ || Math.abs(this.§!v§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§!v§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§!v§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §&!"§() : Boolean
      {
         if(!this.§!v§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§=e§();
         if(Math.abs(this.§9j§(this.§&§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§9j§(this.§&§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§9j§(this.§&§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §9j§(param1:Vector.<Number>) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ += param1[_loc3_];
            _loc3_++;
         }
         return _loc2_ / param1.length;
      }
      
      private function §=e§() : void
      {
         this.§&§[0].push(this.§!v§().GetLinearVelocity().x);
         this.§&§[1].push(this.§!v§().GetLinearVelocity().y);
         this.§&§[2].push(this.§!v§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§&§[_loc1_].length > this.§+8§)
            {
               this.§&§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §-!E§(param1:Number = 3) : void
      {
         this.§'[§ = param1;
         if(this.§'[§ > 1)
         {
            this.§>7§.§!!@§();
         }
         else
         {
            this.§>7§.§#R§ = null;
         }
      }
      
      public function §%!F§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§=8§.§[!@§() == §>2§.§"I§)
         {
            _loc2_ = this.§>7§.mW * this.§>7§.mH * (§2W§.§0;§ * §2W§.§0;§);
         }
         else
         {
            _loc2_ = this.§!v§().GetMass() / this.§9o§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.set();
            }
            _loc2_ /= this.§[2§ * this.§[2§;
         }
         return _loc2_;
      }
      
      public function set() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§>7§.§get § - 1) / 10);
      }
      
      public function §9!$§(param1:Number) : void
      {
         var _loc2_:Number = this.§!v§().GetLinearVelocity().x;
         var _loc3_:Number = this.§!v§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§!v§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§;^§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§=j§) : void
      {
      }
      
      public function addDamageParticles(param1:§=j§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §]!7§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§!v§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§!v§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§>!+§()) + 360) % 360;
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
            this.§6!#§(_loc4_);
         }
         var _loc3_:Number = this.§>!+§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§6!#§(_loc3_);
      }
      
      public function §6S§(param1:Number) : void
      {
         var _loc2_:Number = §^t§(this.§!v§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §@!9§(_loc2_);
         this.§!v§().SetAngle(_loc2_);
      }
      
      public function § !8§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§!v§().GetPosition().Copy();
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
         this.§!v§().SetPosition(_loc13_);
      }
   }
}
