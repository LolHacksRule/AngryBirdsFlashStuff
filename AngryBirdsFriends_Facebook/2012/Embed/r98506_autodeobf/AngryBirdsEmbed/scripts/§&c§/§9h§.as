package §&c§
{
   import §#;§.§4!8§;
   import §#;§.§?b§;
   import §-p§.§&2§;
   import §3!A§.§9!0§;
   import §8g§.§"g§;
   import §8g§.§<D§;
   import §;q§.Sprite;
   import §^V§.§4a§;
   import §^V§.§9K§;
   import §^V§.§;n§;
   import §^V§.§<e§;
   import §^V§.§[H§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §9h§
   {
      
      public static const §]W§:uint = 1 << 1;
      
      public static const §+K§:uint = 1 << 2;
      
      public static const §]!"§:uint = 1 << 3;
      
      public static const §[]§:uint = 1 << 4;
      
      public static const §+!,§:Boolean = true;
      
      public static const §,r§:Number = 5;
      
      public static const §11§:Number = 10;
       
      
      private var §'Y§:String;
      
      private var §3!E§:int;
      
      private var §?p§:int;
      
      public var §+!!§:String;
      
      public var §,'§:int;
      
      private var §5#§:§[H§;
      
      private var §0N§:§<'§;
      
      private var §+!@§:b2World;
      
      protected var §?D§:String = "";
      
      protected var §>!"§:int = 1;
      
      private var §5H§:b2Fixture;
      
      private var §][§:b2Body;
      
      private var §]k§:b2Vec2;
      
      public var §<Y§:Number;
      
      public var §;u§:Number;
      
      private var §0Z§:Number;
      
      private var §2`§:Boolean = false;
      
      private var §4!<§:Number;
      
      private var §#s§:Number;
      
      private var §7[§:Number;
      
      private var §=!7§:Number;
      
      private var §[9§:Number;
      
      private var §'P§:Number;
      
      public var §;X§:Number = 1;
      
      private var §=%§:Boolean = false;
      
      public var §3!%§:Number = 0;
      
      public var §=Y§:Number = 0;
      
      protected var §?!&§:Boolean = false;
      
      public var §<!'§:§+`§;
      
      private var §]?§:Sprite;
      
      private var §9r§:Number = 0;
      
      private var §!0§:Number = 0;
      
      private var §!S§:Number = 0;
      
      private var §&p§:Number = 1.0;
      
      private var §4?§:Boolean = false;
      
      protected var §?!I§:§0-§;
      
      private var §3t§:Boolean = true;
      
      public function §9h§(param1:§<'§, param2:Sprite, param3:b2World, param4:§4!8§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§+!!§ = param6;
         this.§5#§ = §;n§.§@!G§(param6);
         this.§0N§ = param1;
         this.§]?§ = param2;
         this.§&p§ = param10;
         this.§4?§ = param11;
         this.§3!E§ = param5;
         this.§,'§ = this.§5#§.§,'§;
         this.§?p§ = this.§5#§.§73§();
         this.§?!I§ = new §0-§(§,r§,§11§);
         this.§<!'§ = new §+`§(this,param2,param4);
         if(!this.§<!'§.§'!I§(param1.§3!3§.§`,§))
         {
            this.§<!'§.§><§(this.§?p§,this.§5#§.§6=§(),this.§5#§.§3F§() / §4!8§.§5+§,this.§5#§.§`3§() / §4!8§.§5+§);
         }
         this.§<!'§.§4h§(this.§?p§ == §4a§.§7!6§);
         this.§+!@§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§][§ = this.§+!@§.CreateBody(_loc12_);
         this.§][§.SetUserData(this);
         if(this.§?p§ == §4a§.§>!D§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§5#§.shape.§<!3§ * param10,this.§5#§.shape.§5u§ * param10);
            this.§5H§ = this.§][§.CreateFixture2(_loc14_,this.§5#§.§-!7§());
         }
         else if(this.§?p§ == §4a§.§7!6§ || this.§?p§ == §4a§.§9!C§)
         {
            this.§5H§ = this.§][§.CreateFixture2(this.§5#§.shape.§?r§(param10),this.§5#§.§-!7§());
         }
         this.§5H§.SetFriction(this.§5#§.§4!G§());
         this.§5H§.SetRestitution(this.§5#§.§5=§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§0"§())
         {
            _loc13_.categoryBits = §]W§;
            _loc13_.maskBits = 65535 & ~§+K§;
         }
         else if(this.§+!!§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§+!!§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §+K§;
            _loc13_.maskBits = 65535 & ~§]W§;
         }
         this.§5H§.SetFilterData(_loc13_);
         this.§0Z§ = this.§5#§.§5O§();
         if(this.§5#§.§;u§ > 0)
         {
            this.§<Y§ = this.§;u§ = this.§5#§.§;u§;
         }
         else
         {
            this.§<Y§ = this.§;u§ = Math.round(this.§`M§(true) * this.§5#§.§9U§());
            if(this.§<Y§ < 1)
            {
               this.§<Y§ = this.§;u§ = 1;
            }
         }
         if(this.§5#§.§,'§ == §[H§.§ >§)
         {
            this.§]?§.visible = false;
         }
         else
         {
            this.§<!'§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§4q§(param9);
         }
         this.§'!J§();
         this.§-B§(0,1);
         this.§<!'§.§`P§(this.§5#§.shape);
      }
      
      public static function §0o§(param1:int, param2:§<e§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§9!J§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§]-§;
            }
            §9!0§.§?n§(_loc4_,param3);
         }
      }
      
      public static function §!z§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §5L§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§]?§;
      }
      
      public function get x() : Number
      {
         return this.§9r§;
      }
      
      public function get y() : Number
      {
         return this.§!0§;
      }
      
      public function get scale() : Number
      {
         return this.§&p§;
      }
      
      public function get front() : Boolean
      {
         return this.§4?§;
      }
      
      public function get §"d§() : Number
      {
         return this.§][§.GetPosition().x;
      }
      
      public function get §?! §() : Number
      {
         return this.§][§.GetPosition().y;
      }
      
      public function get §21§() : §[H§
      {
         return this.§5#§;
      }
      
      public function get §#V§() : Boolean
      {
         return this.§0Z§ >= 0;
      }
      
      public function get container() : §<'§
      {
         return this.§0N§;
      }
      
      public function get §#p§() : Boolean
      {
         return this.§3t§;
      }
      
      public function set §#p§(param1:Boolean) : void
      {
         this.§3t§ = param1;
      }
      
      public function set §8u§(param1:Boolean) : void
      {
         this.§2`§ = param1;
      }
      
      public function set §2N§(param1:uint) : void
      {
         this.§?!I§.§2N§ = param1;
      }
      
      public function get §2N§() : uint
      {
         return this.§?!I§.§2N§;
      }
      
      public function get §<!"§() : Boolean
      {
         return this.§=%§;
      }
      
      public function set §<!"§(param1:Boolean) : void
      {
         this.§=%§ = param1;
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
         return this.§'Y§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§'Y§ = param1;
      }
      
      public function §[!<§(param1:b2FilterData) : void
      {
         if(this.§5H§)
         {
            this.§5H§.SetFilterData(param1);
         }
      }
      
      protected function §;5§(param1:String) : int
      {
         return §<D§.§;5§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§5#§.§32§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§+!@§)
         {
            this.§+!@§.DestroyBody(this.§68§());
            this.§+!@§ = null;
         }
         this.§<!'§.dispose();
         if(this.§]?§)
         {
            this.§]?§.dispose();
            this.§]?§ = null;
         }
         this.§5H§ = null;
         this.§]k§ = null;
         this.§5#§ = null;
      }
      
      public function §4q§(param1:Number) : void
      {
         this.§68§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §1o§() : Number
      {
         return (360 - this.§68§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §4c§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§68§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§?!>§();
         }
         if(param3)
         {
            this.§#"§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§5H§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§68§().GetPosition().x >= param3 && this.§68§().GetPosition().x <= param4 && this.§68§().GetPosition().y >= param1 && this.§68§().GetPosition().y <= param2;
      }
      
      public function §6K§(param1:b2Vec2) : void
      {
         this.§]k§ = param1;
      }
      
      public function §`L§() : void
      {
         if(this.§]k§)
         {
            this.§4c§(this.§]k§,false);
            this.§]k§ = null;
         }
      }
      
      public function §?!>§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§68§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§68§().SetAngularVelocity(0);
         }
         else
         {
            this.§68§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §#"§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§68§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§4q§(_loc2_);
      }
      
      public function §'!#§(param1:Number) : void
      {
         this.§68§().SetAngularVelocity(param1);
      }
      
      public function §68§() : b2Body
      {
         if(this.§5H§ != null)
         {
            return this.§5H§.GetBody();
         }
         return null;
      }
      
      public function §]S§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§9r§ = param1;
            this.§!0§ = param2;
         }
         this.§68§().GetPosition().x = this.§9r§ * §4!8§.§5+§;
         this.§68§().GetPosition().y = this.§!0§ * §4!8§.§5+§;
      }
      
      public function §-B§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§?!&§)
         {
            _loc3_ = true;
            this.§?!&§ = false;
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
            this.§<!'§.§#D§();
         }
         if(this.§;X§ > 1 && this.§<!'§.§[!A§)
         {
            _loc4_ = 4 + (this.§<!'§.§[!A§.blurX - 4 + param2 / 20) % 28;
            this.§<!'§.§[!A§.blurX = _loc4_;
            this.§<!'§.§[!A§.blurY = _loc4_;
         }
         this.§<!'§.§4!§(param2);
         if(§+!,§)
         {
            this.§-l§(param1);
         }
         else
         {
            this.§!S§ = this.§7[§;
            this.§9r§ = this.§4!<§;
            this.§!0§ = this.§#s§;
         }
         this.§]?§.x = Math.round(this.§9r§);
         this.§]?§.y = Math.round(this.§!0§);
         this.§]?§.rotation = this.§!S§ / 180 * Math.PI;
      }
      
      public function §'!J§() : void
      {
         var _loc1_:Number = this.§68§().GetPosition().x;
         var _loc2_:Number = this.§68§().GetPosition().y;
         this.§'P§ = this.§7[§;
         this.§=!7§ = this.§4!<§;
         this.§[9§ = this.§#s§;
         this.§7[§ = this.§68§().GetAngle() * (180 / Math.PI) % 360;
         this.§4!<§ = _loc1_ / §4!8§.§5+§;
         this.§#s§ = _loc2_ / §4!8§.§5+§;
         this.§?!I§.§`!F§();
         this.§?!I§.§^K§(this.§68§());
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
      
      public function §-l§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §&2§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§0N§.§3!3§.§9J§.§9!1§ * 1000;
         }
         param1 *= -1;
         if(this.§4!<§ == this.§=!7§ || param1 == 0)
         {
            this.§3!%§ = 0;
            this.§9r§ = this.§4!<§;
         }
         else
         {
            this.§3!%§ = param1 * (this.§=!7§ - this.§4!<§) / param2;
            this.§9r§ = this.§4!<§ + this.§3!%§;
         }
         if(this.§#s§ == this.§[9§ || param1 == 0)
         {
            this.§=Y§ = 0;
            this.§!0§ = this.§#s§;
         }
         else
         {
            this.§=Y§ = param1 * (this.§[9§ - this.§#s§) / param2;
            this.§!0§ = this.§#s§ + this.§=Y§;
         }
         if(this.§7[§ == this.§'P§ || param1 == 0)
         {
            this.§!S§ = this.§7[§;
         }
         else if(this.§'P§ > this.§7[§ && this.§'P§ - this.§7[§ <= 180)
         {
            this.§!S§ = this.§7[§ + param1 * (this.§'P§ - this.§7[§) / param2;
         }
         else if(this.§'P§ > this.§7[§ && this.§'P§ - this.§7[§ > 180)
         {
            this.§!S§ = this.§7[§ + param1 * (this.§'P§ - 360 - this.§7[§) / param2;
         }
         else if(this.§'P§ < this.§7[§ && this.§7[§ - this.§'P§ <= 180)
         {
            this.§!S§ = this.§7[§ + param1 * (this.§'P§ - this.§7[§) / param2;
         }
         else if(this.§'P§ < this.§7[§ && this.§7[§ - this.§'P§ > 180)
         {
            this.§!S§ = this.§7[§ + param1 * (this.§'P§ + 360 - this.§7[§) / param2;
         }
      }
      
      public function get §>R§() : Point
      {
         if(!§+!,§)
         {
         }
         return null;
      }
      
      public function §0"§() : Boolean
      {
         return this.§,'§ == §[H§.§+!;§ || this.§,'§ == §[H§.§[[§;
      }
      
      public function §,-§() : Boolean
      {
         return this.§,'§ == §[H§.§'o§;
      }
      
      public function §2<§() : Boolean
      {
         return this.§,'§ == §[H§.§0l§;
      }
      
      public function §&v§() : Boolean
      {
         return this.§,'§ == §[H§.§[[§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§,'§ == §[H§.§^4§;
      }
      
      public function isGround() : Boolean
      {
         return this.§,'§ == §[H§.§ >§;
      }
      
      public function §=!?§() : Boolean
      {
         return this.§,'§ == §[H§.§-@§;
      }
      
      public function §%$§() : Boolean
      {
         return this.§,'§ == §[H§.§97§;
      }
      
      public function §]0§() : Boolean
      {
         if(this.§+!!§ == "MISC_EXPLOSIVE_TNT" || this.§+!!§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §>,§() : Boolean
      {
         return (this.§,-§() || this.§=!?§() || this.§%$§()) && !this.§<!"§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §6P§() : Number
      {
         return Number(Math.sqrt(this.§68§().GetLinearVelocity().x * this.§68§().GetLinearVelocity().x + this.§68§().GetLinearVelocity().y * this.§68§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§2<§())
         {
            return this.§<Y§;
         }
         if(!this.§0N§.§4E§())
         {
            return this.§<Y§;
         }
         if(this.§0Z§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§@!"§(§<e§.§+!G§);
            }
            else if(param1 > 12)
            {
               this.§@!"§(§<e§.§=]§);
            }
            else if(param1 > 3)
            {
               this.§@!"§(§<e§.§4t§);
            }
            return this.§<Y§;
         }
         if(param1 <= this.§0Z§)
         {
            if(param1 >= this.§0Z§ / 2)
            {
               this.§@!"§(§<e§.§4t§);
            }
            if(this.§0"§() && this.§<Y§ == this.§;u§)
            {
               this.§<Y§ = this.§;u§ - 1;
            }
            return this.§<Y§;
         }
         param1 -= this.§0Z§;
         if(param2 && this.§>,§())
         {
            _loc7_ = Math.min(this.§<Y§,int(param1));
            _loc8_ = §4!8§.§ ]§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §4!8§.§-!3§;
            }
            this.§0N§.§3!3§.addScore(_loc8_,§?b§.§=!H§,this.§<Y§ > param1 && param3,this.§68§().GetPosition().x,this.§68§().GetPosition().y,§<D§.§;L§(this.§+!!§));
         }
         if(!(param5 && this.§2`§))
         {
            this.§<Y§ -= param1;
         }
         if(this.§<Y§ < 1 && this.§0"§())
         {
            this.§<Y§ = 1;
         }
         if(this.§<Y§ < 1)
         {
            this.§<Y§ = 0;
            §9h§.§0o§(§<e§.§+!G§,this.§5#§.§9w§,"ChannelDestroyed");
         }
         else
         {
            this.§@!"§(§<e§.§=]§);
            this.addDamageParticles(this.§0N§.§3!3§.particles,param1);
         }
         this.§<!'§.setDamagedFrame();
         return this.§<Y§;
      }
      
      public function §@!"§(param1:int) : void
      {
         §9h§.§0o§(param1,this.§5#§.§9w§);
      }
      
      public function §7R§(param1:String) : Number
      {
         return this.§5#§.material.§-I§(param1) * this.§;X§;
      }
      
      public function §3K§(param1:String) : Number
      {
         return this.§5#§.material.§'!<§(param1);
      }
      
      public function §!i§() : String
      {
         return this.§5#§.material.mName;
      }
      
      public function §+F§() : Number
      {
         return this.§5#§.§9U§();
      }
      
      public function §0!%§() : int
      {
         return this.§5#§.§?W§();
      }
      
      public function §[j§() : Boolean
      {
         return this.§68§().IsAwake() && (this.§0"§() && this.§<Y§ == this.§;u§ || Math.abs(this.§68§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§68§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§68§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §"! §() : Boolean
      {
         if(!this.§68§().IsAwake())
         {
            return true;
         }
         return !this.§%r§();
      }
      
      protected function §%r§() : Boolean
      {
         return this.§?!I§.§%r§();
      }
      
      public function §8+§(param1:Number = 3) : void
      {
         this.§;X§ = param1;
         if(this.§;X§ > 1)
         {
            this.§<!'§.§2!5§();
         }
         else
         {
            this.§<!'§.§[!A§ = null;
         }
      }
      
      public function §`M§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§5#§.§32§() == §9K§.§3!5§)
         {
            _loc2_ = this.§<!'§.mW * this.§<!'§.mH * (§4!8§.§5+§ * §4!8§.§5+§);
         }
         else
         {
            _loc2_ = this.§68§().GetMass() / this.§5H§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§7y§();
            }
            _loc2_ /= this.§&p§ * this.§&p§;
         }
         return _loc2_;
      }
      
      public function §7y§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§<!'§.§;&§ - 1) / 10);
      }
      
      public function § X§(param1:Number) : void
      {
         var _loc2_:Number = this.§68§().GetLinearVelocity().x;
         var _loc3_:Number = this.§68§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§68§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§<'§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§"g§) : void
      {
      }
      
      public function addDamageParticles(param1:§"g§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §?V§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§68§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§68§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§1o§()) + 360) % 360;
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
            this.§4q§(_loc4_);
         }
         var _loc3_:Number = this.§1o§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§4q§(_loc3_);
      }
      
      public function §2s§(param1:Number) : void
      {
         var _loc2_:Number = §!z§(this.§68§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §5L§(_loc2_);
         this.§68§().SetAngle(_loc2_);
      }
      
      public function §^!#§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§68§().GetPosition().Copy();
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
         this.§68§().SetPosition(_loc13_);
      }
   }
}
