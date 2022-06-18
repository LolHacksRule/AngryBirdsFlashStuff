package §#!P§
{
   import §!!B§.b2Body;
   import §!!B§.b2BodyDef;
   import §!!B§.b2FilterData;
   import §!!B§.b2Fixture;
   import §!!B§.b2World;
   import §-!6§.§>I§;
   import §27§.§ M§;
   import §27§.§4+§;
   import §3E§.§6w§;
   import §3E§.§7!+§;
   import §5!G§.§31§;
   import §5p§.b2PolygonShape;
   import §7u§.Sprite;
   import §9!%§.§-D§;
   import §9!%§.§0!B§;
   import §9!%§.§<!L§;
   import §9!%§.§=A§;
   import §9!%§.§[!M§;
   import §;0§.b2Settings;
   import §;U§.b2Vec2;
   import flash.geom.Point;
   
   public class §2!W§
   {
      
      public static const § for§:uint = 1 << 1;
      
      public static const §+!T§:uint = 1 << 2;
      
      public static const §99§:uint = 1 << 3;
      
      public static const §1!5§:uint = 1 << 4;
      
      public static const §`!9§:Boolean = true;
      
      public static const §;>§:Number = 5;
      
      public static const §1!0§:Number = 10;
       
      
      private var §3C§:String;
      
      private var §;!M§:int;
      
      private var §1!-§:int;
      
      public var §<Y§:String;
      
      public var §"!+§:int;
      
      private var §?+§:§-D§;
      
      private var §3]§:§#A§;
      
      private var mWorld:b2World;
      
      protected var §-X§:String = "";
      
      protected var §#b§:int = 1;
      
      private var §%O§:b2Fixture;
      
      private var §-s§:b2Body;
      
      private var §]!O§:b2Vec2;
      
      public var §1!L§:Number;
      
      public var §!w§:Number;
      
      private var § _§:Number;
      
      private var §]!J§:Boolean = false;
      
      private var §8R§:Number;
      
      private var §4!B§:Number;
      
      private var §<!%§:Number;
      
      private var §2!H§:Number;
      
      private var §[A§:Number;
      
      private var §3!<§:Number;
      
      public var §-!]§:Number = 1;
      
      private var §0I§:Boolean = false;
      
      public var §[!?§:Number = 0;
      
      public var §"!2§:Number = 0;
      
      protected var §7!V§:Boolean = false;
      
      public var §<k§:§1!Y§;
      
      private var §3!F§:Sprite;
      
      private var §,G§:Number = 0;
      
      private var §-+§:Number = 0;
      
      private var §<n§:Number = 0;
      
      private var §#l§:Number = 1.0;
      
      private var §[!-§:Boolean = false;
      
      protected var §<!R§:§#!B§;
      
      private var §-!I§:Boolean = true;
      
      public function §2!W§(param1:§#A§, param2:Sprite, param3:b2World, param4:§6w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§<Y§ = param6;
         this.§?+§ = §<!L§.§]z§(param6);
         this.§3]§ = param1;
         this.§3!F§ = param2;
         this.§#l§ = param10;
         this.§[!-§ = param11;
         this.§;!M§ = param5;
         this.§"!+§ = this.§?+§.§"!+§;
         this.§1!-§ = this.§?+§.§=!#§();
         this.§<!R§ = new §#!B§(§;>§,§1!0§);
         this.§<k§ = new §1!Y§(this,param2,param4);
         if(!this.§<k§.§%!C§(param1.§]v§.§]q§))
         {
            this.§<k§.§?!9§(this.§1!-§,this.§?+§.§-1§(),this.§?+§.§6s§() / §6w§.§?!^§,this.§?+§.§"+§() / §6w§.§?!^§);
         }
         this.§<k§.§8!P§(this.§1!-§ == §0!B§.§3$§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§-s§ = this.mWorld.§;f§(_loc12_);
         this.§-s§.§+W§(this);
         if(this.§1!-§ == §0!B§.§04§)
         {
            _loc14_ = b2PolygonShape.§3y§(this.§?+§.shape.§5I§ * param10,this.§?+§.shape.§1Q§ * param10);
            this.§%O§ = this.§-s§.CreateFixture2(_loc14_,this.§?+§.§7E§());
         }
         else if(this.§1!-§ == §0!B§.§3$§ || this.§1!-§ == §0!B§.§?!>§)
         {
            this.§%O§ = this.§-s§.CreateFixture2(this.§?+§.shape.§@!7§(param10),this.§?+§.§7E§());
         }
         this.§%O§.§1?§(this.§?+§.§9!&§());
         this.§%O§.§<v§(this.§?+§.§,v§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§#Y§())
         {
            _loc13_.§7!X§ = § for§;
            _loc13_.§@!T§ = 65535 & ~§+!T§;
         }
         else if(this.§<Y§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§<Y§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§7!X§ = §+!T§;
            _loc13_.§@!T§ = 65535 & ~§ for§;
         }
         this.§%O§.§>x§(_loc13_);
         this.§ _§ = this.§?+§.§>h§();
         if(this.§?+§.§!w§ > 0)
         {
            this.§1!L§ = this.§!w§ = this.§?+§.§!w§;
         }
         else
         {
            this.§1!L§ = this.§!w§ = Math.round(this.§,w§(true) * this.§?+§.§ !H§());
            if(this.§1!L§ < 1)
            {
               this.§1!L§ = this.§!w§ = 1;
            }
         }
         if(this.§?+§.§"!+§ == §-D§.§"T§)
         {
            this.§3!F§.visible = false;
         }
         else
         {
            this.§<k§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§^8§(param9);
         }
         this.§#!#§();
         this.§ a§(0,1);
         this.§<k§.§6!?§(this.§?+§.shape);
      }
      
      public static function §5!<§(param1:int, param2:§=A§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§^!2§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§]H§;
            }
            §31§.§9!X§(_loc4_,param3);
         }
      }
      
      public static function §8M§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §<'§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§3!F§;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§-+§;
      }
      
      public function get scale() : Number
      {
         return this.§#l§;
      }
      
      public function get front() : Boolean
      {
         return this.§[!-§;
      }
      
      public function get §2!!§() : Number
      {
         return this.§-s§.GetPosition().x;
      }
      
      public function get §%`§() : Number
      {
         return this.§-s§.GetPosition().y;
      }
      
      public function get §<&§() : §-D§
      {
         return this.§?+§;
      }
      
      public function get §4!M§() : Boolean
      {
         return this.§ _§ >= 0;
      }
      
      public function get container() : §#A§
      {
         return this.§3]§;
      }
      
      public function get §-!#§() : Boolean
      {
         return this.§-!I§;
      }
      
      public function set §-!#§(param1:Boolean) : void
      {
         this.§-!I§ = param1;
      }
      
      public function set §&q§(param1:Boolean) : void
      {
         this.§]!J§ = param1;
      }
      
      public function set §4D§(param1:uint) : void
      {
         this.§<!R§.§4D§ = param1;
      }
      
      public function get §4D§() : uint
      {
         return this.§<!R§.§4D§;
      }
      
      public function get §3v§() : Boolean
      {
         return this.§0I§;
      }
      
      public function set §3v§(param1:Boolean) : void
      {
         this.§0I§ = param1;
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
         return this.§3C§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§3C§ = param1;
      }
      
      public function §1>§(param1:b2FilterData) : void
      {
         if(this.§%O§)
         {
            this.§%O§.§>x§(param1);
         }
      }
      
      protected function §#]§(param1:String) : int
      {
         return §4+§.§#]§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§?+§.§9<§();
         _loc3_.§ V§ = true;
         _loc3_.§'!M§ = true;
         _loc3_.§`!D§ = true;
         _loc3_.§`L§ = 1;
         _loc3_.§5&§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§%![§(this.§84§());
            this.mWorld = null;
         }
         this.§<k§.dispose();
         if(this.§3!F§)
         {
            this.§3!F§.dispose();
            this.§3!F§ = null;
         }
         this.§%O§ = null;
         this.§]!O§ = null;
         this.§?+§ = null;
      }
      
      public function §^8§(param1:Number) : void
      {
         this.§84§().§ !8§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §[!P§() : Number
      {
         return (360 - this.§84§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §''§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§84§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§4T§();
         }
         if(param3)
         {
            this.§-!5§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§%O§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§84§().GetPosition().x >= param3 && this.§84§().GetPosition().x <= param4 && this.§84§().GetPosition().y >= param1 && this.§84§().GetPosition().y <= param2;
      }
      
      public function §7v§(param1:b2Vec2) : void
      {
         this.§]!O§ = param1;
      }
      
      public function §%!H§() : void
      {
         if(this.§]!O§)
         {
            this.§''§(this.§]!O§,false);
            this.§]!O§ = null;
         }
      }
      
      public function §4T§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§84§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§84§().§=!H§(0);
         }
         else
         {
            this.§84§().§=!H§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §-!5§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§84§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§^8§(_loc2_);
      }
      
      public function §?!V§(param1:Number) : void
      {
         this.§84§().§=!H§(param1);
      }
      
      public function §84§() : b2Body
      {
         if(this.§%O§ != null)
         {
            return this.§%O§.GetBody();
         }
         return null;
      }
      
      public function §]l§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§,G§ = param1;
            this.§-+§ = param2;
         }
         this.§84§().GetPosition().x = this.§,G§ * §6w§.§?!^§;
         this.§84§().GetPosition().y = this.§-+§ * §6w§.§?!^§;
      }
      
      public function § a§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§7!V§)
         {
            _loc3_ = true;
            this.§7!V§ = false;
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
            this.§<k§.§-!D§();
         }
         if(this.§-!]§ > 1 && this.§<k§.§0z§)
         {
            _loc4_ = 4 + (this.§<k§.§0z§.blurX - 4 + param2 / 20) % 28;
            this.§<k§.§0z§.blurX = _loc4_;
            this.§<k§.§0z§.blurY = _loc4_;
         }
         this.§<k§.§8s§(param2);
         if(§`!9§)
         {
            this.§@y§(param1);
         }
         else
         {
            this.§<n§ = this.§<!%§;
            this.§,G§ = this.§8R§;
            this.§-+§ = this.§4!B§;
         }
         this.§3!F§.x = Math.round(this.§,G§);
         this.§3!F§.y = Math.round(this.§-+§);
         this.§3!F§.rotation = this.§<n§ / 180 * Math.PI;
      }
      
      public function §#!#§() : void
      {
         var _loc1_:Number = this.§84§().GetPosition().x;
         var _loc2_:Number = this.§84§().GetPosition().y;
         this.§3!<§ = this.§<!%§;
         this.§2!H§ = this.§8R§;
         this.§[A§ = this.§4!B§;
         this.§<!%§ = this.§84§().GetAngle() * (180 / Math.PI) % 360;
         this.§8R§ = _loc1_ / §6w§.§?!^§;
         this.§4!B§ = _loc2_ / §6w§.§?!^§;
         this.§<!R§.§3!I§();
         this.§<!R§.§2!=§(this.§84§());
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
      
      public function §@y§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §>I§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§3]§.§]v§.mLevelEngine.§!1§ * 1000;
         }
         param1 *= -1;
         if(this.§8R§ == this.§2!H§ || param1 == 0)
         {
            this.§[!?§ = 0;
            this.§,G§ = this.§8R§;
         }
         else
         {
            this.§[!?§ = param1 * (this.§2!H§ - this.§8R§) / param2;
            this.§,G§ = this.§8R§ + this.§[!?§;
         }
         if(this.§4!B§ == this.§[A§ || param1 == 0)
         {
            this.§"!2§ = 0;
            this.§-+§ = this.§4!B§;
         }
         else
         {
            this.§"!2§ = param1 * (this.§[A§ - this.§4!B§) / param2;
            this.§-+§ = this.§4!B§ + this.§"!2§;
         }
         if(this.§<!%§ == this.§3!<§ || param1 == 0)
         {
            this.§<n§ = this.§<!%§;
         }
         else if(this.§3!<§ > this.§<!%§ && this.§3!<§ - this.§<!%§ <= 180)
         {
            this.§<n§ = this.§<!%§ + param1 * (this.§3!<§ - this.§<!%§) / param2;
         }
         else if(this.§3!<§ > this.§<!%§ && this.§3!<§ - this.§<!%§ > 180)
         {
            this.§<n§ = this.§<!%§ + param1 * (this.§3!<§ - 360 - this.§<!%§) / param2;
         }
         else if(this.§3!<§ < this.§<!%§ && this.§<!%§ - this.§3!<§ <= 180)
         {
            this.§<n§ = this.§<!%§ + param1 * (this.§3!<§ - this.§<!%§) / param2;
         }
         else if(this.§3!<§ < this.§<!%§ && this.§<!%§ - this.§3!<§ > 180)
         {
            this.§<n§ = this.§<!%§ + param1 * (this.§3!<§ + 360 - this.§<!%§) / param2;
         }
      }
      
      public function get §'9§() : Point
      {
         if(!§`!9§)
         {
         }
         return null;
      }
      
      public function §#Y§() : Boolean
      {
         return this.§"!+§ == §-D§.§6!V§ || this.§"!+§ == §-D§.§8!&§;
      }
      
      public function §+!2§() : Boolean
      {
         return this.§"!+§ == §-D§.§1_§;
      }
      
      public function §,c§() : Boolean
      {
         return this.§"!+§ == §-D§.§-S§;
      }
      
      public function §6]§() : Boolean
      {
         return this.§"!+§ == §-D§.§8!&§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§"!+§ == §-D§.§;M§;
      }
      
      public function isGround() : Boolean
      {
         return this.§"!+§ == §-D§.§"T§;
      }
      
      public function native() : Boolean
      {
         return this.§"!+§ == §-D§.§#"§;
      }
      
      public function §package§() : Boolean
      {
         return this.§"!+§ == §-D§.§8y§;
      }
      
      public function §&u§() : Boolean
      {
         if(this.§<Y§ == "MISC_EXPLOSIVE_TNT" || this.§<Y§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §<=§() : Boolean
      {
         return (this.§+!2§() || this.native() || this.§package§()) && !this.§3v§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §>Y§() : Number
      {
         return Number(Math.sqrt(this.§84§().GetLinearVelocity().x * this.§84§().GetLinearVelocity().x + this.§84§().GetLinearVelocity().y * this.§84§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§,c§())
         {
            return this.§1!L§;
         }
         if(!this.§3]§.§3r§())
         {
            return this.§1!L§;
         }
         if(this.§ _§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§#`§(§=A§.§!k§);
            }
            else if(param1 > 12)
            {
               this.§#`§(§=A§.§]!T§);
            }
            else if(param1 > 3)
            {
               this.§#`§(§=A§.§>&§);
            }
            return this.§1!L§;
         }
         if(param1 <= this.§ _§)
         {
            if(param1 >= this.§ _§ / 2)
            {
               this.§#`§(§=A§.§>&§);
            }
            if(this.§#Y§() && this.§1!L§ == this.§!w§)
            {
               this.§1!L§ = this.§!w§ - 1;
            }
            return this.§1!L§;
         }
         param1 -= this.§ _§;
         if(param2 && this.§<=§())
         {
            _loc7_ = Math.min(this.§1!L§,int(param1));
            _loc8_ = §6w§.§5'§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §6w§.§%9§;
            }
            this.§3]§.§]v§.addScore(_loc8_,§7!+§.§!!C§,this.§1!L§ > param1 && param3,this.§84§().GetPosition().x,this.§84§().GetPosition().y,§4+§.§4B§(this.§<Y§));
         }
         if(!(param5 && this.§]!J§))
         {
            this.§1!L§ -= param1;
         }
         if(this.§1!L§ < 1 && this.§#Y§())
         {
            this.§1!L§ = 1;
         }
         if(this.§1!L§ < 1)
         {
            this.§1!L§ = 0;
            §2!W§.§5!<§(§=A§.§!k§,this.§?+§.§#-§,"ChannelDestroyed");
         }
         else
         {
            this.§#`§(§=A§.§]!T§);
            this.addDamageParticles(this.§3]§.§]v§.particles,param1);
         }
         this.§<k§.setDamagedFrame();
         return this.§1!L§;
      }
      
      public function §#`§(param1:int) : void
      {
         §2!W§.§5!<§(param1,this.§?+§.§#-§);
      }
      
      public function §'J§(param1:String) : Number
      {
         return this.§?+§.material.§ 3§(param1) * this.§-!]§;
      }
      
      public function §#!=§(param1:String) : Number
      {
         return this.§?+§.material.§"z§(param1);
      }
      
      public function § !-§() : String
      {
         return this.§?+§.material.mName;
      }
      
      public function §9!L§() : Number
      {
         return this.§?+§.§ !H§();
      }
      
      public function §=O§() : int
      {
         return this.§?+§.§]]§();
      }
      
      public function §,!9§() : Boolean
      {
         return this.§84§().IsAwake() && (this.§#Y§() && this.§1!L§ == this.§!w§ || Math.abs(this.§84§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§84§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§84§().§#=§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §@w§() : Boolean
      {
         if(!this.§84§().IsAwake())
         {
            return true;
         }
         return !this.§@G§();
      }
      
      protected function §@G§() : Boolean
      {
         return this.§<!R§.§@G§();
      }
      
      public function §"$§(param1:Number = 3) : void
      {
         this.§-!]§ = param1;
         if(this.§-!]§ > 1)
         {
            this.§<k§.§-^§();
         }
         else
         {
            this.§<k§.§0z§ = null;
         }
      }
      
      public function §,w§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§?+§.§9<§() == §[!M§.§4!!§)
         {
            _loc2_ = this.§<k§.mW * this.§<k§.mH * (§6w§.§?!^§ * §6w§.§?!^§);
         }
         else
         {
            _loc2_ = this.§84§().GetMass() / this.§%O§.§?!3§();
            if(param1)
            {
               _loc2_ *= this.§6Q§();
            }
            _loc2_ /= this.§#l§ * this.§#l§;
         }
         return _loc2_;
      }
      
      public function §6Q§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§<k§.§ ?§ - 1) / 10);
      }
      
      public function §3!-§(param1:Number) : void
      {
         var _loc2_:Number = this.§84§().GetLinearVelocity().x;
         var _loc3_:Number = this.§84§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§84§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§#A§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§ M§) : void
      {
      }
      
      public function addDamageParticles(param1:§ M§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §@!0§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§84§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§84§().§^§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§[!P§()) + 360) % 360;
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
            this.§^8§(_loc4_);
         }
         var _loc3_:Number = this.§[!P§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§^8§(_loc3_);
      }
      
      public function §4!H§(param1:Number) : void
      {
         var _loc2_:Number = §8M§(this.§84§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §<'§(_loc2_);
         this.§84§().§ !8§(_loc2_);
      }
      
      public function §^f§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§84§().GetPosition().Copy();
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
         this.§84§().§^§(_loc13_);
      }
   }
}
