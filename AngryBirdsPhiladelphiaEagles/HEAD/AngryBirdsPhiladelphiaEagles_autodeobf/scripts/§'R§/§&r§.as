package §'R§
{
   import §%"§.§ do§;
   import §%"§.§^!J§;
   import §+y§.§3V§;
   import §;;§.§"!E§;
   import §;;§.§9"§;
   import §<!N§.Sprite;
   import §@V§.§`!5§;
   import §`=§.§"R§;
   import §`=§.§%!'§;
   import §`=§.§24§;
   import §`=§.§?!E§;
   import §`=§.§`P§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §&r§
   {
      
      public static const §5K§:uint = 1 << 1;
      
      public static const §@!6§:uint = 1 << 2;
      
      public static const §;!>§:uint = 1 << 3;
      
      public static const §0F§:uint = 1 << 4;
      
      public static const §%!+§:Boolean = true;
      
      public static const §1!4§:Number = 5;
      
      public static const §&`§:Number = 10;
       
      
      private var § !E§:String;
      
      private var §"k§:int;
      
      private var §catch§:int;
      
      public var §8!I§:String;
      
      public var §>!L§:int;
      
      private var §>u§:§%!'§;
      
      private var §6!N§:§!m§;
      
      private var §``§:b2World;
      
      protected var §<@§:String = "";
      
      protected var §1V§:int = 1;
      
      private var §5g§:b2Fixture;
      
      private var §3!#§:b2Body;
      
      private var §^i§:b2Vec2;
      
      public var §3! §:Number;
      
      public var §`!O§:Number;
      
      private var §^8§:Number;
      
      private var §%d§:Boolean = false;
      
      private var §9T§:Number;
      
      private var §3W§:Number;
      
      private var §0!8§:Number;
      
      private var §0!L§:Number;
      
      private var §`B§:Number;
      
      private var §]!§:Number;
      
      public var §8!-§:Number = 1;
      
      private var §8M§:Boolean = false;
      
      public var §%!J§:Number = 0;
      
      public var §@#§:Number = 0;
      
      protected var §^!6§:Boolean = false;
      
      public var §,q§:§-$§;
      
      private var §=!"§:Sprite;
      
      private var §-o§:Number = 0;
      
      private var §2!9§:Number = 0;
      
      private var §-"§:Number = 0;
      
      private var §"!3§:Number = 1.0;
      
      private var §?!3§:Boolean = false;
      
      protected var §[!,§:§<a§;
      
      private var §!!Q§:Boolean = true;
      
      public function §&r§(param1:§!m§, param2:Sprite, param3:b2World, param4:§ do§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§8!I§ = param6;
         this.§>u§ = §"R§.§^!'§(param6);
         this.§6!N§ = param1;
         this.§=!"§ = param2;
         this.§"!3§ = param10;
         this.§?!3§ = param11;
         this.§"k§ = param5;
         this.§>!L§ = this.§>u§.§>!L§;
         this.§catch§ = this.§>u§.§1w§();
         this.§[!,§ = new §<a§(§1!4§,§&`§);
         this.§,q§ = new §-$§(this,param2,param4);
         if(!this.§,q§.§3n§(param1.§-H§.§4i§))
         {
            this.§,q§.§<+§(this.§catch§,this.§>u§.§'%§(),this.§>u§.§ !F§() / § do§.§^!I§,this.§>u§.§5z§() / § do§.§^!I§);
         }
         this.§,q§.§75§(this.§catch§ == §24§.§<<§);
         this.§``§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§3!#§ = this.§``§.CreateBody(_loc12_);
         this.§3!#§.SetUserData(this);
         if(this.§catch§ == §24§.§[`§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§>u§.shape.§0!4§ * param10,this.§>u§.shape.§0!$§ * param10);
            this.§5g§ = this.§3!#§.CreateFixture2(_loc14_,this.§>u§.§-,§());
         }
         else if(this.§catch§ == §24§.§<<§ || this.§catch§ == §24§.§9=§)
         {
            this.§5g§ = this.§3!#§.CreateFixture2(this.§>u§.shape.§>5§(param10),this.§>u§.§-,§());
         }
         this.§5g§.SetFriction(this.§>u§.§!n§());
         this.§5g§.SetRestitution(this.§>u§.§^!!§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§>j§())
         {
            _loc13_.categoryBits = §5K§;
            _loc13_.maskBits = 65535 & ~§@!6§;
         }
         else if(this.§8!I§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§8!I§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §@!6§;
            _loc13_.maskBits = 65535 & ~§5K§;
         }
         this.§5g§.SetFilterData(_loc13_);
         this.§^8§ = this.§>u§.§-!>§();
         if(this.§>u§.§`!O§ > 0)
         {
            this.§3! § = this.§`!O§ = this.§>u§.§`!O§;
         }
         else
         {
            this.§3! § = this.§`!O§ = Math.round(this.§[L§(true) * this.§>u§.§8#§());
            if(this.§3! § < 1)
            {
               this.§3! § = this.§`!O§ = 1;
            }
         }
         if(this.§>u§.§>!L§ == §%!'§.§^!+§)
         {
            this.§=!"§.visible = false;
         }
         else
         {
            this.§,q§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§+!6§(param9);
         }
         this.§--§();
         this.§,A§(0,1);
         this.§,q§.§'?§(this.§>u§.shape);
      }
      
      public static function §>h§(param1:int, param2:§?!E§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§#"§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§4^§;
            }
            §3V§.§7!1§(_loc4_,param3);
         }
      }
      
      public static function §[a§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §[!$§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!"§;
      }
      
      public function get x() : Number
      {
         return this.§-o§;
      }
      
      public function get y() : Number
      {
         return this.§2!9§;
      }
      
      public function get scale() : Number
      {
         return this.§"!3§;
      }
      
      public function get front() : Boolean
      {
         return this.§?!3§;
      }
      
      public function get §2;§() : Number
      {
         return this.§3!#§.GetPosition().x;
      }
      
      public function get §4n§() : Number
      {
         return this.§3!#§.GetPosition().y;
      }
      
      public function get §@j§() : §%!'§
      {
         return this.§>u§;
      }
      
      public function get §4! §() : Boolean
      {
         return this.§^8§ >= 0;
      }
      
      public function get container() : §!m§
      {
         return this.§6!N§;
      }
      
      public function get §`u§() : Boolean
      {
         return this.§!!Q§;
      }
      
      public function set §`u§(param1:Boolean) : void
      {
         this.§!!Q§ = param1;
      }
      
      public function set §;!@§(param1:Boolean) : void
      {
         this.§%d§ = param1;
      }
      
      public function set §]y§(param1:uint) : void
      {
         this.§[!,§.§]y§ = param1;
      }
      
      public function get §]y§() : uint
      {
         return this.§[!,§.§]y§;
      }
      
      public function get §0g§() : Boolean
      {
         return this.§8M§;
      }
      
      public function set §0g§(param1:Boolean) : void
      {
         this.§8M§ = param1;
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
         return this.§ !E§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§ !E§ = param1;
      }
      
      public function §6f§(param1:b2FilterData) : void
      {
         if(this.§5g§)
         {
            this.§5g§.SetFilterData(param1);
         }
      }
      
      protected function §3H§(param1:String) : int
      {
         return §"!E§.§3H§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§>u§.§-!F§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§``§)
         {
            this.§``§.DestroyBody(this.§<!I§());
            this.§``§ = null;
         }
         this.§,q§.dispose();
         if(this.§=!"§)
         {
            this.§=!"§.dispose();
            this.§=!"§ = null;
         }
         this.§5g§ = null;
         this.§^i§ = null;
         this.§>u§ = null;
      }
      
      public function §+!6§(param1:Number) : void
      {
         this.§<!I§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §@!G§() : Number
      {
         return (360 - this.§<!I§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §#!%§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§<!I§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§"U§();
         }
         if(param3)
         {
            this.§7G§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§5g§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§<!I§().GetPosition().x >= param3 && this.§<!I§().GetPosition().x <= param4 && this.§<!I§().GetPosition().y >= param1 && this.§<!I§().GetPosition().y <= param2;
      }
      
      public function §1!2§(param1:b2Vec2) : void
      {
         this.§^i§ = param1;
      }
      
      public function §7"§() : void
      {
         if(this.§^i§)
         {
            this.§#!%§(this.§^i§,false);
            this.§^i§ = null;
         }
      }
      
      public function §"U§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§<!I§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§<!I§().SetAngularVelocity(0);
         }
         else
         {
            this.§<!I§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §7G§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§<!I§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§+!6§(_loc2_);
      }
      
      public function §4U§(param1:Number) : void
      {
         this.§<!I§().SetAngularVelocity(param1);
      }
      
      public function §<!I§() : b2Body
      {
         if(this.§5g§ != null)
         {
            return this.§5g§.GetBody();
         }
         return null;
      }
      
      public function §,!P§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§-o§ = param1;
            this.§2!9§ = param2;
         }
         this.§<!I§().GetPosition().x = this.§-o§ * § do§.§^!I§;
         this.§<!I§().GetPosition().y = this.§2!9§ * § do§.§^!I§;
      }
      
      public function §,A§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§^!6§)
         {
            _loc3_ = true;
            this.§^!6§ = false;
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
            this.§,q§.§8_§();
         }
         if(this.§8!-§ > 1 && this.§,q§.§ K§)
         {
            _loc4_ = 4 + (this.§,q§.§ K§.blurX - 4 + param2 / 20) % 28;
            this.§,q§.§ K§.blurX = _loc4_;
            this.§,q§.§ K§.blurY = _loc4_;
         }
         this.§,q§.§?&§(param2);
         if(§%!+§)
         {
            this.§22§(param1);
         }
         else
         {
            this.§-"§ = this.§0!8§;
            this.§-o§ = this.§9T§;
            this.§2!9§ = this.§3W§;
         }
         this.§=!"§.x = Math.round(this.§-o§);
         this.§=!"§.y = Math.round(this.§2!9§);
         this.§=!"§.rotation = this.§-"§ / 180 * Math.PI;
      }
      
      public function §--§() : void
      {
         var _loc1_:Number = this.§<!I§().GetPosition().x;
         var _loc2_:Number = this.§<!I§().GetPosition().y;
         this.§]!§ = this.§0!8§;
         this.§0!L§ = this.§9T§;
         this.§`B§ = this.§3W§;
         this.§0!8§ = this.§<!I§().GetAngle() * (180 / Math.PI) % 360;
         this.§9T§ = _loc1_ / § do§.§^!I§;
         this.§3W§ = _loc2_ / § do§.§^!I§;
         this.§[!,§.§;K§();
         this.§[!,§.§>k§(this.§<!I§());
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
      
      public function §22§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §`!5§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§6!N§.§-H§.§]u§.each * 1000;
         }
         param1 *= -1;
         if(this.§9T§ == this.§0!L§ || param1 == 0)
         {
            this.§%!J§ = 0;
            this.§-o§ = this.§9T§;
         }
         else
         {
            this.§%!J§ = param1 * (this.§0!L§ - this.§9T§) / param2;
            this.§-o§ = this.§9T§ + this.§%!J§;
         }
         if(this.§3W§ == this.§`B§ || param1 == 0)
         {
            this.§@#§ = 0;
            this.§2!9§ = this.§3W§;
         }
         else
         {
            this.§@#§ = param1 * (this.§`B§ - this.§3W§) / param2;
            this.§2!9§ = this.§3W§ + this.§@#§;
         }
         if(this.§0!8§ == this.§]!§ || param1 == 0)
         {
            this.§-"§ = this.§0!8§;
         }
         else if(this.§]!§ > this.§0!8§ && this.§]!§ - this.§0!8§ <= 180)
         {
            this.§-"§ = this.§0!8§ + param1 * (this.§]!§ - this.§0!8§) / param2;
         }
         else if(this.§]!§ > this.§0!8§ && this.§]!§ - this.§0!8§ > 180)
         {
            this.§-"§ = this.§0!8§ + param1 * (this.§]!§ - 360 - this.§0!8§) / param2;
         }
         else if(this.§]!§ < this.§0!8§ && this.§0!8§ - this.§]!§ <= 180)
         {
            this.§-"§ = this.§0!8§ + param1 * (this.§]!§ - this.§0!8§) / param2;
         }
         else if(this.§]!§ < this.§0!8§ && this.§0!8§ - this.§]!§ > 180)
         {
            this.§-"§ = this.§0!8§ + param1 * (this.§]!§ + 360 - this.§0!8§) / param2;
         }
      }
      
      public function get §`x§() : Point
      {
         if(!§%!+§)
         {
         }
         return null;
      }
      
      public function §>j§() : Boolean
      {
         return this.§>!L§ == §%!'§.§#l§ || this.§>!L§ == §%!'§.§%!K§;
      }
      
      public function § !M§() : Boolean
      {
         return this.§>!L§ == §%!'§.§-J§;
      }
      
      public function §]!G§() : Boolean
      {
         return this.§>!L§ == §%!'§.§<6§;
      }
      
      public function §'!A§() : Boolean
      {
         return this.§>!L§ == §%!'§.§%!K§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§>!L§ == §%!'§.§8!1§;
      }
      
      public function isGround() : Boolean
      {
         return this.§>!L§ == §%!'§.§^!+§;
      }
      
      public function §4!N§() : Boolean
      {
         return this.§>!L§ == §%!'§.§`!4§;
      }
      
      public function §4B§() : Boolean
      {
         return this.§>!L§ == §%!'§.§=4§;
      }
      
      public function §%k§() : Boolean
      {
         if(this.§8!I§ == "MISC_EXPLOSIVE_TNT" || this.§8!I§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §&P§() : Boolean
      {
         return (this.§ !M§() || this.§4!N§() || this.§4B§()) && !this.§0g§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function § ! §() : Number
      {
         return Number(Math.sqrt(this.§<!I§().GetLinearVelocity().x * this.§<!I§().GetLinearVelocity().x + this.§<!I§().GetLinearVelocity().y * this.§<!I§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§]!G§())
         {
            return this.§3! §;
         }
         if(!this.§6!N§.§`W§())
         {
            return this.§3! §;
         }
         if(this.§^8§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§@!E§(§?!E§.§1h§);
            }
            else if(param1 > 12)
            {
               this.§@!E§(§?!E§.§&!+§);
            }
            else if(param1 > 3)
            {
               this.§@!E§(§?!E§.§-@§);
            }
            return this.§3! §;
         }
         if(param1 <= this.§^8§)
         {
            if(param1 >= this.§^8§ / 2)
            {
               this.§@!E§(§?!E§.§-@§);
            }
            if(this.§>j§() && this.§3! § == this.§`!O§)
            {
               this.§3! § = this.§`!O§ - 1;
            }
            return this.§3! §;
         }
         param1 -= this.§^8§;
         if(param2 && this.§&P§())
         {
            _loc7_ = Math.min(this.§3! §,int(param1));
            _loc8_ = § do§.§9b§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= § do§.§<8§;
            }
            this.§6!N§.§-H§.addScore(_loc8_,§^!J§.§6!8§,this.§3! § > param1 && param3,this.§<!I§().GetPosition().x,this.§<!I§().GetPosition().y,§"!E§.§^2§(this.§8!I§));
         }
         if(!(param5 && this.§%d§))
         {
            this.§3! § -= param1;
         }
         if(this.§3! § < 1 && this.§>j§())
         {
            this.§3! § = 1;
         }
         if(this.§3! § < 1)
         {
            this.§3! § = 0;
            §&r§.§>h§(§?!E§.§1h§,this.§>u§.§1`§,"ChannelDestroyed");
         }
         else
         {
            this.§@!E§(§?!E§.§&!+§);
            this.addDamageParticles(this.§6!N§.§-H§.particles,param1);
         }
         this.§,q§.setDamagedFrame();
         return this.§3! §;
      }
      
      public function §@!E§(param1:int) : void
      {
         §&r§.§>h§(param1,this.§>u§.§1`§);
      }
      
      public function §%!G§(param1:String) : Number
      {
         return this.§>u§.material.§&q§(param1) * this.§8!-§;
      }
      
      public function §7Y§(param1:String) : Number
      {
         return this.§>u§.material.§+!L§(param1);
      }
      
      public function §&E§() : String
      {
         return this.§>u§.material.mName;
      }
      
      public function §#!L§() : Number
      {
         return this.§>u§.§8#§();
      }
      
      public function §%y§() : int
      {
         return this.§>u§.§!,§();
      }
      
      public function §;y§() : Boolean
      {
         return this.§<!I§().IsAwake() && (this.§>j§() && this.§3! § == this.§`!O§ || Math.abs(this.§<!I§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§<!I§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§<!I§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §8@§() : Boolean
      {
         if(!this.§<!I§().IsAwake())
         {
            return true;
         }
         return !this.§+!H§();
      }
      
      protected function §+!H§() : Boolean
      {
         return this.§[!,§.§+!H§();
      }
      
      public function §-2§(param1:Number = 3) : void
      {
         this.§8!-§ = param1;
         if(this.§8!-§ > 1)
         {
            this.§,q§.§0&§();
         }
         else
         {
            this.§,q§.§ K§ = null;
         }
      }
      
      public function §[L§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§>u§.§-!F§() == §`P§.§@e§)
         {
            _loc2_ = this.§,q§.mW * this.§,q§.mH * (§ do§.§^!I§ * § do§.§^!I§);
         }
         else
         {
            _loc2_ = this.§<!I§().GetMass() / this.§5g§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§+N§();
            }
            _loc2_ /= this.§"!3§ * this.§"!3§;
         }
         return _loc2_;
      }
      
      public function §+N§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§,q§.§finally§ - 1) / 10);
      }
      
      public function §8!'§(param1:Number) : void
      {
         var _loc2_:Number = this.§<!I§().GetLinearVelocity().x;
         var _loc3_:Number = this.§<!I§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§<!I§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§!m§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§9"§) : void
      {
      }
      
      public function addDamageParticles(param1:§9"§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §9l§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§<!I§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§<!I§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§@!G§()) + 360) % 360;
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
            this.§+!6§(_loc4_);
         }
         var _loc3_:Number = this.§@!G§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§+!6§(_loc3_);
      }
      
      public function §3!I§(param1:Number) : void
      {
         var _loc2_:Number = §[a§(this.§<!I§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §[!$§(_loc2_);
         this.§<!I§().SetAngle(_loc2_);
      }
      
      public function §8?§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§<!I§().GetPosition().Copy();
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
         this.§<!I§().SetPosition(_loc13_);
      }
   }
}
