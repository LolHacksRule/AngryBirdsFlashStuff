package §!!,§
{
   import §!D§.§5O§;
   import §!D§.§7D§;
   import §#!@§.Sprite;
   import §'0§.§]!2§;
   import §9s§.§%!L§;
   import §9s§.§^9§;
   import §;!'§.§'_§;
   import §;!'§.§3!6§;
   import §;!'§.§4&§;
   import §;!'§.§;l§;
   import §;!'§.§=j§;
   import §@!;§.§!!=§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §`Q§
   {
      
      public static const §`!1§:uint = 1 << 1;
      
      public static const §`G§:uint = 1 << 2;
      
      public static const §6!N§:uint = 1 << 3;
      
      public static const §0!§:uint = 1 << 4;
      
      public static const §[0§:Boolean = true;
      
      public static const §-d§:Number = 5;
      
      public static const §'!,§:Number = 10;
       
      
      private var §2#§:String;
      
      private var §&L§:int;
      
      private var § `§:int;
      
      public var §#+§:String;
      
      public var §3E§:int;
      
      protected var §=q§:§;l§;
      
      private var §<q§:§^!0§;
      
      private var mWorld:b2World;
      
      protected var §-a§:String = "";
      
      protected var §5]§:int = 1;
      
      private var §;8§:b2Fixture;
      
      private var §6i§:b2Body;
      
      private var §#!C§:b2Vec2;
      
      public var §;U§:Number;
      
      public var §!d§:Number;
      
      private var §=!@§:Number;
      
      private var §7p§:Boolean = false;
      
      private var §%j§:Number;
      
      private var §6?§:Number;
      
      private var §[C§:Number;
      
      private var §]!$§:Number;
      
      private var §2!'§:Number;
      
      private var §[!N§:Number;
      
      public var §`!7§:Number = 1;
      
      private var §@a§:Boolean = false;
      
      public var §5Z§:Number = 0;
      
      public var §=!K§:Number = 0;
      
      protected var §8w§:Boolean = false;
      
      public var §!t§:§?q§;
      
      protected var §;e§:Sprite;
      
      private var §3y§:Number = 0;
      
      private var §6@§:Number = 0;
      
      private var §4!5§:Number = 0;
      
      protected var §%g§:Number = 1.0;
      
      private var §&!3§:Boolean = false;
      
      protected var §[!H§:§^4§;
      
      private var §#Q§:Boolean = true;
      
      public function §`Q§(param1:§^!0§, param2:Sprite, param3:b2World, param4:§^9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§#+§ = param6;
         this.§=q§ = §=j§.§=c§(param6);
         this.§<q§ = param1;
         this.§;e§ = param2;
         this.§%g§ = param10;
         this.§&!3§ = param11;
         this.§&L§ = param5;
         this.§3E§ = this.§=q§.§3E§;
         this.§ `§ = this.§=q§.§ [§();
         this.§[!H§ = new §^4§(§-d§,§'!,§);
         this.§!t§ = new §?q§(this,param2,param4);
         if(!this.§!t§.§!i§(param1.§4!I§.§%F§))
         {
            this.§!t§.§!U§(this.§ `§,this.§=q§.§3!G§(),this.§=q§.§5L§() / §^9§.§5T§,this.§=q§.§]!?§() / §^9§.§5T§);
         }
         this.§!t§.§3f§(this.§ `§ == §'_§.§]!"§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§6i§ = this.mWorld.CreateBody(_loc12_);
         this.§6i§.SetUserData(this);
         if(this.§ `§ == §'_§.§1<§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§=q§.shape.§'o§ * param10,this.§=q§.shape.§+L§ * param10);
            this.§;8§ = this.§6i§.CreateFixture2(_loc14_,this.§=q§.§[!$§());
         }
         else if(this.§ `§ == §'_§.§]!"§ || this.§ `§ == §'_§.§use §)
         {
            this.§;8§ = this.§6i§.CreateFixture2(this.§=q§.shape.§@C§(param10),this.§=q§.§[!$§());
         }
         this.§;8§.SetFriction(this.§=q§.§4s§());
         this.§;8§.SetRestitution(this.§=q§.§@!F§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§ !A§())
         {
            _loc13_.categoryBits = §`!1§;
            _loc13_.maskBits = 65535 & ~§`G§;
         }
         else if(this.§#+§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§#+§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §`G§;
            _loc13_.maskBits = 65535 & ~§`!1§;
         }
         this.§;8§.SetFilterData(_loc13_);
         this.§=!@§ = this.§=q§.§-X§();
         if(this.§=q§.§!d§ > 0)
         {
            this.§;U§ = this.§!d§ = this.§=q§.§!d§;
         }
         else
         {
            this.§;U§ = this.§!d§ = Math.round(this.§,!@§(true) * this.§=q§.§8!>§());
            if(this.§;U§ < 1)
            {
               this.§;U§ = this.§!d§ = 1;
            }
         }
         if(this.§=q§.§3E§ == §;l§.§<I§)
         {
            this.§;e§.visible = false;
         }
         else
         {
            this.§!t§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§3T§(param9);
         }
         this.§-y§();
         this.§2K§(0,1);
         this.§!t§.§#t§(this.§=q§.shape);
      }
      
      public static function §+!0§(param1:int, param2:§4&§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§76§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§`X§;
            }
            §]!2§.§>!;§(_loc4_,param3);
         }
      }
      
      public static function §?o§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §`L§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§;e§;
      }
      
      public function get x() : Number
      {
         return this.§3y§;
      }
      
      public function get y() : Number
      {
         return this.§6@§;
      }
      
      public function get scale() : Number
      {
         return this.§%g§;
      }
      
      public function get front() : Boolean
      {
         return this.§&!3§;
      }
      
      public function get § s§() : Number
      {
         return this.§6i§.GetPosition().x;
      }
      
      public function get §'X§() : Number
      {
         return this.§6i§.GetPosition().y;
      }
      
      public function get §?!6§() : §;l§
      {
         return this.§=q§;
      }
      
      public function get §]n§() : Boolean
      {
         return this.§=!@§ >= 0;
      }
      
      public function get container() : §^!0§
      {
         return this.§<q§;
      }
      
      public function get §@&§() : Boolean
      {
         return this.§#Q§;
      }
      
      public function set §@&§(param1:Boolean) : void
      {
         this.§#Q§ = param1;
      }
      
      public function set §-Y§(param1:Boolean) : void
      {
         this.§7p§ = param1;
      }
      
      public function set §0!@§(param1:uint) : void
      {
         this.§[!H§.§0!@§ = param1;
      }
      
      public function get §0!@§() : uint
      {
         return this.§[!H§.§0!@§;
      }
      
      public function get §?Y§() : Boolean
      {
         return this.§@a§;
      }
      
      public function set §?Y§(param1:Boolean) : void
      {
         this.§@a§ = param1;
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
         return this.§2#§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§2#§ = param1;
      }
      
      public function §-!+§(param1:b2FilterData) : void
      {
         if(this.§;8§)
         {
            this.§;8§.SetFilterData(param1);
         }
      }
      
      protected function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         return §7D§.getParticleMaterialFromEngineMaterial(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§=q§.§8E§();
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
            this.mWorld.DestroyBody(this.§ 7§());
            this.mWorld = null;
         }
         this.§!t§.dispose();
         if(this.§;e§)
         {
            this.§;e§.dispose();
            this.§;e§ = null;
         }
         this.§;8§ = null;
         this.§#!C§ = null;
         this.§=q§ = null;
      }
      
      public function §3T§(param1:Number) : void
      {
         this.§ 7§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §-c§() : Number
      {
         return (360 - this.§ 7§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §&0§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§ 7§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§,!#§();
         }
         if(param3)
         {
            this.§[F§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§;8§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§ 7§().GetPosition().x >= param3 && this.§ 7§().GetPosition().x <= param4 && this.§ 7§().GetPosition().y >= param1 && this.§ 7§().GetPosition().y <= param2;
      }
      
      public function §]Z§(param1:b2Vec2) : void
      {
         this.§#!C§ = param1;
      }
      
      public function §##§() : void
      {
         if(this.§#!C§)
         {
            this.§&0§(this.§#!C§,false);
            this.§#!C§ = null;
         }
      }
      
      public function §,!#§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§ 7§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§ 7§().SetAngularVelocity(0);
         }
         else
         {
            this.§ 7§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §[F§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§ 7§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§3T§(_loc2_);
      }
      
      public function §6=§(param1:Number) : void
      {
         this.§ 7§().SetAngularVelocity(param1);
      }
      
      public function § 7§() : b2Body
      {
         if(this.§;8§ != null)
         {
            return this.§;8§.GetBody();
         }
         return null;
      }
      
      public function §+<§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§3y§ = param1;
            this.§6@§ = param2;
         }
         this.§ 7§().GetPosition().x = this.§3y§ * §^9§.§5T§;
         this.§ 7§().GetPosition().y = this.§6@§ * §^9§.§5T§;
      }
      
      public function §2K§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§8w§)
         {
            _loc3_ = true;
            this.§8w§ = false;
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
            this.§!t§.§+!7§();
         }
         if(this.§`!7§ > 1 && this.§!t§.§"S§)
         {
            _loc4_ = 4 + (this.§!t§.§"S§.blurX - 4 + param2 / 20) % 28;
            this.§!t§.§"S§.blurX = _loc4_;
            this.§!t§.§"S§.blurY = _loc4_;
         }
         this.§!t§.§0U§(param2);
         if(§[0§)
         {
            this.§&Y§(param1);
         }
         else
         {
            this.§4!5§ = this.§[C§;
            this.§3y§ = this.§%j§;
            this.§6@§ = this.§6?§;
         }
         this.§;e§.x = Math.round(this.§3y§);
         this.§;e§.y = Math.round(this.§6@§);
         this.§;e§.rotation = this.§4!5§ / 180 * Math.PI;
      }
      
      public function §-y§() : void
      {
         var _loc1_:Number = this.§ 7§().GetPosition().x;
         var _loc2_:Number = this.§ 7§().GetPosition().y;
         this.§[!N§ = this.§[C§;
         this.§]!$§ = this.§%j§;
         this.§2!'§ = this.§6?§;
         this.§[C§ = this.§ 7§().GetAngle() * (180 / Math.PI) % 360;
         this.§%j§ = _loc1_ / §^9§.§5T§;
         this.§6?§ = _loc2_ / §^9§.§5T§;
         this.§[!H§.§1!§();
         this.§[!H§.§^!?§(this.§ 7§());
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
      
      public function §&Y§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §!!=§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§<q§.§4!I§.mLevelEngine.§?G§ * 1000;
         }
         param1 *= -1;
         if(this.§%j§ == this.§]!$§ || param1 == 0)
         {
            this.§5Z§ = 0;
            this.§3y§ = this.§%j§;
         }
         else
         {
            this.§5Z§ = param1 * (this.§]!$§ - this.§%j§) / param2;
            this.§3y§ = this.§%j§ + this.§5Z§;
         }
         if(this.§6?§ == this.§2!'§ || param1 == 0)
         {
            this.§=!K§ = 0;
            this.§6@§ = this.§6?§;
         }
         else
         {
            this.§=!K§ = param1 * (this.§2!'§ - this.§6?§) / param2;
            this.§6@§ = this.§6?§ + this.§=!K§;
         }
         if(this.§[C§ == this.§[!N§ || param1 == 0)
         {
            this.§4!5§ = this.§[C§;
         }
         else if(this.§[!N§ > this.§[C§ && this.§[!N§ - this.§[C§ <= 180)
         {
            this.§4!5§ = this.§[C§ + param1 * (this.§[!N§ - this.§[C§) / param2;
         }
         else if(this.§[!N§ > this.§[C§ && this.§[!N§ - this.§[C§ > 180)
         {
            this.§4!5§ = this.§[C§ + param1 * (this.§[!N§ - 360 - this.§[C§) / param2;
         }
         else if(this.§[!N§ < this.§[C§ && this.§[C§ - this.§[!N§ <= 180)
         {
            this.§4!5§ = this.§[C§ + param1 * (this.§[!N§ - this.§[C§) / param2;
         }
         else if(this.§[!N§ < this.§[C§ && this.§[C§ - this.§[!N§ > 180)
         {
            this.§4!5§ = this.§[C§ + param1 * (this.§[!N§ + 360 - this.§[C§) / param2;
         }
      }
      
      public function get §00§() : Point
      {
         if(!§[0§)
         {
         }
         return null;
      }
      
      public function § !A§() : Boolean
      {
         return this.§3E§ == §;l§.§]&§ || this.§3E§ == §;l§.§1! §;
      }
      
      public function §,q§() : Boolean
      {
         return this.§3E§ == §;l§.§@Z§;
      }
      
      public function §]!C§() : Boolean
      {
         return this.§3E§ == §;l§.§'W§;
      }
      
      public function §9x§() : Boolean
      {
         return this.§3E§ == §;l§.§1! §;
      }
      
      public function shouldUpdate() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§3E§ == §;l§.§'G§;
      }
      
      public function isGround() : Boolean
      {
         return this.§3E§ == §;l§.§<I§;
      }
      
      public function §2d§() : Boolean
      {
         return this.§3E§ == §;l§.§2$§;
      }
      
      public function §;!-§() : Boolean
      {
         return this.§3E§ == §;l§.§!!<§;
      }
      
      public function §`y§() : Boolean
      {
         if(this.§#+§ == "MISC_EXPLOSIVE_TNT" || this.§#+§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §[1§() : Boolean
      {
         return (this.§,q§() || this.§2d§() || this.§;!-§()) && !this.§?Y§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §5!2§() : Number
      {
         return Number(Math.sqrt(this.§ 7§().GetLinearVelocity().x * this.§ 7§().GetLinearVelocity().x + this.§ 7§().GetLinearVelocity().y * this.§ 7§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§]!C§())
         {
            return this.§;U§;
         }
         if(!this.§<q§.§ C§())
         {
            return this.§;U§;
         }
         if(this.§=!@§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§<!I§(§4&§.§catch§);
            }
            else if(param1 > 12)
            {
               this.§<!I§(§4&§.§0!=§);
            }
            else if(param1 > 3)
            {
               this.§<!I§(§4&§.§#j§);
            }
            return this.§;U§;
         }
         if(param1 <= this.§=!@§)
         {
            if(param1 >= this.§=!@§ / 2)
            {
               this.§<!I§(§4&§.§#j§);
            }
            if(this.§ !A§() && this.§;U§ == this.§!d§)
            {
               this.§;U§ = this.§!d§ - 1;
            }
            return this.§;U§;
         }
         param1 -= this.§=!@§;
         if(param2 && this.§[1§())
         {
            _loc7_ = Math.min(this.§;U§,int(param1));
            _loc8_ = §^9§.§2!-§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §^9§.§,^§;
            }
            this.§<q§.§4!I§.addScore(_loc8_,§%!L§.§9&§,this.§;U§ > param1 && param3,this.§ 7§().GetPosition().x,this.§ 7§().GetPosition().y,§7D§.§&$§(this.§#+§));
         }
         if(!(param5 && this.§7p§))
         {
            this.§;U§ -= param1;
         }
         if(this.§;U§ < 1 && this.§ !A§())
         {
            this.§;U§ = 1;
         }
         if(this.§;U§ < 1)
         {
            this.§;U§ = 0;
            §`Q§.§+!0§(§4&§.§catch§,this.§=q§.§[i§,"ChannelDestroyed");
         }
         else
         {
            this.§<!I§(§4&§.§0!=§);
            this.addDamageParticles(this.§<q§.§4!I§.particles,param1);
         }
         this.§!t§.setDamagedFrame();
         return this.§;U§;
      }
      
      public function §<!I§(param1:int) : void
      {
         §`Q§.§+!0§(param1,this.§=q§.§[i§);
      }
      
      public function §40§(param1:String) : Number
      {
         return this.§=q§.material.§>b§(param1) * this.§`!7§;
      }
      
      public function §5!"§(param1:String) : Number
      {
         return this.§=q§.material.§2!C§(param1);
      }
      
      public function §%!&§() : String
      {
         return this.§=q§.material.mName;
      }
      
      public function §4!&§() : Number
      {
         return this.§=q§.§8!>§();
      }
      
      public function § !@§() : int
      {
         return this.§=q§.§4C§();
      }
      
      public function §%M§() : Boolean
      {
         return this.§ 7§().IsAwake() && (this.§ !A§() && this.§;U§ == this.§!d§ || Math.abs(this.§ 7§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§ 7§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§ 7§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §;!"§() : Boolean
      {
         if(!this.§ 7§().IsAwake())
         {
            return true;
         }
         return !this.§5!4§();
      }
      
      protected function §5!4§() : Boolean
      {
         return this.§[!H§.§5!4§();
      }
      
      public function §[!L§(param1:Number = 3) : void
      {
         this.§`!7§ = param1;
         if(this.§`!7§ > 1)
         {
            this.§!t§.§if§();
         }
         else
         {
            this.§!t§.§"S§ = null;
         }
      }
      
      public function §,!@§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§=q§.§8E§() == §3!6§.§+%§)
         {
            _loc2_ = this.§!t§.mW * this.§!t§.mH * (§^9§.§5T§ * §^9§.§5T§);
         }
         else
         {
            _loc2_ = this.§ 7§().GetMass() / this.§;8§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§<!'§();
            }
            _loc2_ /= this.§%g§ * this.§%g§;
         }
         return _loc2_;
      }
      
      public function §<!'§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§!t§.§[a§ - 1) / 10);
      }
      
      public function §+!"§(param1:Number) : void
      {
         var _loc2_:Number = this.§ 7§().GetLinearVelocity().x;
         var _loc3_:Number = this.§ 7§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§ 7§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§^!0§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§5O§) : void
      {
      }
      
      public function addDamageParticles(param1:§5O§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §!!>§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§ 7§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§ 7§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§-c§()) + 360) % 360;
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
            this.§3T§(_loc4_);
         }
         var _loc3_:Number = this.§-c§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§3T§(_loc3_);
      }
      
      public function §?@§(param1:Number) : void
      {
         var _loc2_:Number = §?o§(this.§ 7§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §`L§(_loc2_);
         this.§ 7§().SetAngle(_loc2_);
      }
      
      public function §31§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§ 7§().GetPosition().Copy();
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
         this.§ 7§().SetPosition(_loc13_);
      }
   }
}
