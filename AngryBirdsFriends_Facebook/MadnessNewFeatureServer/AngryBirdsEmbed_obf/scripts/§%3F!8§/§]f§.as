package §?!8§
{
   import §#+§.§6!C§;
   import §#+§.§@!<§;
   import §'6§.§?!L§;
   import §+[§.§%G§;
   import §2E§.§%-§;
   import §2E§.§5!8§;
   import §2E§.§96§;
   import §2E§.§]B§;
   import §2E§.§`u§;
   import §90§.Sprite;
   import §`!4§.§6l§;
   import §`!4§.§[o§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §]f§
   {
      
      public static const §[§:uint = 1 << 1;
      
      public static const §[j§:uint = 1 << 2;
      
      public static const §&<§:uint = 1 << 3;
      
      public static const §1g§:uint = 1 << 4;
      
      public static const §2!B§:Boolean = true;
      
      public static const §3!2§:Number = 5;
      
      public static const §@!2§:Number = 10;
       
      
      private var §`P§:String;
      
      private var §7Z§:int;
      
      private var §=Y§:int;
      
      public var §4h§:String;
      
      public var §^s§:int;
      
      protected var §=#§:§%-§;
      
      private var §#!$§:§#K§;
      
      private var mWorld:b2World;
      
      protected var §"!?§:String = "";
      
      protected var §#0§:int = 1;
      
      private var § f§:b2Fixture;
      
      private var §9"§:b2Body;
      
      private var §62§:b2Vec2;
      
      public var §`]§:Number;
      
      public var §+D§:Number;
      
      private var §0U§:Number;
      
      private var §?V§:Boolean = false;
      
      private var §=j§:Number;
      
      private var §+!"§:Number;
      
      private var §1p§:Number;
      
      private var §]6§:Number;
      
      private var §@%§:Number;
      
      private var §`!,§:Number;
      
      public var §>=§:Number = 1;
      
      private var §2+§:Boolean = false;
      
      public var §]!;§:Number = 0;
      
      public var §<!1§:Number = 0;
      
      protected var §=!3§:Boolean = false;
      
      public var §2W§:§=0§;
      
      protected var §`8§:Sprite;
      
      private var §;!>§:Number = 0;
      
      private var §8<§:Number = 0;
      
      private var §;!D§:Number = 0;
      
      protected var §,!F§:Number = 1.0;
      
      private var §?F§:Boolean = false;
      
      protected var §!!3§:§4#§;
      
      private var §;G§:Boolean = true;
      
      public function §]f§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§4h§ = param6;
         this.§=#§ = §]B§.§1l§(param6);
         this.§#!$§ = param1;
         this.§`8§ = param2;
         this.§,!F§ = param10;
         this.§?F§ = param11;
         this.§7Z§ = param5;
         this.§^s§ = this.§=#§.§^s§;
         this.§=Y§ = this.§=#§.§@M§();
         this.§!!3§ = new §4#§(§3!2§,§@!2§);
         this.§2W§ = new §=0§(this,param2,param4);
         if(!this.§2W§.§>D§(param1.§#J§.§7g§))
         {
            this.§2W§.§;^§(this.§=Y§,this.§=#§.§7!"§(),this.§=#§.§=-§() / §6l§.§%!<§,this.§=#§.§7,§() / §6l§.§%!<§);
         }
         this.§2W§.§]k§(this.§=Y§ == §`u§.§ q§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§9"§ = this.mWorld.CreateBody(_loc12_);
         this.§9"§.SetUserData(this);
         if(this.§=Y§ == §`u§.§4!&§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§=#§.shape.§?U§ * param10,this.§=#§.shape.§continue§ * param10);
            this.§ f§ = this.§9"§.CreateFixture2(_loc14_,this.§=#§.§ r§());
         }
         else if(this.§=Y§ == §`u§.§ q§ || this.§=Y§ == §`u§.§&!+§)
         {
            this.§ f§ = this.§9"§.CreateFixture2(this.§=#§.shape.§67§(param10),this.§=#§.§ r§());
         }
         this.§ f§.SetFriction(this.§=#§.§%!!§());
         this.§ f§.SetRestitution(this.§=#§.§!l§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§4!F§())
         {
            _loc13_.categoryBits = §[§;
            _loc13_.maskBits = 65535 & ~§[j§;
         }
         else if(this.§4h§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§4h§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §[j§;
            _loc13_.maskBits = 65535 & ~§[§;
         }
         this.§ f§.SetFilterData(_loc13_);
         this.§0U§ = this.§=#§.§ n§();
         if(this.§=#§.§+D§ > 0)
         {
            this.§`]§ = this.§+D§ = this.§=#§.§+D§;
         }
         else
         {
            this.§`]§ = this.§+D§ = Math.round(this.§?E§(true) * this.§=#§.§&B§());
            if(this.§`]§ < 1)
            {
               this.§`]§ = this.§+D§ = 1;
            }
         }
         if(this.§=#§.§^s§ == §%-§.§'8§)
         {
            this.§`8§.visible = false;
         }
         else
         {
            this.§2W§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§%!§(param9);
         }
         this.§&R§();
         this.§!!L§(0,1);
         this.§2W§.§"X§(this.§=#§.shape);
      }
      
      public static function §]X§(param1:int, param2:§96§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§,-§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8@§;
            }
            §%G§.§'[§(_loc4_,param3);
         }
      }
      
      public static function §9z§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §9_§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§`8§;
      }
      
      public function get x() : Number
      {
         return this.§;!>§;
      }
      
      public function get y() : Number
      {
         return this.§8<§;
      }
      
      public function get scale() : Number
      {
         return this.§,!F§;
      }
      
      public function get front() : Boolean
      {
         return this.§?F§;
      }
      
      public function get §,!-§() : Number
      {
         return this.§9"§.GetPosition().x;
      }
      
      public function get §]O§() : Number
      {
         return this.§9"§.GetPosition().y;
      }
      
      public function get §7!#§() : §%-§
      {
         return this.§=#§;
      }
      
      public function get §+4§() : Boolean
      {
         return this.§0U§ >= 0;
      }
      
      public function get container() : §#K§
      {
         return this.§#!$§;
      }
      
      public function get §6!H§() : Boolean
      {
         return this.§;G§;
      }
      
      public function set §6!H§(param1:Boolean) : void
      {
         this.§;G§ = param1;
      }
      
      public function set §9!1§(param1:Boolean) : void
      {
         this.§?V§ = param1;
      }
      
      public function set §3!@§(param1:uint) : void
      {
         this.§!!3§.§3!@§ = param1;
      }
      
      public function get §3!@§() : uint
      {
         return this.§!!3§.§3!@§;
      }
      
      public function get §2z§() : Boolean
      {
         return this.§2+§;
      }
      
      public function set §2z§(param1:Boolean) : void
      {
         this.§2+§ = param1;
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
         return this.§`P§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§`P§ = param1;
      }
      
      public function §`I§(param1:b2FilterData) : void
      {
         if(this.§ f§)
         {
            this.§ f§.SetFilterData(param1);
         }
      }
      
      protected function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         return §@!<§.getParticleMaterialFromEngineMaterial(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§=#§.get();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.DestroyBody(this.§<!9§());
            this.mWorld = null;
         }
         this.§2W§.dispose();
         if(this.§`8§)
         {
            this.§`8§.dispose();
            this.§`8§ = null;
         }
         this.§ f§ = null;
         this.§62§ = null;
         this.§=#§ = null;
      }
      
      public function §%!§(param1:Number) : void
      {
         this.§<!9§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §+%§() : Number
      {
         return (360 - this.§<!9§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §&+§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§<!9§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§72§();
         }
         if(param3)
         {
            this.§>!>§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§ f§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§<!9§().GetPosition().x >= param3 && this.§<!9§().GetPosition().x <= param4 && this.§<!9§().GetPosition().y >= param1 && this.§<!9§().GetPosition().y <= param2;
      }
      
      public function §]Q§(param1:b2Vec2) : void
      {
         this.§62§ = param1;
      }
      
      public function §4!@§() : void
      {
         if(this.§62§)
         {
            this.§&+§(this.§62§,false);
            this.§62§ = null;
         }
      }
      
      public function §72§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§<!9§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§<!9§().SetAngularVelocity(0);
         }
         else
         {
            this.§<!9§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §>!>§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§<!9§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§%!§(_loc2_);
      }
      
      public function §"!M§(param1:Number) : void
      {
         this.§<!9§().SetAngularVelocity(param1);
      }
      
      public function §<!9§() : b2Body
      {
         if(this.§ f§ != null)
         {
            return this.§ f§.GetBody();
         }
         return null;
      }
      
      public function §`;§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§;!>§ = param1;
            this.§8<§ = param2;
         }
         this.§<!9§().GetPosition().x = this.§;!>§ * §6l§.§%!<§;
         this.§<!9§().GetPosition().y = this.§8<§ * §6l§.§%!<§;
      }
      
      public function §!!L§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§=!3§)
         {
            _loc3_ = true;
            this.§=!3§ = false;
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
            this.§2W§.§+!;§();
         }
         if(this.§>=§ > 1 && this.§2W§.§[3§)
         {
            _loc4_ = 4 + (this.§2W§.§[3§.blurX - 4 + param2 / 20) % 28;
            this.§2W§.§[3§.blurX = _loc4_;
            this.§2W§.§[3§.blurY = _loc4_;
         }
         this.§2W§.§,+§(param2);
         if(§2!B§)
         {
            this.§ e§(param1);
         }
         else
         {
            this.§;!D§ = this.§1p§;
            this.§;!>§ = this.§=j§;
            this.§8<§ = this.§+!"§;
         }
         this.§`8§.x = Math.round(this.§;!>§);
         this.§`8§.y = Math.round(this.§8<§);
         this.§`8§.rotation = this.§;!D§ / 180 * Math.PI;
      }
      
      public function §&R§() : void
      {
         var _loc1_:Number = this.§<!9§().GetPosition().x;
         var _loc2_:Number = this.§<!9§().GetPosition().y;
         this.§`!,§ = this.§1p§;
         this.§]6§ = this.§=j§;
         this.§@%§ = this.§+!"§;
         this.§1p§ = this.§<!9§().GetAngle() * (180 / Math.PI) % 360;
         this.§=j§ = _loc1_ / §6l§.§%!<§;
         this.§+!"§ = _loc2_ / §6l§.§%!<§;
         this.§!!3§.§,!G§();
         this.§!!3§.§[7§(this.§<!9§());
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
      
      public function § e§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §?!L§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§#!$§.§#J§.mLevelEngine.§?!>§ * 1000;
         }
         param1 *= -1;
         if(this.§=j§ == this.§]6§ || param1 == 0)
         {
            this.§]!;§ = 0;
            this.§;!>§ = this.§=j§;
         }
         else
         {
            this.§]!;§ = param1 * (this.§]6§ - this.§=j§) / param2;
            this.§;!>§ = this.§=j§ + this.§]!;§;
         }
         if(this.§+!"§ == this.§@%§ || param1 == 0)
         {
            this.§<!1§ = 0;
            this.§8<§ = this.§+!"§;
         }
         else
         {
            this.§<!1§ = param1 * (this.§@%§ - this.§+!"§) / param2;
            this.§8<§ = this.§+!"§ + this.§<!1§;
         }
         if(this.§1p§ == this.§`!,§ || param1 == 0)
         {
            this.§;!D§ = this.§1p§;
         }
         else if(this.§`!,§ > this.§1p§ && this.§`!,§ - this.§1p§ <= 180)
         {
            this.§;!D§ = this.§1p§ + param1 * (this.§`!,§ - this.§1p§) / param2;
         }
         else if(this.§`!,§ > this.§1p§ && this.§`!,§ - this.§1p§ > 180)
         {
            this.§;!D§ = this.§1p§ + param1 * (this.§`!,§ - 360 - this.§1p§) / param2;
         }
         else if(this.§`!,§ < this.§1p§ && this.§1p§ - this.§`!,§ <= 180)
         {
            this.§;!D§ = this.§1p§ + param1 * (this.§`!,§ - this.§1p§) / param2;
         }
         else if(this.§`!,§ < this.§1p§ && this.§1p§ - this.§`!,§ > 180)
         {
            this.§;!D§ = this.§1p§ + param1 * (this.§`!,§ + 360 - this.§1p§) / param2;
         }
      }
      
      public function get §0[§() : Point
      {
         if(!§2!B§)
         {
         }
         return null;
      }
      
      public function §4!F§() : Boolean
      {
         return this.§^s§ == §%-§.§3!5§ || this.§^s§ == §%-§.§]G§;
      }
      
      public function §%$§() : Boolean
      {
         return this.§^s§ == §%-§.§&L§;
      }
      
      public function §[!@§() : Boolean
      {
         return this.§^s§ == §%-§.§1!9§;
      }
      
      public function §4B§() : Boolean
      {
         return this.§^s§ == §%-§.§]G§;
      }
      
      public function shouldUpdate() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§^s§ == §%-§.§^-§;
      }
      
      public function isGround() : Boolean
      {
         return this.§^s§ == §%-§.§'8§;
      }
      
      public function §9'§() : Boolean
      {
         return this.§^s§ == §%-§.§^!9§;
      }
      
      public function §;! §() : Boolean
      {
         return this.§^s§ == §%-§.§6!5§;
      }
      
      public function §`!L§() : Boolean
      {
         if(this.§4h§ == "MISC_EXPLOSIVE_TNT" || this.§4h§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §]!0§() : Boolean
      {
         return (this.§%$§() || this.§9'§() || this.§;! §()) && !this.§2z§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §?!+§() : Number
      {
         return Number(Math.sqrt(this.§<!9§().GetLinearVelocity().x * this.§<!9§().GetLinearVelocity().x + this.§<!9§().GetLinearVelocity().y * this.§<!9§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§[!@§())
         {
            return this.§`]§;
         }
         if(!this.§#!$§.§[!;§())
         {
            return this.§`]§;
         }
         if(this.§0U§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§;o§(§96§.§7l§);
            }
            else if(param1 > 12)
            {
               this.§;o§(§96§.§'e§);
            }
            else if(param1 > 3)
            {
               this.§;o§(§96§.§=i§);
            }
            return this.§`]§;
         }
         if(param1 <= this.§0U§)
         {
            if(param1 >= this.§0U§ / 2)
            {
               this.§;o§(§96§.§=i§);
            }
            if(this.§4!F§() && this.§`]§ == this.§+D§)
            {
               this.§`]§ = this.§+D§ - 1;
            }
            return this.§`]§;
         }
         param1 -= this.§0U§;
         if(param2 && this.§]!0§())
         {
            _loc7_ = Math.min(this.§`]§,int(param1));
            _loc8_ = §6l§.§4!!§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §6l§.§&q§;
            }
            this.§#!$§.§#J§.addScore(_loc8_,§[o§.§6O§,this.§`]§ > param1 && param3,this.§<!9§().GetPosition().x,this.§<!9§().GetPosition().y,§@!<§.§?§(this.§4h§));
         }
         if(!(param5 && this.§?V§))
         {
            this.§`]§ -= param1;
         }
         if(this.§`]§ < 1 && this.§4!F§())
         {
            this.§`]§ = 1;
         }
         if(this.§`]§ < 1)
         {
            this.§`]§ = 0;
            §]f§.§]X§(§96§.§7l§,this.§=#§.§%d§,"ChannelDestroyed");
         }
         else
         {
            this.§;o§(§96§.§'e§);
            this.addDamageParticles(this.§#!$§.§#J§.particles,param1);
         }
         this.§2W§.setDamagedFrame();
         return this.§`]§;
      }
      
      public function §;o§(param1:int) : void
      {
         §]f§.§]X§(param1,this.§=#§.§%d§);
      }
      
      public function §;§(param1:String) : Number
      {
         return this.§=#§.material.§4[§(param1) * this.§>=§;
      }
      
      public function §!§(param1:String) : Number
      {
         return this.§=#§.material.§8m§(param1);
      }
      
      public function §?w§() : String
      {
         return this.§=#§.material.mName;
      }
      
      public function § #§() : Number
      {
         return this.§=#§.§&B§();
      }
      
      public function §`K§() : int
      {
         return this.§=#§.§`0§();
      }
      
      public function §4L§() : Boolean
      {
         return this.§<!9§().IsAwake() && (this.§4!F§() && this.§`]§ == this.§+D§ || Math.abs(this.§<!9§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§<!9§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§<!9§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §<!@§() : Boolean
      {
         if(!this.§<!9§().IsAwake())
         {
            return true;
         }
         return !this.§%2§();
      }
      
      protected function §%2§() : Boolean
      {
         return this.§!!3§.§%2§();
      }
      
      public function §throw§(param1:Number = 3) : void
      {
         this.§>=§ = param1;
         if(this.§>=§ > 1)
         {
            this.§2W§.§[J§();
         }
         else
         {
            this.§2W§.§[3§ = null;
         }
      }
      
      public function §?E§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§=#§.get() == §5!8§.§&-§)
         {
            _loc2_ = this.§2W§.mW * this.§2W§.mH * (§6l§.§%!<§ * §6l§.§%!<§);
         }
         else
         {
            _loc2_ = this.§<!9§().GetMass() / this.§ f§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§,R§();
            }
            _loc2_ /= this.§,!F§ * this.§,!F§;
         }
         return _loc2_;
      }
      
      public function §,R§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§2W§.§7!6§ - 1) / 10);
      }
      
      public function §<!B§(param1:Number) : void
      {
         var _loc2_:Number = this.§<!9§().GetLinearVelocity().x;
         var _loc3_:Number = this.§<!9§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§<!9§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§#K§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§6!C§) : void
      {
      }
      
      public function addDamageParticles(param1:§6!C§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §@-§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§<!9§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§<!9§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§+%§()) + 360) % 360;
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
            this.§%!§(_loc4_);
         }
         var _loc3_:Number = this.§+%§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§%!§(_loc3_);
      }
      
      public function §=!1§(param1:Number) : void
      {
         var _loc2_:Number = §9z§(this.§<!9§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §9_§(_loc2_);
         this.§<!9§().SetAngle(_loc2_);
      }
      
      public function §>!B§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§<!9§().GetPosition().Copy();
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
         this.§<!9§().SetPosition(_loc13_);
      }
   }
}
