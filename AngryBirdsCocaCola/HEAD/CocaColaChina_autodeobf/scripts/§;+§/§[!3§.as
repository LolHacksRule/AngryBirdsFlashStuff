package §;+§
{
   import § !K§.Sprite;
   import §&!L§.b2Vec2;
   import §'!G§.§1C§;
   import §-!<§.b2PolygonShape;
   import §3f§.b2Body;
   import §3f§.b2BodyDef;
   import §3f§.b2FilterData;
   import §3f§.b2Fixture;
   import §3f§.b2World;
   import §4A§.§&_§;
   import §4A§.§-!3§;
   import §7!C§.b2Settings;
   import §7I§.§<!0§;
   import §;G§.§1D§;
   import §;G§.§;Z§;
   import §^p§.§!!U§;
   import §^p§.§'!D§;
   import §^p§.§0u§;
   import §^p§.§=!3§;
   import §^p§.§[!P§;
   import flash.geom.Point;
   
   public class §[!3§
   {
      
      public static const §9r§:uint = 1 << 1;
      
      public static const § _§:uint = 1 << 2;
      
      public static const §=$§:uint = 1 << 3;
      
      public static const §1R§:uint = 1 << 4;
      
      public static const §14§:Boolean = true;
       
      
      private var §+!G§:String;
      
      private var § b§:int;
      
      private var §7b§:int;
      
      public var §1T§:String;
      
      public var §[w§:int;
      
      private var §<@§:§'!D§;
      
      private var §,L§:§+!?§;
      
      private var mWorld:b2World;
      
      private var §9!2§:b2Fixture;
      
      private var §7!8§:b2Body;
      
      private var §,F§:b2Vec2;
      
      public var §"!D§:Number;
      
      public var §?L§:Number;
      
      private var §+![§:Number;
      
      private var §=T§:Boolean = false;
      
      private var §='§:Number;
      
      private var § L§:Number;
      
      private var § N§:Number;
      
      private var §38§:Number;
      
      private var §5U§:Number;
      
      private var §7!-§:Number;
      
      public var §`!H§:Number = 1;
      
      private var §@!#§:Boolean = false;
      
      public var §`t§:Number = 0;
      
      public var §+m§:Number = 0;
      
      protected var §8!P§:Boolean = false;
      
      public var §4!%§:§5!P§;
      
      private var §]!+§:Sprite;
      
      private var §03§:Number = 0;
      
      private var §5,§:Number = 0;
      
      private var §1Q§:Number = 0;
      
      private var § 6§:Number = 1.0;
      
      private var §=_§:Boolean = false;
      
      private var §6!E§:Boolean = true;
      
      public function §[!3§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§1T§ = param6;
         this.§<@§ = §[!P§.§!I§(param6);
         this.§,L§ = param1;
         this.§]!+§ = param2;
         this.§ 6§ = param10;
         this.§=_§ = param11;
         this.§ b§ = param5;
         this.§[w§ = this.§<@§.§[w§;
         this.§7b§ = this.§<@§.§%!P§();
         this.§4!%§ = new §5!P§(this,param2,param4);
         if(!this.§4!%§.§?!H§(param1.mLevelMain.§0!+§))
         {
            this.§4!%§.§%!F§(this.§7b§,this.§<@§.§?b§(),this.§<@§.§0§() / §&_§.§5-§,this.§<@§.§7G§() / §&_§.§5-§);
         }
         this.§4!%§.§-[§(this.§7b§ == §!!U§.§<7§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§7!8§ = this.mWorld.§@!K§(_loc12_);
         this.§7!8§.§3!Z§(this);
         if(this.§7b§ == §!!U§.§?H§)
         {
            _loc14_ = b2PolygonShape.§3!A§(this.§<@§.shape.§3§ * param10,this.§<@§.shape.§=!=§ * param10);
            this.§9!2§ = this.§7!8§.CreateFixture2(_loc14_,this.§<@§.§^!K§());
         }
         else if(this.§7b§ == §!!U§.§<7§ || this.§7b§ == §!!U§.§1r§)
         {
            this.§9!2§ = this.§7!8§.CreateFixture2(this.§<@§.shape.§4!,§(param10),this.§<@§.§^!K§());
         }
         this.§9!2§.§'?§(this.§<@§.§^C§());
         this.§9!2§.§<!Y§(this.§<@§.§'g§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§[!U§())
         {
            _loc13_.§ o§ = §9r§;
            _loc13_.§2h§ = 65535 & ~§ _§;
         }
         else if(this.§1T§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§1T§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§ o§ = § _§;
            _loc13_.§2h§ = 65535 & ~§9r§;
         }
         this.§9!2§.§<N§(_loc13_);
         this.§+![§ = this.§<@§.§;"§();
         if(this.§<@§.§?L§ > 0)
         {
            this.§"!D§ = this.§?L§ = this.§<@§.§?L§;
         }
         else
         {
            this.§"!D§ = this.§?L§ = Math.round(this.§!!W§(true) * this.§<@§.§8!3§());
            if(this.§"!D§ < 1)
            {
               this.§"!D§ = this.§?L§ = 1;
            }
         }
         if(this.§<@§.§[w§ == §'!D§.§&!'§)
         {
            this.§]!+§.visible = false;
         }
         else
         {
            this.§4!%§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§8l§(param9);
         }
         this.§]J§();
         this.§,t§(0,1);
         this.§4!%§.§#?§(this.§<@§.shape);
      }
      
      public static function §'!d§(param1:int, param2:§0u§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§1!3§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§8e§;
            }
            §<!0§.§"!M§(_loc4_,param3);
         }
      }
      
      public static function §0l§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §9!@§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!+§;
      }
      
      public function get x() : Number
      {
         return this.§03§;
      }
      
      public function get y() : Number
      {
         return this.§5,§;
      }
      
      public function get scale() : Number
      {
         return this.§ 6§;
      }
      
      public function get front() : Boolean
      {
         return this.§=_§;
      }
      
      public function get §-!4§() : Number
      {
         return this.§7!8§.GetPosition().x;
      }
      
      public function get §7@§() : Number
      {
         return this.§7!8§.GetPosition().y;
      }
      
      public function get §-!$§() : §'!D§
      {
         return this.§<@§;
      }
      
      public function get §%!c§() : Boolean
      {
         return this.§+![§ >= 0;
      }
      
      protected function get container() : §+!?§
      {
         return this.§,L§;
      }
      
      public function get §>!E§() : Boolean
      {
         return this.§6!E§;
      }
      
      public function set §>!E§(param1:Boolean) : void
      {
         this.§6!E§ = param1;
      }
      
      public function set §-!!§(param1:Boolean) : void
      {
         this.§=T§ = param1;
      }
      
      public function get §'v§() : Boolean
      {
         return this.§@!#§;
      }
      
      public function set §'v§(param1:Boolean) : void
      {
         this.§@!#§ = param1;
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
         return this.§+!G§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§+!G§ = param1;
      }
      
      public function §2!G§(param1:b2FilterData) : void
      {
         if(this.§9!2§)
         {
            this.§9!2§.§<N§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§<@§.§?!7§();
         _loc3_.§`V§ = true;
         _loc3_.§5!C§ = true;
         _loc3_.§ !H§ = true;
         _loc3_.§+I§ = 1;
         _loc3_.§4E§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§ 2§(this.§1!d§());
            this.mWorld = null;
         }
         this.§4!%§.dispose();
         if(this.§]!+§)
         {
            this.§]!+§.dispose();
            this.§]!+§ = null;
         }
         this.§9!2§ = null;
         this.§,F§ = null;
         this.§<@§ = null;
      }
      
      public function §8l§(param1:Number) : void
      {
         this.§1!d§().§8z§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §7V§() : Number
      {
         return (360 - this.§1!d§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §1z§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§1!d§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§@!?§();
         }
         if(param3)
         {
            this.§'2§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§9!2§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§1!d§().GetPosition().x >= param3 && this.§1!d§().GetPosition().x <= param4 && this.§1!d§().GetPosition().y >= param1 && this.§1!d§().GetPosition().y <= param2;
      }
      
      public function §7!2§(param1:b2Vec2) : void
      {
         this.§,F§ = param1;
      }
      
      public function §#d§() : void
      {
         if(this.§,F§)
         {
            this.§1z§(this.§,F§,false);
            this.§,F§ = null;
         }
      }
      
      public function §@!?§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§1!d§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§1!d§().§%! §(0);
         }
         else
         {
            this.§1!d§().§%! §(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §'2§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§1!d§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§8l§(_loc2_);
      }
      
      public function §^!%§(param1:Number) : void
      {
         this.§1!d§().§%! §(param1);
      }
      
      public function §1!d§() : b2Body
      {
         if(this.§9!2§ != null)
         {
            return this.§9!2§.GetBody();
         }
         return null;
      }
      
      public function §+!7§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§03§ = param1;
            this.§5,§ = param2;
         }
         this.§1!d§().GetPosition().x = this.§03§ * §&_§.§5-§;
         this.§1!d§().GetPosition().y = this.§5,§ * §&_§.§5-§;
      }
      
      public function §,t§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§8!P§)
         {
            _loc3_ = true;
            this.§8!P§ = false;
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
            this.§4!%§.§92§();
         }
         if(this.§`!H§ > 1 && this.§4!%§.§7E§)
         {
            _loc4_ = 4 + (this.§4!%§.§7E§.blurX - 4 + param2 / 20) % 28;
            this.§4!%§.§7E§.blurX = _loc4_;
            this.§4!%§.§7E§.blurY = _loc4_;
         }
         this.§4!%§.§-z§(param2);
         if(§14§)
         {
            this.§3!@§(param1);
         }
         else
         {
            this.§1Q§ = this.§ N§;
            this.§03§ = this.§='§;
            this.§5,§ = this.§ L§;
         }
         this.§]!+§.x = Math.round(this.§03§);
         this.§]!+§.y = Math.round(this.§5,§);
         this.§]!+§.rotation = this.§1Q§ / 180 * Math.PI;
      }
      
      public function §]J§() : void
      {
         var _loc1_:Number = this.§1!d§().GetPosition().x;
         var _loc2_:Number = this.§1!d§().GetPosition().y;
         this.§7!-§ = this.§ N§;
         this.§38§ = this.§='§;
         this.§5U§ = this.§ L§;
         this.§ N§ = this.§1!d§().GetAngle() * (180 / Math.PI) % 360;
         this.§='§ = _loc1_ / §&_§.§5-§;
         this.§ L§ = _loc2_ / §&_§.§5-§;
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
      
      public function §3!@§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §1C§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§,L§.mLevelMain.mLevelEngine.§2I§ * 1000;
         }
         param1 *= -1;
         if(this.§='§ == this.§38§ || param1 == 0)
         {
            this.§`t§ = 0;
            this.§03§ = this.§='§;
         }
         else
         {
            this.§`t§ = param1 * (this.§38§ - this.§='§) / param2;
            this.§03§ = this.§='§ + this.§`t§;
         }
         if(this.§ L§ == this.§5U§ || param1 == 0)
         {
            this.§+m§ = 0;
            this.§5,§ = this.§ L§;
         }
         else
         {
            this.§+m§ = param1 * (this.§5U§ - this.§ L§) / param2;
            this.§5,§ = this.§ L§ + this.§+m§;
         }
         if(this.§ N§ == this.§7!-§ || param1 == 0)
         {
            this.§1Q§ = this.§ N§;
         }
         else if(this.§7!-§ > this.§ N§ && this.§7!-§ - this.§ N§ <= 180)
         {
            this.§1Q§ = this.§ N§ + param1 * (this.§7!-§ - this.§ N§) / param2;
         }
         else if(this.§7!-§ > this.§ N§ && this.§7!-§ - this.§ N§ > 180)
         {
            this.§1Q§ = this.§ N§ + param1 * (this.§7!-§ - 360 - this.§ N§) / param2;
         }
         else if(this.§7!-§ < this.§ N§ && this.§ N§ - this.§7!-§ <= 180)
         {
            this.§1Q§ = this.§ N§ + param1 * (this.§7!-§ - this.§ N§) / param2;
         }
         else if(this.§7!-§ < this.§ N§ && this.§ N§ - this.§7!-§ > 180)
         {
            this.§1Q§ = this.§ N§ + param1 * (this.§7!-§ + 360 - this.§ N§) / param2;
         }
      }
      
      public function get §&!,§() : Point
      {
         if(!§14§)
         {
         }
         return null;
      }
      
      public function §[!U§() : Boolean
      {
         return this.§[w§ == §'!D§.§=l§ || this.§[w§ == §'!D§.§0!N§;
      }
      
      public function §,m§() : Boolean
      {
         return this.§[w§ == §'!D§.§5[§;
      }
      
      public function §=N§() : Boolean
      {
         return this.§[w§ == §'!D§.§&r§;
      }
      
      public function §,p§() : Boolean
      {
         return this.§[w§ == §'!D§.§0!N§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§[w§ == §'!D§.§;!,§;
      }
      
      public function isGround() : Boolean
      {
         return this.§[w§ == §'!D§.§&!'§;
      }
      
      public function §]e§() : Boolean
      {
         return this.§[w§ == §'!D§.§?!C§;
      }
      
      public function §;Y§() : Boolean
      {
         return this.§[w§ == §'!D§.§&!>§;
      }
      
      public function §8!H§() : Boolean
      {
         if(this.§1T§ == "MISC_EXPLOSIVE_TNT" || this.§1T§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §'!-§() : Boolean
      {
         return (this.§,m§() || this.§]e§() || this.§;Y§()) && !this.§'v§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §=!$§() : Number
      {
         return Number(Math.sqrt(this.§1!d§().GetLinearVelocity().x * this.§1!d§().GetLinearVelocity().x + this.§1!d§().GetLinearVelocity().y * this.§1!d§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§=N§())
         {
            return this.§"!D§;
         }
         if(!this.§,L§.§8s§())
         {
            return this.§"!D§;
         }
         if(this.§+![§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§@!@§(§0u§.§&"§);
            }
            else if(param1 > 12)
            {
               this.§@!@§(§0u§.§3a§);
            }
            else if(param1 > 3)
            {
               this.§@!@§(§0u§.§]!Q§);
            }
            return this.§"!D§;
         }
         if(param1 <= this.§+![§)
         {
            if(param1 >= this.§+![§ / 2)
            {
               this.§@!@§(§0u§.§]!Q§);
            }
            if(this.§[!U§() && this.§"!D§ == this.§?L§)
            {
               this.§"!D§ = this.§?L§ - 1;
            }
            return this.§"!D§;
         }
         param1 -= this.§+![§;
         if(param2 && this.§'!-§())
         {
            _loc7_ = Math.min(this.§"!D§,int(param1));
            _loc8_ = §&_§.§<!'§.getValue() * _loc7_;
            this.§,L§.mLevelMain.addScore(_loc8_,§-!3§.§[!0§,this.§"!D§ > param1 && param3,this.§1!d§().GetPosition().x,this.§1!d§().GetPosition().y,§;Z§.§6%§(this.§1T§));
         }
         if(!(param5 && this.§=T§))
         {
            this.§"!D§ -= param1;
         }
         if(this.§"!D§ < 1 && this.§[!U§())
         {
            this.§"!D§ = 1;
         }
         if(this.§"!D§ < 1)
         {
            this.§"!D§ = 0;
            §[!3§.§'!d§(§0u§.§&"§,this.§<@§.§^c§,"ChannelDestroyed");
         }
         else
         {
            this.§@!@§(§0u§.§3a§);
            this.addDamageParticles(this.§,L§.mLevelMain.particles,param1);
         }
         this.§4!%§.setDamagedFrame();
         return this.§"!D§;
      }
      
      public function §@!@§(param1:int) : void
      {
         §[!3§.§'!d§(param1,this.§<@§.§^c§);
      }
      
      public function §%!A§(param1:String) : Number
      {
         return this.§<@§.material.§#$§(param1) * this.§`!H§;
      }
      
      public function §!!`§(param1:String) : Number
      {
         return this.§<@§.material.§4!8§(param1);
      }
      
      public function §]!<§() : String
      {
         return this.§<@§.material.mName;
      }
      
      public function §9A§() : Number
      {
         return this.§<@§.§8!3§();
      }
      
      public function §+<§() : int
      {
         return this.§<@§.§^[§();
      }
      
      public function §!,§() : Boolean
      {
         return this.§1!d§().IsAwake() && (this.§[!U§() && this.§"!D§ == this.§?L§ || Math.abs(this.§1!d§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§1!d§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§1!d§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §]C§() : Boolean
      {
         if(!this.§1!d§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§1!d§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(this.§1!d§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 10 && Math.abs(this.§1!d§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 10)
         {
            return false;
         }
         return true;
      }
      
      public function §!i§(param1:Number = 3) : void
      {
         this.§`!H§ = param1;
         if(this.§`!H§ > 1)
         {
            this.§4!%§.§`!B§();
         }
         else
         {
            this.§4!%§.§7E§ = null;
         }
      }
      
      public function §!!W§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§<@§.§?!7§() == §=!3§.§4! §)
         {
            _loc2_ = this.§4!%§.mW * this.§4!%§.mH * (§&_§.§5-§ * §&_§.§5-§);
         }
         else
         {
            _loc2_ = this.§1!d§().GetMass() / this.§9!2§.§7N§();
            if(param1)
            {
               _loc2_ *= this.§%!=§();
            }
            _loc2_ /= this.§ 6§ * this.§ 6§;
         }
         return _loc2_;
      }
      
      public function §%!=§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§4!%§.§?!6§ - 1) / 10);
      }
      
      public function §,!X§(param1:Number) : void
      {
         var _loc2_:Number = this.§1!d§().GetLinearVelocity().x;
         var _loc3_:Number = this.§1!d§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§1!d§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§+!?§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§1D§) : void
      {
      }
      
      public function addDamageParticles(param1:§1D§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §2!%§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§1!d§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§1!d§().§>!1§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§7V§()) + 360) % 360;
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
            this.§8l§(_loc4_);
         }
         var _loc3_:Number = this.§7V§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§8l§(_loc3_);
      }
      
      public function §^^§(param1:Number) : void
      {
         var _loc2_:Number = §0l§(this.§1!d§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §9!@§(_loc2_);
         this.§1!d§().§8z§(_loc2_);
      }
      
      public function §58§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§1!d§().GetPosition().Copy();
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
         this.§1!d§().§>!1§(_loc13_);
      }
   }
}
