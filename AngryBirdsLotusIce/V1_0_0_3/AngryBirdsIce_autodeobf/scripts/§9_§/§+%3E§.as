package §9_§
{
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §3O§.§@6§;
   import §4N§.§&!@§;
   import §4N§.§2D§;
   import §4N§.§7E§;
   import §4N§.§9o§;
   import §4N§.§`!%§;
   import §;8§.§3f§;
   import §[x§.§2^§;
   import §[x§.§^;§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §+>§
   {
      
      public static const §=n§:uint = 1 << 1;
      
      public static const §1j§:uint = 1 << 2;
      
      public static const §!L§:uint = 1 << 3;
      
      public static const §,=§:uint = 1 << 4;
      
      public static const §"!B§:Boolean = true;
       
      
      private var §%@§:int;
      
      private var §2S§:int;
      
      public var §57§:String;
      
      public var §&!E§:int;
      
      private var §>!F§:§9o§;
      
      private var §%C§:§?!!§;
      
      private var §#_§:b2World;
      
      private var §>!-§:b2Fixture;
      
      private var §5^§:b2Body;
      
      private var §96§:b2Vec2;
      
      public var §8!'§:Number;
      
      public var §[!3§:Number;
      
      private var §+f§:Number;
      
      private var §3h§:Boolean = false;
      
      private var §<@§:Number;
      
      private var §4T§:Number;
      
      private var §&#§:Number;
      
      private var §+!3§:Number;
      
      private var §%N§:Number;
      
      private var §-i§:Number;
      
      public var §"G§:Number = 1;
      
      private var §,!E§:Boolean = false;
      
      public var §^d§:Number = 0;
      
      public var §+p§:Number = 0;
      
      protected var §%w§:Boolean = false;
      
      public var §<p§:§`-§;
      
      private var §1-§:Sprite;
      
      private var §-Y§:Number = 0;
      
      private var §%!;§:Number = 0;
      
      private var §]!=§:Number = 0;
      
      private var §,&§:Number = 1.0;
      
      private var §implements§:Boolean = false;
      
      private var §,u§:Boolean = true;
      
      public function §+>§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§57§ = param6;
         this.§>!F§ = §&!@§.§9B§(param6);
         this.§%C§ = param1;
         this.§1-§ = param2;
         this.§,&§ = param10;
         this.§implements§ = param11;
         this.§%@§ = param5;
         this.§&!E§ = this.§>!F§.§&!E§;
         this.§2S§ = this.§>!F§.§1!3§();
         this.§<p§ = new §`-§(this,param2,param4);
         if(!this.§<p§.§`!4§(param1.§1! §.§0!§))
         {
            this.§<p§.§!P§(this.§2S§,this.§>!F§.§6!5§(),this.§>!F§.§6Y§() / §2^§.§,]§,this.§>!F§.§0!6§() / §2^§.§,]§);
         }
         this.§<p§.§-!!§(this.§2S§ == §2D§.§>!$§);
         this.§#_§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§5^§ = this.§#_§.CreateBody(_loc12_);
         this.§5^§.SetUserData(this);
         if(this.§2S§ == §2D§.§+X§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§>!F§.shape.§?!#§ * param10,this.§>!F§.shape.§26§ * param10);
            this.§>!-§ = this.§5^§.CreateFixture2(_loc14_,this.§>!F§.§@!A§());
         }
         else if(this.§2S§ == §2D§.§>!$§ || this.§2S§ == §2D§.§&W§)
         {
            this.§>!-§ = this.§5^§.CreateFixture2(this.§>!F§.shape.§7!;§(param10),this.§>!F§.§@!A§());
         }
         this.§>!-§.SetFriction(this.§>!F§.§"[§());
         this.§>!-§.SetRestitution(this.§>!F§.§,;§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§!!8§())
         {
            _loc13_.categoryBits = §=n§;
            _loc13_.maskBits = 65535 & ~§1j§;
         }
         else if(this.§57§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§57§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §1j§;
            _loc13_.maskBits = 65535 & ~§=n§;
         }
         this.§>!-§.SetFilterData(_loc13_);
         this.§+f§ = this.§>!F§.§2!=§();
         if(this.§>!F§.§[!3§ > 0)
         {
            this.§8!'§ = this.§[!3§ = this.§>!F§.§[!3§;
         }
         else
         {
            this.§8!'§ = this.§[!3§ = Math.round(this.§8@§(true) * this.§>!F§.§&! §());
            if(this.§8!'§ < 1)
            {
               this.§8!'§ = this.§[!3§ = 1;
            }
         }
         if(this.§>!F§.§&!E§ == §9o§.§[H§)
         {
            this.§1-§.visible = false;
         }
         else
         {
            this.§<p§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§9F§(param9);
         }
         this.§,F§();
         this.§%1§(0,1);
         this.§<p§.§9%§(this.§>!F§.shape);
      }
      
      public static function §0x§(param1:int, param2:§7E§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§2K§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§7!F§;
            }
            §@6§.§0+§(_loc4_,param3);
         }
      }
      
      public static function §,!%§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §78§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§1-§;
      }
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function get scale() : Number
      {
         return this.§,&§;
      }
      
      public function get front() : Boolean
      {
         return this.§implements§;
      }
      
      public function get §+j§() : Number
      {
         return this.§5^§.GetPosition().x;
      }
      
      public function get §42§() : Number
      {
         return this.§5^§.GetPosition().y;
      }
      
      public function get §&$§() : §9o§
      {
         return this.§>!F§;
      }
      
      public function get §@!!§() : Boolean
      {
         return this.§+f§ >= 0;
      }
      
      protected function get container() : §?!!§
      {
         return this.§%C§;
      }
      
      public function get §,4§() : Boolean
      {
         return this.§,u§;
      }
      
      public function set §,4§(param1:Boolean) : void
      {
         this.§,u§ = param1;
      }
      
      public function set §9m§(param1:Boolean) : void
      {
         this.§3h§ = param1;
      }
      
      public function get §'J§() : Boolean
      {
         return this.§,!E§;
      }
      
      public function set §'J§(param1:Boolean) : void
      {
         this.§,!E§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §&b§(param1:b2FilterData) : void
      {
         if(this.§>!-§)
         {
            this.§>!-§.SetFilterData(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§>!F§.§-7§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§#_§)
         {
            this.§#_§.DestroyBody(this.§>b§());
            this.§#_§ = null;
         }
         this.§<p§.dispose();
         if(this.§1-§)
         {
            this.§1-§.dispose();
            this.§1-§ = null;
         }
         this.§>!-§ = null;
         this.§96§ = null;
         this.§>!F§ = null;
      }
      
      public function §9F§(param1:Number) : void
      {
         this.§>b§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §^k§() : Number
      {
         return (360 - this.§>b§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §5x§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§>b§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§;^§();
         }
         if(param3)
         {
            this.§[i§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§>!-§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§>b§().GetPosition().x >= param3 && this.§>b§().GetPosition().x <= param4 && this.§>b§().GetPosition().y >= param1 && this.§>b§().GetPosition().y <= param2;
      }
      
      public function §03§(param1:b2Vec2) : void
      {
         this.§96§ = param1;
      }
      
      public function §"!D§() : void
      {
         if(this.§96§)
         {
            this.§5x§(this.§96§,false);
            this.§96§ = null;
         }
      }
      
      public function §;^§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§>b§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§>b§().SetAngularVelocity(0);
         }
         else
         {
            this.§>b§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §[i§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§>b§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§9F§(_loc2_);
      }
      
      public function §1z§(param1:Number) : void
      {
         this.§>b§().SetAngularVelocity(param1);
      }
      
      public function §>b§() : b2Body
      {
         if(this.§>!-§ != null)
         {
            return this.§>!-§.GetBody();
         }
         return null;
      }
      
      public function §>f§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§-Y§ = param1;
            this.§%!;§ = param2;
         }
         this.§>b§().GetPosition().x = this.§-Y§ * §2^§.§,]§;
         this.§>b§().GetPosition().y = this.§%!;§ * §2^§.§,]§;
      }
      
      public function §%1§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§%w§)
         {
            _loc3_ = true;
            this.§%w§ = false;
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
            this.§<p§.§;&§();
         }
         if(this.§"G§ > 1 && this.§<p§.§<o§)
         {
            _loc4_ = 4 + (this.§<p§.§<o§.blurX - 4 + param2 / 20) % 28;
            this.§<p§.§<o§.blurX = _loc4_;
            this.§<p§.§<o§.blurY = _loc4_;
         }
         this.§<p§.§24§(param2);
         if(§"!B§)
         {
            this.§>[§(param1);
         }
         else
         {
            this.§]!=§ = this.§&#§;
            this.§-Y§ = this.§<@§;
            this.§%!;§ = this.§4T§;
         }
         this.§1-§.x = Math.round(this.§-Y§);
         this.§1-§.y = Math.round(this.§%!;§);
         this.§1-§.rotation = this.§]!=§ / 180 * Math.PI;
      }
      
      public function §,F§() : void
      {
         var _loc1_:Number = this.§>b§().GetPosition().x;
         var _loc2_:Number = this.§>b§().GetPosition().y;
         this.§-i§ = this.§&#§;
         this.§+!3§ = this.§<@§;
         this.§%N§ = this.§4T§;
         this.§&#§ = this.§>b§().GetAngle() * (180 / Math.PI) % 360;
         this.§<@§ = _loc1_ / §2^§.§,]§;
         this.§4T§ = _loc2_ / §2^§.§,]§;
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
      
      public function §>[§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §3f§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§%C§.§1! §.§[f§.§%Q§ * 1000;
         }
         param1 *= -1;
         if(this.§<@§ == this.§+!3§ || param1 == 0)
         {
            this.§^d§ = 0;
            this.§-Y§ = this.§<@§;
         }
         else
         {
            this.§^d§ = param1 * (this.§+!3§ - this.§<@§) / param2;
            this.§-Y§ = this.§<@§ + this.§^d§;
         }
         if(this.§4T§ == this.§%N§ || param1 == 0)
         {
            this.§+p§ = 0;
            this.§%!;§ = this.§4T§;
         }
         else
         {
            this.§+p§ = param1 * (this.§%N§ - this.§4T§) / param2;
            this.§%!;§ = this.§4T§ + this.§+p§;
         }
         if(this.§&#§ == this.§-i§ || param1 == 0)
         {
            this.§]!=§ = this.§&#§;
         }
         else if(this.§-i§ > this.§&#§ && this.§-i§ - this.§&#§ <= 180)
         {
            this.§]!=§ = this.§&#§ + param1 * (this.§-i§ - this.§&#§) / param2;
         }
         else if(this.§-i§ > this.§&#§ && this.§-i§ - this.§&#§ > 180)
         {
            this.§]!=§ = this.§&#§ + param1 * (this.§-i§ - 360 - this.§&#§) / param2;
         }
         else if(this.§-i§ < this.§&#§ && this.§&#§ - this.§-i§ <= 180)
         {
            this.§]!=§ = this.§&#§ + param1 * (this.§-i§ - this.§&#§) / param2;
         }
         else if(this.§-i§ < this.§&#§ && this.§&#§ - this.§-i§ > 180)
         {
            this.§]!=§ = this.§&#§ + param1 * (this.§-i§ + 360 - this.§&#§) / param2;
         }
      }
      
      public function get §#u§() : Point
      {
         if(!§"!B§)
         {
         }
         return null;
      }
      
      public function §!!8§() : Boolean
      {
         return this.§&!E§ == §9o§.§%p§ || this.§&!E§ == §9o§.§%k§;
      }
      
      public function §+,§() : Boolean
      {
         return this.§&!E§ == §9o§.§2!§;
      }
      
      public function §[d§() : Boolean
      {
         return this.§&!E§ == §9o§.§1!?§;
      }
      
      public function §8i§() : Boolean
      {
         return this.§&!E§ == §9o§.§%k§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§&!E§ == §9o§.§51§;
      }
      
      public function isGround() : Boolean
      {
         return this.§&!E§ == §9o§.§[H§;
      }
      
      public function §"N§() : Boolean
      {
         return this.§&!E§ == §9o§.§'!<§;
      }
      
      public function §3!>§() : Boolean
      {
         return this.§&!E§ == §9o§.§>]§;
      }
      
      public function §^!;§() : Boolean
      {
         if(this.§57§ == "MISC_EXPLOSIVE_TNT" || this.§57§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §7I§() : Boolean
      {
         return (this.§+,§() || this.§"N§() || this.§3!>§()) && !this.§'J§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §8!E§() : Number
      {
         return Number(Math.sqrt(this.§>b§().GetLinearVelocity().x * this.§>b§().GetLinearVelocity().x + this.§>b§().GetLinearVelocity().y * this.§>b§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§[d§())
         {
            return this.§8!'§;
         }
         if(!this.§%C§.§+#§())
         {
            return this.§8!'§;
         }
         if(this.§+f§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§;v§(§7E§.§&!2§);
            }
            else if(param1 > 12)
            {
               this.§;v§(§7E§.§2c§);
            }
            else if(param1 > 3)
            {
               this.§;v§(§7E§.§,l§);
            }
            return this.§8!'§;
         }
         if(param1 <= this.§+f§)
         {
            if(param1 >= this.§+f§ / 2)
            {
               this.§;v§(§7E§.§,l§);
            }
            if(this.§!!8§() && this.§8!'§ == this.§[!3§)
            {
               this.§8!'§ = this.§[!3§ - 1;
            }
            return this.§8!'§;
         }
         param1 -= this.§+f§;
         if(param2 && this.§7I§())
         {
            _loc7_ = Math.min(this.§8!'§,int(param1));
            _loc8_ = §2^§.§<A§.getValue() * _loc7_;
            this.§%C§.§1! §.addScore(_loc8_,§^;§.§!2§,this.§8!'§ > param1 && param3,this.§>b§().GetPosition().x,this.§>b§().GetPosition().y,§'b§.§+[§(this.§57§));
         }
         if(!(param5 && this.§3h§))
         {
            this.§8!'§ -= param1;
         }
         if(this.§8!'§ < 1 && this.§!!8§())
         {
            this.§8!'§ = 1;
         }
         if(this.§8!'§ < 1)
         {
            this.§8!'§ = 0;
            §+>§.§0x§(§7E§.§&!2§,this.§>!F§.§@,§,"ChannelDestroyed");
         }
         else
         {
            this.§;v§(§7E§.§2c§);
            this.addDamageParticles(this.§%C§.§1! §.particles,param1);
         }
         this.§<p§.setDamagedFrame();
         return this.§8!'§;
      }
      
      public function §;v§(param1:int) : void
      {
         §+>§.§0x§(param1,this.§>!F§.§@,§);
      }
      
      public function §]`§(param1:String) : Number
      {
         return this.§>!F§.material.§2!&§(param1) * this.§"G§;
      }
      
      public function §8I§(param1:String) : Number
      {
         return this.§>!F§.material.§7N§(param1);
      }
      
      public function §&A§() : String
      {
         return this.§>!F§.material.mName;
      }
      
      public function §&!§() : Number
      {
         return this.§>!F§.§&! §();
      }
      
      public function §5w§() : int
      {
         return this.§>!F§.§#=§();
      }
      
      public function §#d§() : Boolean
      {
         return this.§>b§().IsAwake() && (this.§!!8§() && this.§8!'§ == this.§[!3§ || Math.abs(this.§>b§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§>b§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§>b§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §2h§() : Boolean
      {
         return !this.§>b§().IsAwake();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§>b§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§>b§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§>b§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function § !9§(param1:Number = 3) : void
      {
         this.§"G§ = param1;
         if(this.§"G§ > 1)
         {
            this.§<p§.§=O§();
         }
         else
         {
            this.§<p§.§<o§ = null;
         }
      }
      
      public function §8@§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§>!F§.§-7§() == §`!%§.§function§)
         {
            _loc2_ = this.§<p§.mW * this.§<p§.mH * (§2^§.§,]§ * §2^§.§,]§);
         }
         else
         {
            _loc2_ = this.§>b§().GetMass() / this.§>!-§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§6,§();
            }
            _loc2_ /= this.§,&§ * this.§,&§;
         }
         return _loc2_;
      }
      
      public function §6,§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§<p§.§-k§ - 1) / 10);
      }
      
      public function §-!'§(param1:Number) : void
      {
         var _loc2_:Number = this.§>b§().GetLinearVelocity().x;
         var _loc3_:Number = this.§>b§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§>b§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§>=§) : void
      {
      }
      
      public function addDamageParticles(param1:§>=§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §'1§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§>b§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§>b§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§^k§();
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
            this.§9F§(_loc3_);
         }
         this.§9F§(this.§^k§() + param1);
      }
      
      public function §23§(param1:Number) : void
      {
         var _loc2_:Number = §,!%§(this.§>b§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §78§(_loc2_);
         this.§>b§().SetAngle(_loc2_);
      }
      
      public function §3`§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§>b§().GetPosition().Copy();
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
         this.§>b§().SetPosition(_loc13_);
      }
   }
}
