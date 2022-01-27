package §`!X§
{
   import §%!$§.§[Z§;
   import §+!b§.b2PolygonShape;
   import §4x§.b2Settings;
   import §7h§.§7!"§;
   import §8!I§.b2Body;
   import §8!I§.b2BodyDef;
   import §8!I§.b2FilterData;
   import §8!I§.b2Fixture;
   import §8!I§.b2World;
   import §<!-§.Sprite;
   import §=i§.b2Vec2;
   import §>!Z§.§+!Z§;
   import §>!Z§.§`!S§;
   import §^!7§.§+!S§;
   import §^!7§.§^A§;
   import §`Y§.§#!#§;
   import §`Y§.§3!M§;
   import §`Y§.§[!'§;
   import §`Y§.§]!%§;
   import §`Y§.§^@§;
   import flash.geom.Point;
   
   public class §5&§
   {
      
      public static const §9X§:uint = 1 << 1;
      
      public static const §&!W§:uint = 1 << 2;
      
      public static const §`!a§:uint = 1 << 3;
      
      public static const §,!N§:uint = 1 << 4;
      
      public static const §1N§:Boolean = true;
       
      
      private var §#!<§:String;
      
      private var §,§:int;
      
      private var §3!6§:int;
      
      public var §7=§:String;
      
      public var §3!P§:int;
      
      private var §8d§:§#!#§;
      
      private var §+!@§:§@!^§;
      
      private var mWorld:b2World;
      
      protected var §05§:String = "";
      
      protected var §0!@§:int = 1;
      
      private var §%j§:b2Fixture;
      
      private var §%!N§:b2Body;
      
      private var §[9§:b2Vec2;
      
      public var §^o§:Number;
      
      public var §'!M§:Number;
      
      private var §4`§:Number;
      
      private var §]!L§:Boolean = false;
      
      private var §7E§:Number;
      
      private var §-!U§:Number;
      
      private var §,!!§:Number;
      
      private var §[r§:Number;
      
      private var §8!H§:Number;
      
      private var §1`§:Number;
      
      public var §'!#§:Number = 1;
      
      private var §;_§:Boolean = false;
      
      public var §-!B§:Number = 0;
      
      public var §`!c§:Number = 0;
      
      protected var §<>§:Boolean = false;
      
      public var §?W§:§>r§;
      
      private var §0b§:Sprite;
      
      private var §-!c§:Number = 0;
      
      private var §3![§:Number = 0;
      
      private var §9!#§:Number = 0;
      
      private var §0!^§:Number = 1.0;
      
      private var §-j§:Boolean = false;
      
      private var §+!W§:Vector.<Vector.<Number>>;
      
      private var §;t§:int = 10;
      
      private var §6!9§:Boolean = true;
      
      public function §5&§(param1:§@!^§, param2:Sprite, param3:b2World, param4:§^A§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§+!W§ = new Vector.<Vector.<Number>>();
         super();
         this.§7=§ = param6;
         this.§8d§ = §]!%§.§=!>§(param6);
         this.§+!@§ = param1;
         this.§0b§ = param2;
         this.§0!^§ = param10;
         this.§-j§ = param11;
         this.§,§ = param5;
         this.§3!P§ = this.§8d§.§3!P§;
         this.§3!6§ = this.§8d§.§#_§();
         this.§+!W§[0] = new Vector.<Number>();
         this.§+!W§[1] = new Vector.<Number>();
         this.§+!W§[2] = new Vector.<Number>();
         this.§?W§ = new §>r§(this,param2,param4);
         if(!this.§?W§.§6n§(param1.§<&§.§7p§))
         {
            this.§?W§.§3j§(this.§3!6§,this.§8d§.§&a§(),this.§8d§.§;q§() / §^A§.§<U§,this.§8d§.§<!a§() / §^A§.§<U§);
         }
         this.§?W§.§7L§(this.§3!6§ == §[!'§.§@![§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§%!N§ = this.mWorld.§?]§(_loc12_);
         this.§%!N§.§!X§(this);
         if(this.§3!6§ == §[!'§.§%!&§)
         {
            _loc14_ = b2PolygonShape.§9g§(this.§8d§.shape.§]2§ * param10,this.§8d§.shape.§?R§ * param10);
            this.§%j§ = this.§%!N§.CreateFixture2(_loc14_,this.§8d§.§%!A§());
         }
         else if(this.§3!6§ == §[!'§.§@![§ || this.§3!6§ == §[!'§.§>1§)
         {
            this.§%j§ = this.§%!N§.CreateFixture2(this.§8d§.shape.§`=§(param10),this.§8d§.§%!A§());
         }
         this.§%j§.§]! §(this.§8d§.§"L§());
         this.§%j§.§>!D§(this.§8d§.§0!Q§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§4V§())
         {
            _loc13_.§"t§ = §9X§;
            _loc13_.§,L§ = 65535 & ~§&!W§;
         }
         else if(this.§7=§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§7=§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§"t§ = §&!W§;
            _loc13_.§,L§ = 65535 & ~§9X§;
         }
         this.§%j§.§`2§(_loc13_);
         this.§4`§ = this.§8d§.§'>§();
         if(this.§8d§.§'!M§ > 0)
         {
            this.§^o§ = this.§'!M§ = this.§8d§.§'!M§;
         }
         else
         {
            this.§^o§ = this.§'!M§ = Math.round(this.§[N§(true) * this.§8d§.§@!,§());
            if(this.§^o§ < 1)
            {
               this.§^o§ = this.§'!M§ = 1;
            }
         }
         if(this.§8d§.§3!P§ == §#!#§.§5!_§)
         {
            this.§0b§.visible = false;
         }
         else
         {
            this.§?W§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§10§(param9);
         }
         this.§'"§();
         this.§,!]§(0,1);
         this.§?W§.§9f§(this.§8d§.shape);
      }
      
      public static function §7!D§(param1:int, param2:§3!M§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§=!"§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§@o§;
            }
            §7!"§.§!!R§(_loc4_,param3);
         }
      }
      
      public static function §!!S§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §4!0§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§0b§;
      }
      
      public function get x() : Number
      {
         return this.§-!c§;
      }
      
      public function get y() : Number
      {
         return this.§3![§;
      }
      
      public function get scale() : Number
      {
         return this.§0!^§;
      }
      
      public function get front() : Boolean
      {
         return this.§-j§;
      }
      
      public function get §[!@§() : Number
      {
         return this.§%!N§.GetPosition().x;
      }
      
      public function get §<!$§() : Number
      {
         return this.§%!N§.GetPosition().y;
      }
      
      public function get §#![§() : §#!#§
      {
         return this.§8d§;
      }
      
      public function get §"%§() : Boolean
      {
         return this.§4`§ >= 0;
      }
      
      protected function get container() : §@!^§
      {
         return this.§+!@§;
      }
      
      public function get §=!-§() : Boolean
      {
         return this.§6!9§;
      }
      
      public function set §=!-§(param1:Boolean) : void
      {
         this.§6!9§ = param1;
      }
      
      public function set §7!Z§(param1:Boolean) : void
      {
         this.§]!L§ = param1;
      }
      
      public function set §7!9§(param1:uint) : void
      {
         this.§;t§ = param1;
      }
      
      public function get §7!9§() : uint
      {
         return this.§;t§;
      }
      
      public function get §`!!§() : Boolean
      {
         return this.§;_§;
      }
      
      public function set §`!!§(param1:Boolean) : void
      {
         this.§;_§ = param1;
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
         return this.§#!<§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§#!<§ = param1;
      }
      
      public function §%k§(param1:b2FilterData) : void
      {
         if(this.§%j§)
         {
            this.§%j§.§`2§(param1);
         }
      }
      
      protected function §function§(param1:String) : int
      {
         return §+!Z§.§function§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§8d§.§^!0§();
         _loc3_.§'!A§ = true;
         _loc3_.§if § = true;
         _loc3_.§%!4§ = true;
         _loc3_.§;d§ = 1;
         _loc3_.§,Z§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§"E§(this.§1!E§());
            this.mWorld = null;
         }
         this.§?W§.dispose();
         if(this.§0b§)
         {
            this.§0b§.dispose();
            this.§0b§ = null;
         }
         this.§%j§ = null;
         this.§[9§ = null;
         this.§8d§ = null;
      }
      
      public function §10§(param1:Number) : void
      {
         this.§1!E§().§5T§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §4!2§() : Number
      {
         return (360 - this.§1!E§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §]F§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§1!E§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§-Y§();
         }
         if(param3)
         {
            this.§&!>§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§%j§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§1!E§().GetPosition().x >= param3 && this.§1!E§().GetPosition().x <= param4 && this.§1!E§().GetPosition().y >= param1 && this.§1!E§().GetPosition().y <= param2;
      }
      
      public function §%!'§(param1:b2Vec2) : void
      {
         this.§[9§ = param1;
      }
      
      public function §`F§() : void
      {
         if(this.§[9§)
         {
            this.§]F§(this.§[9§,false);
            this.§[9§ = null;
         }
      }
      
      public function §-Y§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§1!E§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§1!E§().§?!7§(0);
         }
         else
         {
            this.§1!E§().§?!7§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §&!>§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§1!E§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§10§(_loc2_);
      }
      
      public function §9o§(param1:Number) : void
      {
         this.§1!E§().§?!7§(param1);
      }
      
      public function §1!E§() : b2Body
      {
         if(this.§%j§ != null)
         {
            return this.§%j§.GetBody();
         }
         return null;
      }
      
      public function §8[§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§-!c§ = param1;
            this.§3![§ = param2;
         }
         this.§1!E§().GetPosition().x = this.§-!c§ * §^A§.§<U§;
         this.§1!E§().GetPosition().y = this.§3![§ * §^A§.§<U§;
      }
      
      public function §,!]§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§<>§)
         {
            _loc3_ = true;
            this.§<>§ = false;
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
            this.§?W§.§]O§();
         }
         if(this.§'!#§ > 1 && this.§?W§.§57§)
         {
            _loc4_ = 4 + (this.§?W§.§57§.blurX - 4 + param2 / 20) % 28;
            this.§?W§.§57§.blurX = _loc4_;
            this.§?W§.§57§.blurY = _loc4_;
         }
         this.§?W§.§7!H§(param2);
         if(§1N§)
         {
            this.§[!0§(param1);
         }
         else
         {
            this.§9!#§ = this.§,!!§;
            this.§-!c§ = this.§7E§;
            this.§3![§ = this.§-!U§;
         }
         this.§0b§.x = Math.round(this.§-!c§);
         this.§0b§.y = Math.round(this.§3![§);
         this.§0b§.rotation = this.§9!#§ / 180 * Math.PI;
      }
      
      public function §'"§() : void
      {
         var _loc1_:Number = this.§1!E§().GetPosition().x;
         var _loc2_:Number = this.§1!E§().GetPosition().y;
         this.§1`§ = this.§,!!§;
         this.§[r§ = this.§7E§;
         this.§8!H§ = this.§-!U§;
         this.§,!!§ = this.§1!E§().GetAngle() * (180 / Math.PI) % 360;
         this.§7E§ = _loc1_ / §^A§.§<U§;
         this.§-!U§ = _loc2_ / §^A§.§<U§;
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
      
      public function §[!0§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §[Z§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§+!@§.§<&§.mLevelEngine.§ ?§ * 1000;
         }
         param1 *= -1;
         if(this.§7E§ == this.§[r§ || param1 == 0)
         {
            this.§-!B§ = 0;
            this.§-!c§ = this.§7E§;
         }
         else
         {
            this.§-!B§ = param1 * (this.§[r§ - this.§7E§) / param2;
            this.§-!c§ = this.§7E§ + this.§-!B§;
         }
         if(this.§-!U§ == this.§8!H§ || param1 == 0)
         {
            this.§`!c§ = 0;
            this.§3![§ = this.§-!U§;
         }
         else
         {
            this.§`!c§ = param1 * (this.§8!H§ - this.§-!U§) / param2;
            this.§3![§ = this.§-!U§ + this.§`!c§;
         }
         if(this.§,!!§ == this.§1`§ || param1 == 0)
         {
            this.§9!#§ = this.§,!!§;
         }
         else if(this.§1`§ > this.§,!!§ && this.§1`§ - this.§,!!§ <= 180)
         {
            this.§9!#§ = this.§,!!§ + param1 * (this.§1`§ - this.§,!!§) / param2;
         }
         else if(this.§1`§ > this.§,!!§ && this.§1`§ - this.§,!!§ > 180)
         {
            this.§9!#§ = this.§,!!§ + param1 * (this.§1`§ - 360 - this.§,!!§) / param2;
         }
         else if(this.§1`§ < this.§,!!§ && this.§,!!§ - this.§1`§ <= 180)
         {
            this.§9!#§ = this.§,!!§ + param1 * (this.§1`§ - this.§,!!§) / param2;
         }
         else if(this.§1`§ < this.§,!!§ && this.§,!!§ - this.§1`§ > 180)
         {
            this.§9!#§ = this.§,!!§ + param1 * (this.§1`§ + 360 - this.§,!!§) / param2;
         }
      }
      
      public function get §[&§() : Point
      {
         if(!§1N§)
         {
         }
         return null;
      }
      
      public function §4V§() : Boolean
      {
         return this.§3!P§ == §#!#§.§<0§ || this.§3!P§ == §#!#§.§="§;
      }
      
      public function §0!C§() : Boolean
      {
         return this.§3!P§ == §#!#§.§;!1§;
      }
      
      public function §8P§() : Boolean
      {
         return this.§3!P§ == §#!#§.§-! §;
      }
      
      public function §2!U§() : Boolean
      {
         return this.§3!P§ == §#!#§.§="§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§3!P§ == §#!#§.§;!-§;
      }
      
      public function isGround() : Boolean
      {
         return this.§3!P§ == §#!#§.§5!_§;
      }
      
      public function §%!U§() : Boolean
      {
         return this.§3!P§ == §#!#§.§ >§;
      }
      
      public function §`!Q§() : Boolean
      {
         return this.§3!P§ == §#!#§.§0!+§;
      }
      
      public function §2v§() : Boolean
      {
         if(this.§7=§ == "MISC_EXPLOSIVE_TNT" || this.§7=§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §case§() : Boolean
      {
         return (this.§0!C§() || this.§%!U§() || this.§`!Q§()) && !this.§`!!§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §^!6§() : Number
      {
         return Number(Math.sqrt(this.§1!E§().GetLinearVelocity().x * this.§1!E§().GetLinearVelocity().x + this.§1!E§().GetLinearVelocity().y * this.§1!E§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§8P§())
         {
            return this.§^o§;
         }
         if(!this.§+!@§.§>!N§())
         {
            return this.§^o§;
         }
         if(this.§4`§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§`u§(§3!M§.§0v§);
            }
            else if(param1 > 12)
            {
               this.§`u§(§3!M§.§?9§);
            }
            else if(param1 > 3)
            {
               this.§`u§(§3!M§.§throw§);
            }
            return this.§^o§;
         }
         if(param1 <= this.§4`§)
         {
            if(param1 >= this.§4`§ / 2)
            {
               this.§`u§(§3!M§.§throw§);
            }
            if(this.§4V§() && this.§^o§ == this.§'!M§)
            {
               this.§^o§ = this.§'!M§ - 1;
            }
            return this.§^o§;
         }
         param1 -= this.§4`§;
         if(param2 && this.§case§())
         {
            _loc7_ = Math.min(this.§^o§,int(param1));
            _loc8_ = §^A§.§%H§.getValue() * _loc7_;
            this.§+!@§.§<&§.addScore(_loc8_,§+!S§.§71§,this.§^o§ > param1 && param3,this.§1!E§().GetPosition().x,this.§1!E§().GetPosition().y,§+!Z§.§"6§(this.§7=§));
         }
         if(!(param5 && this.§]!L§))
         {
            this.§^o§ -= param1;
         }
         if(this.§^o§ < 1 && this.§4V§())
         {
            this.§^o§ = 1;
         }
         if(this.§^o§ < 1)
         {
            this.§^o§ = 0;
            §5&§.§7!D§(§3!M§.§0v§,this.§8d§.§6;§,"ChannelDestroyed");
         }
         else
         {
            this.§`u§(§3!M§.§?9§);
            this.addDamageParticles(this.§+!@§.§<&§.particles,param1);
         }
         this.§?W§.setDamagedFrame();
         return this.§^o§;
      }
      
      public function §`u§(param1:int) : void
      {
         §5&§.§7!D§(param1,this.§8d§.§6;§);
      }
      
      public function §-3§(param1:String) : Number
      {
         return this.§8d§.material.§#!M§(param1) * this.§'!#§;
      }
      
      public function §2!C§(param1:String) : Number
      {
         return this.§8d§.material.§?!S§(param1);
      }
      
      public function §+!6§() : String
      {
         return this.§8d§.material.mName;
      }
      
      public function §!;§() : Number
      {
         return this.§8d§.§@!,§();
      }
      
      public function §@R§() : int
      {
         return this.§8d§.§9a§();
      }
      
      public function §;X§() : Boolean
      {
         return this.§1!E§().IsAwake() && (this.§4V§() && this.§^o§ == this.§'!M§ || Math.abs(this.§1!E§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§1!E§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§1!E§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §9!E§() : Boolean
      {
         if(!this.§1!E§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§3$§();
         if(Math.abs(this.§0r§(this.§+!W§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§0r§(this.§+!W§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§0r§(this.§+!W§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §0r§(param1:Vector.<Number>) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ += param1[_loc3_];
            _loc3_++;
         }
         return _loc2_ / param1.length;
      }
      
      private function §3$§() : void
      {
         this.§+!W§[0].push(this.§1!E§().GetLinearVelocity().x);
         this.§+!W§[1].push(this.§1!E§().GetLinearVelocity().y);
         this.§+!W§[2].push(this.§1!E§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§+!W§[_loc1_].length > this.§;t§)
            {
               this.§+!W§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §+!Q§(param1:Number = 3) : void
      {
         this.§'!#§ = param1;
         if(this.§'!#§ > 1)
         {
            this.§?W§.§#!4§();
         }
         else
         {
            this.§?W§.§57§ = null;
         }
      }
      
      public function §[N§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§8d§.§^!0§() == §^@§.§!!3§)
         {
            _loc2_ = this.§?W§.mW * this.§?W§.mH * (§^A§.§<U§ * §^A§.§<U§);
         }
         else
         {
            _loc2_ = this.§1!E§().GetMass() / this.§%j§.§>!E§();
            if(param1)
            {
               _loc2_ *= this.§1!@§();
            }
            _loc2_ /= this.§0!^§ * this.§0!^§;
         }
         return _loc2_;
      }
      
      public function §1!@§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§?W§.§0!A§ - 1) / 10);
      }
      
      public function §#^§(param1:Number) : void
      {
         var _loc2_:Number = this.§1!E§().GetLinearVelocity().x;
         var _loc3_:Number = this.§1!E§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§1!E§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§@!^§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§`!S§) : void
      {
      }
      
      public function addDamageParticles(param1:§`!S§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §&!'§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§1!E§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§1!E§().§7!-§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§4!2§()) + 360) % 360;
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
            this.§10§(_loc4_);
         }
         var _loc3_:Number = this.§4!2§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§10§(_loc3_);
      }
      
      public function §#S§(param1:Number) : void
      {
         var _loc2_:Number = §!!S§(this.§1!E§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §4!0§(_loc2_);
         this.§1!E§().§5T§(_loc2_);
      }
      
      public function §'`§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§1!E§().GetPosition().Copy();
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
         this.§1!E§().§7!-§(_loc13_);
      }
   }
}
