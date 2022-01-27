package §0=§
{
   import §"1§.§3'§;
   import §&8§.§5P§;
   import §&8§.§5Z§;
   import §,!1§.§]e§;
   import §,T§.§9I§;
   import §,T§.§[-§;
   import §-!'§.Sprite;
   import §0E§.§"b§;
   import §0E§.§'+§;
   import §0E§.§,@§;
   import §0E§.§7u§;
   import §0E§.§<=§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §2p§
   {
      
      public static const §7i§:uint = 1 << 1;
      
      public static const §%!I§:uint = 1 << 2;
      
      public static const §9!%§:uint = 1 << 3;
      
      public static const §1!C§:uint = 1 << 4;
      
      public static const §1z§:Boolean = true;
      
      public static const §1_§:Number = 5;
      
      public static const §6y§:Number = 10;
       
      
      private var §+!7§:String;
      
      private var §`t§:int;
      
      private var §[Y§:int;
      
      public var §8!J§:String;
      
      public var §?!8§:int;
      
      private var §[C§:§'+§;
      
      private var §0?§:§6!M§;
      
      private var §3!D§:b2World;
      
      protected var §?!1§:String = "";
      
      protected var §9t§:int = 1;
      
      private var §!v§:b2Fixture;
      
      private var §>`§:b2Body;
      
      private var §%!O§:b2Vec2;
      
      public var §[!J§:Number;
      
      public var § !L§:Number;
      
      private var §+w§:Number;
      
      private var §1T§:Boolean = false;
      
      private var §52§:Number;
      
      private var §5!P§:Number;
      
      private var §7?§:Number;
      
      private var §6L§:Number;
      
      private var §-z§:Number;
      
      private var §2'§:Number;
      
      public var §!!>§:Number = 1;
      
      private var §37§:Boolean = false;
      
      public var § !K§:Number = 0;
      
      public var §]z§:Number = 0;
      
      protected var §=!3§:Boolean = false;
      
      public var §^c§:§?!,§;
      
      private var §46§:Sprite;
      
      private var §+Z§:Number = 0;
      
      private var §04§:Number = 0;
      
      private var §?r§:Number = 0;
      
      private var § R§:Number = 1.0;
      
      private var §^!@§:Boolean = false;
      
      protected var §<O§:§[!%§;
      
      private var §^@§:Boolean = true;
      
      public function §2p§(param1:§6!M§, param2:Sprite, param3:b2World, param4:§[-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§8!J§ = param6;
         this.§[C§ = §"b§.§[M§(param6);
         this.§0?§ = param1;
         this.§46§ = param2;
         this.§ R§ = param10;
         this.§^!@§ = param11;
         this.§`t§ = param5;
         this.§?!8§ = this.§[C§.§?!8§;
         this.§[Y§ = this.§[C§.§'!K§();
         this.§<O§ = new §[!%§(§1_§,§6y§);
         this.§^c§ = new §?!,§(this,param2,param4);
         if(!this.§^c§.§ !&§(param1.§34§.§,F§))
         {
            this.§^c§.§2B§(this.§[Y§,this.§[C§.§ Q§(),this.§[C§.§]K§() / §[-§.§;5§,this.§[C§.§3k§() / §[-§.§;5§);
         }
         this.§^c§.§>#§(this.§[Y§ == §<=§.§=R§);
         this.§3!D§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§>`§ = this.§3!D§.CreateBody(_loc12_);
         this.§>`§.SetUserData(this);
         if(this.§[Y§ == §<=§.§71§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§[C§.shape.§0!A§ * param10,this.§[C§.shape.§3>§ * param10);
            this.§!v§ = this.§>`§.CreateFixture2(_loc14_,this.§[C§.§-R§());
         }
         else if(this.§[Y§ == §<=§.§=R§ || this.§[Y§ == §<=§.§[g§)
         {
            this.§!v§ = this.§>`§.CreateFixture2(this.§[C§.shape.§&?§(param10),this.§[C§.§-R§());
         }
         this.§!v§.SetFriction(this.§[C§.§!z§());
         this.§!v§.SetRestitution(this.§[C§.§%n§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§]i§())
         {
            _loc13_.categoryBits = §7i§;
            _loc13_.maskBits = 65535 & ~§%!I§;
         }
         else if(this.§8!J§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§8!J§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §%!I§;
            _loc13_.maskBits = 65535 & ~§7i§;
         }
         this.§!v§.SetFilterData(_loc13_);
         this.§+w§ = this.§[C§.§[!#§();
         if(this.§[C§.§ !L§ > 0)
         {
            this.§[!J§ = this.§ !L§ = this.§[C§.§ !L§;
         }
         else
         {
            this.§[!J§ = this.§ !L§ = Math.round(this.§8!?§(true) * this.§[C§.§>u§());
            if(this.§[!J§ < 1)
            {
               this.§[!J§ = this.§ !L§ = 1;
            }
         }
         if(this.§[C§.§?!8§ == §'+§.§]!C§)
         {
            this.§46§.visible = false;
         }
         else
         {
            this.§^c§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§8!1§(param9);
         }
         this.§%!9§();
         this.§[Q§(0,1);
         this.§^c§.§1!1§(this.§[C§.shape);
      }
      
      public static function §72§(param1:int, param2:§7u§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§2O§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§^O§;
            }
            §]e§.§<9§(_loc4_,param3);
         }
      }
      
      public static function §&!5§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §;!O§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§46§;
      }
      
      public function get x() : Number
      {
         return this.§+Z§;
      }
      
      public function get y() : Number
      {
         return this.§04§;
      }
      
      public function get scale() : Number
      {
         return this.§ R§;
      }
      
      public function get front() : Boolean
      {
         return this.§^!@§;
      }
      
      public function get §>9§() : Number
      {
         return this.§>`§.GetPosition().x;
      }
      
      public function get § Z§() : Number
      {
         return this.§>`§.GetPosition().y;
      }
      
      public function get §&v§() : §'+§
      {
         return this.§[C§;
      }
      
      public function get §!I§() : Boolean
      {
         return this.§+w§ >= 0;
      }
      
      public function get container() : §6!M§
      {
         return this.§0?§;
      }
      
      public function get §63§() : Boolean
      {
         return this.§^@§;
      }
      
      public function set §63§(param1:Boolean) : void
      {
         this.§^@§ = param1;
      }
      
      public function set §^!G§(param1:Boolean) : void
      {
         this.§1T§ = param1;
      }
      
      public function set §#!-§(param1:uint) : void
      {
         this.§<O§.§#!-§ = param1;
      }
      
      public function get §#!-§() : uint
      {
         return this.§<O§.§#!-§;
      }
      
      public function get §^!%§() : Boolean
      {
         return this.§37§;
      }
      
      public function set §^!%§(param1:Boolean) : void
      {
         this.§37§ = param1;
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
         return this.§+!7§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§+!7§ = param1;
      }
      
      public function §6!#§(param1:b2FilterData) : void
      {
         if(this.§!v§)
         {
            this.§!v§.SetFilterData(param1);
         }
      }
      
      protected function §89§(param1:String) : int
      {
         return §5Z§.§89§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§[C§.§`r§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§3!D§)
         {
            this.§3!D§.DestroyBody(this.§;!M§());
            this.§3!D§ = null;
         }
         this.§^c§.dispose();
         if(this.§46§)
         {
            this.§46§.dispose();
            this.§46§ = null;
         }
         this.§!v§ = null;
         this.§%!O§ = null;
         this.§[C§ = null;
      }
      
      public function §8!1§(param1:Number) : void
      {
         this.§;!M§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §&!'§() : Number
      {
         return (360 - this.§;!M§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function § p§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§;!M§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§]>§();
         }
         if(param3)
         {
            this.§]!A§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§!v§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§;!M§().GetPosition().x >= param3 && this.§;!M§().GetPosition().x <= param4 && this.§;!M§().GetPosition().y >= param1 && this.§;!M§().GetPosition().y <= param2;
      }
      
      public function § +§(param1:b2Vec2) : void
      {
         this.§%!O§ = param1;
      }
      
      public function §4o§() : void
      {
         if(this.§%!O§)
         {
            this.§ p§(this.§%!O§,false);
            this.§%!O§ = null;
         }
      }
      
      public function §]>§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§;!M§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§;!M§().SetAngularVelocity(0);
         }
         else
         {
            this.§;!M§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §]!A§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§;!M§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§8!1§(_loc2_);
      }
      
      public function §;!9§(param1:Number) : void
      {
         this.§;!M§().SetAngularVelocity(param1);
      }
      
      public function §;!M§() : b2Body
      {
         if(this.§!v§ != null)
         {
            return this.§!v§.GetBody();
         }
         return null;
      }
      
      public function §1=§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§+Z§ = param1;
            this.§04§ = param2;
         }
         this.§;!M§().GetPosition().x = this.§+Z§ * §[-§.§;5§;
         this.§;!M§().GetPosition().y = this.§04§ * §[-§.§;5§;
      }
      
      public function §[Q§(param1:Number, param2:Number) : void
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
            this.§^c§.§=P§();
         }
         if(this.§!!>§ > 1 && this.§^c§.§"!&§)
         {
            _loc4_ = 4 + (this.§^c§.§"!&§.blurX - 4 + param2 / 20) % 28;
            this.§^c§.§"!&§.blurX = _loc4_;
            this.§^c§.§"!&§.blurY = _loc4_;
         }
         this.§^c§.§=!§(param2);
         if(§1z§)
         {
            this.§!Q§(param1);
         }
         else
         {
            this.§?r§ = this.§7?§;
            this.§+Z§ = this.§52§;
            this.§04§ = this.§5!P§;
         }
         this.§46§.x = Math.round(this.§+Z§);
         this.§46§.y = Math.round(this.§04§);
         this.§46§.rotation = this.§?r§ / 180 * Math.PI;
      }
      
      public function §%!9§() : void
      {
         var _loc1_:Number = this.§;!M§().GetPosition().x;
         var _loc2_:Number = this.§;!M§().GetPosition().y;
         this.§2'§ = this.§7?§;
         this.§6L§ = this.§52§;
         this.§-z§ = this.§5!P§;
         this.§7?§ = this.§;!M§().GetAngle() * (180 / Math.PI) % 360;
         this.§52§ = _loc1_ / §[-§.§;5§;
         this.§5!P§ = _loc2_ / §[-§.§;5§;
         this.§<O§.§#n§();
         this.§<O§.§-C§(this.§;!M§());
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
      
      public function §!Q§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §3'§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§0?§.§34§.§[o§.§"!§ * 1000;
         }
         param1 *= -1;
         if(this.§52§ == this.§6L§ || param1 == 0)
         {
            this.§ !K§ = 0;
            this.§+Z§ = this.§52§;
         }
         else
         {
            this.§ !K§ = param1 * (this.§6L§ - this.§52§) / param2;
            this.§+Z§ = this.§52§ + this.§ !K§;
         }
         if(this.§5!P§ == this.§-z§ || param1 == 0)
         {
            this.§]z§ = 0;
            this.§04§ = this.§5!P§;
         }
         else
         {
            this.§]z§ = param1 * (this.§-z§ - this.§5!P§) / param2;
            this.§04§ = this.§5!P§ + this.§]z§;
         }
         if(this.§7?§ == this.§2'§ || param1 == 0)
         {
            this.§?r§ = this.§7?§;
         }
         else if(this.§2'§ > this.§7?§ && this.§2'§ - this.§7?§ <= 180)
         {
            this.§?r§ = this.§7?§ + param1 * (this.§2'§ - this.§7?§) / param2;
         }
         else if(this.§2'§ > this.§7?§ && this.§2'§ - this.§7?§ > 180)
         {
            this.§?r§ = this.§7?§ + param1 * (this.§2'§ - 360 - this.§7?§) / param2;
         }
         else if(this.§2'§ < this.§7?§ && this.§7?§ - this.§2'§ <= 180)
         {
            this.§?r§ = this.§7?§ + param1 * (this.§2'§ - this.§7?§) / param2;
         }
         else if(this.§2'§ < this.§7?§ && this.§7?§ - this.§2'§ > 180)
         {
            this.§?r§ = this.§7?§ + param1 * (this.§2'§ + 360 - this.§7?§) / param2;
         }
      }
      
      public function get §'N§() : Point
      {
         if(!§1z§)
         {
         }
         return null;
      }
      
      public function §]i§() : Boolean
      {
         return this.§?!8§ == §'+§.§+9§ || this.§?!8§ == §'+§.§'!C§;
      }
      
      public function §"H§() : Boolean
      {
         return this.§?!8§ == §'+§.§[#§;
      }
      
      public function §^!8§() : Boolean
      {
         return this.§?!8§ == §'+§.§0c§;
      }
      
      public function §?!K§() : Boolean
      {
         return this.§?!8§ == §'+§.§'!C§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§?!8§ == §'+§.§0i§;
      }
      
      public function isGround() : Boolean
      {
         return this.§?!8§ == §'+§.§]!C§;
      }
      
      public function §%@§() : Boolean
      {
         return this.§?!8§ == §'+§.§0S§;
      }
      
      public function § !2§() : Boolean
      {
         return this.§?!8§ == §'+§.§-<§;
      }
      
      public function §6v§() : Boolean
      {
         if(this.§8!J§ == "MISC_EXPLOSIVE_TNT" || this.§8!J§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §^j§() : Boolean
      {
         return (this.§"H§() || this.§%@§() || this.§ !2§()) && !this.§^!%§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §#f§() : Number
      {
         return Number(Math.sqrt(this.§;!M§().GetLinearVelocity().x * this.§;!M§().GetLinearVelocity().x + this.§;!M§().GetLinearVelocity().y * this.§;!M§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§^!8§())
         {
            return this.§[!J§;
         }
         if(!this.§0?§.§@Q§())
         {
            return this.§[!J§;
         }
         if(this.§+w§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§;!"§(§7u§.§;!L§);
            }
            else if(param1 > 12)
            {
               this.§;!"§(§7u§.§5!N§);
            }
            else if(param1 > 3)
            {
               this.§;!"§(§7u§.§^!+§);
            }
            return this.§[!J§;
         }
         if(param1 <= this.§+w§)
         {
            if(param1 >= this.§+w§ / 2)
            {
               this.§;!"§(§7u§.§^!+§);
            }
            if(this.§]i§() && this.§[!J§ == this.§ !L§)
            {
               this.§[!J§ = this.§ !L§ - 1;
            }
            return this.§[!J§;
         }
         param1 -= this.§+w§;
         if(param2 && this.§^j§())
         {
            _loc7_ = Math.min(this.§[!J§,int(param1));
            _loc8_ = §[-§.§&!>§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §[-§.§+]§;
            }
            this.§0?§.§34§.addScore(_loc8_,§9I§.§1!"§,this.§[!J§ > param1 && param3,this.§;!M§().GetPosition().x,this.§;!M§().GetPosition().y,§5Z§.§?!&§(this.§8!J§));
         }
         if(!(param5 && this.§1T§))
         {
            this.§[!J§ -= param1;
         }
         if(this.§[!J§ < 1 && this.§]i§())
         {
            this.§[!J§ = 1;
         }
         if(this.§[!J§ < 1)
         {
            this.§[!J§ = 0;
            §2p§.§72§(§7u§.§;!L§,this.§[C§.§ !@§,"ChannelDestroyed");
         }
         else
         {
            this.§;!"§(§7u§.§5!N§);
            this.addDamageParticles(this.§0?§.§34§.particles,param1);
         }
         this.§^c§.setDamagedFrame();
         return this.§[!J§;
      }
      
      public function §;!"§(param1:int) : void
      {
         §2p§.§72§(param1,this.§[C§.§ !@§);
      }
      
      public function §&j§(param1:String) : Number
      {
         return this.§[C§.material.§<T§(param1) * this.§!!>§;
      }
      
      public function §@b§(param1:String) : Number
      {
         return this.§[C§.material.§ ^§(param1);
      }
      
      public function §]!9§() : String
      {
         return this.§[C§.material.mName;
      }
      
      public function §^!M§() : Number
      {
         return this.§[C§.§>u§();
      }
      
      public function §]!;§() : int
      {
         return this.§[C§.§35§();
      }
      
      public function §;A§() : Boolean
      {
         return this.§;!M§().IsAwake() && (this.§]i§() && this.§[!J§ == this.§ !L§ || Math.abs(this.§;!M§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§;!M§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§;!M§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §,S§() : Boolean
      {
         if(!this.§;!M§().IsAwake())
         {
            return true;
         }
         return !this.§-!O§();
      }
      
      protected function §-!O§() : Boolean
      {
         return this.§<O§.§-!O§();
      }
      
      public function §]k§(param1:Number = 3) : void
      {
         this.§!!>§ = param1;
         if(this.§!!>§ > 1)
         {
            this.§^c§.§'l§();
         }
         else
         {
            this.§^c§.§"!&§ = null;
         }
      }
      
      public function §8!?§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§[C§.§`r§() == §,@§.§+! §)
         {
            _loc2_ = this.§^c§.mW * this.§^c§.mH * (§[-§.§;5§ * §[-§.§;5§);
         }
         else
         {
            _loc2_ = this.§;!M§().GetMass() / this.§!v§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§ !O§();
            }
            _loc2_ /= this.§ R§ * this.§ R§;
         }
         return _loc2_;
      }
      
      public function § !O§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§^c§.§'V§ - 1) / 10);
      }
      
      public function §[!5§(param1:Number) : void
      {
         var _loc2_:Number = this.§;!M§().GetLinearVelocity().x;
         var _loc3_:Number = this.§;!M§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§;!M§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§6!M§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§5P§) : void
      {
      }
      
      public function addDamageParticles(param1:§5P§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §&D§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§;!M§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§;!M§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§&!'§()) + 360) % 360;
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
            this.§8!1§(_loc4_);
         }
         var _loc3_:Number = this.§&!'§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§8!1§(_loc3_);
      }
      
      public function §`4§(param1:Number) : void
      {
         var _loc2_:Number = §&!5§(this.§;!M§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §;!O§(_loc2_);
         this.§;!M§().SetAngle(_loc2_);
      }
      
      public function §;!'§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§;!M§().GetPosition().Copy();
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
         this.§;!M§().SetPosition(_loc13_);
      }
   }
}
