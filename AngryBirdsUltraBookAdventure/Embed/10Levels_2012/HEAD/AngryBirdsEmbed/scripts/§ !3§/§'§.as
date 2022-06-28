package § !3§
{
   import §!c§.§2E§;
   import §!c§.§4F§;
   import §!c§.§8M§;
   import §!c§.§<q§;
   import §!c§.§`K§;
   import §%-§.Sprite;
   import §%x§.§#;§;
   import §%x§.§0]§;
   import §2!<§.§?!?§;
   import §2§.§0!<§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §'§
   {
      
      public static const § !"§:uint = 1 << 1;
      
      public static const §7^§:uint = 1 << 2;
      
      public static const §;J§:uint = 1 << 3;
      
      public static const § !A§:uint = 1 << 4;
      
      public static const §-4§:Boolean = true;
       
      
      private var §>2§:String;
      
      private var §7_§:int;
      
      private var §8O§:int;
      
      public var §+i§:String;
      
      public var §'!,§:int;
      
      private var §6g§:§2E§;
      
      private var § !6§:§]!9§;
      
      private var §[N§:b2World;
      
      protected var §32§:String = "";
      
      protected var §2!1§:int = 1;
      
      private var §%g§:b2Fixture;
      
      private var §@e§:b2Body;
      
      private var §5Q§:b2Vec2;
      
      public var §7j§:Number;
      
      public var §`9§:Number;
      
      private var §4!;§:Number;
      
      private var §,9§:Boolean = false;
      
      private var §8+§:Number;
      
      private var §]!4§:Number;
      
      private var §!i§:Number;
      
      private var §6y§:Number;
      
      private var §34§:Number;
      
      private var §4!6§:Number;
      
      public var § V§:Number = 1;
      
      private var §7d§:Boolean = false;
      
      public var §&g§:Number = 0;
      
      public var § !%§:Number = 0;
      
      protected var §9-§:Boolean = false;
      
      public var §"0§:§[4§;
      
      private var §0W§:Sprite;
      
      private var §5!>§:Number = 0;
      
      private var §#!$§:Number = 0;
      
      private var §+H§:Number = 0;
      
      private var §=!%§:Number = 1.0;
      
      private var §8!,§:Boolean = false;
      
      private var §2!@§:Vector.<Vector.<Number>>;
      
      private var §"!I§:int = 10;
      
      private var §'!D§:Boolean = true;
      
      public function §'§(param1:§]!9§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§2!@§ = new Vector.<Vector.<Number>>();
         super();
         this.§+i§ = param6;
         this.§6g§ = §`K§.§!P§(param6);
         this.§ !6§ = param1;
         this.§0W§ = param2;
         this.§=!%§ = param10;
         this.§8!,§ = param11;
         this.§7_§ = param5;
         this.§'!,§ = this.§6g§.§'!,§;
         this.§8O§ = this.§6g§.§``§();
         this.§2!@§[0] = new Vector.<Number>();
         this.§2!@§[1] = new Vector.<Number>();
         this.§2!@§[2] = new Vector.<Number>();
         this.§"0§ = new §[4§(this,param2,param4);
         if(!this.§"0§.§5y§(param1.§7C§.§+!!§))
         {
            this.§"0§.§;_§(this.§8O§,this.§6g§.§+!9§(),this.§6g§.§-!F§() / §#;§.§`!2§,this.§6g§.§&+§() / §#;§.§`!2§);
         }
         this.§"0§.§#G§(this.§8O§ == §<q§.§8!3§);
         this.§[N§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§@e§ = this.§[N§.CreateBody(_loc12_);
         this.§@e§.SetUserData(this);
         if(this.§8O§ == §<q§.§?!§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§6g§.shape.§9Q§ * param10,this.§6g§.shape.§9p§ * param10);
            this.§%g§ = this.§@e§.CreateFixture2(_loc14_,this.§6g§.§7!9§());
         }
         else if(this.§8O§ == §<q§.§8!3§ || this.§8O§ == §<q§.§,j§)
         {
            this.§%g§ = this.§@e§.CreateFixture2(this.§6g§.shape.§#F§(param10),this.§6g§.§7!9§());
         }
         this.§%g§.SetFriction(this.§6g§.§;F§());
         this.§%g§.SetRestitution(this.§6g§.§^!5§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§0U§())
         {
            _loc13_.categoryBits = § !"§;
            _loc13_.maskBits = 65535 & ~§7^§;
         }
         else if(this.§+i§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§+i§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §7^§;
            _loc13_.maskBits = 65535 & ~§ !"§;
         }
         this.§%g§.SetFilterData(_loc13_);
         this.§4!;§ = this.§6g§.§]!,§();
         if(this.§6g§.§`9§ > 0)
         {
            this.§7j§ = this.§`9§ = this.§6g§.§`9§;
         }
         else
         {
            this.§7j§ = this.§`9§ = Math.round(this.§^'§(true) * this.§6g§.§9'§());
            if(this.§7j§ < 1)
            {
               this.§7j§ = this.§`9§ = 1;
            }
         }
         if(this.§6g§.§'!,§ == §2E§.§6!6§)
         {
            this.§0W§.visible = false;
         }
         else
         {
            this.§"0§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§9!?§(param9);
         }
         this.§3q§();
         this.§2j§(0,1);
         this.§"0§.§@0§(this.§6g§.shape);
      }
      
      public static function § F§(param1:int, param2:§8M§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§0r§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§5E§;
            }
            §?!?§.§9o§(_loc4_,param3);
         }
      }
      
      public static function §51§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §^M§(param1:Number) : Number
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
         return this.§8!,§;
      }
      
      public function get §<1§() : Number
      {
         return this.§@e§.GetPosition().x;
      }
      
      public function get §]G§() : Number
      {
         return this.§@e§.GetPosition().y;
      }
      
      public function get §<?§() : §2E§
      {
         return this.§6g§;
      }
      
      public function get §0§() : Boolean
      {
         return this.§4!;§ >= 0;
      }
      
      protected function get container() : §]!9§
      {
         return this.§ !6§;
      }
      
      public function get §[&§() : Boolean
      {
         return this.§'!D§;
      }
      
      public function set §[&§(param1:Boolean) : void
      {
         this.§'!D§ = param1;
      }
      
      public function set §1@§(param1:Boolean) : void
      {
         this.§,9§ = param1;
      }
      
      public function set §#I§(param1:uint) : void
      {
         this.§"!I§ = param1;
      }
      
      public function get §#I§() : uint
      {
         return this.§"!I§;
      }
      
      public function get §5k§() : Boolean
      {
         return this.§7d§;
      }
      
      public function set §5k§(param1:Boolean) : void
      {
         this.§7d§ = param1;
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
         return this.§>2§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§>2§ = param1;
      }
      
      public function §0>§(param1:b2FilterData) : void
      {
         if(this.§%g§)
         {
            this.§%g§.SetFilterData(param1);
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
         _loc3_.type = this.§6g§.§<!E§();
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
            this.§[N§.DestroyBody(this.§9! §());
            this.§[N§ = null;
         }
         this.§"0§.dispose();
         if(this.§0W§)
         {
            this.§0W§.dispose();
            this.§0W§ = null;
         }
         this.§%g§ = null;
         this.§5Q§ = null;
         this.§6g§ = null;
      }
      
      public function §9!?§(param1:Number) : void
      {
         this.§9! §().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §0i§() : Number
      {
         return (360 - this.§9! §().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §+O§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§9! §().SetLinearVelocity(param1);
         if(param2)
         {
            this.§4!3§();
         }
         if(param3)
         {
            this.§3+§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§%g§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§9! §().GetPosition().x >= param3 && this.§9! §().GetPosition().x <= param4 && this.§9! §().GetPosition().y >= param1 && this.§9! §().GetPosition().y <= param2;
      }
      
      public function §>c§(param1:b2Vec2) : void
      {
         this.§5Q§ = param1;
      }
      
      public function §12§() : void
      {
         if(this.§5Q§)
         {
            this.§+O§(this.§5Q§,false);
            this.§5Q§ = null;
         }
      }
      
      public function §4!3§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§9! §().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§9! §().SetAngularVelocity(0);
         }
         else
         {
            this.§9! §().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §3+§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§9! §().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§9!?§(_loc2_);
      }
      
      public function final(param1:Number) : void
      {
         this.§9! §().SetAngularVelocity(param1);
      }
      
      public function §9! §() : b2Body
      {
         if(this.§%g§ != null)
         {
            return this.§%g§.GetBody();
         }
         return null;
      }
      
      public function §%;§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§5!>§ = param1;
            this.§#!$§ = param2;
         }
         this.§9! §().GetPosition().x = this.§5!>§ * §#;§.§`!2§;
         this.§9! §().GetPosition().y = this.§#!$§ * §#;§.§`!2§;
      }
      
      public function §2j§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§9-§)
         {
            _loc3_ = true;
            this.§9-§ = false;
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
            this.§"0§.§&w§();
         }
         if(this.§ V§ > 1 && this.§"0§.§'n§)
         {
            _loc4_ = 4 + (this.§"0§.§'n§.blurX - 4 + param2 / 20) % 28;
            this.§"0§.§'n§.blurX = _loc4_;
            this.§"0§.§'n§.blurY = _loc4_;
         }
         this.§"0§.§-#§(param2);
         if(§-4§)
         {
            this.§,I§(param1);
         }
         else
         {
            this.§+H§ = this.§!i§;
            this.§5!>§ = this.§8+§;
            this.§#!$§ = this.§]!4§;
         }
         this.§0W§.x = Math.round(this.§5!>§);
         this.§0W§.y = Math.round(this.§#!$§);
         this.§0W§.rotation = this.§+H§ / 180 * Math.PI;
      }
      
      public function §3q§() : void
      {
         var _loc1_:Number = this.§9! §().GetPosition().x;
         var _loc2_:Number = this.§9! §().GetPosition().y;
         this.§4!6§ = this.§!i§;
         this.§6y§ = this.§8+§;
         this.§34§ = this.§]!4§;
         this.§!i§ = this.§9! §().GetAngle() * (180 / Math.PI) % 360;
         this.§8+§ = _loc1_ / §#;§.§`!2§;
         this.§]!4§ = _loc2_ / §#;§.§`!2§;
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
      
      public function §,I§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §0!<§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§ !6§.§7C§.§-K§.§case§ * 1000;
         }
         param1 *= -1;
         if(this.§8+§ == this.§6y§ || param1 == 0)
         {
            this.§&g§ = 0;
            this.§5!>§ = this.§8+§;
         }
         else
         {
            this.§&g§ = param1 * (this.§6y§ - this.§8+§) / param2;
            this.§5!>§ = this.§8+§ + this.§&g§;
         }
         if(this.§]!4§ == this.§34§ || param1 == 0)
         {
            this.§ !%§ = 0;
            this.§#!$§ = this.§]!4§;
         }
         else
         {
            this.§ !%§ = param1 * (this.§34§ - this.§]!4§) / param2;
            this.§#!$§ = this.§]!4§ + this.§ !%§;
         }
         if(this.§!i§ == this.§4!6§ || param1 == 0)
         {
            this.§+H§ = this.§!i§;
         }
         else if(this.§4!6§ > this.§!i§ && this.§4!6§ - this.§!i§ <= 180)
         {
            this.§+H§ = this.§!i§ + param1 * (this.§4!6§ - this.§!i§) / param2;
         }
         else if(this.§4!6§ > this.§!i§ && this.§4!6§ - this.§!i§ > 180)
         {
            this.§+H§ = this.§!i§ + param1 * (this.§4!6§ - 360 - this.§!i§) / param2;
         }
         else if(this.§4!6§ < this.§!i§ && this.§!i§ - this.§4!6§ <= 180)
         {
            this.§+H§ = this.§!i§ + param1 * (this.§4!6§ - this.§!i§) / param2;
         }
         else if(this.§4!6§ < this.§!i§ && this.§!i§ - this.§4!6§ > 180)
         {
            this.§+H§ = this.§!i§ + param1 * (this.§4!6§ + 360 - this.§!i§) / param2;
         }
      }
      
      public function get §6!B§() : Point
      {
         if(!§-4§)
         {
         }
         return null;
      }
      
      public function §0U§() : Boolean
      {
         return this.§'!,§ == §2E§.§!!@§ || this.§'!,§ == §2E§.§'+§;
      }
      
      public function §-`§() : Boolean
      {
         return this.§'!,§ == §2E§.§]D§;
      }
      
      public function §`U§() : Boolean
      {
         return this.§'!,§ == §2E§.§35§;
      }
      
      public function §1!F§() : Boolean
      {
         return this.§'!,§ == §2E§.§'+§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§'!,§ == §2E§.§+^§;
      }
      
      public function isGround() : Boolean
      {
         return this.§'!,§ == §2E§.§6!6§;
      }
      
      public function §?!1§() : Boolean
      {
         return this.§'!,§ == §2E§.§ k§;
      }
      
      public function §=H§() : Boolean
      {
         return this.§'!,§ == §2E§.§try§;
      }
      
      public function §6S§() : Boolean
      {
         if(this.§+i§ == "MISC_EXPLOSIVE_TNT" || this.§+i§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §4!#§() : Boolean
      {
         return (this.§-`§() || this.§?!1§() || this.§=H§()) && !this.§5k§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §],§() : Number
      {
         return Number(Math.sqrt(this.§9! §().GetLinearVelocity().x * this.§9! §().GetLinearVelocity().x + this.§9! §().GetLinearVelocity().y * this.§9! §().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§`U§())
         {
            return this.§7j§;
         }
         if(!this.§ !6§.§4%§())
         {
            return this.§7j§;
         }
         if(this.§4!;§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§3%§(§8M§.§@B§);
            }
            else if(param1 > 12)
            {
               this.§3%§(§8M§.§!$§);
            }
            else if(param1 > 3)
            {
               this.§3%§(§8M§.§8A§);
            }
            return this.§7j§;
         }
         if(param1 <= this.§4!;§)
         {
            if(param1 >= this.§4!;§ / 2)
            {
               this.§3%§(§8M§.§8A§);
            }
            if(this.§0U§() && this.§7j§ == this.§`9§)
            {
               this.§7j§ = this.§`9§ - 1;
            }
            return this.§7j§;
         }
         param1 -= this.§4!;§;
         if(param2 && this.§4!#§())
         {
            _loc7_ = Math.min(this.§7j§,int(param1));
            _loc8_ = §#;§.§?!B§.getValue() * _loc7_;
            this.§ !6§.§7C§.addScore(_loc8_,§0]§.§-h§,this.§7j§ > param1 && param3,this.§9! §().GetPosition().x,this.§9! §().GetPosition().y,§2S§.§`!0§(this.§+i§));
         }
         if(!(param5 && this.§,9§))
         {
            this.§7j§ -= param1;
         }
         if(this.§7j§ < 1 && this.§0U§())
         {
            this.§7j§ = 1;
         }
         if(this.§7j§ < 1)
         {
            this.§7j§ = 0;
            §'§.§ F§(§8M§.§@B§,this.§6g§.§=!8§,"ChannelDestroyed");
         }
         else
         {
            this.§3%§(§8M§.§!$§);
            this.addDamageParticles(this.§ !6§.§7C§.particles,param1);
         }
         this.§"0§.setDamagedFrame();
         return this.§7j§;
      }
      
      public function §3%§(param1:int) : void
      {
         §'§.§ F§(param1,this.§6g§.§=!8§);
      }
      
      public function §+t§(param1:String) : Number
      {
         return this.§6g§.material.§@g§(param1) * this.§ V§;
      }
      
      public function §]z§(param1:String) : Number
      {
         return this.§6g§.material.§]"§(param1);
      }
      
      public function §2F§() : String
      {
         return this.§6g§.material.mName;
      }
      
      public function §&!C§() : Number
      {
         return this.§6g§.§9'§();
      }
      
      public function §6F§() : int
      {
         return this.§6g§.§@!>§();
      }
      
      public function §7K§() : Boolean
      {
         return this.§9! §().IsAwake() && (this.§0U§() && this.§7j§ == this.§`9§ || Math.abs(this.§9! §().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§9! §().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§9! §().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §`E§() : Boolean
      {
         if(!this.§9! §().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§7!<§();
         if(Math.abs(this.§0!@§(this.§2!@§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§0!@§(this.§2!@§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§0!@§(this.§2!@§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §0!@§(param1:Vector.<Number>) : Number
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
      
      private function §7!<§() : void
      {
         this.§2!@§[0].push(this.§9! §().GetLinearVelocity().x);
         this.§2!@§[1].push(this.§9! §().GetLinearVelocity().y);
         this.§2!@§[2].push(this.§9! §().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§2!@§[_loc1_].length > this.§"!I§)
            {
               this.§2!@§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §0%§(param1:Number = 3) : void
      {
         this.§ V§ = param1;
         if(this.§ V§ > 1)
         {
            this.§"0§.§1P§();
         }
         else
         {
            this.§"0§.§'n§ = null;
         }
      }
      
      public function §^'§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§6g§.§<!E§() == §4F§.§7i§)
         {
            _loc2_ = this.§"0§.mW * this.§"0§.mH * (§#;§.§`!2§ * §#;§.§`!2§);
         }
         else
         {
            _loc2_ = this.§9! §().GetMass() / this.§%g§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§3v§();
            }
            _loc2_ /= this.§=!%§ * this.§=!%§;
         }
         return _loc2_;
      }
      
      public function §3v§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§"0§.§1c§ - 1) / 10);
      }
      
      public function §2,§(param1:Number) : void
      {
         var _loc2_:Number = this.§9! §().GetLinearVelocity().x;
         var _loc3_:Number = this.§9! §().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§9! §().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§]!9§) : Boolean
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
      
      public function §^m§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§9! §().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§9! §().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§0i§()) + 360) % 360;
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
            this.§9!?§(_loc4_);
         }
         var _loc3_:Number = this.§0i§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§9!?§(_loc3_);
      }
      
      public function §[;§(param1:Number) : void
      {
         var _loc2_:Number = §51§(this.§9! §().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §^M§(_loc2_);
         this.§9! §().SetAngle(_loc2_);
      }
      
      public function §>!@§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§9! §().GetPosition().Copy();
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
         this.§9! §().SetPosition(_loc13_);
      }
   }
}
