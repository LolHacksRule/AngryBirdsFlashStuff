package §8x§
{
   import §!6§.§3!5§;
   import §'d§.§,_§;
   import §'d§.§4v§;
   import §'d§.§;"§;
   import §'d§.§>N§;
   import §'d§.§?+§;
   import §,!F§.§#§;
   import §,!F§.§7!I§;
   import §4G§.Sprite;
   import §<!4§.§25§;
   import §[!1§.§ J§;
   import §[!1§.§,!'§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §8C§
   {
      
      public static const §?X§:uint = 1 << 1;
      
      public static const §9!'§:uint = 1 << 2;
      
      public static const §;E§:uint = 1 << 3;
      
      public static const §#x§:uint = 1 << 4;
      
      public static const §7U§:Boolean = true;
      
      public static const §+!H§:Number = 5;
      
      public static const §#!+§:Number = 10;
       
      
      private var §#i§:String;
      
      private var §?#§:int;
      
      private var §"!;§:int;
      
      public var §!Z§:String;
      
      public var §5a§:int;
      
      private var §`@§:§;"§;
      
      private var §8#§:§>A§;
      
      private var §@!1§:b2World;
      
      protected var §]s§:String = "";
      
      protected var §9S§:int = 1;
      
      private var §,o§:b2Fixture;
      
      private var §3f§:b2Body;
      
      private var §%+§:b2Vec2;
      
      public var §<5§:Number;
      
      public var §`t§:Number;
      
      private var § a§:Number;
      
      private var §=!#§:Boolean = false;
      
      private var §7!J§:Number;
      
      private var §;T§:Number;
      
      private var §45§:Number;
      
      private var §#!,§:Number;
      
      private var §]j§:Number;
      
      private var §>T§:Number;
      
      public var § t§:Number = 1;
      
      private var §4!<§:Boolean = false;
      
      public var §%d§:Number = 0;
      
      public var §@!@§:Number = 0;
      
      protected var §`-§:Boolean = false;
      
      public var §5!O§:§5^§;
      
      private var §!!+§:Sprite;
      
      private var §#+§:Number = 0;
      
      private var §+9§:Number = 0;
      
      private var §0!@§:Number = 0;
      
      private var §`Z§:Number = 1.0;
      
      private var § !'§:Boolean = false;
      
      protected var §%J§:§!h§;
      
      private var §#F§:Boolean = true;
      
      public function §8C§(param1:§>A§, param2:Sprite, param3:b2World, param4:§#§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§!Z§ = param6;
         this.§`@§ = §,_§.§89§(param6);
         this.§8#§ = param1;
         this.§!!+§ = param2;
         this.§`Z§ = param10;
         this.§ !'§ = param11;
         this.§?#§ = param5;
         this.§5a§ = this.§`@§.§5a§;
         this.§"!;§ = this.§`@§.§,X§();
         this.§%J§ = new §!h§(§+!H§,§#!+§);
         this.§5!O§ = new §5^§(this,param2,param4);
         if(!this.§5!O§.§+!1§(param1.§&§.§94§))
         {
            this.§5!O§.§>$§(this.§"!;§,this.§`@§.§+@§(),this.§`@§.§-w§() / §#§.§67§,this.§`@§.§>!'§() / §#§.§67§);
         }
         this.§5!O§.§ !2§(this.§"!;§ == §?+§.§null §);
         this.§@!1§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§3f§ = this.§@!1§.CreateBody(_loc12_);
         this.§3f§.SetUserData(this);
         if(this.§"!;§ == §?+§.§3Q§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§`@§.shape.§@k§ * param10,this.§`@§.shape.§?&§ * param10);
            this.§,o§ = this.§3f§.CreateFixture2(_loc14_,this.§`@§.§&=§());
         }
         else if(this.§"!;§ == §?+§.§null § || this.§"!;§ == §?+§.§3G§)
         {
            this.§,o§ = this.§3f§.CreateFixture2(this.§`@§.shape.§6$§(param10),this.§`@§.§&=§());
         }
         this.§,o§.SetFriction(this.§`@§.§%!@§());
         this.§,o§.SetRestitution(this.§`@§.§!t§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§<!&§())
         {
            _loc13_.categoryBits = §?X§;
            _loc13_.maskBits = 65535 & ~§9!'§;
         }
         else if(this.§!Z§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§!Z§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §9!'§;
            _loc13_.maskBits = 65535 & ~§?X§;
         }
         this.§,o§.SetFilterData(_loc13_);
         this.§ a§ = this.§`@§.§'§();
         if(this.§`@§.§`t§ > 0)
         {
            this.§<5§ = this.§`t§ = this.§`@§.§`t§;
         }
         else
         {
            this.§<5§ = this.§`t§ = Math.round(this.§?!N§(true) * this.§`@§.§1t§());
            if(this.§<5§ < 1)
            {
               this.§<5§ = this.§`t§ = 1;
            }
         }
         if(this.§`@§.§5a§ == §;"§.§7!O§)
         {
            this.§!!+§.visible = false;
         }
         else
         {
            this.§5!O§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§-C§(param9);
         }
         this.§?F§();
         this.§,q§(0,1);
         this.§5!O§.§=F§(this.§`@§.shape);
      }
      
      public static function §8_§(param1:int, param2:§>N§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§<!!§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§!!@§;
            }
            §25§.§#f§(_loc4_,param3);
         }
      }
      
      public static function §^§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §8P§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§!!+§;
      }
      
      public function get x() : Number
      {
         return this.§#+§;
      }
      
      public function get y() : Number
      {
         return this.§+9§;
      }
      
      public function get scale() : Number
      {
         return this.§`Z§;
      }
      
      public function get front() : Boolean
      {
         return this.§ !'§;
      }
      
      public function get §[_§() : Number
      {
         return this.§3f§.GetPosition().x;
      }
      
      public function get §3=§() : Number
      {
         return this.§3f§.GetPosition().y;
      }
      
      public function get §"S§() : §;"§
      {
         return this.§`@§;
      }
      
      public function get §=d§() : Boolean
      {
         return this.§ a§ >= 0;
      }
      
      public function get container() : §>A§
      {
         return this.§8#§;
      }
      
      public function get §2!G§() : Boolean
      {
         return this.§#F§;
      }
      
      public function set §2!G§(param1:Boolean) : void
      {
         this.§#F§ = param1;
      }
      
      public function set §%!$§(param1:Boolean) : void
      {
         this.§=!#§ = param1;
      }
      
      public function set §6A§(param1:uint) : void
      {
         this.§%J§.§6A§ = param1;
      }
      
      public function get §6A§() : uint
      {
         return this.§%J§.§6A§;
      }
      
      public function get §,'§() : Boolean
      {
         return this.§4!<§;
      }
      
      public function set §,'§(param1:Boolean) : void
      {
         this.§4!<§ = param1;
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
         return this.§#i§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§#i§ = param1;
      }
      
      public function §@!9§(param1:b2FilterData) : void
      {
         if(this.§,o§)
         {
            this.§,o§.SetFilterData(param1);
         }
      }
      
      protected function §]S§(param1:String) : int
      {
         return § J§.§]S§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§`@§.§^h§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§@!1§)
         {
            this.§@!1§.DestroyBody(this.§]!7§());
            this.§@!1§ = null;
         }
         this.§5!O§.dispose();
         if(this.§!!+§)
         {
            this.§!!+§.dispose();
            this.§!!+§ = null;
         }
         this.§,o§ = null;
         this.§%+§ = null;
         this.§`@§ = null;
      }
      
      public function §-C§(param1:Number) : void
      {
         this.§]!7§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §'!I§() : Number
      {
         return (360 - this.§]!7§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §,e§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§]!7§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§'a§();
         }
         if(param3)
         {
            this.§!!D§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§,o§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§]!7§().GetPosition().x >= param3 && this.§]!7§().GetPosition().x <= param4 && this.§]!7§().GetPosition().y >= param1 && this.§]!7§().GetPosition().y <= param2;
      }
      
      public function §1d§(param1:b2Vec2) : void
      {
         this.§%+§ = param1;
      }
      
      public function §4D§() : void
      {
         if(this.§%+§)
         {
            this.§,e§(this.§%+§,false);
            this.§%+§ = null;
         }
      }
      
      public function §'a§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§]!7§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§]!7§().SetAngularVelocity(0);
         }
         else
         {
            this.§]!7§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §!!D§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§]!7§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§-C§(_loc2_);
      }
      
      public function §&!%§(param1:Number) : void
      {
         this.§]!7§().SetAngularVelocity(param1);
      }
      
      public function §]!7§() : b2Body
      {
         if(this.§,o§ != null)
         {
            return this.§,o§.GetBody();
         }
         return null;
      }
      
      public function §?! §(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§#+§ = param1;
            this.§+9§ = param2;
         }
         this.§]!7§().GetPosition().x = this.§#+§ * §#§.§67§;
         this.§]!7§().GetPosition().y = this.§+9§ * §#§.§67§;
      }
      
      public function §,q§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§`-§)
         {
            _loc3_ = true;
            this.§`-§ = false;
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
            this.§5!O§.§#y§();
         }
         if(this.§ t§ > 1 && this.§5!O§.§&?§)
         {
            _loc4_ = 4 + (this.§5!O§.§&?§.blurX - 4 + param2 / 20) % 28;
            this.§5!O§.§&?§.blurX = _loc4_;
            this.§5!O§.§&?§.blurY = _loc4_;
         }
         this.§5!O§.§7!4§(param2);
         if(§7U§)
         {
            this.§]!K§(param1);
         }
         else
         {
            this.§0!@§ = this.§45§;
            this.§#+§ = this.§7!J§;
            this.§+9§ = this.§;T§;
         }
         this.§!!+§.x = Math.round(this.§#+§);
         this.§!!+§.y = Math.round(this.§+9§);
         this.§!!+§.rotation = this.§0!@§ / 180 * Math.PI;
      }
      
      public function §?F§() : void
      {
         var _loc1_:Number = this.§]!7§().GetPosition().x;
         var _loc2_:Number = this.§]!7§().GetPosition().y;
         this.§>T§ = this.§45§;
         this.§#!,§ = this.§7!J§;
         this.§]j§ = this.§;T§;
         this.§45§ = this.§]!7§().GetAngle() * (180 / Math.PI) % 360;
         this.§7!J§ = _loc1_ / §#§.§67§;
         this.§;T§ = _loc2_ / §#§.§67§;
         this.§%J§.§`'§();
         this.§%J§.§'6§(this.§]!7§());
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
      
      public function §]!K§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §3!5§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§8#§.§&§.§9!4§.§;0§ * 1000;
         }
         param1 *= -1;
         if(this.§7!J§ == this.§#!,§ || param1 == 0)
         {
            this.§%d§ = 0;
            this.§#+§ = this.§7!J§;
         }
         else
         {
            this.§%d§ = param1 * (this.§#!,§ - this.§7!J§) / param2;
            this.§#+§ = this.§7!J§ + this.§%d§;
         }
         if(this.§;T§ == this.§]j§ || param1 == 0)
         {
            this.§@!@§ = 0;
            this.§+9§ = this.§;T§;
         }
         else
         {
            this.§@!@§ = param1 * (this.§]j§ - this.§;T§) / param2;
            this.§+9§ = this.§;T§ + this.§@!@§;
         }
         if(this.§45§ == this.§>T§ || param1 == 0)
         {
            this.§0!@§ = this.§45§;
         }
         else if(this.§>T§ > this.§45§ && this.§>T§ - this.§45§ <= 180)
         {
            this.§0!@§ = this.§45§ + param1 * (this.§>T§ - this.§45§) / param2;
         }
         else if(this.§>T§ > this.§45§ && this.§>T§ - this.§45§ > 180)
         {
            this.§0!@§ = this.§45§ + param1 * (this.§>T§ - 360 - this.§45§) / param2;
         }
         else if(this.§>T§ < this.§45§ && this.§45§ - this.§>T§ <= 180)
         {
            this.§0!@§ = this.§45§ + param1 * (this.§>T§ - this.§45§) / param2;
         }
         else if(this.§>T§ < this.§45§ && this.§45§ - this.§>T§ > 180)
         {
            this.§0!@§ = this.§45§ + param1 * (this.§>T§ + 360 - this.§45§) / param2;
         }
      }
      
      public function get §!8§() : Point
      {
         if(!§7U§)
         {
         }
         return null;
      }
      
      public function §<!&§() : Boolean
      {
         return this.§5a§ == §;"§.§?!P§ || this.§5a§ == §;"§.§9_§;
      }
      
      public function §-!G§() : Boolean
      {
         return this.§5a§ == §;"§.§]n§;
      }
      
      public function §5;§() : Boolean
      {
         return this.§5a§ == §;"§.§2s§;
      }
      
      public function §2v§() : Boolean
      {
         return this.§5a§ == §;"§.§9_§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§5a§ == §;"§.§%S§;
      }
      
      public function isGround() : Boolean
      {
         return this.§5a§ == §;"§.§7!O§;
      }
      
      public function §@v§() : Boolean
      {
         return this.§5a§ == §;"§.§9!C§;
      }
      
      public function §]!I§() : Boolean
      {
         return this.§5a§ == §;"§.§78§;
      }
      
      public function §&u§() : Boolean
      {
         if(this.§!Z§ == "MISC_EXPLOSIVE_TNT" || this.§!Z§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §+r§() : Boolean
      {
         return (this.§-!G§() || this.§@v§() || this.§]!I§()) && !this.§,'§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §<]§() : Number
      {
         return Number(Math.sqrt(this.§]!7§().GetLinearVelocity().x * this.§]!7§().GetLinearVelocity().x + this.§]!7§().GetLinearVelocity().y * this.§]!7§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§5;§())
         {
            return this.§<5§;
         }
         if(!this.§8#§.§]X§())
         {
            return this.§<5§;
         }
         if(this.§ a§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§[I§(§>N§.§%c§);
            }
            else if(param1 > 12)
            {
               this.§[I§(§>N§.§'H§);
            }
            else if(param1 > 3)
            {
               this.§[I§(§>N§.§,!,§);
            }
            return this.§<5§;
         }
         if(param1 <= this.§ a§)
         {
            if(param1 >= this.§ a§ / 2)
            {
               this.§[I§(§>N§.§,!,§);
            }
            if(this.§<!&§() && this.§<5§ == this.§`t§)
            {
               this.§<5§ = this.§`t§ - 1;
            }
            return this.§<5§;
         }
         param1 -= this.§ a§;
         if(param2 && this.§+r§())
         {
            _loc7_ = Math.min(this.§<5§,int(param1));
            _loc8_ = §#§.§'0§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §#§.§4V§;
            }
            this.§8#§.§&§.addScore(_loc8_,§7!I§.§2§,this.§<5§ > param1 && param3,this.§]!7§().GetPosition().x,this.§]!7§().GetPosition().y,§ J§.§^5§(this.§!Z§));
         }
         if(!(param5 && this.§=!#§))
         {
            this.§<5§ -= param1;
         }
         if(this.§<5§ < 1 && this.§<!&§())
         {
            this.§<5§ = 1;
         }
         if(this.§<5§ < 1)
         {
            this.§<5§ = 0;
            §8C§.§8_§(§>N§.§%c§,this.§`@§.§"!0§,"ChannelDestroyed");
         }
         else
         {
            this.§[I§(§>N§.§'H§);
            this.addDamageParticles(this.§8#§.§&§.particles,param1);
         }
         this.§5!O§.setDamagedFrame();
         return this.§<5§;
      }
      
      public function §[I§(param1:int) : void
      {
         §8C§.§8_§(param1,this.§`@§.§"!0§);
      }
      
      public function §5!;§(param1:String) : Number
      {
         return this.§`@§.material.§6I§(param1) * this.§ t§;
      }
      
      public function §@4§(param1:String) : Number
      {
         return this.§`@§.material.§,&§(param1);
      }
      
      public function §4X§() : String
      {
         return this.§`@§.material.mName;
      }
      
      public function §[!C§() : Number
      {
         return this.§`@§.§1t§();
      }
      
      public function §7!§() : int
      {
         return this.§`@§.§-!M§();
      }
      
      public function §&A§() : Boolean
      {
         return this.§]!7§().IsAwake() && (this.§<!&§() && this.§<5§ == this.§`t§ || Math.abs(this.§]!7§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§]!7§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§]!7§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §4!&§() : Boolean
      {
         if(!this.§]!7§().IsAwake())
         {
            return true;
         }
         return !this.§<T§();
      }
      
      protected function §<T§() : Boolean
      {
         return this.§%J§.§<T§();
      }
      
      public function §=!L§(param1:Number = 3) : void
      {
         this.§ t§ = param1;
         if(this.§ t§ > 1)
         {
            this.§5!O§.§+Z§();
         }
         else
         {
            this.§5!O§.§&?§ = null;
         }
      }
      
      public function §?!N§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§`@§.§^h§() == §4v§.§3%§)
         {
            _loc2_ = this.§5!O§.mW * this.§5!O§.mH * (§#§.§67§ * §#§.§67§);
         }
         else
         {
            _loc2_ = this.§]!7§().GetMass() / this.§,o§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§for§();
            }
            _loc2_ /= this.§`Z§ * this.§`Z§;
         }
         return _loc2_;
      }
      
      public function §for§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§5!O§.§;!@§ - 1) / 10);
      }
      
      public function §#P§(param1:Number) : void
      {
         var _loc2_:Number = this.§]!7§().GetLinearVelocity().x;
         var _loc3_:Number = this.§]!7§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§]!7§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§>A§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§,!'§) : void
      {
      }
      
      public function addDamageParticles(param1:§,!'§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §'f§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§]!7§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§]!7§().SetPosition(_loc4_);
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
            this.§-C§(_loc4_);
         }
         var _loc3_:Number = this.§'!I§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§-C§(_loc3_);
      }
      
      public function §@i§(param1:Number) : void
      {
         var _loc2_:Number = §^§(this.§]!7§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §8P§(_loc2_);
         this.§]!7§().SetAngle(_loc2_);
      }
      
      public function §4w§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§]!7§().GetPosition().Copy();
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
         this.§]!7§().SetPosition(_loc13_);
      }
   }
}
