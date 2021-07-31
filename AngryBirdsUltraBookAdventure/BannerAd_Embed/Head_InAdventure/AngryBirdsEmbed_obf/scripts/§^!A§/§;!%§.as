package §^!A§
{
   import §#X§.§,!F§;
   import §&o§.Sprite;
   import §3a§.§7!+§;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §6A§.§ !§;
   import §6A§.§0!'§;
   import §^!L§.§"c§;
   import §^!L§.§%h§;
   import §^!L§.§5b§;
   import §^!L§.§6<§;
   import §^!L§.each;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §;!%§
   {
      
      public static const §?>§:uint = 1 << 1;
      
      public static const §->§:uint = 1 << 2;
      
      public static const §?^§:uint = 1 << 3;
      
      public static const §2w§:uint = 1 << 4;
      
      public static const §@@§:Boolean = true;
      
      public static const §;!4§:Number = 5;
      
      public static const §,!-§:Number = 10;
       
      
      private var §+!$§:String;
      
      private var §]S§:int;
      
      private var §#D§:int;
      
      public var §1>§:String;
      
      public var §@%§:int;
      
      protected var §4>§:each;
      
      private var §?!@§:§@H§;
      
      private var §[!C§:b2World;
      
      protected var §4N§:String = "";
      
      protected var §0!>§:int = 1;
      
      private var §!^§:b2Fixture;
      
      private var §8!$§:b2Body;
      
      private var §&B§:b2Vec2;
      
      public var §`Y§:Number;
      
      public var §@!§:Number;
      
      private var §>^§:Number;
      
      private var §9m§:Boolean = false;
      
      private var §3D§:Number;
      
      private var §3!-§:Number;
      
      private var §^6§:Number;
      
      private var §#v§:Number;
      
      private var §><§:Number;
      
      private var §&!;§:Number;
      
      public var §4Y§:Number = 1;
      
      private var §4l§:Boolean = false;
      
      public var §@A§:Number = 0;
      
      public var §1!3§:Number = 0;
      
      protected var §[!D§:Boolean = false;
      
      public var §;S§:§[!J§;
      
      protected var §,!7§:Sprite;
      
      private var §-`§:Number = 0;
      
      private var §4J§:Number = 0;
      
      private var §&k§:Number = 0;
      
      protected var §-_§:Number = 1.0;
      
      private var §6n§:Boolean = false;
      
      protected var §;!0§:§8!J§;
      
      private var §<>§:Boolean = true;
      
      public function §;!%§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§1>§ = param6;
         this.§4>§ = §6<§.§6H§(param6);
         this.§?!@§ = param1;
         this.§,!7§ = param2;
         this.§-_§ = param10;
         this.§6n§ = param11;
         this.§]S§ = param5;
         this.§@%§ = this.§4>§.§@%§;
         this.§#D§ = this.§4>§.§ 4§();
         this.§;!0§ = new §8!J§(§;!4§,§,!-§);
         this.§;S§ = new §[!J§(this,param2,param4);
         if(!this.§;S§.§1R§(param1.§?V§.§;!L§))
         {
            this.§;S§.§-L§(this.§#D§,this.§4>§.§9`§(),this.§4>§.§1o§() / § !§.§`J§,this.§4>§.§<!;§() / § !§.§`J§);
         }
         this.§;S§.§@"§(this.§#D§ == §"c§.§,p§);
         this.§[!C§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§8!$§ = this.§[!C§.CreateBody(_loc12_);
         this.§8!$§.SetUserData(this);
         if(this.§#D§ == §"c§.§3!C§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§4>§.shape.§[s§ * param10,this.§4>§.shape.§8!&§ * param10);
            this.§!^§ = this.§8!$§.CreateFixture2(_loc14_,this.§4>§.§^!?§());
         }
         else if(this.§#D§ == §"c§.§,p§ || this.§#D§ == §"c§.§"!K§)
         {
            this.§!^§ = this.§8!$§.CreateFixture2(this.§4>§.shape.§?d§(param10),this.§4>§.§^!?§());
         }
         this.§!^§.SetFriction(this.§4>§.§9l§());
         this.§!^§.SetRestitution(this.§4>§.§9k§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§-!+§())
         {
            _loc13_.categoryBits = §?>§;
            _loc13_.maskBits = 65535 & ~§->§;
         }
         else if(this.§1>§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§1>§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §->§;
            _loc13_.maskBits = 65535 & ~§?>§;
         }
         this.§!^§.SetFilterData(_loc13_);
         this.§>^§ = this.§4>§.§+u§();
         if(this.§4>§.§@!§ > 0)
         {
            this.§`Y§ = this.§@!§ = this.§4>§.§@!§;
         }
         else
         {
            this.§`Y§ = this.§@!§ = Math.round(this.§1!=§(true) * this.§4>§.§ "§());
            if(this.§`Y§ < 1)
            {
               this.§`Y§ = this.§@!§ = 1;
            }
         }
         if(this.§4>§.§@%§ == each.§@i§)
         {
            this.§,!7§.visible = false;
         }
         else
         {
            this.§;S§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§=!<§(param9);
         }
         this.§'=§();
         this.§]C§(0,1);
         this.§;S§.§+!'§(this.§4>§.shape);
      }
      
      public static function §6!&§(param1:int, param2:§%h§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§,!?§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§3_§;
            }
            §,!F§.§!!C§(_loc4_,param3);
         }
      }
      
      public static function § Z§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §;!E§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§,!7§;
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function get scale() : Number
      {
         return this.§-_§;
      }
      
      public function get front() : Boolean
      {
         return this.§6n§;
      }
      
      public function get §return§() : Number
      {
         return this.§8!$§.GetPosition().x;
      }
      
      public function get §[n§() : Number
      {
         return this.§8!$§.GetPosition().y;
      }
      
      public function get §;!+§() : each
      {
         return this.§4>§;
      }
      
      public function get §1k§() : Boolean
      {
         return this.§>^§ >= 0;
      }
      
      public function get container() : §@H§
      {
         return this.§?!@§;
      }
      
      public function get §[!$§() : Boolean
      {
         return this.§<>§;
      }
      
      public function set §[!$§(param1:Boolean) : void
      {
         this.§<>§ = param1;
      }
      
      public function set §[X§(param1:Boolean) : void
      {
         this.§9m§ = param1;
      }
      
      public function set §`t§(param1:uint) : void
      {
         this.§;!0§.§`t§ = param1;
      }
      
      public function get §`t§() : uint
      {
         return this.§;!0§.§`t§;
      }
      
      public function get §?Z§() : Boolean
      {
         return this.§4l§;
      }
      
      public function set §?Z§(param1:Boolean) : void
      {
         this.§4l§ = param1;
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
         return this.§+!$§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§+!$§ = param1;
      }
      
      public function §?!4§(param1:b2FilterData) : void
      {
         if(this.§!^§)
         {
            this.§!^§.SetFilterData(param1);
         }
      }
      
      protected function §4!8§(param1:String) : int
      {
         return §<!6§.§4!8§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§4>§.§"7§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§[!C§)
         {
            this.§[!C§.DestroyBody(this.§'[§());
            this.§[!C§ = null;
         }
         this.§;S§.dispose();
         if(this.§,!7§)
         {
            this.§,!7§.dispose();
            this.§,!7§ = null;
         }
         this.§!^§ = null;
         this.§&B§ = null;
         this.§4>§ = null;
      }
      
      public function §=!<§(param1:Number) : void
      {
         this.§'[§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §>8§() : Number
      {
         return (360 - this.§'[§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §'!0§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§'[§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§0!8§();
         }
         if(param3)
         {
            this.§`!3§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§!^§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§'[§().GetPosition().x >= param3 && this.§'[§().GetPosition().x <= param4 && this.§'[§().GetPosition().y >= param1 && this.§'[§().GetPosition().y <= param2;
      }
      
      public function § =§(param1:b2Vec2) : void
      {
         this.§&B§ = param1;
      }
      
      public function §`§() : void
      {
         if(this.§&B§)
         {
            this.§'!0§(this.§&B§,false);
            this.§&B§ = null;
         }
      }
      
      public function §0!8§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§'[§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§'[§().SetAngularVelocity(0);
         }
         else
         {
            this.§'[§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §`!3§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§'[§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§=!<§(_loc2_);
      }
      
      public function §<q§(param1:Number) : void
      {
         this.§'[§().SetAngularVelocity(param1);
      }
      
      public function §'[§() : b2Body
      {
         if(this.§!^§ != null)
         {
            return this.§!^§.GetBody();
         }
         return null;
      }
      
      public function §5&§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§-`§ = param1;
            this.§4J§ = param2;
         }
         this.§'[§().GetPosition().x = this.§-`§ * § !§.§`J§;
         this.§'[§().GetPosition().y = this.§4J§ * § !§.§`J§;
      }
      
      public function §]C§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§[!D§)
         {
            _loc3_ = true;
            this.§[!D§ = false;
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
            this.§;S§.§;?§();
         }
         if(this.§4Y§ > 1 && this.§;S§.§1=§)
         {
            _loc4_ = 4 + (this.§;S§.§1=§.blurX - 4 + param2 / 20) % 28;
            this.§;S§.§1=§.blurX = _loc4_;
            this.§;S§.§1=§.blurY = _loc4_;
         }
         this.§;S§.§&&§(param2);
         if(§@@§)
         {
            this.§<G§(param1);
         }
         else
         {
            this.§&k§ = this.§^6§;
            this.§-`§ = this.§3D§;
            this.§4J§ = this.§3!-§;
         }
         this.§,!7§.x = Math.round(this.§-`§);
         this.§,!7§.y = Math.round(this.§4J§);
         this.§,!7§.rotation = this.§&k§ / 180 * Math.PI;
      }
      
      public function §'=§() : void
      {
         var _loc1_:Number = this.§'[§().GetPosition().x;
         var _loc2_:Number = this.§'[§().GetPosition().y;
         this.§&!;§ = this.§^6§;
         this.§#v§ = this.§3D§;
         this.§><§ = this.§3!-§;
         this.§^6§ = this.§'[§().GetAngle() * (180 / Math.PI) % 360;
         this.§3D§ = _loc1_ / § !§.§`J§;
         this.§3!-§ = _loc2_ / § !§.§`J§;
         this.§;!0§.§^x§();
         this.§;!0§.get(this.§'[§());
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
      
      public function §<G§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §7!+§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§?!@§.§?V§.§'O§.§-!8§ * 1000;
         }
         param1 *= -1;
         if(this.§3D§ == this.§#v§ || param1 == 0)
         {
            this.§@A§ = 0;
            this.§-`§ = this.§3D§;
         }
         else
         {
            this.§@A§ = param1 * (this.§#v§ - this.§3D§) / param2;
            this.§-`§ = this.§3D§ + this.§@A§;
         }
         if(this.§3!-§ == this.§><§ || param1 == 0)
         {
            this.§1!3§ = 0;
            this.§4J§ = this.§3!-§;
         }
         else
         {
            this.§1!3§ = param1 * (this.§><§ - this.§3!-§) / param2;
            this.§4J§ = this.§3!-§ + this.§1!3§;
         }
         if(this.§^6§ == this.§&!;§ || param1 == 0)
         {
            this.§&k§ = this.§^6§;
         }
         else if(this.§&!;§ > this.§^6§ && this.§&!;§ - this.§^6§ <= 180)
         {
            this.§&k§ = this.§^6§ + param1 * (this.§&!;§ - this.§^6§) / param2;
         }
         else if(this.§&!;§ > this.§^6§ && this.§&!;§ - this.§^6§ > 180)
         {
            this.§&k§ = this.§^6§ + param1 * (this.§&!;§ - 360 - this.§^6§) / param2;
         }
         else if(this.§&!;§ < this.§^6§ && this.§^6§ - this.§&!;§ <= 180)
         {
            this.§&k§ = this.§^6§ + param1 * (this.§&!;§ - this.§^6§) / param2;
         }
         else if(this.§&!;§ < this.§^6§ && this.§^6§ - this.§&!;§ > 180)
         {
            this.§&k§ = this.§^6§ + param1 * (this.§&!;§ + 360 - this.§^6§) / param2;
         }
      }
      
      public function get §3! §() : Point
      {
         if(!§@@§)
         {
         }
         return null;
      }
      
      public function §-!+§() : Boolean
      {
         return this.§@%§ == each.§=7§ || this.§@%§ == each.§!!N§;
      }
      
      public function §72§() : Boolean
      {
         return this.§@%§ == each.§,U§;
      }
      
      public function §"!"§() : Boolean
      {
         return this.§@%§ == each.§=!'§;
      }
      
      public function §@!-§() : Boolean
      {
         return this.§@%§ == each.§!!N§;
      }
      
      public function §;8§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§@%§ == each.§6Z§;
      }
      
      public function isGround() : Boolean
      {
         return this.§@%§ == each.§@i§;
      }
      
      public function §-A§() : Boolean
      {
         return this.§@%§ == each.§`V§;
      }
      
      public function §?8§() : Boolean
      {
         return this.§@%§ == each.§9R§;
      }
      
      public function §&d§() : Boolean
      {
         if(this.§1>§ == "MISC_EXPLOSIVE_TNT" || this.§1>§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §'<§() : Boolean
      {
         return (this.§72§() || this.§-A§() || this.§?8§()) && !this.§?Z§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §8!A§() : Number
      {
         return Number(Math.sqrt(this.§'[§().GetLinearVelocity().x * this.§'[§().GetLinearVelocity().x + this.§'[§().GetLinearVelocity().y * this.§'[§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§"!"§())
         {
            return this.§`Y§;
         }
         if(!this.§?!@§.§],§())
         {
            return this.§`Y§;
         }
         if(this.§>^§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§,H§(§%h§.§"h§);
            }
            else if(param1 > 12)
            {
               this.§,H§(§%h§.§=c§);
            }
            else if(param1 > 3)
            {
               this.§,H§(§%h§.§+G§);
            }
            return this.§`Y§;
         }
         if(param1 <= this.§>^§)
         {
            if(param1 >= this.§>^§ / 2)
            {
               this.§,H§(§%h§.§+G§);
            }
            if(this.§-!+§() && this.§`Y§ == this.§@!§)
            {
               this.§`Y§ = this.§@!§ - 1;
            }
            return this.§`Y§;
         }
         param1 -= this.§>^§;
         if(param2 && this.§'<§())
         {
            _loc7_ = Math.min(this.§`Y§,int(param1));
            _loc8_ = § !§.§6]§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= § !§.§2!B§;
            }
            this.§?!@§.§?V§.addScore(_loc8_,§0!'§.§36§,this.§`Y§ > param1 && param3,this.§'[§().GetPosition().x,this.§'[§().GetPosition().y,§<!6§.§-S§(this.§1>§));
         }
         if(!(param5 && this.§9m§))
         {
            this.§`Y§ -= param1;
         }
         if(this.§`Y§ < 1 && this.§-!+§())
         {
            this.§`Y§ = 1;
         }
         if(this.§`Y§ < 1)
         {
            this.§`Y§ = 0;
            §;!%§.§6!&§(§%h§.§"h§,this.§4>§.§2;§,"ChannelDestroyed");
         }
         else
         {
            this.§,H§(§%h§.§=c§);
            this.addDamageParticles(this.§?!@§.§?V§.particles,param1);
         }
         this.§;S§.setDamagedFrame();
         return this.§`Y§;
      }
      
      public function §,H§(param1:int) : void
      {
         §;!%§.§6!&§(param1,this.§4>§.§2;§);
      }
      
      public function §?]§(param1:String) : Number
      {
         return this.§4>§.material.§'F§(param1) * this.§4Y§;
      }
      
      public function §#!&§(param1:String) : Number
      {
         return this.§4>§.material.§ !0§(param1);
      }
      
      public function §@]§() : String
      {
         return this.§4>§.material.mName;
      }
      
      public function §;6§() : Number
      {
         return this.§4>§.§ "§();
      }
      
      public function §default§() : int
      {
         return this.§4>§.§3m§();
      }
      
      public function §4Z§() : Boolean
      {
         return this.§'[§().IsAwake() && (this.§-!+§() && this.§`Y§ == this.§@!§ || Math.abs(this.§'[§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§'[§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§'[§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §switch§() : Boolean
      {
         if(!this.§'[§().IsAwake())
         {
            return true;
         }
         return !this.§30§();
      }
      
      protected function §30§() : Boolean
      {
         return this.§;!0§.§30§();
      }
      
      public function §%!§(param1:Number = 3) : void
      {
         this.§4Y§ = param1;
         if(this.§4Y§ > 1)
         {
            this.§;S§.§%w§();
         }
         else
         {
            this.§;S§.§1=§ = null;
         }
      }
      
      public function §1!=§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§4>§.§"7§() == §5b§.§-!G§)
         {
            _loc2_ = this.§;S§.mW * this.§;S§.mH * (§ !§.§`J§ * § !§.§`J§);
         }
         else
         {
            _loc2_ = this.§'[§().GetMass() / this.§!^§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§@K§();
            }
            _loc2_ /= this.§-_§ * this.§-_§;
         }
         return _loc2_;
      }
      
      public function §@K§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§;S§.§=4§ - 1) / 10);
      }
      
      public function §%3§(param1:Number) : void
      {
         var _loc2_:Number = this.§'[§().GetLinearVelocity().x;
         var _loc3_:Number = this.§'[§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§'[§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§@H§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§2!H§) : void
      {
      }
      
      public function addDamageParticles(param1:§2!H§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §"!@§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§'[§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§'[§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§>8§()) + 360) % 360;
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
            this.§=!<§(_loc4_);
         }
         var _loc3_:Number = this.§>8§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§=!<§(_loc3_);
      }
      
      public function §2o§(param1:Number) : void
      {
         var _loc2_:Number = § Z§(this.§'[§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §;!E§(_loc2_);
         this.§'[§().SetAngle(_loc2_);
      }
      
      public function §%M§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§'[§().GetPosition().Copy();
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
         this.§'[§().SetPosition(_loc13_);
      }
   }
}
