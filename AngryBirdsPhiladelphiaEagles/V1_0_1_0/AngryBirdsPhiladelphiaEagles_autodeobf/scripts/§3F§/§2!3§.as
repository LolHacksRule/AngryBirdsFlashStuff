package §3F§
{
   import §+!N§.§!9§;
   import §+!N§.§-!H§;
   import §+!N§.§1[§;
   import §+!N§.§=!2§;
   import §+!N§.§[8§;
   import §-!5§.§5s§;
   import §3H§.Sprite;
   import §7E§.§@u§;
   import §7E§.§^A§;
   import §>2§.§&L§;
   import §>2§.§4h§;
   import §[N§.§9k§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §2!3§
   {
      
      public static const §0!K§:uint = 1 << 1;
      
      public static const §^!@§:uint = 1 << 2;
      
      public static const §%U§:uint = 1 << 3;
      
      public static const §7!E§:uint = 1 << 4;
      
      public static const §"!4§:Boolean = true;
      
      public static const §-!P§:Number = 5;
      
      public static const §^d§:Number = 10;
       
      
      private var §1q§:String;
      
      private var §4!L§:int;
      
      private var §>!D§:int;
      
      public var §9E§:String;
      
      public var §>!-§:int;
      
      private var §5!7§:§!9§;
      
      private var §2>§:§0z§;
      
      private var §7!J§:b2World;
      
      protected var §,=§:String = "";
      
      protected var §`N§:int = 1;
      
      private var §'l§:b2Fixture;
      
      private var §%Q§:b2Body;
      
      private var §>c§:b2Vec2;
      
      public var §7^§:Number;
      
      public var §0-§:Number;
      
      private var §7!F§:Number;
      
      private var §&!K§:Boolean = false;
      
      private var §;!'§:Number;
      
      private var §[!B§:Number;
      
      private var §=!L§:Number;
      
      private var §'F§:Number;
      
      private var §";§:Number;
      
      private var §]6§:Number;
      
      public var §=!'§:Number = 1;
      
      private var §]Z§:Boolean = false;
      
      public var §#y§:Number = 0;
      
      public var §,K§:Number = 0;
      
      protected var §>C§:Boolean = false;
      
      public var §^! §:§0@§;
      
      private var §5+§:Sprite;
      
      private var §,R§:Number = 0;
      
      private var §=! §:Number = 0;
      
      private var §%3§:Number = 0;
      
      private var §&;§:Number = 1.0;
      
      private var §3f§:Boolean = false;
      
      protected var §-g§:§&!O§;
      
      private var §^o§:Boolean = true;
      
      public function §2!3§(param1:§0z§, param2:Sprite, param3:b2World, param4:§4h§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§9E§ = param6;
         this.§5!7§ = §1[§.§[Y§(param6);
         this.§2>§ = param1;
         this.§5+§ = param2;
         this.§&;§ = param10;
         this.§3f§ = param11;
         this.§4!L§ = param5;
         this.§>!-§ = this.§5!7§.§>!-§;
         this.§>!D§ = this.§5!7§.§`!4§();
         this.§-g§ = new §&!O§(§-!P§,§^d§);
         this.§^! § = new §0@§(this,param2,param4);
         if(!this.§^! §.§,H§(param1.§@k§.§4!C§))
         {
            this.§^! §.§3b§(this.§>!D§,this.§5!7§.§+E§(),this.§5!7§.§[]§() / §4h§.§-9§,this.§5!7§.§0m§() / §4h§.§-9§);
         }
         this.§^! §.§]]§(this.§>!D§ == §-!H§.§;!2§);
         this.§7!J§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§%Q§ = this.§7!J§.CreateBody(_loc12_);
         this.§%Q§.SetUserData(this);
         if(this.§>!D§ == §-!H§.§"G§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§5!7§.shape.§#!6§ * param10,this.§5!7§.shape.§&r§ * param10);
            this.§'l§ = this.§%Q§.CreateFixture2(_loc14_,this.§5!7§.§<C§());
         }
         else if(this.§>!D§ == §-!H§.§;!2§ || this.§>!D§ == §-!H§.§&!$§)
         {
            this.§'l§ = this.§%Q§.CreateFixture2(this.§5!7§.shape.§-"§(param10),this.§5!7§.§<C§());
         }
         this.§'l§.SetFriction(this.§5!7§.§"V§());
         this.§'l§.SetRestitution(this.§5!7§.§-!'§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§6!?§())
         {
            _loc13_.categoryBits = §0!K§;
            _loc13_.maskBits = 65535 & ~§^!@§;
         }
         else if(this.§9E§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§9E§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §^!@§;
            _loc13_.maskBits = 65535 & ~§0!K§;
         }
         this.§'l§.SetFilterData(_loc13_);
         this.§7!F§ = this.§5!7§.§ r§();
         if(this.§5!7§.§0-§ > 0)
         {
            this.§7^§ = this.§0-§ = this.§5!7§.§0-§;
         }
         else
         {
            this.§7^§ = this.§0-§ = Math.round(this.§3s§(true) * this.§5!7§.§+@§());
            if(this.§7^§ < 1)
            {
               this.§7^§ = this.§0-§ = 1;
            }
         }
         if(this.§5!7§.§>!-§ == §!9§.§%#§)
         {
            this.§5+§.visible = false;
         }
         else
         {
            this.§^! §.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§6%§(param9);
         }
         this.§-!3§();
         this.§2[§(0,1);
         this.§^! §.§,"§(this.§5!7§.shape);
      }
      
      public static function §@_§(param1:int, param2:§=!2§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§,2§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§,!;§;
            }
            §9k§.§>Q§(_loc4_,param3);
         }
      }
      
      public static function §=!O§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §0o§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§5+§;
      }
      
      public function get x() : Number
      {
         return this.§,R§;
      }
      
      public function get y() : Number
      {
         return this.§=! §;
      }
      
      public function get scale() : Number
      {
         return this.§&;§;
      }
      
      public function get front() : Boolean
      {
         return this.§3f§;
      }
      
      public function get §1!A§() : Number
      {
         return this.§%Q§.GetPosition().x;
      }
      
      public function get §#2§() : Number
      {
         return this.§%Q§.GetPosition().y;
      }
      
      public function get §5k§() : §!9§
      {
         return this.§5!7§;
      }
      
      public function get §]!;§() : Boolean
      {
         return this.§7!F§ >= 0;
      }
      
      public function get container() : §0z§
      {
         return this.§2>§;
      }
      
      public function get §0=§() : Boolean
      {
         return this.§^o§;
      }
      
      public function set §0=§(param1:Boolean) : void
      {
         this.§^o§ = param1;
      }
      
      public function set §"o§(param1:Boolean) : void
      {
         this.§&!K§ = param1;
      }
      
      public function set §3L§(param1:uint) : void
      {
         this.§-g§.§3L§ = param1;
      }
      
      public function get §3L§() : uint
      {
         return this.§-g§.§3L§;
      }
      
      public function get §!4§() : Boolean
      {
         return this.§]Z§;
      }
      
      public function set §!4§(param1:Boolean) : void
      {
         this.§]Z§ = param1;
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
         return this.§1q§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§1q§ = param1;
      }
      
      public function §?l§(param1:b2FilterData) : void
      {
         if(this.§'l§)
         {
            this.§'l§.SetFilterData(param1);
         }
      }
      
      protected function §,_§(param1:String) : int
      {
         return §^A§.§,_§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§5!7§.§?M§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§7!J§)
         {
            this.§7!J§.DestroyBody(this.§?!M§());
            this.§7!J§ = null;
         }
         this.§^! §.dispose();
         if(this.§5+§)
         {
            this.§5+§.dispose();
            this.§5+§ = null;
         }
         this.§'l§ = null;
         this.§>c§ = null;
         this.§5!7§ = null;
      }
      
      public function §6%§(param1:Number) : void
      {
         this.§?!M§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §;R§() : Number
      {
         return (360 - this.§?!M§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §7L§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§?!M§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§<!,§();
         }
         if(param3)
         {
            this.§3l§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§'l§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§?!M§().GetPosition().x >= param3 && this.§?!M§().GetPosition().x <= param4 && this.§?!M§().GetPosition().y >= param1 && this.§?!M§().GetPosition().y <= param2;
      }
      
      public function §1u§(param1:b2Vec2) : void
      {
         this.§>c§ = param1;
      }
      
      public function §,!C§() : void
      {
         if(this.§>c§)
         {
            this.§7L§(this.§>c§,false);
            this.§>c§ = null;
         }
      }
      
      public function §<!,§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?!M§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§?!M§().SetAngularVelocity(0);
         }
         else
         {
            this.§?!M§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §3l§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§?!M§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§6%§(_loc2_);
      }
      
      public function §]l§(param1:Number) : void
      {
         this.§?!M§().SetAngularVelocity(param1);
      }
      
      public function §?!M§() : b2Body
      {
         if(this.§'l§ != null)
         {
            return this.§'l§.GetBody();
         }
         return null;
      }
      
      public function §]!?§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§,R§ = param1;
            this.§=! § = param2;
         }
         this.§?!M§().GetPosition().x = this.§,R§ * §4h§.§-9§;
         this.§?!M§().GetPosition().y = this.§=! § * §4h§.§-9§;
      }
      
      public function §2[§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§>C§)
         {
            _loc3_ = true;
            this.§>C§ = false;
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
            this.§^! §.§;c§();
         }
         if(this.§=!'§ > 1 && this.§^! §.§>a§)
         {
            _loc4_ = 4 + (this.§^! §.§>a§.blurX - 4 + param2 / 20) % 28;
            this.§^! §.§>a§.blurX = _loc4_;
            this.§^! §.§>a§.blurY = _loc4_;
         }
         this.§^! §.§;s§(param2);
         if(§"!4§)
         {
            this.§@0§(param1);
         }
         else
         {
            this.§%3§ = this.§=!L§;
            this.§,R§ = this.§;!'§;
            this.§=! § = this.§[!B§;
         }
         this.§5+§.x = Math.round(this.§,R§);
         this.§5+§.y = Math.round(this.§=! §);
         this.§5+§.rotation = this.§%3§ / 180 * Math.PI;
      }
      
      public function §-!3§() : void
      {
         var _loc1_:Number = this.§?!M§().GetPosition().x;
         var _loc2_:Number = this.§?!M§().GetPosition().y;
         this.§]6§ = this.§=!L§;
         this.§'F§ = this.§;!'§;
         this.§";§ = this.§[!B§;
         this.§=!L§ = this.§?!M§().GetAngle() * (180 / Math.PI) % 360;
         this.§;!'§ = _loc1_ / §4h§.§-9§;
         this.§[!B§ = _loc2_ / §4h§.§-9§;
         this.§-g§.§6>§();
         this.§-g§.§,n§(this.§?!M§());
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
      
      public function §@0§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §5s§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§2>§.§@k§.§ x§.§+!5§ * 1000;
         }
         param1 *= -1;
         if(this.§;!'§ == this.§'F§ || param1 == 0)
         {
            this.§#y§ = 0;
            this.§,R§ = this.§;!'§;
         }
         else
         {
            this.§#y§ = param1 * (this.§'F§ - this.§;!'§) / param2;
            this.§,R§ = this.§;!'§ + this.§#y§;
         }
         if(this.§[!B§ == this.§";§ || param1 == 0)
         {
            this.§,K§ = 0;
            this.§=! § = this.§[!B§;
         }
         else
         {
            this.§,K§ = param1 * (this.§";§ - this.§[!B§) / param2;
            this.§=! § = this.§[!B§ + this.§,K§;
         }
         if(this.§=!L§ == this.§]6§ || param1 == 0)
         {
            this.§%3§ = this.§=!L§;
         }
         else if(this.§]6§ > this.§=!L§ && this.§]6§ - this.§=!L§ <= 180)
         {
            this.§%3§ = this.§=!L§ + param1 * (this.§]6§ - this.§=!L§) / param2;
         }
         else if(this.§]6§ > this.§=!L§ && this.§]6§ - this.§=!L§ > 180)
         {
            this.§%3§ = this.§=!L§ + param1 * (this.§]6§ - 360 - this.§=!L§) / param2;
         }
         else if(this.§]6§ < this.§=!L§ && this.§=!L§ - this.§]6§ <= 180)
         {
            this.§%3§ = this.§=!L§ + param1 * (this.§]6§ - this.§=!L§) / param2;
         }
         else if(this.§]6§ < this.§=!L§ && this.§=!L§ - this.§]6§ > 180)
         {
            this.§%3§ = this.§=!L§ + param1 * (this.§]6§ + 360 - this.§=!L§) / param2;
         }
      }
      
      public function get §?%§() : Point
      {
         if(!§"!4§)
         {
         }
         return null;
      }
      
      public function §6!?§() : Boolean
      {
         return this.§>!-§ == §!9§.§'!7§ || this.§>!-§ == §!9§.§47§;
      }
      
      public function §0e§() : Boolean
      {
         return this.§>!-§ == §!9§.§2!A§;
      }
      
      public function §[-§() : Boolean
      {
         return this.§>!-§ == §!9§.§ 0§;
      }
      
      public function §[f§() : Boolean
      {
         return this.§>!-§ == §!9§.§47§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§>!-§ == §!9§.§&!3§;
      }
      
      public function isGround() : Boolean
      {
         return this.§>!-§ == §!9§.§%#§;
      }
      
      public function §-G§() : Boolean
      {
         return this.§>!-§ == §!9§.§!!%§;
      }
      
      public function §<z§() : Boolean
      {
         return this.§>!-§ == §!9§.§3!H§;
      }
      
      public function §[!<§() : Boolean
      {
         if(this.§9E§ == "MISC_EXPLOSIVE_TNT" || this.§9E§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §7u§() : Boolean
      {
         return (this.§0e§() || this.§-G§() || this.§<z§()) && !this.§!4§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §#Y§() : Number
      {
         return Number(Math.sqrt(this.§?!M§().GetLinearVelocity().x * this.§?!M§().GetLinearVelocity().x + this.§?!M§().GetLinearVelocity().y * this.§?!M§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§[-§())
         {
            return this.§7^§;
         }
         if(!this.§2>§.§,w§())
         {
            return this.§7^§;
         }
         if(this.§7!F§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§7f§(§=!2§.§7p§);
            }
            else if(param1 > 12)
            {
               this.§7f§(§=!2§.§#c§);
            }
            else if(param1 > 3)
            {
               this.§7f§(§=!2§.§-!@§);
            }
            return this.§7^§;
         }
         if(param1 <= this.§7!F§)
         {
            if(param1 >= this.§7!F§ / 2)
            {
               this.§7f§(§=!2§.§-!@§);
            }
            if(this.§6!?§() && this.§7^§ == this.§0-§)
            {
               this.§7^§ = this.§0-§ - 1;
            }
            return this.§7^§;
         }
         param1 -= this.§7!F§;
         if(param2 && this.§7u§())
         {
            _loc7_ = Math.min(this.§7^§,int(param1));
            _loc8_ = §4h§.§27§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §4h§.§%!!§;
            }
            this.§2>§.§@k§.addScore(_loc8_,§&L§.§68§,this.§7^§ > param1 && param3,this.§?!M§().GetPosition().x,this.§?!M§().GetPosition().y,§^A§.§]!<§(this.§9E§));
         }
         if(!(param5 && this.§&!K§))
         {
            this.§7^§ -= param1;
         }
         if(this.§7^§ < 1 && this.§6!?§())
         {
            this.§7^§ = 1;
         }
         if(this.§7^§ < 1)
         {
            this.§7^§ = 0;
            §2!3§.§@_§(§=!2§.§7p§,this.§5!7§.§3!O§,"ChannelDestroyed");
         }
         else
         {
            this.§7f§(§=!2§.§#c§);
            this.addDamageParticles(this.§2>§.§@k§.particles,param1);
         }
         this.§^! §.setDamagedFrame();
         return this.§7^§;
      }
      
      public function §7f§(param1:int) : void
      {
         §2!3§.§@_§(param1,this.§5!7§.§3!O§);
      }
      
      public function §'m§(param1:String) : Number
      {
         return this.§5!7§.material.§#H§(param1) * this.§=!'§;
      }
      
      public function §[!E§(param1:String) : Number
      {
         return this.§5!7§.material.§+!3§(param1);
      }
      
      public function §@!B§() : String
      {
         return this.§5!7§.material.mName;
      }
      
      public function §9d§() : Number
      {
         return this.§5!7§.§+@§();
      }
      
      public function §`!E§() : int
      {
         return this.§5!7§.§9!G§();
      }
      
      public function §'w§() : Boolean
      {
         return this.§?!M§().IsAwake() && (this.§6!?§() && this.§7^§ == this.§0-§ || Math.abs(this.§?!M§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?!M§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§?!M§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §88§() : Boolean
      {
         if(!this.§?!M§().IsAwake())
         {
            return true;
         }
         return !this.§=2§();
      }
      
      protected function §=2§() : Boolean
      {
         return this.§-g§.§=2§();
      }
      
      public function §+!A§(param1:Number = 3) : void
      {
         this.§=!'§ = param1;
         if(this.§=!'§ > 1)
         {
            this.§^! §.§!m§();
         }
         else
         {
            this.§^! §.§>a§ = null;
         }
      }
      
      public function §3s§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§5!7§.§?M§() == §[8§.§!F§)
         {
            _loc2_ = this.§^! §.mW * this.§^! §.mH * (§4h§.§-9§ * §4h§.§-9§);
         }
         else
         {
            _loc2_ = this.§?!M§().GetMass() / this.§'l§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§'0§();
            }
            _loc2_ /= this.§&;§ * this.§&;§;
         }
         return _loc2_;
      }
      
      public function §'0§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§^! §.§[#§ - 1) / 10);
      }
      
      public function §#e§(param1:Number) : void
      {
         var _loc2_:Number = this.§?!M§().GetLinearVelocity().x;
         var _loc3_:Number = this.§?!M§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§?!M§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§0z§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§@u§) : void
      {
      }
      
      public function addDamageParticles(param1:§@u§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §]!!§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§?!M§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§?!M§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§;R§()) + 360) % 360;
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
            this.§6%§(_loc4_);
         }
         var _loc3_:Number = this.§;R§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§6%§(_loc3_);
      }
      
      public function §,!&§(param1:Number) : void
      {
         var _loc2_:Number = §=!O§(this.§?!M§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §0o§(_loc2_);
         this.§?!M§().SetAngle(_loc2_);
      }
      
      public function §;m§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§?!M§().GetPosition().Copy();
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
         this.§?!M§().SetPosition(_loc13_);
      }
   }
}
