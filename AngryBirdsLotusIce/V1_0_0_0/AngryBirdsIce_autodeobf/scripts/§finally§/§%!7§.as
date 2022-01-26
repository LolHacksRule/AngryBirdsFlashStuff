package §finally§
{
   import §"o§.§ M§;
   import §"o§.§6y§;
   import §'m§.§^S§;
   import §2!"§.§ !A§;
   import §2!"§.§ ^§;
   import §2!"§.§4!%§;
   import §2!"§.§8y§;
   import §2!"§.§;,§;
   import §>Z§.§2;§;
   import §@!=§.Sprite;
   import §]2§.§<u§;
   import §]2§.§`b§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §%!7§
   {
      
      public static const §9n§:uint = 1 << 1;
      
      public static const §4p§:uint = 1 << 2;
      
      public static const §2!7§:uint = 1 << 3;
      
      public static const §,!A§:uint = 1 << 4;
      
      public static const §!_§:Boolean = true;
       
      
      private var §,v§:int;
      
      private var §'E§:int;
      
      public var §5o§:String;
      
      public var §=&§:int;
      
      private var § J§:§ !A§;
      
      private var §@a§:§3X§;
      
      private var §?O§:b2World;
      
      private var §"!§:b2Fixture;
      
      private var §+>§:b2Body;
      
      private var §9!4§:b2Vec2;
      
      public var §8x§:Number;
      
      public var §3-§:Number;
      
      private var §,'§:Number;
      
      private var §&m§:Boolean = false;
      
      private var §7!!§:Number;
      
      private var §6!+§:Number;
      
      private var §6!'§:Number;
      
      private var §0y§:Number;
      
      private var §5l§:Number;
      
      private var §@!@§:Number;
      
      public var §!V§:Number = 1;
      
      private var §`!-§:Boolean = false;
      
      public var §%!3§:Number = 0;
      
      public var § h§:Number = 0;
      
      protected var §`N§:Boolean = false;
      
      public var §8h§:§`u§;
      
      private var §+x§:Sprite;
      
      private var §2!2§:Number = 0;
      
      private var §9!3§:Number = 0;
      
      private var §@k§:Number = 0;
      
      private var §50§:Number = 1.0;
      
      private var §;-§:Boolean = false;
      
      private var §4P§:Boolean = true;
      
      public function §%!7§(param1:§3X§, param2:Sprite, param3:b2World, param4:§ M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§5o§ = param6;
         this.§ J§ = §4!%§.§`!+§(param6);
         this.§@a§ = param1;
         this.§+x§ = param2;
         this.§50§ = param10;
         this.§;-§ = param11;
         this.§,v§ = param5;
         this.§=&§ = this.§ J§.§=&§;
         this.§'E§ = this.§ J§.§9!B§();
         this.§8h§ = new §`u§(this,param2,param4);
         if(!this.§8h§.§4N§(param1.§ 6§.§]P§))
         {
            this.§8h§.§5i§(this.§'E§,this.§ J§.§+a§(),this.§ J§.§#c§() / § M§.§%v§,this.§ J§.§!#§() / § M§.§%v§);
         }
         this.§8h§.§1O§(this.§'E§ == §;,§.§,G§);
         this.§?O§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§+>§ = this.§?O§.CreateBody(_loc12_);
         this.§+>§.SetUserData(this);
         if(this.§'E§ == §;,§.§6P§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§ J§.shape.§6#§ * param10,this.§ J§.shape.§5m§ * param10);
            this.§"!§ = this.§+>§.CreateFixture2(_loc14_,this.§ J§.§>+§());
         }
         else if(this.§'E§ == §;,§.§,G§ || this.§'E§ == §;,§.§!k§)
         {
            this.§"!§ = this.§+>§.CreateFixture2(this.§ J§.shape.§>§(param10),this.§ J§.§>+§());
         }
         this.§"!§.SetFriction(this.§ J§.§;;§());
         this.§"!§.SetRestitution(this.§ J§.§]=§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§%!§())
         {
            _loc13_.categoryBits = §9n§;
            _loc13_.maskBits = 65535 & ~§4p§;
         }
         else if(this.§5o§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§5o§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §4p§;
            _loc13_.maskBits = 65535 & ~§9n§;
         }
         this.§"!§.SetFilterData(_loc13_);
         this.§,'§ = this.§ J§.§%`§();
         if(this.§ J§.§3-§ > 0)
         {
            this.§8x§ = this.§3-§ = this.§ J§.§3-§;
         }
         else
         {
            this.§8x§ = this.§3-§ = Math.round(this.§']§(true) * this.§ J§.§[N§());
            if(this.§8x§ < 1)
            {
               this.§8x§ = this.§3-§ = 1;
            }
         }
         if(this.§ J§.§=&§ == § !A§.§7!&§)
         {
            this.§+x§.visible = false;
         }
         else
         {
            this.§8h§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§ !!§(param9);
         }
         this.§!c§();
         this.§,u§(0,1);
         this.§8h§.§2!9§(this.§ J§.shape);
      }
      
      public static function §^!<§(param1:int, param2:§8y§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§3@§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§2f§;
            }
            §2;§.§#5§(_loc4_,param3);
         }
      }
      
      public static function §,!F§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §>Q§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§+x§;
      }
      
      public function get x() : Number
      {
         return this.§2!2§;
      }
      
      public function get y() : Number
      {
         return this.§9!3§;
      }
      
      public function get scale() : Number
      {
         return this.§50§;
      }
      
      public function get front() : Boolean
      {
         return this.§;-§;
      }
      
      public function get §0x§() : Number
      {
         return this.§+>§.GetPosition().x;
      }
      
      public function get §9F§() : Number
      {
         return this.§+>§.GetPosition().y;
      }
      
      public function get §5M§() : § !A§
      {
         return this.§ J§;
      }
      
      public function get §-I§() : Boolean
      {
         return this.§,'§ >= 0;
      }
      
      protected function get container() : §3X§
      {
         return this.§@a§;
      }
      
      public function get §7n§() : Boolean
      {
         return this.§4P§;
      }
      
      public function set §7n§(param1:Boolean) : void
      {
         this.§4P§ = param1;
      }
      
      public function set §6F§(param1:Boolean) : void
      {
         this.§&m§ = param1;
      }
      
      public function get §^7§() : Boolean
      {
         return this.§`!-§;
      }
      
      public function set §^7§(param1:Boolean) : void
      {
         this.§`!-§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §2v§(param1:b2FilterData) : void
      {
         if(this.§"!§)
         {
            this.§"!§.SetFilterData(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§ J§.§ L§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§?O§)
         {
            this.§?O§.DestroyBody(this.§+!-§());
            this.§?O§ = null;
         }
         this.§8h§.dispose();
         if(this.§+x§)
         {
            this.§+x§.dispose();
            this.§+x§ = null;
         }
         this.§"!§ = null;
         this.§9!4§ = null;
         this.§ J§ = null;
      }
      
      public function § !!§(param1:Number) : void
      {
         this.§+!-§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §&1§() : Number
      {
         return (360 - this.§+!-§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §-!+§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§+!-§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§-&§();
         }
         if(param3)
         {
            this.§]N§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§"!§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§+!-§().GetPosition().x >= param3 && this.§+!-§().GetPosition().x <= param4 && this.§+!-§().GetPosition().y >= param1 && this.§+!-§().GetPosition().y <= param2;
      }
      
      public function §6!@§(param1:b2Vec2) : void
      {
         this.§9!4§ = param1;
      }
      
      public function §,! §() : void
      {
         if(this.§9!4§)
         {
            this.§-!+§(this.§9!4§,false);
            this.§9!4§ = null;
         }
      }
      
      public function §-&§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§+!-§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§+!-§().SetAngularVelocity(0);
         }
         else
         {
            this.§+!-§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §]N§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§+!-§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§ !!§(_loc2_);
      }
      
      public function §[,§(param1:Number) : void
      {
         this.§+!-§().SetAngularVelocity(param1);
      }
      
      public function §+!-§() : b2Body
      {
         if(this.§"!§ != null)
         {
            return this.§"!§.GetBody();
         }
         return null;
      }
      
      public function §#!6§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§2!2§ = param1;
            this.§9!3§ = param2;
         }
         this.§+!-§().GetPosition().x = this.§2!2§ * § M§.§%v§;
         this.§+!-§().GetPosition().y = this.§9!3§ * § M§.§%v§;
      }
      
      public function §,u§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§`N§)
         {
            _loc3_ = true;
            this.§`N§ = false;
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
            this.§8h§.§,x§();
         }
         if(this.§!V§ > 1 && this.§8h§.§#Z§)
         {
            _loc4_ = 4 + (this.§8h§.§#Z§.blurX - 4 + param2 / 20) % 28;
            this.§8h§.§#Z§.blurX = _loc4_;
            this.§8h§.§#Z§.blurY = _loc4_;
         }
         this.§8h§.§&6§(param2);
         if(§!_§)
         {
            this.§31§(param1);
         }
         else
         {
            this.§@k§ = this.§6!'§;
            this.§2!2§ = this.§7!!§;
            this.§9!3§ = this.§6!+§;
         }
         this.§+x§.x = Math.round(this.§2!2§);
         this.§+x§.y = Math.round(this.§9!3§);
         this.§+x§.rotation = this.§@k§ / 180 * Math.PI;
      }
      
      public function §!c§() : void
      {
         var _loc1_:Number = this.§+!-§().GetPosition().x;
         var _loc2_:Number = this.§+!-§().GetPosition().y;
         this.§@!@§ = this.§6!'§;
         this.§0y§ = this.§7!!§;
         this.§5l§ = this.§6!+§;
         this.§6!'§ = this.§+!-§().GetAngle() * (180 / Math.PI) % 360;
         this.§7!!§ = _loc1_ / § M§.§%v§;
         this.§6!+§ = _loc2_ / § M§.§%v§;
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
      
      public function §31§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §^S§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§@a§.§ 6§.§'!?§.§3?§ * 1000;
         }
         param1 *= -1;
         if(this.§7!!§ == this.§0y§ || param1 == 0)
         {
            this.§%!3§ = 0;
            this.§2!2§ = this.§7!!§;
         }
         else
         {
            this.§%!3§ = param1 * (this.§0y§ - this.§7!!§) / param2;
            this.§2!2§ = this.§7!!§ + this.§%!3§;
         }
         if(this.§6!+§ == this.§5l§ || param1 == 0)
         {
            this.§ h§ = 0;
            this.§9!3§ = this.§6!+§;
         }
         else
         {
            this.§ h§ = param1 * (this.§5l§ - this.§6!+§) / param2;
            this.§9!3§ = this.§6!+§ + this.§ h§;
         }
         if(this.§6!'§ == this.§@!@§ || param1 == 0)
         {
            this.§@k§ = this.§6!'§;
         }
         else if(this.§@!@§ > this.§6!'§ && this.§@!@§ - this.§6!'§ <= 180)
         {
            this.§@k§ = this.§6!'§ + param1 * (this.§@!@§ - this.§6!'§) / param2;
         }
         else if(this.§@!@§ > this.§6!'§ && this.§@!@§ - this.§6!'§ > 180)
         {
            this.§@k§ = this.§6!'§ + param1 * (this.§@!@§ - 360 - this.§6!'§) / param2;
         }
         else if(this.§@!@§ < this.§6!'§ && this.§6!'§ - this.§@!@§ <= 180)
         {
            this.§@k§ = this.§6!'§ + param1 * (this.§@!@§ - this.§6!'§) / param2;
         }
         else if(this.§@!@§ < this.§6!'§ && this.§6!'§ - this.§@!@§ > 180)
         {
            this.§@k§ = this.§6!'§ + param1 * (this.§@!@§ + 360 - this.§6!'§) / param2;
         }
      }
      
      public function get §23§() : Point
      {
         if(!§!_§)
         {
         }
         return null;
      }
      
      public function §%!§() : Boolean
      {
         return this.§=&§ == § !A§.§=!>§ || this.§=&§ == § !A§.§;!>§;
      }
      
      public function §[!5§() : Boolean
      {
         return this.§=&§ == § !A§.§@F§;
      }
      
      public function §9;§() : Boolean
      {
         return this.§=&§ == § !A§.§"z§;
      }
      
      public function §,c§() : Boolean
      {
         return this.§=&§ == § !A§.§;!>§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§=&§ == § !A§.§6Z§;
      }
      
      public function isGround() : Boolean
      {
         return this.§=&§ == § !A§.§7!&§;
      }
      
      public function §8>§() : Boolean
      {
         return this.§=&§ == § !A§.§+`§;
      }
      
      public function §%U§() : Boolean
      {
         return this.§=&§ == § !A§.§2#§;
      }
      
      public function §>L§() : Boolean
      {
         if(this.§5o§ == "MISC_EXPLOSIVE_TNT" || this.§5o§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §+A§() : Boolean
      {
         return (this.§[!5§() || this.§8>§() || this.§%U§()) && !this.§^7§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §,&§() : Number
      {
         return Number(Math.sqrt(this.§+!-§().GetLinearVelocity().x * this.§+!-§().GetLinearVelocity().x + this.§+!-§().GetLinearVelocity().y * this.§+!-§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§9;§())
         {
            return this.§8x§;
         }
         if(!this.§@a§.§;!C§())
         {
            return this.§8x§;
         }
         if(this.§,'§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§continue§(§8y§.§&!2§);
            }
            else if(param1 > 12)
            {
               this.§continue§(§8y§.§ [§);
            }
            else if(param1 > 3)
            {
               this.§continue§(§8y§.§0;§);
            }
            return this.§8x§;
         }
         if(param1 <= this.§,'§)
         {
            if(param1 >= this.§,'§ / 2)
            {
               this.§continue§(§8y§.§0;§);
            }
            if(this.§%!§() && this.§8x§ == this.§3-§)
            {
               this.§8x§ = this.§3-§ - 1;
            }
            return this.§8x§;
         }
         param1 -= this.§,'§;
         if(param2 && this.§+A§())
         {
            _loc7_ = Math.min(this.§8x§,int(param1));
            _loc8_ = § M§.§0!1§.getValue() * _loc7_;
            this.§@a§.§ 6§.addScore(_loc8_,§6y§.§ -§,this.§8x§ > param1 && param3,this.§+!-§().GetPosition().x,this.§+!-§().GetPosition().y,§`b§.§1!E§(this.§5o§));
         }
         if(!(param5 && this.§&m§))
         {
            this.§8x§ -= param1;
         }
         if(this.§8x§ < 1 && this.§%!§())
         {
            this.§8x§ = 1;
         }
         if(this.§8x§ < 1)
         {
            this.§8x§ = 0;
            §%!7§.§^!<§(§8y§.§&!2§,this.§ J§.§]!2§,"ChannelDestroyed");
         }
         else
         {
            this.§continue§(§8y§.§ [§);
            this.addDamageParticles(this.§@a§.§ 6§.particles,param1);
         }
         this.§8h§.setDamagedFrame();
         return this.§8x§;
      }
      
      public function §continue§(param1:int) : void
      {
         §%!7§.§^!<§(param1,this.§ J§.§]!2§);
      }
      
      public function §[Y§(param1:String) : Number
      {
         return this.§ J§.material.§'!8§(param1) * this.§!V§;
      }
      
      public function §9E§(param1:String) : Number
      {
         return this.§ J§.material.§=E§(param1);
      }
      
      public function §+V§() : String
      {
         return this.§ J§.material.mName;
      }
      
      public function §9"§() : Number
      {
         return this.§ J§.§[N§();
      }
      
      public function §`K§() : int
      {
         return this.§ J§.§2R§();
      }
      
      public function §6!F§() : Boolean
      {
         return this.§+!-§().IsAwake() && (this.§%!§() && this.§8x§ == this.§3-§ || Math.abs(this.§+!-§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§+!-§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§+!-§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §7!3§() : Boolean
      {
         return !this.§+!-§().IsAwake();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§+!-§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§+!-§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§+!-§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §>6§(param1:Number = 3) : void
      {
         this.§!V§ = param1;
         if(this.§!V§ > 1)
         {
            this.§8h§.§[I§();
         }
         else
         {
            this.§8h§.§#Z§ = null;
         }
      }
      
      public function §']§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§ J§.§ L§() == § ^§.§;h§)
         {
            _loc2_ = this.§8h§.mW * this.§8h§.mH * (§ M§.§%v§ * § M§.§%v§);
         }
         else
         {
            _loc2_ = this.§+!-§().GetMass() / this.§"!§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§9K§();
            }
            _loc2_ /= this.§50§ * this.§50§;
         }
         return _loc2_;
      }
      
      public function §9K§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§8h§.§6'§ - 1) / 10);
      }
      
      public function §"8§(param1:Number) : void
      {
         var _loc2_:Number = this.§+!-§().GetLinearVelocity().x;
         var _loc3_:Number = this.§+!-§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§+!-§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§3X§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§<u§) : void
      {
      }
      
      public function addDamageParticles(param1:§<u§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §3N§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§+!-§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§+!-§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§&1§();
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
            this.§ !!§(_loc3_);
         }
         this.§ !!§(this.§&1§() + param1);
      }
      
      public function §+y§(param1:Number) : void
      {
         var _loc2_:Number = §,!F§(this.§+!-§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §>Q§(_loc2_);
         this.§+!-§().SetAngle(_loc2_);
      }
      
      public function §1d§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§+!-§().GetPosition().Copy();
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
         this.§+!-§().SetPosition(_loc13_);
      }
   }
}
