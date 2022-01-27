package §>Y§
{
   import §#!0§.§#-§;
   import §3!O§.§5q§;
   import §4!-§.§%o§;
   import §4!-§.§1F§;
   import §86§.Sprite;
   import §<4§.§ try§;
   import §<4§.§5!C§;
   import §<Z§.§ P§;
   import §<Z§.§ l§;
   import §<Z§.§5!G§;
   import §<Z§.§>!!§;
   import §<Z§.§^!C§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §#o§
   {
      
      public static const §<T§:uint = 1 << 1;
      
      public static const §>!I§:uint = 1 << 2;
      
      public static const §^!=§:uint = 1 << 3;
      
      public static const §>x§:uint = 1 << 4;
      
      public static const §<!+§:Boolean = true;
      
      public static const §35§:Number = 5;
      
      public static const §9q§:Number = 10;
       
      
      private var §+W§:String;
      
      private var §%H§:int;
      
      private var §6A§:int;
      
      public var §]q§:String;
      
      public var §5u§:int;
      
      private var §;U§:§^!C§;
      
      private var § y§:§2>§;
      
      private var §4=§:b2World;
      
      protected var §&X§:String = "";
      
      protected var §50§:int = 1;
      
      private var §@!G§:b2Fixture;
      
      private var §-k§:b2Body;
      
      private var §2t§:b2Vec2;
      
      public var §=4§:Number;
      
      public var §72§:Number;
      
      private var §<!P§:Number;
      
      private var §4!G§:Boolean = false;
      
      private var §&!3§:Number;
      
      private var §,!7§:Number;
      
      private var §9!C§:Number;
      
      private var §`p§:Number;
      
      private var §>Q§:Number;
      
      private var §'!$§:Number;
      
      public var §7!G§:Number = 1;
      
      private var §1!=§:Boolean = false;
      
      public var §^,§:Number = 0;
      
      public var §-L§:Number = 0;
      
      protected var §]!7§:Boolean = false;
      
      public var §%!B§:§^!,§;
      
      private var §+!N§:Sprite;
      
      private var §#$§:Number = 0;
      
      private var §do§:Number = 0;
      
      private var §>;§:Number = 0;
      
      private var §"[§:Number = 1.0;
      
      private var §+E§:Boolean = false;
      
      protected var §]1§:§=Q§;
      
      private var §1v§:Boolean = true;
      
      public function §#o§(param1:§2>§, param2:Sprite, param3:b2World, param4:§%o§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§]q§ = param6;
         this.§;U§ = § l§.§"<§(param6);
         this.§ y§ = param1;
         this.§+!N§ = param2;
         this.§"[§ = param10;
         this.§+E§ = param11;
         this.§%H§ = param5;
         this.§5u§ = this.§;U§.§5u§;
         this.§6A§ = this.§;U§.§6!2§();
         this.§]1§ = new §=Q§(§35§,§9q§);
         this.§%!B§ = new §^!,§(this,param2,param4);
         if(!this.§%!B§.§5!6§(param1.§'!8§.§>"§))
         {
            this.§%!B§.§+!-§(this.§6A§,this.§;U§.§"!§(),this.§;U§.§76§() / §%o§.§]!?§,this.§;U§.§[!2§() / §%o§.§]!?§);
         }
         this.§%!B§.§`!,§(this.§6A§ == § P§.§0!+§);
         this.§4=§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§-k§ = this.§4=§.CreateBody(_loc12_);
         this.§-k§.SetUserData(this);
         if(this.§6A§ == § P§.§<!D§)
         {
            _loc14_ = b2PolygonShape.AsBox(this.§;U§.shape.§]!E§ * param10,this.§;U§.shape.§+?§ * param10);
            this.§@!G§ = this.§-k§.CreateFixture2(_loc14_,this.§;U§.§+G§());
         }
         else if(this.§6A§ == § P§.§0!+§ || this.§6A§ == § P§.§3-§)
         {
            this.§@!G§ = this.§-k§.CreateFixture2(this.§;U§.shape.§#!M§(param10),this.§;U§.§+G§());
         }
         this.§@!G§.SetFriction(this.§;U§.§,!8§());
         this.§@!G§.SetRestitution(this.§;U§.§6K§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§-!D§())
         {
            _loc13_.categoryBits = §<T§;
            _loc13_.maskBits = 65535 & ~§>!I§;
         }
         else if(this.§]q§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§]q§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.categoryBits = §>!I§;
            _loc13_.maskBits = 65535 & ~§<T§;
         }
         this.§@!G§.SetFilterData(_loc13_);
         this.§<!P§ = this.§;U§.§9!$§();
         if(this.§;U§.§72§ > 0)
         {
            this.§=4§ = this.§72§ = this.§;U§.§72§;
         }
         else
         {
            this.§=4§ = this.§72§ = Math.round(this.§1+§(true) * this.§;U§.§ 2§());
            if(this.§=4§ < 1)
            {
               this.§=4§ = this.§72§ = 1;
            }
         }
         if(this.§;U§.§5u§ == §^!C§.§7>§)
         {
            this.§+!N§.visible = false;
         }
         else
         {
            this.§%!B§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§2j§(param9);
         }
         this.§3X§();
         this.§2!!§(0,1);
         this.§%!B§.§[!L§(this.§;U§.shape);
      }
      
      public static function §'#§(param1:int, param2:§5!G§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§[m§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§>f§;
            }
            §#-§.§-!'§(_loc4_,param3);
         }
      }
      
      public static function §?!B§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §8@§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§+!N§;
      }
      
      public function get x() : Number
      {
         return this.§#$§;
      }
      
      public function get y() : Number
      {
         return this.§do§;
      }
      
      public function get scale() : Number
      {
         return this.§"[§;
      }
      
      public function get front() : Boolean
      {
         return this.§+E§;
      }
      
      public function get §^!2§() : Number
      {
         return this.§-k§.GetPosition().x;
      }
      
      public function get §0a§() : Number
      {
         return this.§-k§.GetPosition().y;
      }
      
      public function get §5p§() : §^!C§
      {
         return this.§;U§;
      }
      
      public function get §?>§() : Boolean
      {
         return this.§<!P§ >= 0;
      }
      
      public function get container() : §2>§
      {
         return this.§ y§;
      }
      
      public function get §'!H§() : Boolean
      {
         return this.§1v§;
      }
      
      public function set §'!H§(param1:Boolean) : void
      {
         this.§1v§ = param1;
      }
      
      public function set §8§(param1:Boolean) : void
      {
         this.§4!G§ = param1;
      }
      
      public function set §[!J§(param1:uint) : void
      {
         this.§]1§.§[!J§ = param1;
      }
      
      public function get §[!J§() : uint
      {
         return this.§]1§.§[!J§;
      }
      
      public function get §0$§() : Boolean
      {
         return this.§1!=§;
      }
      
      public function set §0$§(param1:Boolean) : void
      {
         this.§1!=§ = param1;
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
         return this.§+W§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§+W§ = param1;
      }
      
      public function §>W§(param1:b2FilterData) : void
      {
         if(this.§@!G§)
         {
            this.§@!G§.SetFilterData(param1);
         }
      }
      
      protected function § 4§(param1:String) : int
      {
         return §5!C§.§ 4§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§;U§.§ !N§();
         _loc3_.allowSleep = true;
         _loc3_.active = true;
         _loc3_.awake = true;
         _loc3_.angularDamping = 1;
         _loc3_.bullet = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§4=§)
         {
            this.§4=§.DestroyBody(this.§[5§());
            this.§4=§ = null;
         }
         this.§%!B§.dispose();
         if(this.§+!N§)
         {
            this.§+!N§.dispose();
            this.§+!N§ = null;
         }
         this.§@!G§ = null;
         this.§2t§ = null;
         this.§;U§ = null;
      }
      
      public function §2j§(param1:Number) : void
      {
         this.§[5§().SetAngle((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §`,§() : Number
      {
         return (360 - this.§[5§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function static(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§[5§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§3f§();
         }
         if(param3)
         {
            this.§%!H§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§@!G§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§[5§().GetPosition().x >= param3 && this.§[5§().GetPosition().x <= param4 && this.§[5§().GetPosition().y >= param1 && this.§[5§().GetPosition().y <= param2;
      }
      
      public function §?^§(param1:b2Vec2) : void
      {
         this.§2t§ = param1;
      }
      
      public function §1!0§() : void
      {
         if(this.§2t§)
         {
            this.static(this.§2t§,false);
            this.§2t§ = null;
         }
      }
      
      public function §3f§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§[5§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§[5§().SetAngularVelocity(0);
         }
         else
         {
            this.§[5§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §%!H§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§[5§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§2j§(_loc2_);
      }
      
      public function §&;§(param1:Number) : void
      {
         this.§[5§().SetAngularVelocity(param1);
      }
      
      public function §[5§() : b2Body
      {
         if(this.§@!G§ != null)
         {
            return this.§@!G§.GetBody();
         }
         return null;
      }
      
      public function §0V§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§#$§ = param1;
            this.§do§ = param2;
         }
         this.§[5§().GetPosition().x = this.§#$§ * §%o§.§]!?§;
         this.§[5§().GetPosition().y = this.§do§ * §%o§.§]!?§;
      }
      
      public function §2!!§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§]!7§)
         {
            _loc3_ = true;
            this.§]!7§ = false;
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
            this.§%!B§.§-!C§();
         }
         if(this.§7!G§ > 1 && this.§%!B§.§0'§)
         {
            _loc4_ = 4 + (this.§%!B§.§0'§.blurX - 4 + param2 / 20) % 28;
            this.§%!B§.§0'§.blurX = _loc4_;
            this.§%!B§.§0'§.blurY = _loc4_;
         }
         this.§%!B§.§;2§(param2);
         if(§<!+§)
         {
            this.§3h§(param1);
         }
         else
         {
            this.§>;§ = this.§9!C§;
            this.§#$§ = this.§&!3§;
            this.§do§ = this.§,!7§;
         }
         this.§+!N§.x = Math.round(this.§#$§);
         this.§+!N§.y = Math.round(this.§do§);
         this.§+!N§.rotation = this.§>;§ / 180 * Math.PI;
      }
      
      public function §3X§() : void
      {
         var _loc1_:Number = this.§[5§().GetPosition().x;
         var _loc2_:Number = this.§[5§().GetPosition().y;
         this.§'!$§ = this.§9!C§;
         this.§`p§ = this.§&!3§;
         this.§>Q§ = this.§,!7§;
         this.§9!C§ = this.§[5§().GetAngle() * (180 / Math.PI) % 360;
         this.§&!3§ = _loc1_ / §%o§.§]!?§;
         this.§,!7§ = _loc2_ / §%o§.§]!?§;
         this.§]1§.§,!M§();
         this.§]1§.§6!'§(this.§[5§());
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
      
      public function §3h§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §5q§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§ y§.§'!8§.§,!%§.§;!H§ * 1000;
         }
         param1 *= -1;
         if(this.§&!3§ == this.§`p§ || param1 == 0)
         {
            this.§^,§ = 0;
            this.§#$§ = this.§&!3§;
         }
         else
         {
            this.§^,§ = param1 * (this.§`p§ - this.§&!3§) / param2;
            this.§#$§ = this.§&!3§ + this.§^,§;
         }
         if(this.§,!7§ == this.§>Q§ || param1 == 0)
         {
            this.§-L§ = 0;
            this.§do§ = this.§,!7§;
         }
         else
         {
            this.§-L§ = param1 * (this.§>Q§ - this.§,!7§) / param2;
            this.§do§ = this.§,!7§ + this.§-L§;
         }
         if(this.§9!C§ == this.§'!$§ || param1 == 0)
         {
            this.§>;§ = this.§9!C§;
         }
         else if(this.§'!$§ > this.§9!C§ && this.§'!$§ - this.§9!C§ <= 180)
         {
            this.§>;§ = this.§9!C§ + param1 * (this.§'!$§ - this.§9!C§) / param2;
         }
         else if(this.§'!$§ > this.§9!C§ && this.§'!$§ - this.§9!C§ > 180)
         {
            this.§>;§ = this.§9!C§ + param1 * (this.§'!$§ - 360 - this.§9!C§) / param2;
         }
         else if(this.§'!$§ < this.§9!C§ && this.§9!C§ - this.§'!$§ <= 180)
         {
            this.§>;§ = this.§9!C§ + param1 * (this.§'!$§ - this.§9!C§) / param2;
         }
         else if(this.§'!$§ < this.§9!C§ && this.§9!C§ - this.§'!$§ > 180)
         {
            this.§>;§ = this.§9!C§ + param1 * (this.§'!$§ + 360 - this.§9!C§) / param2;
         }
      }
      
      public function get §?Q§() : Point
      {
         if(!§<!+§)
         {
         }
         return null;
      }
      
      public function §-!D§() : Boolean
      {
         return this.§5u§ == §^!C§.§ 1§ || this.§5u§ == §^!C§.§&W§;
      }
      
      public function §3!4§() : Boolean
      {
         return this.§5u§ == §^!C§.§1n§;
      }
      
      public function §1H§() : Boolean
      {
         return this.§5u§ == §^!C§.§`q§;
      }
      
      public function §2O§() : Boolean
      {
         return this.§5u§ == §^!C§.§&W§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§5u§ == §^!C§.§[V§;
      }
      
      public function isGround() : Boolean
      {
         return this.§5u§ == §^!C§.§7>§;
      }
      
      public function §6X§() : Boolean
      {
         return this.§5u§ == §^!C§.§%!C§;
      }
      
      public function §]W§() : Boolean
      {
         return this.§5u§ == §^!C§.§'I§;
      }
      
      public function §%z§() : Boolean
      {
         if(this.§]q§ == "MISC_EXPLOSIVE_TNT" || this.§]q§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §+#§() : Boolean
      {
         return (this.§3!4§() || this.§6X§() || this.§]W§()) && !this.§0$§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §;G§() : Number
      {
         return Number(Math.sqrt(this.§[5§().GetLinearVelocity().x * this.§[5§().GetLinearVelocity().x + this.§[5§().GetLinearVelocity().y * this.§[5§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§1H§())
         {
            return this.§=4§;
         }
         if(!this.§ y§.§89§())
         {
            return this.§=4§;
         }
         if(this.§<!P§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§&l§(§5!G§.§4!<§);
            }
            else if(param1 > 12)
            {
               this.§&l§(§5!G§.§]r§);
            }
            else if(param1 > 3)
            {
               this.§&l§(§5!G§.§?!$§);
            }
            return this.§=4§;
         }
         if(param1 <= this.§<!P§)
         {
            if(param1 >= this.§<!P§ / 2)
            {
               this.§&l§(§5!G§.§?!$§);
            }
            if(this.§-!D§() && this.§=4§ == this.§72§)
            {
               this.§=4§ = this.§72§ - 1;
            }
            return this.§=4§;
         }
         param1 -= this.§<!P§;
         if(param2 && this.§+#§())
         {
            _loc7_ = Math.min(this.§=4§,int(param1));
            _loc8_ = §%o§.§-m§.getValue() * _loc7_;
            if(param5)
            {
               _loc8_ *= §%o§.§[L§;
            }
            this.§ y§.§'!8§.addScore(_loc8_,§1F§.§0S§,this.§=4§ > param1 && param3,this.§[5§().GetPosition().x,this.§[5§().GetPosition().y,§5!C§.§0L§(this.§]q§));
         }
         if(!(param5 && this.§4!G§))
         {
            this.§=4§ -= param1;
         }
         if(this.§=4§ < 1 && this.§-!D§())
         {
            this.§=4§ = 1;
         }
         if(this.§=4§ < 1)
         {
            this.§=4§ = 0;
            §#o§.§'#§(§5!G§.§4!<§,this.§;U§.§<M§,"ChannelDestroyed");
         }
         else
         {
            this.§&l§(§5!G§.§]r§);
            this.addDamageParticles(this.§ y§.§'!8§.particles,param1);
         }
         this.§%!B§.setDamagedFrame();
         return this.§=4§;
      }
      
      public function §&l§(param1:int) : void
      {
         §#o§.§'#§(param1,this.§;U§.§<M§);
      }
      
      public function §"!L§(param1:String) : Number
      {
         return this.§;U§.material.§`3§(param1) * this.§7!G§;
      }
      
      public function §2!J§(param1:String) : Number
      {
         return this.§;U§.material.§;!5§(param1);
      }
      
      public function §]N§() : String
      {
         return this.§;U§.material.mName;
      }
      
      public function §"!F§() : Number
      {
         return this.§;U§.§ 2§();
      }
      
      public function §+g§() : int
      {
         return this.§;U§.§]J§();
      }
      
      public function §7!,§() : Boolean
      {
         return this.§[5§().IsAwake() && (this.§-!D§() && this.§=4§ == this.§72§ || Math.abs(this.§[5§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§[5§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§[5§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §9!2§() : Boolean
      {
         if(!this.§[5§().IsAwake())
         {
            return true;
         }
         return !this.§1#§();
      }
      
      protected function §1#§() : Boolean
      {
         return this.§]1§.§1#§();
      }
      
      public function §;!%§(param1:Number = 3) : void
      {
         this.§7!G§ = param1;
         if(this.§7!G§ > 1)
         {
            this.§%!B§.§ !L§();
         }
         else
         {
            this.§%!B§.§0'§ = null;
         }
      }
      
      public function §1+§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§;U§.§ !N§() == §>!!§.§;^§)
         {
            _loc2_ = this.§%!B§.mW * this.§%!B§.mH * (§%o§.§]!?§ * §%o§.§]!?§);
         }
         else
         {
            _loc2_ = this.§[5§().GetMass() / this.§@!G§.GetDensity();
            if(param1)
            {
               _loc2_ *= this.§9&§();
            }
            _loc2_ /= this.§"[§ * this.§"[§;
         }
         return _loc2_;
      }
      
      public function §9&§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§%!B§.§[2§ - 1) / 10);
      }
      
      public function §]T§(param1:Number) : void
      {
         var _loc2_:Number = this.§[5§().GetLinearVelocity().x;
         var _loc3_:Number = this.§[5§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§[5§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§2>§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§ try§) : void
      {
      }
      
      public function addDamageParticles(param1:§ try§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §&!4§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§[5§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§[5§().SetPosition(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§`,§()) + 360) % 360;
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
            this.§2j§(_loc4_);
         }
         var _loc3_:Number = this.§`,§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§2j§(_loc3_);
      }
      
      public function §<2§(param1:Number) : void
      {
         var _loc2_:Number = §?!B§(this.§[5§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §8@§(_loc2_);
         this.§[5§().SetAngle(_loc2_);
      }
      
      public function §!T§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§[5§().GetPosition().Copy();
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
         this.§[5§().SetPosition(_loc13_);
      }
   }
}
