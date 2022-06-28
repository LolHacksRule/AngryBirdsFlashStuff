package §!+§
{
   import §!!>§.§!8§;
   import §!!>§.§#C§;
   import §+!"§.§5!<§;
   import §7!0§.§6Z§;
   import §7!0§.§9!0§;
   import §7!0§.§9!;§;
   import §7!0§.§<$§;
   import §7!0§.§^!%§;
   import §9W§.Sprite;
   import §?b§.§3$§;
   import §?b§.§7!,§;
   import §@D§.§6I§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §>G§
   {
      
      public static const §"[§:uint = 1 << 1;
      
      public static const §-!2§:uint = 1 << 2;
      
      public static const §?!1§:uint = 1 << 3;
      
      public static const §=!%§:uint = 1 << 4;
      
      public static const §use§:Boolean = true;
       
      
      private var §@!?§:String;
      
      private var §+0§:int;
      
      private var §9!A§:int;
      
      public var §2Z§:String;
      
      public var §>O§:int;
      
      private var §+W§:§9!;§;
      
      private var § !$§:§#-§;
      
      private var §-I§:b2World;
      
      protected var § !4§:String = "";
      
      protected var §?C§:int = 1;
      
      private var §^N§:b2Fixture;
      
      private var §1Z§:b2Body;
      
      private var §64§:b2Vec2;
      
      public var §`0§:Number;
      
      public var § !,§:Number;
      
      private var §=Q§:Number;
      
      private var §-l§:Boolean = false;
      
      private var §-&§:Number;
      
      private var §`G§:Number;
      
      private var §-!E§:Number;
      
      private var §2!#§:Number;
      
      private var §0-§:Number;
      
      private var §[J§:Number;
      
      public var §[!G§:Number = 1;
      
      private var §@!@§:Boolean = false;
      
      public var §'V§:Number = 0;
      
      public var §&!F§:Number = 0;
      
      protected var §90§:Boolean = false;
      
      public var §'j§:override;
      
      private var §[0§:Sprite;
      
      private var §<!B§:Number = 0;
      
      private var §,k§:Number = 0;
      
      private var §]!C§:Number = 0;
      
      private var §!!%§:Number = 1.0;
      
      private var §<4§:Boolean = false;
      
      private var §0V§:Vector.<Vector.<Number>>;
      
      private var §"6§:int = 10;
      
      private var §>v§:Boolean = true;
      
      public function §>G§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§0V§ = new Vector.<Vector.<Number>>();
         super();
         this.§2Z§ = param6;
         this.§+W§ = §9!0§.§&!<§(param6);
         this.§ !$§ = param1;
         this.§[0§ = param2;
         this.§!!%§ = param10;
         this.§<4§ = param11;
         this.§+0§ = param5;
         this.§>O§ = this.§+W§.§>O§;
         this.§9!A§ = this.§+W§.§6c§();
         this.§0V§[0] = new Vector.<Number>();
         this.§0V§[1] = new Vector.<Number>();
         this.§0V§[2] = new Vector.<Number>();
         this.§'j§ = new override(this,param2,param4);
         if(!this.§'j§.§ B§(param1.§4!%§.§!`§))
         {
            this.§'j§.§1!!§(this.§9!A§,this.§+W§.§`!H§(),this.§+W§.§'t§() / §7!,§.§ '§,this.§+W§.§1u§() / §7!,§.§ '§);
         }
         this.§'j§.§0d§(this.§9!A§ == §<$§.§]M§);
         this.§-I§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§1Z§ = this.§-I§.CreateBody(_loc12_);
         this.§1Z§.SetUserData(this);
         if(this.§9!A§ == §<$§.§2O§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§+W§.shape.§ l§ * param10,this.§+W§.shape.§4N§ * param10);
            this.§^N§ = this.§1Z§.CreateFixture2(_loc14_,this.§+W§.§ !%§());
         }
         else if(this.§9!A§ == §<$§.§]M§ || this.§9!A§ == §<$§.§[!"§)
         {
            this.§^N§ = this.§1Z§.CreateFixture2(this.§+W§.shape.§,8§(param10),this.§+W§.§ !%§());
         }
         this.§^N§.SetFriction(this.§+W§.§-!+§());
         this.§^N§.SetRestitution(this.§+W§.§7[§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§6!3§())
         {
            _loc13_.categoryBits = §"[§;
            _loc13_.maskBits = 65535 & ~§-!2§;
         }
         else if(this.§2Z§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§2Z§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §-!2§;
            _loc13_.maskBits = 65535 & ~§"[§;
         }
         this.§^N§.SetFilterData(_loc13_);
         this.§=Q§ = this.§+W§.§ !G§();
         if(this.§+W§.§ !,§ > 0)
         {
            this.§`0§ = this.§ !,§ = this.§+W§.§ !,§;
         }
         else
         {
            this.§`0§ = this.§ !,§ = Math.round(this.§[_§(true) * this.§+W§.§?J§());
            if(this.§`0§ < 1)
            {
               this.§`0§ = this.§ !,§ = 1;
            }
         }
         if(this.§+W§.§>O§ == §9!;§.§7k§)
         {
            this.§[0§.visible = false;
         }
         else
         {
            this.§'j§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§8V§(param9);
         }
         this.§"W§();
         this.§=u§(0,1);
         this.§'j§.§ 2§(this.§+W§.shape);
      }
      
      public static function §"4§(param1:int, param2:§6Z§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§9i§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§3o§;
            }
            §6I§.§`$§(_loc4_,param3);
         }
      }
      
      public static function §+!§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §;r§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§[0§;
      }
      
      public function get x() : Number
      {
         return this.§<!B§;
      }
      
      public function get y() : Number
      {
         return this.§,k§;
      }
      
      public function get scale() : Number
      {
         return this.§!!%§;
      }
      
      public function get front() : Boolean
      {
         return this.§<4§;
      }
      
      public function get §>t§() : Number
      {
         return this.§1Z§.GetPosition().x;
      }
      
      public function get §0!4§() : Number
      {
         return this.§1Z§.GetPosition().y;
      }
      
      public function get §9O§() : §9!;§
      {
         return this.§+W§;
      }
      
      public function get §`!F§() : Boolean
      {
         return this.§=Q§ >= 0;
      }
      
      protected function get container() : §#-§
      {
         return this.§ !$§;
      }
      
      public function get §;P§() : Boolean
      {
         return this.§>v§;
      }
      
      public function set §;P§(param1:Boolean) : void
      {
         this.§>v§ = param1;
      }
      
      public function set §@s§(param1:Boolean) : void
      {
         this.§-l§ = param1;
      }
      
      public function set §5!9§(param1:uint) : void
      {
         this.§"6§ = param1;
      }
      
      public function get §5!9§() : uint
      {
         return this.§"6§;
      }
      
      public function get §@+§() : Boolean
      {
         return this.§@!@§;
      }
      
      public function set §@+§(param1:Boolean) : void
      {
         this.§@!@§ = param1;
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
         return this.§@!?§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§@!?§ = param1;
      }
      
      public function §?"§(param1:b2FilterData) : void
      {
         if(this.§^N§)
         {
            this.§^N§.SetFilterData(param1);
         }
      }
      
      protected function §3^§(param1:String) : int
      {
         return §!8§.§3^§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§+W§.§!N§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§-I§)
         {
            this.§-I§.DestroyBody(this.§`t§());
            this.§-I§ = null;
         }
         this.§'j§.dispose();
         if(this.§[0§)
         {
            this.§[0§.dispose();
            this.§[0§ = null;
         }
         this.§^N§ = null;
         this.§64§ = null;
         this.§+W§ = null;
      }
      
      public function §8V§(param1:Number) : void
      {
         this.§`t§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §5>§() : Number
      {
         return (360 - this.§`t§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §4<§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§`t§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§44§();
         }
         if(param3)
         {
            this.§4b§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§^N§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§`t§().GetPosition().x >= param3 && this.§`t§().GetPosition().x <= param4 && this.§`t§().GetPosition().y >= param1 && this.§`t§().GetPosition().y <= param2;
      }
      
      public function §]C§(param1:b2Vec2) : void
      {
         this.§64§ = param1;
      }
      
      public function §"D§() : void
      {
         if(this.§64§)
         {
            this.§4<§(this.§64§,false);
            this.§64§ = null;
         }
      }
      
      public function §44§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`t§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§`t§().SetAngularVelocity(0);
         }
         else
         {
            this.§`t§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §4b§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`t§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§8V§(_loc2_);
      }
      
      public function §0!A§(param1:Number) : void
      {
         this.§`t§().SetAngularVelocity(param1);
      }
      
      public function §`t§() : b2Body
      {
         if(this.§^N§ != null)
         {
            return this.§^N§.GetBody();
         }
         return null;
      }
      
      public function §@>§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§<!B§ = param1;
            this.§,k§ = param2;
         }
         this.§`t§().GetPosition().x = this.§<!B§ * §7!,§.§ '§;
         this.§`t§().GetPosition().y = this.§,k§ * §7!,§.§ '§;
      }
      
      public function §=u§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§90§)
         {
            _loc3_ = true;
            this.§90§ = false;
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
            this.§'j§.§@3§();
         }
         if(this.§[!G§ > 1 && this.§'j§.§>m§)
         {
            _loc4_ = 4 + (this.§'j§.§>m§.blurX - 4 + param2 / 20) % 28;
            this.§'j§.§>m§.blurX = _loc4_;
            this.§'j§.§>m§.blurY = _loc4_;
         }
         this.§'j§.§]i§(param2);
         if(§use§)
         {
            this.§ [§(param1);
         }
         else
         {
            this.§]!C§ = this.§-!E§;
            this.§<!B§ = this.§-&§;
            this.§,k§ = this.§`G§;
         }
         this.§[0§.x = Math.round(this.§<!B§);
         this.§[0§.y = Math.round(this.§,k§);
         this.§[0§.rotation = this.§]!C§ / 180 * Math.PI;
      }
      
      public function §"W§() : void
      {
         var _loc1_:Number = this.§`t§().GetPosition().x;
         var _loc2_:Number = this.§`t§().GetPosition().y;
         this.§[J§ = this.§-!E§;
         this.§2!#§ = this.§-&§;
         this.§0-§ = this.§`G§;
         this.§-!E§ = this.§`t§().GetAngle() * (180 / Math.PI) % 360;
         this.§-&§ = _loc1_ / §7!,§.§ '§;
         this.§`G§ = _loc2_ / §7!,§.§ '§;
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
      
      public function § [§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §5!<§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§ !$§.§4!%§.§^<§.§"k§ * 1000;
         }
         param1 *= -1;
         if(this.§-&§ == this.§2!#§ || param1 == 0)
         {
            this.§'V§ = 0;
            this.§<!B§ = this.§-&§;
         }
         else
         {
            this.§'V§ = param1 * (this.§2!#§ - this.§-&§) / param2;
            this.§<!B§ = this.§-&§ + this.§'V§;
         }
         if(this.§`G§ == this.§0-§ || param1 == 0)
         {
            this.§&!F§ = 0;
            this.§,k§ = this.§`G§;
         }
         else
         {
            this.§&!F§ = param1 * (this.§0-§ - this.§`G§) / param2;
            this.§,k§ = this.§`G§ + this.§&!F§;
         }
         if(this.§-!E§ == this.§[J§ || param1 == 0)
         {
            this.§]!C§ = this.§-!E§;
         }
         else if(this.§[J§ > this.§-!E§ && this.§[J§ - this.§-!E§ <= 180)
         {
            this.§]!C§ = this.§-!E§ + param1 * (this.§[J§ - this.§-!E§) / param2;
         }
         else if(this.§[J§ > this.§-!E§ && this.§[J§ - this.§-!E§ > 180)
         {
            this.§]!C§ = this.§-!E§ + param1 * (this.§[J§ - 360 - this.§-!E§) / param2;
         }
         else if(this.§[J§ < this.§-!E§ && this.§-!E§ - this.§[J§ <= 180)
         {
            this.§]!C§ = this.§-!E§ + param1 * (this.§[J§ - this.§-!E§) / param2;
         }
         else if(this.§[J§ < this.§-!E§ && this.§-!E§ - this.§[J§ > 180)
         {
            this.§]!C§ = this.§-!E§ + param1 * (this.§[J§ + 360 - this.§-!E§) / param2;
         }
      }
      
      public function get §5h§() : Point
      {
         if(!§use§)
         {
         }
         return null;
      }
      
      public function §6!3§() : Boolean
      {
         return this.§>O§ == §9!;§.§1!<§ || this.§>O§ == §9!;§.§92§;
      }
      
      public function §?!@§() : Boolean
      {
         return this.§>O§ == §9!;§.§]h§;
      }
      
      public function §0y§() : Boolean
      {
         return this.§>O§ == §9!;§.§2s§;
      }
      
      public function §@v§() : Boolean
      {
         return this.§>O§ == §9!;§.§92§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§>O§ == §9!;§.§ 1§;
      }
      
      public function isGround() : Boolean
      {
         return this.§>O§ == §9!;§.§7k§;
      }
      
      public function §]!+§() : Boolean
      {
         return this.§>O§ == §9!;§.§9S§;
      }
      
      public function §5=§() : Boolean
      {
         return this.§>O§ == §9!;§.§=!5§;
      }
      
      public function §8!E§() : Boolean
      {
         if(this.§2Z§ == "MISC_EXPLOSIVE_TNT" || this.§2Z§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §^G§() : Boolean
      {
         return (this.§?!@§() || this.§]!+§() || this.§5=§()) && !this.§@+§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §&?§() : Number
      {
         return Number(Math.sqrt(this.§`t§().GetLinearVelocity().x * this.§`t§().GetLinearVelocity().x + this.§`t§().GetLinearVelocity().y * this.§`t§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§0y§())
         {
            return this.§`0§;
         }
         if(!this.§ !$§.§#J§())
         {
            return this.§`0§;
         }
         if(this.§=Q§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§+!&§(§6Z§.§;K§);
            }
            else if(param1 > 12)
            {
               this.§+!&§(§6Z§.§-H§);
            }
            else if(param1 > 3)
            {
               this.§+!&§(§6Z§.§@J§);
            }
            return this.§`0§;
         }
         if(param1 <= this.§=Q§)
         {
            if(param1 >= this.§=Q§ / 2)
            {
               this.§+!&§(§6Z§.§@J§);
            }
            if(this.§6!3§() && this.§`0§ == this.§ !,§)
            {
               this.§`0§ = this.§ !,§ - 1;
            }
            return this.§`0§;
         }
         param1 -= this.§=Q§;
         if(param2 && this.§^G§())
         {
            _loc7_ = Math.min(this.§`0§,int(param1));
            _loc8_ = §7!,§.§6s§.getValue() * _loc7_;
            this.§ !$§.§4!%§.addScore(_loc8_,§3$§.§4!F§,this.§`0§ > param1 && param3,this.§`t§().GetPosition().x,this.§`t§().GetPosition().y,§!8§.§>n§(this.§2Z§));
         }
         if(!(param5 && this.§-l§))
         {
            this.§`0§ -= param1;
         }
         if(this.§`0§ < 1 && this.§6!3§())
         {
            this.§`0§ = 1;
         }
         if(this.§`0§ < 1)
         {
            this.§`0§ = 0;
            §>G§.§"4§(§6Z§.§;K§,this.§+W§.§]!=§,"ChannelDestroyed");
         }
         else
         {
            this.§+!&§(§6Z§.§-H§);
            this.addDamageParticles(this.§ !$§.§4!%§.particles,param1);
         }
         this.§'j§.setDamagedFrame();
         return this.§`0§;
      }
      
      public function §+!&§(param1:int) : void
      {
         §>G§.§"4§(param1,this.§+W§.§]!=§);
      }
      
      public function §'!3§(param1:String) : Number
      {
         return this.§+W§.material.§34§(param1) * this.§[!G§;
      }
      
      public function §!e§(param1:String) : Number
      {
         return this.§+W§.material.§%!7§(param1);
      }
      
      public function §,!6§() : String
      {
         return this.§+W§.material.mName;
      }
      
      public function §8C§() : Number
      {
         return this.§+W§.§?J§();
      }
      
      public function §10§() : int
      {
         return this.§+W§.§7!5§();
      }
      
      public function §-e§() : Boolean
      {
         return this.§`t§().IsAwake() && (this.§6!3§() && this.§`0§ == this.§ !,§ || Math.abs(this.§`t§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`t§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`t§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §%f§() : Boolean
      {
         if(!this.§`t§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§,A§();
         if(Math.abs(this.§?u§(this.§0V§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§?u§(this.§0V§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§?u§(this.§0V§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §?u§(param1:Vector.<Number>) : Number
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
      
      private function §,A§() : void
      {
         this.§0V§[0].push(this.§`t§().GetLinearVelocity().x);
         this.§0V§[1].push(this.§`t§().GetLinearVelocity().y);
         this.§0V§[2].push(this.§`t§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§0V§[_loc1_].length > this.§"6§)
            {
               this.§0V§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §2B§(param1:Number = 3) : void
      {
         this.§[!G§ = param1;
         if(this.§[!G§ > 1)
         {
            this.§'j§.§7!$§();
         }
         else
         {
            this.§'j§.§>m§ = null;
         }
      }
      
      public function §[_§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§+W§.§!N§() == §^!%§.§@`§)
         {
            _loc2_ = this.§'j§.mW * this.§'j§.mH * (§7!,§.§ '§ * §7!,§.§ '§);
         }
         else
         {
            _loc2_ = this.§`t§().GetMass() / this.§^N§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§#R§();
            }
            _loc2_ /= this.§!!%§ * this.§!!%§;
         }
         return _loc2_;
      }
      
      public function §#R§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§'j§.§79§ - 1) / 10);
      }
      
      public function §2!§(param1:Number) : void
      {
         var _loc2_:Number = this.§`t§().GetLinearVelocity().x;
         var _loc3_:Number = this.§`t§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§`t§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§#-§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§#C§) : void
      {
      }
      
      public function addDamageParticles(param1:§#C§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §0I§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§`t§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§`t§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§5>§()) + 360) % 360;
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
            this.§8V§(_loc4_);
         }
         var _loc3_:Number = this.§5>§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§8V§(_loc3_);
      }
      
      public function §8!F§(param1:Number) : void
      {
         var _loc2_:Number = §+!§(this.§`t§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §;r§(_loc2_);
         this.§`t§().SetAngle(_loc2_);
      }
      
      public function §?!9§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§`t§().GetPosition().Copy();
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
         this.§`t§().SetPosition(_loc13_);
      }
   }
}
