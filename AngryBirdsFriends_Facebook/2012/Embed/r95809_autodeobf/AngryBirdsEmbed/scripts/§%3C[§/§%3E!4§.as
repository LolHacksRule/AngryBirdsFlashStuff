package §<[§
{
   import §"!E§.§#g§;
   import §"!E§.§9!E§;
   import §+!%§.§'!"§;
   import §+!%§.§>3§;
   import §,Y§.§%[§;
   import §,Y§.§32§;
   import §,Y§.§5F§;
   import §,Y§.§]b§;
   import §,Y§.§^!1§;
   import §->§.Sprite;
   import §1!8§.§;!>§;
   import §2x§.§'!@§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §>!4§
   {
      
      public static const §]!C§:uint = 1 << 1;
      
      public static const §,I§:uint = 1 << 2;
      
      public static const §;i§:uint = 1 << 3;
      
      public static const §2S§:uint = 1 << 4;
      
      public static const §1q§:Boolean = true;
       
      
      private var §7!B§:int;
      
      private var §9M§:int;
      
      public var §5!#§:String;
      
      public var §?B§:int;
      
      private var §<!-§:§%[§;
      
      private var §36§:§6q§;
      
      private var §6U§:b2World;
      
      private var §^J§:b2Fixture;
      
      private var §=!B§:b2Body;
      
      private var § 7§:b2Vec2;
      
      public var §;%§:Number;
      
      public var §&?§:Number;
      
      private var §3k§:Number;
      
      private var §!y§:Boolean = false;
      
      private var §[!&§:Number;
      
      private var §]T§:Number;
      
      private var §1$§:Number;
      
      private var §]Y§:Number;
      
      private var §0O§:Number;
      
      private var §6!#§:Number;
      
      public var §-E§:Number = 1;
      
      private var §2e§:Boolean = false;
      
      public var §0!2§:Number = 0;
      
      public var §&E§:Number = 0;
      
      protected var §'!?§:Boolean = false;
      
      public var §2!0§:§;+§;
      
      private var §'M§:Sprite;
      
      private var §#d§:Number = 0;
      
      private var §7^§:Number = 0;
      
      private var §9a§:Number = 0;
      
      private var §?!C§:Number = 1.0;
      
      private var §%8§:Boolean = false;
      
      private var §>o§:Boolean = true;
      
      public function §>!4§(param1:§6q§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§5!#§ = param6;
         this.§<!-§ = §32§.§&V§(param6);
         this.§36§ = param1;
         this.§'M§ = param2;
         this.§?!C§ = param10;
         this.§%8§ = param11;
         this.§7!B§ = param5;
         this.§?B§ = this.§<!-§.§?B§;
         this.§9M§ = this.§<!-§.§5@§();
         this.§2!0§ = new §;+§(this,param2,param4);
         if(!this.§2!0§.§6-§(param1.§]U§.§@!5§))
         {
            this.§2!0§.§9_§(this.§9M§,this.§<!-§.§]!9§(),this.§<!-§.§0L§() / §'!"§.§%!8§,this.§<!-§.§+4§() / §'!"§.§%!8§);
         }
         this.§2!0§.§?n§(this.§9M§ == §^!1§.§>V§);
         this.§6U§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§=!B§ = this.§6U§.CreateBody(_loc12_);
         this.§=!B§.SetUserData(this);
         if(this.§9M§ == §^!1§.§`%§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§<!-§.shape.§ !;§ * param10,this.§<!-§.shape.§[&§ * param10);
            this.§^J§ = this.§=!B§.CreateFixture2(_loc14_,this.§<!-§.§8J§());
         }
         else if(this.§9M§ == §^!1§.§>V§ || this.§9M§ == §^!1§.§5!D§)
         {
            this.§^J§ = this.§=!B§.CreateFixture2(this.§<!-§.shape.§ S§(param10),this.§<!-§.§8J§());
         }
         this.§^J§.SetFriction(this.§<!-§.§;6§());
         this.§^J§.SetRestitution(this.§<!-§.§,!#§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§ in§())
         {
            _loc13_.categoryBits = §]!C§;
            _loc13_.maskBits = 65535 & ~§,I§;
         }
         else if(this.§5!#§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§5!#§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §,I§;
            _loc13_.maskBits = 65535 & ~§]!C§;
         }
         this.§^J§.SetFilterData(_loc13_);
         this.§3k§ = this.§<!-§.§+!+§();
         if(this.§<!-§.§&?§ > 0)
         {
            this.§;%§ = this.§&?§ = this.§<!-§.§&?§;
         }
         else
         {
            this.§;%§ = this.§&?§ = Math.round(this.§-I§(true) * this.§<!-§.§3f§());
            if(this.§;%§ < 1)
            {
               this.§;%§ = this.§&?§ = 1;
            }
         }
         if(this.§<!-§.§?B§ == §%[§.§;G§)
         {
            this.§'M§.visible = false;
         }
         else
         {
            this.§2!0§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§`+§(param9);
         }
         this.§7!§();
         this.§;H§(0,1);
         this.§2!0§.§7>§(this.§<!-§.shape);
      }
      
      public static function §9!D§(param1:int, param2:§5F§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§^r§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§5-§;
            }
            §;!>§.§#k§(_loc4_,param3);
         }
      }
      
      public static function §8!1§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §37§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§'M§;
      }
      
      public function get x() : Number
      {
         return this.§#d§;
      }
      
      public function get y() : Number
      {
         return this.§7^§;
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function get front() : Boolean
      {
         return this.§%8§;
      }
      
      public function get §9x§() : Number
      {
         return this.§=!B§.GetPosition().x;
      }
      
      public function get §!x§() : Number
      {
         return this.§=!B§.GetPosition().y;
      }
      
      public function get §super§() : §%[§
      {
         return this.§<!-§;
      }
      
      public function get §;!F§() : Boolean
      {
         return this.§3k§ >= 0;
      }
      
      protected function get container() : §6q§
      {
         return this.§36§;
      }
      
      public function get §3e§() : Boolean
      {
         return this.§>o§;
      }
      
      public function set §3e§(param1:Boolean) : void
      {
         this.§>o§ = param1;
      }
      
      public function set §5>§(param1:Boolean) : void
      {
         this.§!y§ = param1;
      }
      
      public function get §#_§() : Boolean
      {
         return this.§2e§;
      }
      
      public function set §#_§(param1:Boolean) : void
      {
         this.§2e§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §%!4§(param1:b2FilterData) : void
      {
         if(this.§^J§)
         {
            this.§^J§.SetFilterData(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§<!-§.§^H§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§6U§)
         {
            this.§6U§.DestroyBody(this.§27§());
            this.§6U§ = null;
         }
         this.§2!0§.dispose();
         if(this.§'M§)
         {
            this.§'M§.dispose();
            this.§'M§ = null;
         }
         this.§^J§ = null;
         this.§ 7§ = null;
         this.§<!-§ = null;
      }
      
      public function §`+§(param1:Number) : void
      {
         this.§27§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §"!,§() : Number
      {
         return (360 - this.§27§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §>>§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§27§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§3G§();
         }
         if(param3)
         {
            this.§2P§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§^J§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§27§().GetPosition().x >= param3 && this.§27§().GetPosition().x <= param4 && this.§27§().GetPosition().y >= param1 && this.§27§().GetPosition().y <= param2;
      }
      
      public function §^!3§(param1:b2Vec2) : void
      {
         this.§ 7§ = param1;
      }
      
      public function §^Y§() : void
      {
         if(this.§ 7§)
         {
            this.§>>§(this.§ 7§,false);
            this.§ 7§ = null;
         }
      }
      
      public function §3G§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§27§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§27§().SetAngularVelocity(0);
         }
         else
         {
            this.§27§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §2P§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§27§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§`+§(_loc2_);
      }
      
      public function §'$§(param1:Number) : void
      {
         this.§27§().SetAngularVelocity(param1);
      }
      
      public function §27§() : b2Body
      {
         if(this.§^J§ != null)
         {
            return this.§^J§.GetBody();
         }
         return null;
      }
      
      public function §@R§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§#d§ = param1;
            this.§7^§ = param2;
         }
         this.§27§().GetPosition().x = this.§#d§ * §'!"§.§%!8§;
         this.§27§().GetPosition().y = this.§7^§ * §'!"§.§%!8§;
      }
      
      public function §;H§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§'!?§)
         {
            _loc3_ = true;
            this.§'!?§ = false;
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
            this.§2!0§.§2!9§();
         }
         if(this.§-E§ > 1 && this.§2!0§.§,!1§)
         {
            _loc4_ = 4 + (this.§2!0§.§,!1§.blurX - 4 + param2 / 20) % 28;
            this.§2!0§.§,!1§.blurX = _loc4_;
            this.§2!0§.§,!1§.blurY = _loc4_;
         }
         this.§2!0§.§;!B§(param2);
         if(§1q§)
         {
            this.§`6§(param1);
         }
         else
         {
            this.§9a§ = this.§1$§;
            this.§#d§ = this.§[!&§;
            this.§7^§ = this.§]T§;
         }
         this.§'M§.x = Math.round(this.§#d§);
         this.§'M§.y = Math.round(this.§7^§);
         this.§'M§.rotation = this.§9a§ / 180 * Math.PI;
      }
      
      public function §7!§() : void
      {
         var _loc1_:Number = this.§27§().GetPosition().x;
         var _loc2_:Number = this.§27§().GetPosition().y;
         this.§6!#§ = this.§1$§;
         this.§]Y§ = this.§[!&§;
         this.§0O§ = this.§]T§;
         this.§1$§ = this.§27§().GetAngle() * (180 / Math.PI) % 360;
         this.§[!&§ = _loc1_ / §'!"§.§%!8§;
         this.§]T§ = _loc2_ / §'!"§.§%!8§;
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
      
      public function §`6§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §'!@§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§36§.§]U§.§&5§.§%'§ * 1000;
         }
         param1 *= -1;
         if(this.§[!&§ == this.§]Y§ || param1 == 0)
         {
            this.§0!2§ = 0;
            this.§#d§ = this.§[!&§;
         }
         else
         {
            this.§0!2§ = param1 * (this.§]Y§ - this.§[!&§) / param2;
            this.§#d§ = this.§[!&§ + this.§0!2§;
         }
         if(this.§]T§ == this.§0O§ || param1 == 0)
         {
            this.§&E§ = 0;
            this.§7^§ = this.§]T§;
         }
         else
         {
            this.§&E§ = param1 * (this.§0O§ - this.§]T§) / param2;
            this.§7^§ = this.§]T§ + this.§&E§;
         }
         if(this.§1$§ == this.§6!#§ || param1 == 0)
         {
            this.§9a§ = this.§1$§;
         }
         else if(this.§6!#§ > this.§1$§ && this.§6!#§ - this.§1$§ <= 180)
         {
            this.§9a§ = this.§1$§ + param1 * (this.§6!#§ - this.§1$§) / param2;
         }
         else if(this.§6!#§ > this.§1$§ && this.§6!#§ - this.§1$§ > 180)
         {
            this.§9a§ = this.§1$§ + param1 * (this.§6!#§ - 360 - this.§1$§) / param2;
         }
         else if(this.§6!#§ < this.§1$§ && this.§1$§ - this.§6!#§ <= 180)
         {
            this.§9a§ = this.§1$§ + param1 * (this.§6!#§ - this.§1$§) / param2;
         }
         else if(this.§6!#§ < this.§1$§ && this.§1$§ - this.§6!#§ > 180)
         {
            this.§9a§ = this.§1$§ + param1 * (this.§6!#§ + 360 - this.§1$§) / param2;
         }
      }
      
      public function get §#x§() : Point
      {
         if(!§1q§)
         {
         }
         return null;
      }
      
      public function § in§() : Boolean
      {
         return this.§?B§ == §%[§.§!h§ || this.§?B§ == §%[§.§>7§;
      }
      
      public function §+L§() : Boolean
      {
         return this.§?B§ == §%[§.§`r§;
      }
      
      public function §3!F§() : Boolean
      {
         return this.§?B§ == §%[§.§%=§;
      }
      
      public function §0!?§() : Boolean
      {
         return this.§?B§ == §%[§.§>7§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§?B§ == §%[§.§-!§;
      }
      
      public function isGround() : Boolean
      {
         return this.§?B§ == §%[§.§;G§;
      }
      
      public function §'!!§() : Boolean
      {
         return this.§?B§ == §%[§.§"!8§;
      }
      
      public function §6!A§() : Boolean
      {
         return this.§?B§ == §%[§.§@@§;
      }
      
      public function §9!A§() : Boolean
      {
         if(this.§5!#§ == "MISC_EXPLOSIVE_TNT" || this.§5!#§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §7y§() : Boolean
      {
         return (this.§+L§() || this.§'!!§() || this.§6!A§()) && !this.§#_§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §!4§() : Number
      {
         return Number(Math.sqrt(this.§27§().GetLinearVelocity().x * this.§27§().GetLinearVelocity().x + this.§27§().GetLinearVelocity().y * this.§27§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§3!F§())
         {
            return this.§;%§;
         }
         if(!this.§36§.§1u§())
         {
            return this.§;%§;
         }
         if(this.§3k§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§#!7§(§5F§.§'L§);
            }
            else if(param1 > 12)
            {
               this.§#!7§(§5F§.§?!+§);
            }
            else if(param1 > 3)
            {
               this.§#!7§(§5F§.§1!>§);
            }
            return this.§;%§;
         }
         if(param1 <= this.§3k§)
         {
            if(param1 >= this.§3k§ / 2)
            {
               this.§#!7§(§5F§.§1!>§);
            }
            if(this.§ in§() && this.§;%§ == this.§&?§)
            {
               this.§;%§ = this.§&?§ - 1;
            }
            return this.§;%§;
         }
         param1 -= this.§3k§;
         if(param2 && this.§7y§())
         {
            _loc7_ = Math.min(this.§;%§,int(param1));
            _loc8_ = §'!"§.§5!F§.getValue() * _loc7_;
            this.§36§.§]U§.addScore(_loc8_,§>3§.§4'§,this.§;%§ > param1 && param3,this.§27§().GetPosition().x,this.§27§().GetPosition().y,§9!E§.§>$§(this.§5!#§));
         }
         if(!(param5 && this.§!y§))
         {
            this.§;%§ -= param1;
         }
         if(this.§;%§ < 1 && this.§ in§())
         {
            this.§;%§ = 1;
         }
         if(this.§;%§ < 1)
         {
            this.§;%§ = 0;
            §>!4§.§9!D§(§5F§.§'L§,this.§<!-§.§9!+§,"ChannelDestroyed");
         }
         else
         {
            this.§#!7§(§5F§.§?!+§);
            this.addDamageParticles(this.§36§.§]U§.particles,param1);
         }
         this.§2!0§.setDamagedFrame();
         return this.§;%§;
      }
      
      public function §#!7§(param1:int) : void
      {
         §>!4§.§9!D§(param1,this.§<!-§.§9!+§);
      }
      
      public function §;7§(param1:String) : Number
      {
         return this.§<!-§.material.§ !5§(param1) * this.§-E§;
      }
      
      public function §2!=§(param1:String) : Number
      {
         return this.§<!-§.material.§5b§(param1);
      }
      
      public function §3$§() : String
      {
         return this.§<!-§.material.mName;
      }
      
      public function §^!<§() : Number
      {
         return this.§<!-§.§3f§();
      }
      
      public function §1g§() : int
      {
         return this.§<!-§.§'!C§();
      }
      
      public function §>s§() : Boolean
      {
         return this.§27§().IsAwake() && (this.§ in§() && this.§;%§ == this.§&?§ || Math.abs(this.§27§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§27§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§27§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §-§() : Boolean
      {
         return !this.§27§().IsAwake();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§27§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§27§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§27§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §^1§(param1:Number = 3) : void
      {
         this.§-E§ = param1;
         if(this.§-E§ > 1)
         {
            this.§2!0§.§&Z§();
         }
         else
         {
            this.§2!0§.§,!1§ = null;
         }
      }
      
      public function §-I§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§<!-§.§^H§() == §]b§.§5!@§)
         {
            _loc2_ = this.§2!0§.mW * this.§2!0§.mH * (§'!"§.§%!8§ * §'!"§.§%!8§);
         }
         else
         {
            _loc2_ = this.§27§().GetMass() / this.§^J§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§5A§();
            }
            _loc2_ /= this.§?!C§ * this.§?!C§;
         }
         return _loc2_;
      }
      
      public function §5A§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§2!0§.§`!;§ - 1) / 10);
      }
      
      public function §6w§(param1:Number) : void
      {
         var _loc2_:Number = this.§27§().GetLinearVelocity().x;
         var _loc3_:Number = this.§27§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§27§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§6q§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§#g§) : void
      {
      }
      
      public function addDamageParticles(param1:§#g§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §0F§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§27§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§27§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§"!,§();
            _loc3_ = (_loc3_ + 360) % 360;
            _loc4_ = 0;
            if(param1 != 0)
            {
               _loc4_ = _loc3_ % param1;
            }
            if(_loc4_ < param1 / 2)
            {
               _loc3_ -= _loc4_;
            }
            else
            {
               _loc3_ += param1 - _loc4_;
            }
            this.§`+§(_loc3_);
         }
         this.§`+§(this.§"!,§() + param1);
      }
      
      public function § [§(param1:Number) : void
      {
         var _loc2_:Number = §8!1§(this.§27§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §37§(_loc2_);
         this.§27§().SetAngle(_loc2_);
      }
      
      public function §'!9§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§27§().GetPosition().Copy();
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
         this.§27§().SetPosition(_loc13_);
      }
   }
}
