package §4n§
{
   import §8T§.§@o§;
   import §9!#§.§+5§;
   import §9!#§.§-!'§;
   import §9!#§.§4!6§;
   import §9!#§.§5y§;
   import §9!#§.§8U§;
   import §;'§.§3,§;
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import §?!8§.§2>§;
   import §[!=§.§3r§;
   import §[!=§.§>Z§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §@!4§
   {
      
      public static const §1!3§:uint = 1 << 1;
      
      public static const §%v§:uint = 1 << 2;
      
      public static const §0k§:uint = 1 << 3;
      
      public static const § !$§:uint = 1 << 4;
      
      public static const §,!'§:Boolean = true;
      
      public static const §9g§:Number = 5;
      
      public static const §]i§:Number = 10;
       
      
      private var §`!2§:String;
      
      private var §6!5§:int;
      
      private var §1!+§:int;
      
      public var §"!!§:String;
      
      public var §^x§:int;
      
      protected var §'>§:§4!6§;
      
      private var §%!4§:§8y§;
      
      private var § k§:b2World;
      
      protected var §-Q§:String = "";
      
      protected var §;!0§:int = 1;
      
      private var §#M§:b2Fixture;
      
      private var §9N§:b2Body;
      
      private var §%z§:b2Vec2;
      
      public var §'s§:Number;
      
      public var §@g§:Number;
      
      private var §0!9§:Number;
      
      private var §7`§:Boolean = false;
      
      private var §'! §:Number;
      
      private var §;!H§:Number;
      
      private var §[!>§:Number;
      
      private var §?!#§:Number;
      
      private var §#^§:Number;
      
      private var §6!F§:Number;
      
      public var §2!;§:Number = 1;
      
      private var § get§:Boolean = false;
      
      public var §[!F§:Number = 0;
      
      public var §-!B§:Number = 0;
      
      protected var §"u§:Boolean = false;
      
      public var §`V§:§8X§;
      
      protected var §>@§:Sprite;
      
      private var § H§:Number = 0;
      
      private var §=§:Number = 0;
      
      private var §+r§:Number = 0;
      
      protected var § W§:Number = 1.0;
      
      private var §<!F§:Boolean = false;
      
      protected var §`w§:§9R§;
      
      private var §^Y§:Boolean = true;
      
      public function §@!4§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§"!!§ = param6;
         this.§'>§ = §5y§.§6!%§(param6);
         this.§%!4§ = param1;
         this.§>@§ = param2;
         this.§ W§ = param10;
         this.§<!F§ = param11;
         this.§6!5§ = param5;
         this.§^x§ = this.§'>§.§^x§;
         this.§1!+§ = this.§'>§.§#!5§();
         this.§`w§ = new §9R§(§9g§,§]i§);
         this.§`V§ = new §8X§(this,param2,param4);
         if(!this.§`V§.§3!J§(param1.§2I§.§6?§))
         {
            this.§`V§.§7!8§(this.§1!+§,this.§'>§.§;U§(),this.§'>§.§ m§() / §?!D§.§@!I§,this.§'>§.§`]§() / §?!D§.§@!I§);
         }
         this.§`V§.§3[§(this.§1!+§ == §8U§.§?!A§);
         this.§ k§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§9N§ = this.§ k§.CreateBody(_loc12_);
         this.§9N§.SetUserData(this);
         if(this.§1!+§ == §8U§.§`y§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§'>§.shape.§<w§ * param10,this.§'>§.shape.§"!?§ * param10);
            this.§#M§ = this.§9N§.CreateFixture2(_loc14_,this.§'>§.§[=§());
         }
         else if(this.§1!+§ == §8U§.§?!A§ || this.§1!+§ == §8U§.§8!N§)
         {
            this.§#M§ = this.§9N§.CreateFixture2(this.§'>§.shape.§']§(param10),this.§'>§.§[=§());
         }
         this.§#M§.SetFriction(this.§'>§.§=!E§());
         this.§#M§.SetRestitution(this.§'>§.§77§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§3!+§())
         {
            _loc13_.categoryBits = §1!3§;
            _loc13_.maskBits = 65535 & ~§%v§;
         }
         else if(this.§"!!§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§"!!§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §%v§;
            _loc13_.maskBits = 65535 & ~§1!3§;
         }
         this.§#M§.SetFilterData(_loc13_);
         this.§0!9§ = this.§'>§.§=&§();
         if(this.§'>§.§@g§ > 0)
         {
            this.§'s§ = this.§@g§ = this.§'>§.§@g§;
         }
         else
         {
            this.§'s§ = this.§@g§ = Math.round(this.§<o§(true) * this.§'>§.§19§());
            if(this.§'s§ < 1)
            {
               this.§'s§ = this.§@g§ = 1;
            }
         }
         if(this.§'>§.§^x§ == §4!6§.§?"§)
         {
            this.§>@§.visible = false;
         }
         else
         {
            this.§`V§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§#x§(param9);
         }
         this.§9c§();
         this.§[]§(0,1);
         this.§`V§.§5!2§(this.§'>§.shape);
      }
      
      public static function §9m§(param1:int, param2:§+5§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§;§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§9?§;
            }
            §@o§.§@F§(_loc4_,param3);
         }
      }
      
      public static function §>!>§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §&!D§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§>@§;
      }
      
      public function get x() : Number
      {
         return this.§ H§;
      }
      
      public function get y() : Number
      {
         return this.§=§;
      }
      
      public function get scale() : Number
      {
         return this.§ W§;
      }
      
      public function get front() : Boolean
      {
         return this.§<!F§;
      }
      
      public function get §9!H§() : Number
      {
         return this.§9N§.GetPosition().x;
      }
      
      public function get §&p§() : Number
      {
         return this.§9N§.GetPosition().y;
      }
      
      public function get §2!"§() : §4!6§
      {
         return this.§'>§;
      }
      
      public function get §7b§() : Boolean
      {
         return this.§0!9§ >= 0;
      }
      
      public function get container() : §8y§
      {
         return this.§%!4§;
      }
      
      public function get §?4§() : Boolean
      {
         return this.§^Y§;
      }
      
      public function set §?4§(param1:Boolean) : void
      {
         this.§^Y§ = param1;
      }
      
      public function set §5J§(param1:Boolean) : void
      {
         this.§7`§ = param1;
      }
      
      public function set §=;§(param1:uint) : void
      {
         this.§`w§.§=;§ = param1;
      }
      
      public function get §=;§() : uint
      {
         return this.§`w§.§=;§;
      }
      
      public function get §@X§() : Boolean
      {
         return this.§ get§;
      }
      
      public function set §@X§(param1:Boolean) : void
      {
         this.§ get§ = param1;
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
         return this.§`!2§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§`!2§ = param1;
      }
      
      public function §>!&§(param1:b2FilterData) : void
      {
         if(this.§#M§)
         {
            this.§#M§.SetFilterData(param1);
         }
      }
      
      protected function §'T§(param1:String) : int
      {
         return §>Z§.§'T§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§'>§.§33§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§ k§)
         {
            this.§ k§.DestroyBody(this.§^C§());
            this.§ k§ = null;
         }
         this.§`V§.dispose();
         if(this.§>@§)
         {
            this.§>@§.dispose();
            this.§>@§ = null;
         }
         this.§#M§ = null;
         this.§%z§ = null;
         this.§'>§ = null;
      }
      
      public function §#x§(param1:Number) : void
      {
         this.§^C§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §1&§() : Number
      {
         return (360 - this.§^C§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §,I§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§^C§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§6r§();
         }
         if(param3)
         {
            this.§4S§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§#M§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§^C§().GetPosition().x >= param3 && this.§^C§().GetPosition().x <= param4 && this.§^C§().GetPosition().y >= param1 && this.§^C§().GetPosition().y <= param2;
      }
      
      public function §2!H§(param1:b2Vec2) : void
      {
         this.§%z§ = param1;
      }
      
      public function §3E§() : void
      {
         if(this.§%z§)
         {
            this.§,I§(this.§%z§,false);
            this.§%z§ = null;
         }
      }
      
      public function §6r§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§^C§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§^C§().SetAngularVelocity(0);
         }
         else
         {
            this.§^C§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §4S§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§^C§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§#x§(_loc2_);
      }
      
      public function §"l§(param1:Number) : void
      {
         this.§^C§().SetAngularVelocity(param1);
      }
      
      public function §^C§() : b2Body
      {
         if(this.§#M§ != null)
         {
            return this.§#M§.GetBody();
         }
         return null;
      }
      
      public function §?9§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§ H§ = param1;
            this.§=§ = param2;
         }
         this.§^C§().GetPosition().x = this.§ H§ * §?!D§.§@!I§;
         this.§^C§().GetPosition().y = this.§=§ * §?!D§.§@!I§;
      }
      
      public function §[]§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§"u§)
         {
            _loc3_ = true;
            this.§"u§ = false;
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
            this.§`V§.§0f§();
         }
         if(this.§2!;§ > 1 && this.§`V§.§-!$§)
         {
            _loc4_ = 4 + (this.§`V§.§-!$§.blurX - 4 + param2 / 20) % 28;
            this.§`V§.§-!$§.blurX = _loc4_;
            this.§`V§.§-!$§.blurY = _loc4_;
         }
         this.§`V§.§#f§(param2);
         if(§,!'§)
         {
            this.§!!M§(param1);
         }
         else
         {
            this.§+r§ = this.§[!>§;
            this.§ H§ = this.§'! §;
            this.§=§ = this.§;!H§;
         }
         this.§>@§.x = Math.round(this.§ H§);
         this.§>@§.y = Math.round(this.§=§);
         this.§>@§.rotation = this.§+r§ / 180 * Math.PI;
      }
      
      public function §9c§() : void
      {
         var _loc1_:Number = this.§^C§().GetPosition().x;
         var _loc2_:Number = this.§^C§().GetPosition().y;
         this.§6!F§ = this.§[!>§;
         this.§?!#§ = this.§'! §;
         this.§#^§ = this.§;!H§;
         this.§[!>§ = this.§^C§().GetAngle() * (180 / Math.PI) % 360;
         this.§'! § = _loc1_ / §?!D§.§@!I§;
         this.§;!H§ = _loc2_ / §?!D§.§@!I§;
         this.§`w§.§!P§();
         this.§`w§.§%!K§(this.§^C§());
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
      
      public function §!!M§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §2>§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§%!4§.§2I§.§#S§.§,;§ * 1000;
         }
         param1 *= -1;
         if(this.§'! § == this.§?!#§ || param1 == 0)
         {
            this.§[!F§ = 0;
            this.§ H§ = this.§'! §;
         }
         else
         {
            this.§[!F§ = param1 * (this.§?!#§ - this.§'! §) / param2;
            this.§ H§ = this.§'! § + this.§[!F§;
         }
         if(this.§;!H§ == this.§#^§ || param1 == 0)
         {
            this.§-!B§ = 0;
            this.§=§ = this.§;!H§;
         }
         else
         {
            this.§-!B§ = param1 * (this.§#^§ - this.§;!H§) / param2;
            this.§=§ = this.§;!H§ + this.§-!B§;
         }
         if(this.§[!>§ == this.§6!F§ || param1 == 0)
         {
            this.§+r§ = this.§[!>§;
         }
         else if(this.§6!F§ > this.§[!>§ && this.§6!F§ - this.§[!>§ <= 180)
         {
            this.§+r§ = this.§[!>§ + param1 * (this.§6!F§ - this.§[!>§) / param2;
         }
         else if(this.§6!F§ > this.§[!>§ && this.§6!F§ - this.§[!>§ > 180)
         {
            this.§+r§ = this.§[!>§ + param1 * (this.§6!F§ - 360 - this.§[!>§) / param2;
         }
         else if(this.§6!F§ < this.§[!>§ && this.§[!>§ - this.§6!F§ <= 180)
         {
            this.§+r§ = this.§[!>§ + param1 * (this.§6!F§ - this.§[!>§) / param2;
         }
         else if(this.§6!F§ < this.§[!>§ && this.§[!>§ - this.§6!F§ > 180)
         {
            this.§+r§ = this.§[!>§ + param1 * (this.§6!F§ + 360 - this.§[!>§) / param2;
         }
      }
      
      public function get §^!B§() : Point
      {
         if(!§,!'§)
         {
         }
         return null;
      }
      
      public function §3!+§() : Boolean
      {
         return this.§^x§ == §4!6§.§>!E§ || this.§^x§ == §4!6§.§`G§;
      }
      
      public function §'P§() : Boolean
      {
         return this.§^x§ == §4!6§.§,b§;
      }
      
      public function §=!9§() : Boolean
      {
         return this.§^x§ == §4!6§.§6!0§;
      }
      
      public function §-g§() : Boolean
      {
         return this.§^x§ == §4!6§.§`G§;
      }
      
      public function §1x§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§^x§ == §4!6§.§!]§;
      }
      
      public function isGround() : Boolean
      {
         return this.§^x§ == §4!6§.§?"§;
      }
      
      public function §%+§() : Boolean
      {
         return this.§^x§ == §4!6§.§>i§;
      }
      
      public function §>[§() : Boolean
      {
         return this.§^x§ == §4!6§.§ !A§;
      }
      
      public function §!!-§() : Boolean
      {
         if(this.§"!!§ == "MISC_EXPLOSIVE_TNT" || this.§"!!§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §1-§() : Boolean
      {
         return (this.§'P§() || this.§%+§() || this.§>[§()) && !this.§@X§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §+$§() : Number
      {
         return Number(Math.sqrt(this.§^C§().GetLinearVelocity().x * this.§^C§().GetLinearVelocity().x + this.§^C§().GetLinearVelocity().y * this.§^C§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§=!9§())
         {
            return this.§'s§;
         }
         if(!this.§%!4§.§<!<§())
         {
            return this.§'s§;
         }
         if(this.§0!9§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§2!%§(§+5§.§1s§);
            }
            else if(param1 > 12)
            {
               this.§2!%§(§+5§.§5!-§);
            }
            else if(param1 > 3)
            {
               this.§2!%§(§+5§.§<A§);
            }
            return this.§'s§;
         }
         if(param1 <= this.§0!9§)
         {
            if(param1 >= this.§0!9§ / 2)
            {
               this.§2!%§(§+5§.§<A§);
            }
            if(this.§3!+§() && this.§'s§ == this.§@g§)
            {
               this.§'s§ = this.§@g§ - 1;
            }
            return this.§'s§;
         }
         param1 -= this.§0!9§;
         if(param2 && this.§1-§())
         {
            _loc7_ = Math.min(this.§'s§,int(param1));
            _loc8_ = §?!D§.§,!@§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §?!D§.§8!E§;
            }
            this.§%!4§.§2I§.addScore(_loc8_,§3,§.§+1§,this.§'s§ > param1 && param3,this.§^C§().GetPosition().x,this.§^C§().GetPosition().y,§>Z§.§<!C§(this.§"!!§));
         }
         if(!(param5 && this.§7`§))
         {
            this.§'s§ -= param1;
         }
         if(this.§'s§ < 1 && this.§3!+§())
         {
            this.§'s§ = 1;
         }
         if(this.§'s§ < 1)
         {
            this.§'s§ = 0;
            §@!4§.§9m§(§+5§.§1s§,this.§'>§.§?x§,"ChannelDestroyed");
         }
         else
         {
            this.§2!%§(§+5§.§5!-§);
            this.addDamageParticles(this.§%!4§.§2I§.particles,param1);
         }
         this.§`V§.setDamagedFrame();
         return this.§'s§;
      }
      
      public function §2!%§(param1:int) : void
      {
         §@!4§.§9m§(param1,this.§'>§.§?x§);
      }
      
      public function §<d§(param1:String) : Number
      {
         return this.§'>§.material.§?n§(param1) * this.§2!;§;
      }
      
      public function §1F§(param1:String) : Number
      {
         return this.§'>§.material.§-!8§(param1);
      }
      
      public function §0!%§() : String
      {
         return this.§'>§.material.mName;
      }
      
      public function §'!F§() : Number
      {
         return this.§'>§.§19§();
      }
      
      public function §4O§() : int
      {
         return this.§'>§.§%W§();
      }
      
      public function §5!K§() : Boolean
      {
         return this.§^C§().IsAwake() && (this.§3!+§() && this.§'s§ == this.§@g§ || Math.abs(this.§^C§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§^C§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§^C§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §@!5§() : Boolean
      {
         if(!this.§^C§().IsAwake())
         {
            return true;
         }
         return !this.§1Z§();
      }
      
      protected function §1Z§() : Boolean
      {
         return this.§`w§.§1Z§();
      }
      
      public function §]!K§(param1:Number = 3) : void
      {
         this.§2!;§ = param1;
         if(this.§2!;§ > 1)
         {
            this.§`V§.§=,§();
         }
         else
         {
            this.§`V§.§-!$§ = null;
         }
      }
      
      public function §<o§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§'>§.§33§() == §-!'§.§6^§)
         {
            _loc2_ = this.§`V§.mW * this.§`V§.mH * (§?!D§.§@!I§ * §?!D§.§@!I§);
         }
         else
         {
            _loc2_ = this.§^C§().GetMass() / this.§#M§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§!!B§();
            }
            _loc2_ /= this.§ W§ * this.§ W§;
         }
         return _loc2_;
      }
      
      public function §!!B§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§`V§.§3R§ - 1) / 10);
      }
      
      public function §!!J§(param1:Number) : void
      {
         var _loc2_:Number = this.§^C§().GetLinearVelocity().x;
         var _loc3_:Number = this.§^C§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§^C§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§8y§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§3r§) : void
      {
      }
      
      public function addDamageParticles(param1:§3r§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §%!<§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§^C§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§^C§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§1&§()) + 360) % 360;
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
            this.§#x§(_loc4_);
         }
         var _loc3_:Number = this.§1&§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§#x§(_loc3_);
      }
      
      public function §+!#§(param1:Number) : void
      {
         var _loc2_:Number = §>!>§(this.§^C§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §&!D§(_loc2_);
         this.§^C§().SetAngle(_loc2_);
      }
      
      public function §>^§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§^C§().GetPosition().Copy();
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
         this.§^C§().SetPosition(_loc13_);
      }
   }
}
