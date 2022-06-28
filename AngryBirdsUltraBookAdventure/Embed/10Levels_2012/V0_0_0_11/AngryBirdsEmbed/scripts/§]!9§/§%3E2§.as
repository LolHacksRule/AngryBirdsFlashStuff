package §]!9§
{
   import §%x§.§#;§;
   import §%x§.§0]§;
   import §0!<§.§#y§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?!?§.§3!E§;
   import §?^§.Sprite;
   import §`K§.§+i§;
   import §`K§.§0r§;
   import §`K§.§2z§;
   import §`K§.§3n§;
   import §`K§.§7g§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §>2§
   {
      
      public static const §7^§:uint = 1 << 1;
      
      public static const §;J§:uint = 1 << 2;
      
      public static const § !A§:uint = 1 << 3;
      
      public static const §-4§:uint = 1 << 4;
      
      public static const § F§:Boolean = true;
       
      
      private var §7_§:String;
      
      private var §8O§:int;
      
      private var §6g§:int;
      
      public var §'!,§:String;
      
      public var §'F§:int;
      
      private var §%g§:§+i§;
      
      private var § !6§:§]!H§;
      
      private var §[N§:b2World;
      
      protected var §32§:String = "";
      
      protected var § !B§:int = 1;
      
      private var §@e§:b2Fixture;
      
      private var §5Q§:b2Body;
      
      private var §7j§:b2Vec2;
      
      public var §4!;§:Number;
      
      public var §8!,§:Number;
      
      private var §,9§:Number;
      
      private var §8+§:Boolean = false;
      
      private var §]!4§:Number;
      
      private var §!i§:Number;
      
      private var §6y§:Number;
      
      private var §34§:Number;
      
      private var §4!6§:Number;
      
      private var §7d§:Number;
      
      public var § V§:Number = 1;
      
      private var §&g§:Boolean = false;
      
      public var § !%§:Number = 0;
      
      public var §9-§:Number = 0;
      
      protected var §"0§:Boolean = false;
      
      public var §2!@§:§1c§;
      
      private var §0W§:Sprite;
      
      private var §5!>§:Number = 0;
      
      private var §#!$§:Number = 0;
      
      private var §+H§:Number = 0;
      
      private var §=!%§:Number = 1.0;
      
      private var §2!1§:Boolean = false;
      
      private var §"!I§:Vector.<Vector.<Number>>;
      
      private var §'!D§:int = 10;
      
      private var §<1§:Boolean = true;
      
      public function §>2§(param1:§]!H§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§"!I§ = new Vector.<Vector.<Number>>();
         super();
         this.§'!,§ = param6;
         this.§%g§ = §3n§.§]B§(param6);
         this.§ !6§ = param1;
         this.§0W§ = param2;
         this.§=!%§ = param10;
         this.§2!1§ = param11;
         this.§8O§ = param5;
         this.§'F§ = this.§%g§.§'F§;
         this.§6g§ = this.§%g§.§-!F§();
         this.§"!I§[0] = new Vector.<Number>();
         this.§"!I§[1] = new Vector.<Number>();
         this.§"!I§[2] = new Vector.<Number>();
         this.§2!@§ = new §1c§(this,param2,param4);
         if(!this.§2!@§.§5y§(param1.§7C§.§+!!§))
         {
            this.§2!@§.§#G§(this.§6g§,this.§%g§.§]!,§(),this.§%g§.§&+§() / §#;§.§`!2§,this.§%g§.§7!9§() / §#;§.§`!2§);
         }
         this.§2!@§.§@0§(this.§6g§ == §2z§.§,j§);
         this.§[N§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§5Q§ = this.§[N§.CreateBody(_loc12_);
         this.§5Q§.SetUserData(this);
         if(this.§6g§ == §2z§.§8!3§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§%g§.shape.§9p§ * param10,this.§%g§.shape.§9`§ * param10);
            this.§@e§ = this.§5Q§.CreateFixture2(_loc14_,this.§%g§.§<!E§());
         }
         else if(this.§6g§ == §2z§.§,j§ || this.§6g§ == §2z§.§#!B§)
         {
            this.§@e§ = this.§5Q§.CreateFixture2(this.§%g§.shape.§8Z§(param10),this.§%g§.§<!E§());
         }
         this.§@e§.SetFriction(this.§%g§.§^!5§());
         this.§@e§.SetRestitution(this.§%g§.§9'§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§-`§())
         {
            _loc13_.categoryBits = §7^§;
            _loc13_.maskBits = 65535 & ~§;J§;
         }
         else if(this.§'!,§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§'!,§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §;J§;
            _loc13_.maskBits = 65535 & ~§7^§;
         }
         this.§@e§.SetFilterData(_loc13_);
         this.§,9§ = this.§%g§.§;F§();
         if(this.§%g§.§8!,§ > 0)
         {
            this.§4!;§ = this.§8!,§ = this.§%g§.§8!,§;
         }
         else
         {
            this.§4!;§ = this.§8!,§ = Math.round(this.§3v§(true) * this.§%g§.§@!>§());
            if(this.§4!;§ < 1)
            {
               this.§4!;§ = this.§8!,§ = 1;
            }
         }
         if(this.§%g§.§'F§ == §+i§.§!!@§)
         {
            this.§0W§.visible = false;
         }
         else
         {
            this.§2!@§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§0i§(param9);
         }
         this.§,I§();
         this.§&;§(0,1);
         this.§2!@§.§8c§(this.§%g§.shape);
      }
      
      public static function §51§(param1:int, param2:§0r§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§5E§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8A§;
            }
            §3!E§.§4I§(_loc4_,param3);
         }
      }
      
      public static function §^M§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §[4§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§0W§;
      }
      
      public function get x() : Number
      {
         return this.§5!>§;
      }
      
      public function get y() : Number
      {
         return this.§#!$§;
      }
      
      public function get scale() : Number
      {
         return this.§=!%§;
      }
      
      public function get front() : Boolean
      {
         return this.§2!1§;
      }
      
      public function get §]G§() : Number
      {
         return this.§5Q§.GetPosition().x;
      }
      
      public function get §<?§() : Number
      {
         return this.§5Q§.GetPosition().y;
      }
      
      public function get §0§() : §+i§
      {
         return this.§%g§;
      }
      
      public function get §[&§() : Boolean
      {
         return this.§,9§ >= 0;
      }
      
      protected function get container() : §]!H§
      {
         return this.§ !6§;
      }
      
      public function get §1@§() : Boolean
      {
         return this.§<1§;
      }
      
      public function set §1@§(param1:Boolean) : void
      {
         this.§<1§ = param1;
      }
      
      public function set §#I§(param1:Boolean) : void
      {
         this.§8+§ = param1;
      }
      
      public function set §5k§(param1:uint) : void
      {
         this.§'!D§ = param1;
      }
      
      public function get §5k§() : uint
      {
         return this.§'!D§;
      }
      
      public function get §0>§() : Boolean
      {
         return this.§&g§;
      }
      
      public function set §0>§(param1:Boolean) : void
      {
         this.§&g§ = param1;
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
         return this.§7_§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§7_§ = param1;
      }
      
      public function §9!?§(param1:b2FilterData) : void
      {
         if(this.§@e§)
         {
            this.§@e§.SetFilterData(param1);
         }
      }
      
      protected function §#!2§(param1:String) : int
      {
         return §2S§.§#!2§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§%g§.§+!9§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§[N§)
         {
            this.§[N§.DestroyBody(this.§%;§());
            this.§[N§ = null;
         }
         this.§2!@§.dispose();
         if(this.§0W§)
         {
            this.§0W§.dispose();
            this.§0W§ = null;
         }
         this.§@e§ = null;
         this.§7j§ = null;
         this.§%g§ = null;
      }
      
      public function §0i§(param1:Number) : void
      {
         this.§%;§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §+O§() : Number
      {
         return (360 - this.§%;§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §>c§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§%;§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§3+§();
         }
         if(param3)
         {
            this.final();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§@e§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§%;§().GetPosition().x >= param3 && this.§%;§().GetPosition().x <= param4 && this.§%;§().GetPosition().y >= param1 && this.§%;§().GetPosition().y <= param2;
      }
      
      public function §12§(param1:b2Vec2) : void
      {
         this.§7j§ = param1;
      }
      
      public function §4!3§() : void
      {
         if(this.§7j§)
         {
            this.§>c§(this.§7j§,false);
            this.§7j§ = null;
         }
      }
      
      public function §3+§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§%;§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§%;§().SetAngularVelocity(0);
         }
         else
         {
            this.§%;§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function final(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§%;§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§0i§(_loc2_);
      }
      
      public function §9! §(param1:Number) : void
      {
         this.§%;§().SetAngularVelocity(param1);
      }
      
      public function §%;§() : b2Body
      {
         if(this.§@e§ != null)
         {
            return this.§@e§.GetBody();
         }
         return null;
      }
      
      public function §3q§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§5!>§ = param1;
            this.§#!$§ = param2;
         }
         this.§%;§().GetPosition().x = this.§5!>§ * §#;§.§`!2§;
         this.§%;§().GetPosition().y = this.§#!$§ * §#;§.§`!2§;
      }
      
      public function §&;§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§"0§)
         {
            _loc3_ = true;
            this.§"0§ = false;
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
            this.§2!@§.§1i§();
         }
         if(this.§ V§ > 1 && this.§2!@§.§>!D§)
         {
            _loc4_ = 4 + (this.§2!@§.§>!D§.blurX - 4 + param2 / 20) % 28;
            this.§2!@§.§>!D§.blurX = _loc4_;
            this.§2!@§.§>!D§.blurY = _loc4_;
         }
         this.§2!@§.§5g§(param2);
         if(§ F§)
         {
            this.§6!B§(param1);
         }
         else
         {
            this.§+H§ = this.§6y§;
            this.§5!>§ = this.§]!4§;
            this.§#!$§ = this.§!i§;
         }
         this.§0W§.x = Math.round(this.§5!>§);
         this.§0W§.y = Math.round(this.§#!$§);
         this.§0W§.rotation = this.§+H§ / 180 * Math.PI;
      }
      
      public function §,I§() : void
      {
         var _loc1_:Number = this.§%;§().GetPosition().x;
         var _loc2_:Number = this.§%;§().GetPosition().y;
         this.§7d§ = this.§6y§;
         this.§34§ = this.§]!4§;
         this.§4!6§ = this.§!i§;
         this.§6y§ = this.§%;§().GetAngle() * (180 / Math.PI) % 360;
         this.§]!4§ = _loc1_ / §#;§.§`!2§;
         this.§!i§ = _loc2_ / §#;§.§`!2§;
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
      
      public function §6!B§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §#y§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§ !6§.§7C§.§-K§.§case§ * 1000;
         }
         param1 *= -1;
         if(this.§]!4§ == this.§34§ || param1 == 0)
         {
            this.§ !%§ = 0;
            this.§5!>§ = this.§]!4§;
         }
         else
         {
            this.§ !%§ = param1 * (this.§34§ - this.§]!4§) / param2;
            this.§5!>§ = this.§]!4§ + this.§ !%§;
         }
         if(this.§!i§ == this.§4!6§ || param1 == 0)
         {
            this.§9-§ = 0;
            this.§#!$§ = this.§!i§;
         }
         else
         {
            this.§9-§ = param1 * (this.§4!6§ - this.§!i§) / param2;
            this.§#!$§ = this.§!i§ + this.§9-§;
         }
         if(this.§6y§ == this.§7d§ || param1 == 0)
         {
            this.§+H§ = this.§6y§;
         }
         else if(this.§7d§ > this.§6y§ && this.§7d§ - this.§6y§ <= 180)
         {
            this.§+H§ = this.§6y§ + param1 * (this.§7d§ - this.§6y§) / param2;
         }
         else if(this.§7d§ > this.§6y§ && this.§7d§ - this.§6y§ > 180)
         {
            this.§+H§ = this.§6y§ + param1 * (this.§7d§ - 360 - this.§6y§) / param2;
         }
         else if(this.§7d§ < this.§6y§ && this.§6y§ - this.§7d§ <= 180)
         {
            this.§+H§ = this.§6y§ + param1 * (this.§7d§ - this.§6y§) / param2;
         }
         else if(this.§7d§ < this.§6y§ && this.§6y§ - this.§7d§ > 180)
         {
            this.§+H§ = this.§6y§ + param1 * (this.§7d§ + 360 - this.§6y§) / param2;
         }
      }
      
      public function get §0U§() : Point
      {
         if(!§ F§)
         {
         }
         return null;
      }
      
      public function §-`§() : Boolean
      {
         return this.§'F§ == §+i§.§35§ || this.§'F§ == §+i§.§ k§;
      }
      
      public function §`U§() : Boolean
      {
         return this.§'F§ == §+i§.§try§;
      }
      
      public function §1!F§() : Boolean
      {
         return this.§'F§ == §+i§.§'+§;
      }
      
      public function §?!1§() : Boolean
      {
         return this.§'F§ == §+i§.§ k§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§'F§ == §+i§.§5!+§;
      }
      
      public function isGround() : Boolean
      {
         return this.§'F§ == §+i§.§!!@§;
      }
      
      public function §=H§() : Boolean
      {
         return this.§'F§ == §+i§.§]D§;
      }
      
      public function §6S§() : Boolean
      {
         return this.§'F§ == §+i§.§+^§;
      }
      
      public function §],§() : Boolean
      {
         if(this.§'!,§ == "MISC_EXPLOSIVE_TNT" || this.§'!,§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §<!0§() : Boolean
      {
         return (this.§`U§() || this.§=H§() || this.§6S§()) && !this.§0>§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §3%§() : Number
      {
         return Number(Math.sqrt(this.§%;§().GetLinearVelocity().x * this.§%;§().GetLinearVelocity().x + this.§%;§().GetLinearVelocity().y * this.§%;§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§1!F§())
         {
            return this.§4!;§;
         }
         if(!this.§ !6§.§=7§())
         {
            return this.§4!;§;
         }
         if(this.§,9§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§+t§(§0r§.§5L§);
            }
            else if(param1 > 12)
            {
               this.§+t§(§0r§.§@B§);
            }
            else if(param1 > 3)
            {
               this.§+t§(§0r§.§!$§);
            }
            return this.§4!;§;
         }
         if(param1 <= this.§,9§)
         {
            if(param1 >= this.§,9§ / 2)
            {
               this.§+t§(§0r§.§!$§);
            }
            if(this.§-`§() && this.§4!;§ == this.§8!,§)
            {
               this.§4!;§ = this.§8!,§ - 1;
            }
            return this.§4!;§;
         }
         param1 -= this.§,9§;
         if(param2 && this.§<!0§())
         {
            _loc7_ = Math.min(this.§4!;§,int(param1));
            _loc8_ = §#;§.§?!B§.getValue() * _loc7_;
            this.§ !6§.§7C§.addScore(_loc8_,§0]§.§-h§,this.§4!;§ > param1 && param3,this.§%;§().GetPosition().x,this.§%;§().GetPosition().y,§2S§.§`!0§(this.§'!,§));
         }
         if(!(param5 && this.§8+§))
         {
            this.§4!;§ -= param1;
         }
         if(this.§4!;§ < 1 && this.§-`§())
         {
            this.§4!;§ = 1;
         }
         if(this.§4!;§ < 1)
         {
            this.§4!;§ = 0;
            §>2§.§51§(§0r§.§5L§,this.§%g§.§6!6§,"ChannelDestroyed");
         }
         else
         {
            this.§+t§(§0r§.§@B§);
            this.addDamageParticles(this.§ !6§.§7C§.particles,param1);
         }
         this.§2!@§.setDamagedFrame();
         return this.§4!;§;
      }
      
      public function §+t§(param1:int) : void
      {
         §>2§.§51§(param1,this.§%g§.§6!6§);
      }
      
      public function §]z§(param1:String) : Number
      {
         return this.§%g§.material.§]"§(param1) * this.§ V§;
      }
      
      public function §2F§(param1:String) : Number
      {
         return this.§%g§.material.§@]§(param1);
      }
      
      public function §&!C§() : String
      {
         return this.§%g§.material.mName;
      }
      
      public function §7K§() : Number
      {
         return this.§%g§.§@!>§();
      }
      
      public function §6F§() : int
      {
         return this.§%g§.§=!8§();
      }
      
      public function §`E§() : Boolean
      {
         return this.§%;§().IsAwake() && (this.§-`§() && this.§4!;§ == this.§8!,§ || Math.abs(this.§%;§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§%;§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§%;§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §0!@§() : Boolean
      {
         if(!this.§%;§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§0%§();
         if(Math.abs(this.§7!<§(this.§"!I§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§7!<§(this.§"!I§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§7!<§(this.§"!I§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §7!<§(param1:Vector.<Number>) : Number
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
      
      private function §0%§() : void
      {
         this.§"!I§[0].push(this.§%;§().GetLinearVelocity().x);
         this.§"!I§[1].push(this.§%;§().GetLinearVelocity().y);
         this.§"!I§[2].push(this.§%;§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§"!I§[_loc1_].length > this.§'!D§)
            {
               this.§"!I§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §^'§(param1:Number = 3) : void
      {
         this.§ V§ = param1;
         if(this.§ V§ > 1)
         {
            this.§2!@§.§ +§();
         }
         else
         {
            this.§2!@§.§>!D§ = null;
         }
      }
      
      public function §3v§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§%g§.§+!9§() == §7g§.§0!!§)
         {
            _loc2_ = this.§2!@§.mW * this.§2!@§.mH * (§#;§.§`!2§ * §#;§.§`!2§);
         }
         else
         {
            _loc2_ = this.§%;§().GetMass() / this.§@e§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§2,§();
            }
            _loc2_ /= this.§=!%§ * this.§=!%§;
         }
         return _loc2_;
      }
      
      public function §2,§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§2!@§.§6r§ - 1) / 10);
      }
      
      public function §^m§(param1:Number) : void
      {
         var _loc2_:Number = this.§%;§().GetLinearVelocity().x;
         var _loc3_:Number = this.§%;§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§%;§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§]!H§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§5b§) : void
      {
      }
      
      public function addDamageParticles(param1:§5b§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §[;§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§%;§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§%;§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§+O§()) + 360) % 360;
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
            this.§0i§(_loc4_);
         }
         var _loc3_:Number = this.§+O§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§0i§(_loc3_);
      }
      
      public function §>!@§(param1:Number) : void
      {
         var _loc2_:Number = §^M§(this.§%;§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §[4§(_loc2_);
         this.§%;§().SetAngle(_loc2_);
      }
      
      public function § !"§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§%;§().GetPosition().Copy();
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
         this.§%;§().SetPosition(_loc13_);
      }
   }
}
