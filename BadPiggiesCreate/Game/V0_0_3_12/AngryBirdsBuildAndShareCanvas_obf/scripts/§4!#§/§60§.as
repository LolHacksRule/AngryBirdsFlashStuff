package §4!#§
{
   import §!R§.§8u§;
   import §!R§.§>"=§;
   import §"p§.§@8§;
   import §#?§.§%!O§;
   import §#?§.§+"5§;
   import §#?§.§4">§;
   import §#?§.§8!§;
   import §#?§.§?![§;
   import §%B§.§^k§;
   import §&!M§.b2Body;
   import §&!M§.b2BodyDef;
   import §&!M§.b2FilterData;
   import §&!M§.b2Fixture;
   import §&!M§.b2World;
   import §,Y§.b2PolygonShape;
   import §3!t§.b2Vec2;
   import §6!`§.b2Settings;
   import §@!i§.Sprite;
   import §[B§.§ !j§;
   import §[B§.§"d§;
   import flash.geom.Point;
   
   public class §60§
   {
      
      public static const §[!R§:uint = 1 << 1;
      
      public static const §9!s§:uint = 1 << 2;
      
      public static const §4!2§:uint = 1 << 3;
      
      public static const §=z§:uint = 1 << 4;
      
      public static const §^=§:Boolean = true;
      
      public static const §=^§:Number = 5;
      
      public static const §#P§:Number = 10;
       
      
      private var §"!j§:String;
      
      private var §3"?§:int;
      
      private var §,A§:int;
      
      public var §%!t§:String;
      
      public var §#>§:int;
      
      protected var §4o§:§4">§;
      
      private var §;!f§:§[R§;
      
      private var §4!o§:b2World;
      
      protected var §^4§:String = "";
      
      protected var §^r§:int = 1;
      
      private var § each§:b2Fixture;
      
      private var §<!Y§:b2Body;
      
      private var §+r§:b2Vec2;
      
      public var §2E§:Number;
      
      public var §<e§:Number;
      
      private var §+!0§:Number;
      
      private var §<!g§:Boolean = false;
      
      private var §"!h§:Number;
      
      private var §'k§:Number;
      
      private var §1!m§:Number;
      
      private var §3!7§:Number;
      
      private var §=! §:Number;
      
      private var §5M§:Number;
      
      public var §!!;§:Number = 1;
      
      private var §;!?§:Boolean = false;
      
      public var §=7§:Number = 0;
      
      public var §<!X§:Number = 0;
      
      protected var §'L§:Boolean = false;
      
      public var §8!5§:§#0§;
      
      private var §+;§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §`f§:Number = 0;
      
      private var §2"§:Number = 1.0;
      
      private var §&p§:Boolean = false;
      
      protected var §2&§:§6`§;
      
      private var §-!]§:Boolean = true;
      
      public function §60§(param1:§[R§, param2:Sprite, param3:b2World, param4:§"d§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§%!t§ = param6;
         this.§4o§ = §%!O§.§2<§(param6);
         this.§;!f§ = param1;
         this.§+;§ = param2;
         this.§2"§ = param10;
         this.§&p§ = param11;
         this.§3"?§ = param5;
         this.§#>§ = this.§4o§.§#>§;
         this.§,A§ = this.§4o§.§,!A§();
         this.§2&§ = new §6`§(§=^§,§#P§);
         this.§8!5§ = new §#0§(this,param2,param4);
         if(!this.§8!5§.§=!^§(param1.§]!3§.§]9§))
         {
            this.§8!5§.§-x§(this.§,A§,this.§4o§.§6!?§(),this.§4o§.§&S§() / §"d§.§2!]§,this.§4o§.§3!h§() / §"d§.§2!]§);
         }
         this.§8!5§.§6!Y§(this.§,A§ == §+"5§.§%!I§);
         this.§4!o§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§<!Y§ = this.§4!o§.§function§(_loc12_);
         this.§<!Y§.§="-§(this);
         if(this.§,A§ == §+"5§.§?!]§)
         {
            _loc14_ = b2PolygonShape.§;!I§(this.§4o§.shape.§%w§ * param10,this.§4o§.shape.§-N§ * param10);
            this.§ each§ = this.§<!Y§.CreateFixture2(_loc14_,this.§4o§.§'"<§());
         }
         else if(this.§,A§ == §+"5§.§%!I§ || this.§,A§ == §+"5§.§<!^§)
         {
            this.§ each§ = this.§<!Y§.CreateFixture2(this.§4o§.shape.§3!H§(param10),this.§4o§.§'"<§());
         }
         this.§ each§.§+"%§(this.§4o§.§2"1§());
         this.§ each§.§4!;§(this.§4o§.§&M§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§&!d§())
         {
            _loc13_.§;]§ = §[!R§;
            _loc13_.§%!d§ = 65535 & ~§9!s§;
         }
         else if(this.§%!t§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§%!t§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§;]§ = §9!s§;
            _loc13_.§%!d§ = 65535 & ~§[!R§;
         }
         this.§ each§.§ !-§(_loc13_);
         this.§+!0§ = this.§4o§.§ ">§();
         if(this.§4o§.§<e§ > 0)
         {
            this.§2E§ = this.§<e§ = this.§4o§.§<e§;
         }
         else
         {
            this.§2E§ = this.§<e§ = Math.round(this.§ !l§(true) * this.§4o§.§2"&§());
            if(this.§2E§ < 1)
            {
               this.§2E§ = this.§<e§ = 1;
            }
         }
         if(this.§4o§.§#>§ == §4">§.§0"0§)
         {
            this.§+;§.visible = false;
         }
         else
         {
            this.§8!5§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§!!B§(param9);
         }
         this.§!W§();
         this.§^!4§(0,1);
         this.§8!5§.§>q§(this.§4o§.shape);
      }
      
      public static function §^!E§(param1:int, param2:§?![§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§["-§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§[r§;
            }
            §^k§.§<!I§(_loc4_,param3);
         }
      }
      
      public static function §5!j§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §`!r§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§+;§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get scale() : Number
      {
         return this.§2"§;
      }
      
      public function get front() : Boolean
      {
         return this.§&p§;
      }
      
      public function get §5=§() : Number
      {
         return this.§<!Y§.GetPosition().x;
      }
      
      public function get §6!M§() : Number
      {
         return this.§<!Y§.GetPosition().y;
      }
      
      public function get §=m§() : §4">§
      {
         return this.§4o§;
      }
      
      public function get §+3§() : Boolean
      {
         return this.§+!0§ >= 0;
      }
      
      public function get container() : §[R§
      {
         return this.§;!f§;
      }
      
      public function get §3M§() : Boolean
      {
         return this.§-!]§;
      }
      
      public function set §3M§(param1:Boolean) : void
      {
         this.§-!]§ = param1;
      }
      
      public function set §-!m§(param1:Boolean) : void
      {
         this.§<!g§ = param1;
      }
      
      public function set § Z§(param1:uint) : void
      {
         this.§2&§.§ Z§ = param1;
      }
      
      public function get § Z§() : uint
      {
         return this.§2&§.§ Z§;
      }
      
      public function get §@V§() : Boolean
      {
         return this.§;!?§;
      }
      
      public function set §@V§(param1:Boolean) : void
      {
         this.§;!?§ = param1;
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
         return this.§"!j§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§"!j§ = param1;
      }
      
      public function §1!u§(param1:b2FilterData) : void
      {
         if(this.§ each§)
         {
            this.§ each§.§ !-§(param1);
         }
      }
      
      protected function §^p§(param1:String) : int
      {
         return §8u§.§^p§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§4o§.§=0§();
         _loc3_.§3!f§ = true;
         _loc3_.§,!R§ = true;
         _loc3_.§;d§ = true;
         _loc3_.§@c§ = 1;
         _loc3_.§2"#§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§4!o§)
         {
            this.§4!o§.§5!o§(this.getBody());
            this.§4!o§ = null;
         }
         this.§8!5§.dispose();
         if(this.§+;§)
         {
            this.§+;§.dispose();
            this.§+;§ = null;
         }
         this.§ each§ = null;
         this.§+r§ = null;
         this.§4o§ = null;
      }
      
      public function §!!B§(param1:Number) : void
      {
         this.getBody().§["5§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §1o§() : Number
      {
         return (360 - this.getBody().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §'!s§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.getBody().SetLinearVelocity(param1);
         if(param2)
         {
            this.§8!v§();
         }
         if(param3)
         {
            this.§@Q§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§ each§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function §4x§(param1:b2Vec2) : void
      {
         this.§+r§ = param1;
      }
      
      public function §]!B§() : void
      {
         if(this.§+r§)
         {
            this.§'!s§(this.§+r§,false);
            this.§+r§ = null;
         }
      }
      
      public function §8!v§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.getBody().§7"5§(0);
         }
         else
         {
            this.getBody().§7"5§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §@Q§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.getBody().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§!!B§(_loc2_);
      }
      
      public function § "%§(param1:Number) : void
      {
         this.getBody().§7"5§(param1);
      }
      
      public function getBody() : b2Body
      {
         if(this.§ each§ != null)
         {
            return this.§ each§.GetBody();
         }
         return null;
      }
      
      public function § "4§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.getBody().GetPosition().x = this.mX * §"d§.§2!]§;
         this.getBody().GetPosition().y = this.mY * §"d§.§2!]§;
      }
      
      public function §^!4§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§'L§)
         {
            _loc3_ = true;
            this.§'L§ = false;
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
            this.§8!5§.§5!r§();
         }
         if(this.§!!;§ > 1 && this.§8!5§.§7]§)
         {
            _loc4_ = 4 + (this.§8!5§.§7]§.blurX - 4 + param2 / 20) % 28;
            this.§8!5§.§7]§.blurX = _loc4_;
            this.§8!5§.§7]§.blurY = _loc4_;
         }
         this.§8!5§.§#h§(param2);
         if(§^=§)
         {
            this.§0]§(param1);
         }
         else
         {
            this.§`f§ = this.§1!m§;
            this.mX = this.§"!h§;
            this.mY = this.§'k§;
         }
         this.§+;§.x = Math.round(this.mX);
         this.§+;§.y = Math.round(this.mY);
         this.§+;§.rotation = this.§`f§ / 180 * Math.PI;
      }
      
      public function §!W§() : void
      {
         var _loc1_:Number = this.getBody().GetPosition().x;
         var _loc2_:Number = this.getBody().GetPosition().y;
         this.§5M§ = this.§1!m§;
         this.§3!7§ = this.§"!h§;
         this.§=! § = this.§'k§;
         this.§1!m§ = this.getBody().GetAngle() * (180 / Math.PI) % 360;
         this.§"!h§ = _loc1_ / §"d§.§2!]§;
         this.§'k§ = _loc2_ / §"d§.§2!]§;
         this.§2&§.§in §();
         this.§2&§.§3"+§(this.getBody());
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
      
      public function §0]§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §@8§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§;!f§.§]!3§.§5L§.§super§ * 1000;
         }
         param1 *= -1;
         if(this.§"!h§ == this.§3!7§ || param1 == 0)
         {
            this.§=7§ = 0;
            this.mX = this.§"!h§;
         }
         else
         {
            this.§=7§ = param1 * (this.§3!7§ - this.§"!h§) / param2;
            this.mX = this.§"!h§ + this.§=7§;
         }
         if(this.§'k§ == this.§=! § || param1 == 0)
         {
            this.§<!X§ = 0;
            this.mY = this.§'k§;
         }
         else
         {
            this.§<!X§ = param1 * (this.§=! § - this.§'k§) / param2;
            this.mY = this.§'k§ + this.§<!X§;
         }
         if(this.§1!m§ == this.§5M§ || param1 == 0)
         {
            this.§`f§ = this.§1!m§;
         }
         else if(this.§5M§ > this.§1!m§ && this.§5M§ - this.§1!m§ <= 180)
         {
            this.§`f§ = this.§1!m§ + param1 * (this.§5M§ - this.§1!m§) / param2;
         }
         else if(this.§5M§ > this.§1!m§ && this.§5M§ - this.§1!m§ > 180)
         {
            this.§`f§ = this.§1!m§ + param1 * (this.§5M§ - 360 - this.§1!m§) / param2;
         }
         else if(this.§5M§ < this.§1!m§ && this.§1!m§ - this.§5M§ <= 180)
         {
            this.§`f§ = this.§1!m§ + param1 * (this.§5M§ - this.§1!m§) / param2;
         }
         else if(this.§5M§ < this.§1!m§ && this.§1!m§ - this.§5M§ > 180)
         {
            this.§`f§ = this.§1!m§ + param1 * (this.§5M§ + 360 - this.§1!m§) / param2;
         }
      }
      
      public function get §1Z§() : Point
      {
         if(!§^=§)
         {
         }
         return null;
      }
      
      public function §&!d§() : Boolean
      {
         return this.§#>§ == §4">§.§<!c§ || this.§#>§ == §4">§.§@f§;
      }
      
      public function §&d§() : Boolean
      {
         return this.§#>§ == §4">§.§;!z§;
      }
      
      public function §!"5§() : Boolean
      {
         return this.§#>§ == §4">§.§"! §;
      }
      
      public function §^!m§() : Boolean
      {
         return this.§#>§ == §4">§.§@f§;
      }
      
      public function §>"'§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§#>§ == §4">§.§2'§;
      }
      
      public function isGround() : Boolean
      {
         return this.§#>§ == §4">§.§0"0§;
      }
      
      public function §2!A§() : Boolean
      {
         return this.§#>§ == §4">§.§5>§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§#>§ == §4">§.§@!X§;
      }
      
      public function §11§() : Boolean
      {
         if(this.§%!t§ == "MISC_EXPLOSIVE_TNT" || this.§%!t§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §>!m§() : Boolean
      {
         return (this.§&d§() || this.§2!A§() || this.isMiscBlock()) && !this.§@V§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §+!M§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§!"5§())
         {
            return this.§2E§;
         }
         if(!this.§;!f§.§6"4§())
         {
            return this.§2E§;
         }
         if(this.§+!0§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§6B§(§?![§.§[!+§);
            }
            else if(param1 > 12)
            {
               this.§6B§(§?![§.§-"§);
            }
            else if(param1 > 3)
            {
               this.§6B§(§?![§.§%G§);
            }
            return this.§2E§;
         }
         if(param1 <= this.§+!0§)
         {
            if(param1 >= this.§+!0§ / 2)
            {
               this.§6B§(§?![§.§%G§);
            }
            if(this.§&!d§() && this.§2E§ == this.§<e§)
            {
               this.§2E§ = this.§<e§ - 1;
            }
            return this.§2E§;
         }
         param1 -= this.§+!0§;
         if(param2 && this.§>!m§())
         {
            _loc7_ = Math.min(this.§2E§,int(param1));
            _loc8_ = §"d§.§]7§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §"d§.§1!!§;
            }
            this.§;!f§.§]!3§.addScore(_loc8_,§ !j§.§<!!§,this.§2E§ > param1 && param3,this.getBody().GetPosition().x,this.getBody().GetPosition().y,§8u§.§+1§(this.§%!t§));
         }
         if(!(param5 && this.§<!g§))
         {
            this.§2E§ -= param1;
         }
         if(this.§2E§ < 1 && this.§&!d§())
         {
            this.§2E§ = 1;
         }
         if(this.§2E§ < 1)
         {
            this.§2E§ = 0;
            §60§.§^!E§(§?![§.§[!+§,this.§4o§.§`_§,"ChannelDestroyed");
         }
         else
         {
            this.§6B§(§?![§.§-"§);
            this.addDamageParticles(this.§;!f§.§]!3§.particles,param1);
         }
         this.§8!5§.setDamagedFrame();
         return this.§2E§;
      }
      
      public function §6B§(param1:int) : void
      {
         §60§.§^!E§(param1,this.§4o§.§`_§);
      }
      
      public function §@!M§(param1:String) : Number
      {
         return this.§4o§.material.§`!B§(param1) * this.§!!;§;
      }
      
      public function §]L§(param1:String) : Number
      {
         return this.§4o§.material.§[6§(param1);
      }
      
      public function §`"9§() : String
      {
         return this.§4o§.material.mName;
      }
      
      public function §;!p§() : Number
      {
         return this.§4o§.§2"&§();
      }
      
      public function §9N§() : int
      {
         return this.§4o§.§5H§();
      }
      
      public function §'!C§() : Boolean
      {
         return this.getBody().IsAwake() && (this.§&!d§() && this.§2E§ == this.§<e§ || Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.getBody().§1!'§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §5l§() : Boolean
      {
         if(!this.getBody().IsAwake())
         {
            return true;
         }
         return !this.§[y§();
      }
      
      protected function §[y§() : Boolean
      {
         return this.§2&§.§[y§();
      }
      
      public function §<<§(param1:Number = 3) : void
      {
         this.§!!;§ = param1;
         if(this.§!!;§ > 1)
         {
            this.§8!5§.§@#§();
         }
         else
         {
            this.§8!5§.§7]§ = null;
         }
      }
      
      public function § !l§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§4o§.§=0§() == §8!§.§9!$§)
         {
            _loc2_ = this.§8!5§.mW * this.§8!5§.mH * (§"d§.§2!]§ * §"d§.§2!]§);
         }
         else
         {
            _loc2_ = this.getBody().GetMass() / this.§ each§.§%!N§();
            if(param1)
            {
               _loc2_ *= this.§@!f§();
            }
            _loc2_ /= this.§2"§ * this.§2"§;
         }
         return _loc2_;
      }
      
      public function §@!f§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§8!5§.§&"<§ - 1) / 10);
      }
      
      public function §+w§(param1:Number) : void
      {
         var _loc2_:Number = this.getBody().GetLinearVelocity().x;
         var _loc3_:Number = this.getBody().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§[R§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§>"=§) : void
      {
      }
      
      public function addDamageParticles(param1:§>"=§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §+!#§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.getBody().§8!A§(_loc4_);
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
            this.§!!B§(_loc4_);
         }
         var _loc3_:Number = this.§1o§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§!!B§(_loc3_);
      }
      
      public function §1! §(param1:Number) : void
      {
         var _loc2_:Number = §5!j§(this.getBody().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §`!r§(_loc2_);
         this.getBody().§["5§(_loc2_);
      }
      
      public function §?<§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.getBody().GetPosition().Copy();
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
         this.getBody().§8!A§(_loc13_);
      }
   }
}
