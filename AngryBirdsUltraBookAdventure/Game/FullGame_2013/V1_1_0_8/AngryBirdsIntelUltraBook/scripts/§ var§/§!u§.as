package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2Body;
   import §#I§.b2BodyDef;
   import §#I§.b2FilterData;
   import §#I§.b2Fixture;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §0S§.§ L§;
   import §0S§.§4K§;
   import §0S§.§6!D§;
   import §0S§.§6R§;
   import §0S§.§7!Z§;
   import §1!B§.§<m§;
   import §3b§.b2PolygonShape;
   import §40§.§-!8§;
   import §40§.§5G§;
   import §@!3§.b2Settings;
   import §[!b§.§-!Q§;
   import §`g§.Sprite;
   import flash.geom.Point;
   
   public class §!u§
   {
      
      public static const §`z§:uint = 1 << 1;
      
      public static const §<!z§:uint = 1 << 2;
      
      public static const §3d§:uint = 1 << 3;
      
      public static const §6!3§:uint = 1 << 4;
      
      public static const §[!o§:Boolean = true;
      
      public static const §6!X§:Number = 5;
      
      public static const §0!V§:Number = 10;
       
      
      private var §5I§:String;
      
      private var §6!M§:int;
      
      private var §#"#§:int;
      
      public var §-!>§:String;
      
      public var §-!o§:int;
      
      protected var §,!;§:§4K§;
      
      private var §>0§:§ 4§;
      
      private var mWorld:b2World;
      
      protected var §?!T§:String = "";
      
      protected var §&!-§:int = 1;
      
      private var §]""§:b2Fixture;
      
      private var §@4§:b2Body;
      
      private var §[$§:b2Vec2;
      
      public var §0M§:Number;
      
      public var §]!3§:Number;
      
      private var §=!X§:Number;
      
      private var §<!;§:Boolean = false;
      
      private var § !@§:Number;
      
      private var §,!k§:Number;
      
      private var §7!<§:Number;
      
      private var §+! §:Number;
      
      private var §4Q§:Number;
      
      private var §]!Z§:Number;
      
      public var §,z§:Number = 1;
      
      private var §'!T§:Boolean = false;
      
      public var §4j§:Number = 0;
      
      public var §@Z§:Number = 0;
      
      protected var §,![§:Boolean = false;
      
      public var §+!j§:§7!r§;
      
      protected var §]2§:Sprite;
      
      private var §#!!§:Number = 0;
      
      private var §!!3§:Number = 0;
      
      private var §2F§:Number = 0;
      
      protected var §?z§:Number = 1.0;
      
      private var §4!!§:Boolean = false;
      
      protected var §1!7§:§[!8§;
      
      private var §!+§:Boolean = true;
      
      public function §!u§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§-!>§ = param6;
         this.§,!;§ = §7!Z§.§`!H§(param6);
         this.§>0§ = param1;
         this.§]2§ = param2;
         this.§?z§ = param10;
         this.§4!!§ = param11;
         this.§6!M§ = param5;
         this.§-!o§ = this.§,!;§.§-!o§;
         this.§#"#§ = this.§,!;§.§7!X§();
         this.§1!7§ = new §[!8§(§6!X§,§0!V§);
         this.§+!j§ = new §7!r§(this,param2,param4);
         if(!this.§+!j§.§]J§(param1.§#!U§.animationManager))
         {
            this.§+!j§.§3![§(this.§#"#§,this.§,!;§.§-l§(),this.§,!;§.§%!Q§() / §5G§.§6+§,this.§,!;§.§]§() / §5G§.§6+§);
         }
         this.§+!j§.§^!o§(this.§#"#§ == §6R§.§9!Z§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§@4§ = this.mWorld.§4!H§(_loc12_);
         this.§@4§.§%V§(this);
         if(this.§#"#§ == §6R§.§&!'§)
         {
            _loc14_ = b2PolygonShape.§!!@§(this.§,!;§.shape.§3!8§ * param10,this.§,!;§.shape.§0!Q§ * param10);
            this.§]""§ = this.§@4§.CreateFixture2(_loc14_,this.§,!;§.§7"§());
         }
         else if(this.§#"#§ == §6R§.§9!Z§ || this.§#"#§ == §6R§.§#""§)
         {
            this.§]""§ = this.§@4§.CreateFixture2(this.§,!;§.shape.§'!k§(param10),this.§,!;§.§7"§());
         }
         this.§]""§.§+k§(this.§,!;§.§4Z§());
         this.§]""§.§5!,§(this.§,!;§.§]!&§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§]!?§())
         {
            _loc13_.§[!k§ = §`z§;
            _loc13_.§?!K§ = 65535 & ~§<!z§;
         }
         else if(this.§-!>§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§-!>§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§[!k§ = §<!z§;
            _loc13_.§?!K§ = 65535 & ~§`z§;
         }
         this.§]""§.§?!o§(_loc13_);
         this.§=!X§ = this.§,!;§.§@!`§();
         if(this.§,!;§.§]!3§ > 0)
         {
            this.§0M§ = this.§]!3§ = this.§,!;§.§]!3§;
         }
         else
         {
            this.§0M§ = this.§]!3§ = Math.round(this.§^!e§(true) * this.§,!;§.§2!H§());
            if(this.§0M§ < 1)
            {
               this.§0M§ = this.§]!3§ = 1;
            }
         }
         if(this.§,!;§.§-!o§ == §4K§.§&!8§)
         {
            this.§]2§.visible = false;
         }
         else
         {
            this.§+!j§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§4I§(param9);
         }
         this.§>!d§();
         this.§?!5§(0,1);
         this.§+!j§.§8c§(this.§,!;§.shape);
      }
      
      public static function §5F§(param1:int, param2:§6!D§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§2!?§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8!F§;
            }
            §-!Q§.§7"$§(_loc4_,param3);
         }
      }
      
      public static function §=!P§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §[!R§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§]2§;
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function get front() : Boolean
      {
         return this.§4!!§;
      }
      
      public function get §`!v§() : Number
      {
         return this.§@4§.GetPosition().x;
      }
      
      public function get §&x§() : Number
      {
         return this.§@4§.GetPosition().y;
      }
      
      public function get §2f§() : §4K§
      {
         return this.§,!;§;
      }
      
      public function get §5d§() : Boolean
      {
         return this.§=!X§ >= 0;
      }
      
      public function get §^!W§() : § 4§
      {
         return this.§>0§;
      }
      
      public function get §6]§() : Boolean
      {
         return this.§!+§;
      }
      
      public function set §6]§(param1:Boolean) : void
      {
         this.§!+§ = param1;
      }
      
      public function set §+!z§(param1:Boolean) : void
      {
         this.§<!;§ = param1;
      }
      
      public function set §;c§(param1:uint) : void
      {
         this.§1!7§.§;c§ = param1;
      }
      
      public function get §;c§() : uint
      {
         return this.§1!7§.§;c§;
      }
      
      public function get §1!U§() : Boolean
      {
         return this.§'!T§;
      }
      
      public function set §1!U§(param1:Boolean) : void
      {
         this.§'!T§ = param1;
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
         return this.§5I§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§5I§ = param1;
      }
      
      public function §-!w§(param1:b2FilterData) : void
      {
         if(this.§]""§)
         {
            this.§]""§.§?!o§(param1);
         }
      }
      
      protected function §=!f§(param1:String) : int
      {
         return §>p§.§=!f§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§,!;§.§4!a§();
         _loc3_.§]#§ = true;
         _loc3_.§6!@§ = true;
         _loc3_.§-!A§ = true;
         _loc3_.§"!K§ = 1;
         _loc3_.§2!C§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§],§(this.§63§());
            this.mWorld = null;
         }
         this.§+!j§.dispose();
         if(this.§]2§)
         {
            this.§]2§.dispose();
            this.§]2§ = null;
         }
         this.§]""§ = null;
         this.§[$§ = null;
         this.§,!;§ = null;
      }
      
      public function §4I§(param1:Number) : void
      {
         this.§63§().§?!=§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §3C§() : Number
      {
         return (360 - this.§63§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §5!;§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§63§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§<"#§();
         }
         if(param3)
         {
            this.§,!!§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§]""§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§63§().GetPosition().x >= param3 && this.§63§().GetPosition().x <= param4 && this.§63§().GetPosition().y >= param1 && this.§63§().GetPosition().y <= param2;
      }
      
      public function §'y§(param1:b2Vec2) : void
      {
         this.§[$§ = param1;
      }
      
      public function §]!u§() : void
      {
         if(this.§[$§)
         {
            this.§5!;§(this.§[$§,false);
            this.§[$§ = null;
         }
      }
      
      public function §<"#§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§63§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§63§().§&e§(0);
         }
         else
         {
            this.§63§().§&e§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §,!!§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§63§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§4I§(_loc2_);
      }
      
      public function §!!g§(param1:Number) : void
      {
         this.§63§().§&e§(param1);
      }
      
      public function §63§() : b2Body
      {
         if(this.§]""§ != null)
         {
            return this.§]""§.GetBody();
         }
         return null;
      }
      
      public function §9H§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§#!!§ = param1;
            this.§!!3§ = param2;
         }
         this.§63§().GetPosition().x = this.§#!!§ * §5G§.§6+§;
         this.§63§().GetPosition().y = this.§!!3§ * §5G§.§6+§;
      }
      
      public function §?!5§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§,![§)
         {
            _loc3_ = true;
            this.§,![§ = false;
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
            this.§+!j§.§=!2§();
         }
         if(this.§,z§ > 1 && this.§+!j§.§2!G§)
         {
            _loc4_ = 4 + (this.§+!j§.§2!G§.blurX - 4 + param2 / 20) % 28;
            this.§+!j§.§2!G§.blurX = _loc4_;
            this.§+!j§.§2!G§.blurY = _loc4_;
         }
         this.§+!j§.§=7§(param2);
         if(§[!o§)
         {
            this.§]!4§(param1);
         }
         else
         {
            this.§2F§ = this.§7!<§;
            this.§#!!§ = this.§ !@§;
            this.§!!3§ = this.§,!k§;
         }
         this.§]2§.x = Math.round(this.§#!!§);
         this.§]2§.y = Math.round(this.§!!3§);
         this.§]2§.rotation = this.§2F§ / 180 * Math.PI;
      }
      
      public function §>!d§() : void
      {
         var _loc1_:Number = this.§63§().GetPosition().x;
         var _loc2_:Number = this.§63§().GetPosition().y;
         this.§]!Z§ = this.§7!<§;
         this.§+! § = this.§ !@§;
         this.§4Q§ = this.§,!k§;
         this.§7!<§ = this.§63§().GetAngle() * (180 / Math.PI) % 360;
         this.§ !@§ = _loc1_ / §5G§.§6+§;
         this.§,!k§ = _loc2_ / §5G§.§6+§;
         this.§1!7§.§+!R§();
         this.§1!7§.§4k§(this.§63§());
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
      
      public function §]!4§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §<m§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§>0§.§#!U§.mLevelEngine.§8l§ * 1000;
         }
         param1 *= -1;
         if(this.§ !@§ == this.§+! § || param1 == 0)
         {
            this.§4j§ = 0;
            this.§#!!§ = this.§ !@§;
         }
         else
         {
            this.§4j§ = param1 * (this.§+! § - this.§ !@§) / param2;
            this.§#!!§ = this.§ !@§ + this.§4j§;
         }
         if(this.§,!k§ == this.§4Q§ || param1 == 0)
         {
            this.§@Z§ = 0;
            this.§!!3§ = this.§,!k§;
         }
         else
         {
            this.§@Z§ = param1 * (this.§4Q§ - this.§,!k§) / param2;
            this.§!!3§ = this.§,!k§ + this.§@Z§;
         }
         if(this.§7!<§ == this.§]!Z§ || param1 == 0)
         {
            this.§2F§ = this.§7!<§;
         }
         else if(this.§]!Z§ > this.§7!<§ && this.§]!Z§ - this.§7!<§ <= 180)
         {
            this.§2F§ = this.§7!<§ + param1 * (this.§]!Z§ - this.§7!<§) / param2;
         }
         else if(this.§]!Z§ > this.§7!<§ && this.§]!Z§ - this.§7!<§ > 180)
         {
            this.§2F§ = this.§7!<§ + param1 * (this.§]!Z§ - 360 - this.§7!<§) / param2;
         }
         else if(this.§]!Z§ < this.§7!<§ && this.§7!<§ - this.§]!Z§ <= 180)
         {
            this.§2F§ = this.§7!<§ + param1 * (this.§]!Z§ - this.§7!<§) / param2;
         }
         else if(this.§]!Z§ < this.§7!<§ && this.§7!<§ - this.§]!Z§ > 180)
         {
            this.§2F§ = this.§7!<§ + param1 * (this.§]!Z§ + 360 - this.§7!<§) / param2;
         }
      }
      
      public function get §]!k§() : Point
      {
         if(!§[!o§)
         {
         }
         return null;
      }
      
      public function §]!?§() : Boolean
      {
         return this.§-!o§ == §4K§.§6r§ || this.§-!o§ == §4K§.§5-§;
      }
      
      public function §^A§() : Boolean
      {
         return this.§-!o§ == §4K§.§8!J§;
      }
      
      public function §'!j§() : Boolean
      {
         return this.§-!o§ == §4K§.§,<§;
      }
      
      public function §1!b§() : Boolean
      {
         return this.§-!o§ == §4K§.§5-§;
      }
      
      public function §=C§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§-!o§ == §4K§.§9A§;
      }
      
      public function isGround() : Boolean
      {
         return this.§-!o§ == §4K§.§&!8§;
      }
      
      public function §,!y§() : Boolean
      {
         return this.§-!o§ == §4K§.§^!Q§;
      }
      
      public function §]q§() : Boolean
      {
         return this.§-!o§ == §4K§.§!!U§;
      }
      
      public function §-!?§() : Boolean
      {
         if(this.§-!>§ == "MISC_EXPLOSIVE_TNT" || this.§-!>§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §2b§() : Boolean
      {
         return (this.§^A§() || this.§,!y§() || this.§]q§()) && !this.§1!U§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §6!E§() : Number
      {
         return Number(Math.sqrt(this.§63§().GetLinearVelocity().x * this.§63§().GetLinearVelocity().x + this.§63§().GetLinearVelocity().y * this.§63§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§'!j§())
         {
            return this.§0M§;
         }
         if(!this.§>0§.§ h§())
         {
            return this.§0M§;
         }
         if(this.§=!X§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§'!S§(§6!D§.§84§);
            }
            else if(param1 > 12)
            {
               this.§'!S§(§6!D§.§@""§);
            }
            else if(param1 > 3)
            {
               this.§'!S§(§6!D§.§<j§);
            }
            return this.§0M§;
         }
         if(param1 <= this.§=!X§)
         {
            if(param1 >= this.§=!X§ / 2)
            {
               this.§'!S§(§6!D§.§<j§);
            }
            if(this.§]!?§() && this.§0M§ == this.§]!3§)
            {
               this.§0M§ = this.§]!3§ - 1;
            }
            return this.§0M§;
         }
         param1 -= this.§=!X§;
         if(param2 && this.§2b§())
         {
            _loc7_ = Math.min(this.§0M§,int(param1));
            _loc8_ = §5G§.§'!4§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §5G§.§ !T§;
            }
            this.§>0§.§#!U§.addScore(_loc8_,§-!8§.§6!K§,this.§0M§ > param1 && param3,this.§63§().GetPosition().x,this.§63§().GetPosition().y,§>p§.§?`§(this.§-!>§));
         }
         if(!(param5 && this.§<!;§))
         {
            this.§0M§ -= param1;
         }
         if(this.§0M§ < 1 && this.§]!?§())
         {
            this.§0M§ = 1;
         }
         if(this.§0M§ < 1)
         {
            this.§0M§ = 0;
            §!u§.§5F§(§6!D§.§84§,this.§,!;§.§9!M§,"ChannelDestroyed");
         }
         else
         {
            this.§'!S§(§6!D§.§@""§);
            this.addDamageParticles(this.§>0§.§#!U§.particles,param1);
         }
         this.§+!j§.setDamagedFrame();
         return this.§0M§;
      }
      
      public function §'!S§(param1:int) : void
      {
         §!u§.§5F§(param1,this.§,!;§.§9!M§);
      }
      
      public function §%v§(param1:String) : Number
      {
         return this.§,!;§.material.§3G§(param1) * this.§,z§;
      }
      
      public function §-!K§(param1:String) : Number
      {
         return this.§,!;§.material.§%!+§(param1);
      }
      
      public function §#7§() : String
      {
         return this.§,!;§.material.mName;
      }
      
      public function §`&§() : Number
      {
         return this.§,!;§.§2!H§();
      }
      
      public function § !0§() : int
      {
         return this.§,!;§.§>x§();
      }
      
      public function §&V§() : Boolean
      {
         return this.§63§().IsAwake() && (this.§]!?§() && this.§0M§ == this.§]!3§ || Math.abs(this.§63§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§63§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§63§().§'K§()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §,1§() : Boolean
      {
         if(!this.§63§().IsAwake())
         {
            return true;
         }
         return !this.§""#§();
      }
      
      protected function §""#§() : Boolean
      {
         return this.§1!7§.§""#§();
      }
      
      public function §7N§(param1:Number = 3) : void
      {
         this.§,z§ = param1;
         if(this.§,z§ > 1)
         {
            this.§+!j§.§[5§();
         }
         else
         {
            this.§+!j§.§2!G§ = null;
         }
      }
      
      public function §^!e§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§,!;§.§4!a§() == § L§.§@8§)
         {
            _loc2_ = this.§+!j§.mW * this.§+!j§.mH * (§5G§.§6+§ * §5G§.§6+§);
         }
         else
         {
            _loc2_ = this.§63§().GetMass() / this.§]""§.§1!v§();
            if(param1)
            {
               _loc2_ *= this.§<!@§();
            }
            _loc2_ /= this.§?z§ * this.§?z§;
         }
         return _loc2_;
      }
      
      public function §<!@§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§+!j§.§-!+§ - 1) / 10);
      }
      
      public function § !H§(param1:Number) : void
      {
         var _loc2_:Number = this.§63§().GetLinearVelocity().x;
         var _loc3_:Number = this.§63§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§63§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§=!%§) : void
      {
      }
      
      public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §=!7§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§63§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§63§().§22§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§3C§()) + 360) % 360;
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
            this.§4I§(_loc4_);
         }
         var _loc3_:Number = this.§3C§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§4I§(_loc3_);
      }
      
      public function §@!v§(param1:Number) : void
      {
         var _loc2_:Number = §=!P§(this.§63§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §[!R§(_loc2_);
         this.§63§().§?!=§(_loc2_);
      }
      
      public function §42§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§63§().GetPosition().Copy();
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
         this.§63§().§22§(_loc13_);
      }
   }
}
