package §&!8§
{
   import § o§.b2Body;
   import § o§.b2BodyDef;
   import § o§.b2FilterData;
   import § o§.b2Fixture;
   import § o§.b2World;
   import §!r§.§"B§;
   import §!r§.§2k§;
   import §!r§.§3!!§;
   import §!r§.§9!,§;
   import §!r§.§=?§;
   import §"0§.b2Settings;
   import §,§.§ p§;
   import §,§.§'-§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §>^§.§!6§;
   import §]!S§.b2PolygonShape;
   import §^a§.Sprite;
   import flash.geom.Point;
   
   public class §[g§
   {
      
      public static const §%!P§:uint = 1 << 1;
      
      public static const §?]§:uint = 1 << 2;
      
      public static const §'!M§:uint = 1 << 3;
      
      public static const §^g§:uint = 1 << 4;
      
      public static const §4f§:Boolean = true;
      
      public static const §`!9§:Number = 5;
      
      public static const §3![§:Number = 10;
       
      
      private var §^P§:String;
      
      private var §>!Y§:int;
      
      private var §]!K§:int;
      
      public var §>p§:String;
      
      public var §=J§:int;
      
      protected var §0o§:§=?§;
      
      private var §1A§:§+!6§;
      
      private var mWorld:b2World;
      
      protected var §]'§:String = "";
      
      protected var §+W§:int = 1;
      
      private var §[O§:b2Fixture;
      
      private var §,!X§:b2Body;
      
      private var §?&§:b2Vec2;
      
      public var §+_§:Number;
      
      public var § !G§:Number;
      
      private var §#g§:Number;
      
      private var §3E§:Boolean = false;
      
      private var §,!Q§:Number;
      
      private var §8>§:Number;
      
      private var §9!§:Number;
      
      private var §=!]§:Number;
      
      private var §=8§:Number;
      
      private var §#B§:Number;
      
      public var §8C§:Number = 1;
      
      private var §+!b§:Boolean = false;
      
      public var §>!$§:Number = 0;
      
      public var §^!G§:Number = 0;
      
      protected var §!]§:Boolean = false;
      
      public var §5d§:§%$§;
      
      protected var §8!2§:Sprite;
      
      private var §7F§:Number = 0;
      
      private var §6_§:Number = 0;
      
      private var §!!&§:Number = 0;
      
      protected var §#![§:Number = 1.0;
      
      private var §5!%§:Boolean = false;
      
      protected var final:§?!G§;
      
      private var §+!%§:Boolean = true;
      
      public function §[g§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§>p§ = param6;
         this.§0o§ = §3!!§.§^!-§(param6);
         this.§1A§ = param1;
         this.§8!2§ = param2;
         this.§#![§ = param10;
         this.§5!%§ = param11;
         this.§>!Y§ = param5;
         this.§=J§ = this.§0o§.§=J§;
         this.§]!K§ = this.§0o§.§@W§();
         this.final = new §?!G§(§`!9§,§3![§);
         this.§5d§ = new §%$§(this,param2,param4);
         if(!this.§5d§.§+!3§(param1.§^!I§.§#U§))
         {
            this.§5d§.§19§(this.§]!K§,this.§0o§.§3!B§(),this.§0o§.§&!0§() / § p§.§]!E§,this.§0o§.§]!?§() / § p§.§]!E§);
         }
         this.§5d§.§[T§(this.§]!K§ == §2k§.§#N§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§,!X§ = this.mWorld.§<s§(_loc12_);
         this.§,!X§.§-!8§(this);
         if(this.§]!K§ == §2k§.§;!$§)
         {
            _loc14_ = b2PolygonShape.§<$§(this.§0o§.shape.§]>§ * param10,this.§0o§.shape.§7w§ * param10);
            this.§[O§ = this.§,!X§.CreateFixture2(_loc14_,this.§0o§.§!!_§());
         }
         else if(this.§]!K§ == §2k§.§#N§ || this.§]!K§ == §2k§.§<!"§)
         {
            this.§[O§ = this.§,!X§.CreateFixture2(this.§0o§.shape.§?!V§(param10),this.§0o§.§!!_§());
         }
         this.§[O§.§`!f§(this.§0o§.§"Q§());
         this.§[O§.§6K§(this.§0o§.§2!#§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§2!N§())
         {
            _loc13_.§5!G§ = §%!P§;
            _loc13_.§&!6§ = 65535 & ~§?]§;
         }
         else if(this.§>p§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§>p§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§5!G§ = §?]§;
            _loc13_.§&!6§ = 65535 & ~§%!P§;
         }
         this.§[O§.§=!K§(_loc13_);
         this.§#g§ = this.§0o§.§,!c§();
         if(this.§0o§.§ !G§ > 0)
         {
            this.§+_§ = this.§ !G§ = this.§0o§.§ !G§;
         }
         else
         {
            this.§+_§ = this.§ !G§ = Math.round(this.§>!+§(true) * this.§0o§.§#!,§());
            if(this.§+_§ < 1)
            {
               this.§+_§ = this.§ !G§ = 1;
            }
         }
         if(this.§0o§.§=J§ == §=?§.§[b§)
         {
            this.§8!2§.visible = false;
         }
         else
         {
            this.§5d§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§6!G§(param9);
         }
         this.§0!P§();
         this.§5m§(0,1);
         this.§5d§.§+!,§(this.§0o§.shape);
      }
      
      public static function §,D§(param1:int, param2:§"B§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§ !L§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§&&§;
            }
            §,!7§.§5%§(_loc4_,param3);
         }
      }
      
      public static function §]p§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §?!b§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!2§;
      }
      
      public function get x() : Number
      {
         return this.§7F§;
      }
      
      public function get y() : Number
      {
         return this.§6_§;
      }
      
      public function get scale() : Number
      {
         return this.§#![§;
      }
      
      public function get front() : Boolean
      {
         return this.§5!%§;
      }
      
      public function get §,!b§() : Number
      {
         return this.§,!X§.GetPosition().x;
      }
      
      public function get §-I§() : Number
      {
         return this.§,!X§.GetPosition().y;
      }
      
      public function get §-!6§() : §=?§
      {
         return this.§0o§;
      }
      
      public function get §>![§() : Boolean
      {
         return this.§#g§ >= 0;
      }
      
      public function get container() : §+!6§
      {
         return this.§1A§;
      }
      
      public function get §&!9§() : Boolean
      {
         return this.§+!%§;
      }
      
      public function set §&!9§(param1:Boolean) : void
      {
         this.§+!%§ = param1;
      }
      
      public function set §3!]§(param1:Boolean) : void
      {
         this.§3E§ = param1;
      }
      
      public function set §=V§(param1:uint) : void
      {
         this.final.§=V§ = param1;
      }
      
      public function get §=V§() : uint
      {
         return this.final.§=V§;
      }
      
      public function get §#!$§() : Boolean
      {
         return this.§+!b§;
      }
      
      public function set §#!$§(param1:Boolean) : void
      {
         this.§+!b§ = param1;
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
         return this.§^P§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§^P§ = param1;
      }
      
      public function §<k§(param1:b2FilterData) : void
      {
         if(this.§[O§)
         {
            this.§[O§.§=!K§(param1);
         }
      }
      
      protected function §7R§(param1:String) : int
      {
         return §7!?§.§7R§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§0o§.§4!?§();
         _loc3_.§,!E§ = true;
         _loc3_.§-[§ = true;
         _loc3_.§>!`§ = true;
         _loc3_.§60§ = 1;
         _loc3_.§7N§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§=!B§(this.§`e§());
            this.mWorld = null;
         }
         this.§5d§.dispose();
         if(this.§8!2§)
         {
            this.§8!2§.dispose();
            this.§8!2§ = null;
         }
         this.§[O§ = null;
         this.§?&§ = null;
         this.§0o§ = null;
      }
      
      public function §6!G§(param1:Number) : void
      {
         this.§`e§().§@o§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §?%§() : Number
      {
         return (360 - this.§`e§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §5! §(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§`e§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§>!U§();
         }
         if(param3)
         {
            this.§%K§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§[O§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§`e§().GetPosition().x >= param3 && this.§`e§().GetPosition().x <= param4 && this.§`e§().GetPosition().y >= param1 && this.§`e§().GetPosition().y <= param2;
      }
      
      public function §9G§(param1:b2Vec2) : void
      {
         this.§?&§ = param1;
      }
      
      public function §2!M§() : void
      {
         if(this.§?&§)
         {
            this.§5! §(this.§?&§,false);
            this.§?&§ = null;
         }
      }
      
      public function §>!U§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`e§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§`e§().§,!d§(0);
         }
         else
         {
            this.§`e§().§,!d§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §%K§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§`e§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§6!G§(_loc2_);
      }
      
      public function §0Q§(param1:Number) : void
      {
         this.§`e§().§,!d§(param1);
      }
      
      public function §`e§() : b2Body
      {
         if(this.§[O§ != null)
         {
            return this.§[O§.GetBody();
         }
         return null;
      }
      
      public function §89§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§7F§ = param1;
            this.§6_§ = param2;
         }
         this.§`e§().GetPosition().x = this.§7F§ * § p§.§]!E§;
         this.§`e§().GetPosition().y = this.§6_§ * § p§.§]!E§;
      }
      
      public function §5m§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§!]§)
         {
            _loc3_ = true;
            this.§!]§ = false;
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
            this.§5d§.§8P§();
         }
         if(this.§8C§ > 1 && this.§5d§.§9!'§)
         {
            _loc4_ = 4 + (this.§5d§.§9!'§.blurX - 4 + param2 / 20) % 28;
            this.§5d§.§9!'§.blurX = _loc4_;
            this.§5d§.§9!'§.blurY = _loc4_;
         }
         this.§5d§.§;t§(param2);
         if(§4f§)
         {
            this.§3!<§(param1);
         }
         else
         {
            this.§!!&§ = this.§9!§;
            this.§7F§ = this.§,!Q§;
            this.§6_§ = this.§8>§;
         }
         this.§8!2§.x = Math.round(this.§7F§);
         this.§8!2§.y = Math.round(this.§6_§);
         this.§8!2§.rotation = this.§!!&§ / 180 * Math.PI;
      }
      
      public function §0!P§() : void
      {
         var _loc1_:Number = this.§`e§().GetPosition().x;
         var _loc2_:Number = this.§`e§().GetPosition().y;
         this.§#B§ = this.§9!§;
         this.§=!]§ = this.§,!Q§;
         this.§=8§ = this.§8>§;
         this.§9!§ = this.§`e§().GetAngle() * (180 / Math.PI) % 360;
         this.§,!Q§ = _loc1_ / § p§.§]!E§;
         this.§8>§ = _loc2_ / § p§.§]!E§;
         this.final.§^!@§();
         this.final.§`t§(this.§`e§());
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
      
      public function §3!<§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §!6§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§1A§.§^!I§.mLevelEngine.§-!]§ * 1000;
         }
         param1 *= -1;
         if(this.§,!Q§ == this.§=!]§ || param1 == 0)
         {
            this.§>!$§ = 0;
            this.§7F§ = this.§,!Q§;
         }
         else
         {
            this.§>!$§ = param1 * (this.§=!]§ - this.§,!Q§) / param2;
            this.§7F§ = this.§,!Q§ + this.§>!$§;
         }
         if(this.§8>§ == this.§=8§ || param1 == 0)
         {
            this.§^!G§ = 0;
            this.§6_§ = this.§8>§;
         }
         else
         {
            this.§^!G§ = param1 * (this.§=8§ - this.§8>§) / param2;
            this.§6_§ = this.§8>§ + this.§^!G§;
         }
         if(this.§9!§ == this.§#B§ || param1 == 0)
         {
            this.§!!&§ = this.§9!§;
         }
         else if(this.§#B§ > this.§9!§ && this.§#B§ - this.§9!§ <= 180)
         {
            this.§!!&§ = this.§9!§ + param1 * (this.§#B§ - this.§9!§) / param2;
         }
         else if(this.§#B§ > this.§9!§ && this.§#B§ - this.§9!§ > 180)
         {
            this.§!!&§ = this.§9!§ + param1 * (this.§#B§ - 360 - this.§9!§) / param2;
         }
         else if(this.§#B§ < this.§9!§ && this.§9!§ - this.§#B§ <= 180)
         {
            this.§!!&§ = this.§9!§ + param1 * (this.§#B§ - this.§9!§) / param2;
         }
         else if(this.§#B§ < this.§9!§ && this.§9!§ - this.§#B§ > 180)
         {
            this.§!!&§ = this.§9!§ + param1 * (this.§#B§ + 360 - this.§9!§) / param2;
         }
      }
      
      public function get §`x§() : Point
      {
         if(!§4f§)
         {
         }
         return null;
      }
      
      public function §2!N§() : Boolean
      {
         return this.§=J§ == §=?§.§&H§ || this.§=J§ == §=?§.§6M§;
      }
      
      public function §[a§() : Boolean
      {
         return this.§=J§ == §=?§.§!!"§;
      }
      
      public function §4!Y§() : Boolean
      {
         return this.§=J§ == §=?§.§<P§;
      }
      
      public function §9W§() : Boolean
      {
         return this.§=J§ == §=?§.§6M§;
      }
      
      public function §2!!§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§=J§ == §=?§.§7![§;
      }
      
      public function isGround() : Boolean
      {
         return this.§=J§ == §=?§.§[b§;
      }
      
      public function §[n§() : Boolean
      {
         return this.§=J§ == §=?§.§=K§;
      }
      
      public function § ! §() : Boolean
      {
         return this.§=J§ == §=?§.§<![§;
      }
      
      public function §#!A§() : Boolean
      {
         if(this.§>p§ == "MISC_EXPLOSIVE_TNT" || this.§>p§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §6!O§() : Boolean
      {
         return (this.§[a§() || this.§[n§() || this.§ ! §()) && !this.§#!$§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §&L§() : Number
      {
         return Number(Math.sqrt(this.§`e§().GetLinearVelocity().x * this.§`e§().GetLinearVelocity().x + this.§`e§().GetLinearVelocity().y * this.§`e§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§4!Y§())
         {
            return this.§+_§;
         }
         if(!this.§1A§.§!R§())
         {
            return this.§+_§;
         }
         if(this.§#g§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§0!5§(§"B§.§!G§);
            }
            else if(param1 > 12)
            {
               this.§0!5§(§"B§.§>!W§);
            }
            else if(param1 > 3)
            {
               this.§0!5§(§"B§.§!!E§);
            }
            return this.§+_§;
         }
         if(param1 <= this.§#g§)
         {
            if(param1 >= this.§#g§ / 2)
            {
               this.§0!5§(§"B§.§!!E§);
            }
            if(this.§2!N§() && this.§+_§ == this.§ !G§)
            {
               this.§+_§ = this.§ !G§ - 1;
            }
            return this.§+_§;
         }
         param1 -= this.§#g§;
         if(param2 && this.§6!O§())
         {
            _loc7_ = Math.min(this.§+_§,int(param1));
            _loc8_ = § p§.§5k§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= § p§.§=d§;
            }
            this.§1A§.§^!I§.addScore(_loc8_,§'-§.§"o§,this.§+_§ > param1 && param3,this.§`e§().GetPosition().x,this.§`e§().GetPosition().y,§7!?§.§=I§(this.§>p§));
         }
         if(!(param5 && this.§3E§))
         {
            this.§+_§ -= param1;
         }
         if(this.§+_§ < 1 && this.§2!N§())
         {
            this.§+_§ = 1;
         }
         if(this.§+_§ < 1)
         {
            this.§+_§ = 0;
            §[g§.§,D§(§"B§.§!G§,this.§0o§.§7=§,"ChannelDestroyed");
         }
         else
         {
            this.§0!5§(§"B§.§>!W§);
            this.addDamageParticles(this.§1A§.§^!I§.particles,param1);
         }
         this.§5d§.setDamagedFrame();
         return this.§+_§;
      }
      
      public function §0!5§(param1:int) : void
      {
         §[g§.§,D§(param1,this.§0o§.§7=§);
      }
      
      public function §+S§(param1:String) : Number
      {
         return this.§0o§.material.§ v§(param1) * this.§8C§;
      }
      
      public function §>R§(param1:String) : Number
      {
         return this.§0o§.material.§>1§(param1);
      }
      
      public function §,X§() : String
      {
         return this.§0o§.material.mName;
      }
      
      public function §1!G§() : Number
      {
         return this.§0o§.§#!,§();
      }
      
      public function §`K§() : int
      {
         return this.§0o§.§2_§();
      }
      
      public function §;]§() : Boolean
      {
         return this.§`e§().IsAwake() && (this.§2!N§() && this.§+_§ == this.§ !G§ || Math.abs(this.§`e§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`e§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§`e§().§[H§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §>!<§() : Boolean
      {
         if(!this.§`e§().IsAwake())
         {
            return true;
         }
         return !this.§;Q§();
      }
      
      protected function §;Q§() : Boolean
      {
         return this.final.§;Q§();
      }
      
      public function §!!3§(param1:Number = 3) : void
      {
         this.§8C§ = param1;
         if(this.§8C§ > 1)
         {
            this.§5d§.§-§();
         }
         else
         {
            this.§5d§.§9!'§ = null;
         }
      }
      
      public function §>!+§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§0o§.§4!?§() == §9!,§.§;a§)
         {
            _loc2_ = this.§5d§.mW * this.§5d§.mH * (§ p§.§]!E§ * § p§.§]!E§);
         }
         else
         {
            _loc2_ = this.§`e§().GetMass() / this.§[O§.§ i§();
            if(param1)
            {
               _loc2_ *= this.§!C§();
            }
            _loc2_ /= this.§#![§ * this.§#![§;
         }
         return _loc2_;
      }
      
      public function §!C§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§5d§.§6j§ - 1) / 10);
      }
      
      public function §5!W§(param1:Number) : void
      {
         var _loc2_:Number = this.§`e§().GetLinearVelocity().x;
         var _loc3_:Number = this.§`e§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§`e§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§do§) : void
      {
      }
      
      public function addDamageParticles(param1:§do§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §!S§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§`e§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§`e§().§;!1§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§?%§()) + 360) % 360;
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
            this.§6!G§(_loc4_);
         }
         var _loc3_:Number = this.§?%§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§6!G§(_loc3_);
      }
      
      public function §%b§(param1:Number) : void
      {
         var _loc2_:Number = §]p§(this.§`e§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §?!b§(_loc2_);
         this.§`e§().§@o§(_loc2_);
      }
      
      public function §3`§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§`e§().GetPosition().Copy();
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
         this.§`e§().§;!1§(_loc13_);
      }
   }
}
