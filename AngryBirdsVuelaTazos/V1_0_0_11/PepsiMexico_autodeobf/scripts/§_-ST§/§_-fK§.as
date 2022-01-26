package §_-ST§
{
   import §_-26§.b2PolygonShape;
   import §_-5x§.§_-8p§;
   import §_-B7§.§_-7Y§;
   import §_-B7§.§_-G§;
   import §_-B7§.§_-TP§;
   import §_-B7§.§_-cO§;
   import §_-B7§.§_-pl§;
   import §_-Vq§.§_-dI§;
   import §_-Vq§.§_-gu§;
   import §_-WW§.b2Body;
   import §_-WW§.b2BodyDef;
   import §_-WW§.b2FilterData;
   import §_-WW§.b2Fixture;
   import §_-WW§.b2World;
   import §_-ZG§.§_-Ne§;
   import §_-dx§.b2Vec2;
   import §_-ez§.§_-Ay§;
   import §_-iO§.b2Settings;
   import §_-vO§.Sprite;
   import flash.geom.Point;
   
   public class §_-fK§
   {
      
      public static const §_-En§:uint = 1 << 1;
      
      public static const §_-2V§:uint = 1 << 2;
      
      public static const §_-f2§:uint = 1 << 3;
      
      public static const §_-mf§:uint = 1 << 4;
      
      public static const §_-pz§:Boolean = true;
       
      
      private var §_-ID§:int;
      
      private var § else§:int;
      
      public var §_-Pd§:String;
      
      public var §_-iw§:int;
      
      private var §_-8O§:§_-G§;
      
      private var §_-EU§:§_-oF§;
      
      private var §_-vd§:b2World;
      
      private var §_-Kf§:b2Fixture;
      
      private var §_-1w§:b2Body;
      
      private var §_-gL§:b2Vec2;
      
      public var §_-Sy§:Number;
      
      public var §_-JQ§:Number;
      
      private var §_-a§:Number;
      
      private var §_-dG§:Number;
      
      private var §_-JA§:Number;
      
      private var §_-Q0§:Number;
      
      private var §_-fi§:Number;
      
      private var §_-nR§:Number;
      
      private var §_-ta§:Number;
      
      public var §_-Ry§:Number = 1;
      
      public var §_-uK§:Number = 0;
      
      public var §_-88§:Number = 0;
      
      protected var §_-OG§:Boolean = false;
      
      public var §_-ds§:§_-T6§;
      
      private var §_-0O§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-AM§:Number = 0;
      
      public function §_-fK§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         var _loc12_:b2PolygonShape = null;
         super();
         this.§_-Pd§ = param6;
         this.§_-8O§ = §_-cO§.§_-9y§(param6);
         this.§_-EU§ = param1;
         this.§_-0O§ = param2;
         this.§_-ID§ = param5;
         this.§_-iw§ = this.§_-8O§.§_-iw§;
         this.§ else§ = this.§_-8O§.§_-vw§();
         this.§_-ds§ = new §_-T6§(this,param2,param4);
         if(!this.§_-ds§.§_-Mq§(param1.§_-9N§.§_-wg§))
         {
            this.§_-ds§.§_-64§(this.§ else§,this.§_-8O§.§_-OQ§(),this.§_-8O§.§_-Oi§() / §_-Ay§.§_-G0§,this.§_-8O§.§_-xR§() / §_-Ay§.§_-G0§);
         }
         this.§_-ds§.§_-Nn§(this.§ else§ == §_-pl§.§_-gb§);
         this.§_-vd§ = param3;
         var _loc10_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-1w§ = this.§_-vd§.§_-LE§(_loc10_);
         this.§_-1w§.§_-t4§(this);
         if(this.§ else§ == §_-pl§.§_-GK§)
         {
            _loc12_ = b2PolygonShape.§_-A-§(this.§_-8O§.shape.§_-x9§,this.§_-8O§.shape.§_-Ql§);
            this.§_-Kf§ = this.§_-1w§.CreateFixture2(_loc12_,this.§_-8O§.§_-hD§());
         }
         else if(this.§ else§ == §_-pl§.§_-gb§ || this.§ else§ == §_-pl§.§_-Fj§)
         {
            this.§_-Kf§ = this.§_-1w§.CreateFixture2(this.§_-8O§.shape.§_-D4§(),this.§_-8O§.§_-hD§());
         }
         this.§_-Kf§.§_-ZS§(this.§_-8O§.§_-tD§());
         this.§_-Kf§.§_-Ir§(this.§_-8O§.§_-1z§());
         var _loc11_:b2FilterData = new b2FilterData();
         if(this.§_-Jw§())
         {
            _loc11_.§_-vi§ = §_-En§;
            _loc11_.§_-ML§ = 65535 & ~§_-2V§;
         }
         else if(this.§_-Pd§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-Pd§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc11_.§_-vi§ = §_-2V§;
            _loc11_.§_-ML§ = 65535 & ~§_-En§;
         }
         this.§_-Kf§.§super§(_loc11_);
         this.§_-a§ = this.§_-8O§.§_-Yc§();
         if(this.§_-8O§.§_-JQ§ > 0)
         {
            this.§_-Sy§ = this.§_-JQ§ = this.§_-8O§.§_-JQ§;
         }
         else
         {
            this.§_-Sy§ = this.§_-JQ§ = Math.round(this.§_-2R§(true) * this.§_-8O§.§_-bz§());
            if(this.§_-Sy§ < 1)
            {
               this.§_-Sy§ = this.§_-JQ§ = 1;
            }
         }
         if(this.§_-8O§.§_-iw§ == §_-G§.§case §)
         {
            this.§_-0O§.visible = false;
         }
         else
         {
            this.§_-ds§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-jM§(param9);
         }
         this.§_-T0§();
         this.§_-U5§(0,1);
         this.§_-ds§.§_-5-§(this.§_-8O§.shape);
      }
      
      public static function §_-oI§(param1:int, param2:§_-TP§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-dR§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-4U§;
            }
            §_-8p§.§_-0t§(_loc4_,param3);
         }
      }
      
      public static function §_-x4§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-sd§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-0O§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §_-g-§() : Number
      {
         return this.§_-1w§.GetPosition().x;
      }
      
      public function get §_-3l§() : Number
      {
         return this.§_-1w§.GetPosition().y;
      }
      
      public function get §_-kx§() : §_-G§
      {
         return this.§_-8O§;
      }
      
      public function get §_-sB§() : Boolean
      {
         return this.§_-a§ >= 0;
      }
      
      protected function get container() : §_-oF§
      {
         return this.§_-EU§;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-ku§(param1:b2FilterData) : void
      {
         if(this.§_-Kf§)
         {
            this.§_-Kf§.§super§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-8O§.§_-Dx§();
         _loc3_.§_-tZ§ = true;
         _loc3_.§_-az§ = true;
         _loc3_.§_-lQ§ = true;
         _loc3_.§_-cj§ = 1;
         _loc3_.§_-XV§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§_-vd§)
         {
            this.§_-vd§.§_-Ts§(this.§_-Nu§());
            this.§_-vd§ = null;
         }
         this.§_-ds§.dispose();
         if(this.§_-0O§)
         {
            this.§_-0O§.dispose();
            this.§_-0O§ = null;
         }
         this.§_-Kf§ = null;
         this.§_-gL§ = null;
         this.§_-8O§ = null;
      }
      
      public function §_-jM§(param1:Number) : void
      {
         this.§_-Nu§().§_-Xb§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-Ld§() : Number
      {
         return (360 - this.§_-Nu§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-pK§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-Nu§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-N8§();
         }
         if(param3)
         {
            this.§_-09§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-Kf§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-Nu§().GetPosition().x >= param3 && this.§_-Nu§().GetPosition().x <= param4 && this.§_-Nu§().GetPosition().y >= param1 && this.§_-Nu§().GetPosition().y <= param2;
      }
      
      public function §_-VE§(param1:b2Vec2) : void
      {
         this.§_-gL§ = param1;
      }
      
      public function §_-hF§() : void
      {
         if(this.§_-gL§)
         {
            this.§_-pK§(this.§_-gL§,false);
            this.§_-gL§ = null;
         }
      }
      
      public function §_-N8§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-Nu§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-Nu§().§_-sw§(0);
         }
         else
         {
            this.§_-Nu§().§_-sw§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-09§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-Nu§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-jM§(_loc2_);
      }
      
      public function §_-3t§(param1:Number) : void
      {
         this.§_-Nu§().§_-sw§(param1);
      }
      
      public function §_-Nu§() : b2Body
      {
         if(this.§_-Kf§ != null)
         {
            return this.§_-Kf§.GetBody();
         }
         return null;
      }
      
      public function §_-Gg§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§_-Nu§().GetPosition().x = this.mX * §_-Ay§.§_-G0§;
         this.§_-Nu§().GetPosition().y = this.mY * §_-Ay§.§_-G0§;
      }
      
      public function §_-U5§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-OG§)
         {
            _loc3_ = true;
            this.§_-OG§ = false;
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
            this.§_-ds§.§_-Bt§();
         }
         if(this.§_-Ry§ > 1 && this.§_-ds§.§_-0m§)
         {
            _loc4_ = 4 + (this.§_-ds§.§_-0m§.blurX - 4 + param2 / 20) % 28;
            this.§_-ds§.§_-0m§.blurX = _loc4_;
            this.§_-ds§.§_-0m§.blurY = _loc4_;
         }
         this.§_-ds§.§_-bK§(param2);
         if(§_-pz§)
         {
            this.§_-g5§(param1);
         }
         else
         {
            this.§_-AM§ = this.§_-Q0§;
            this.mX = this.§_-dG§;
            this.mY = this.§_-JA§;
         }
         this.§_-0O§.x = Math.round(this.mX);
         this.§_-0O§.y = Math.round(this.mY);
         this.§_-0O§.rotation = this.§_-AM§ / 180 * Math.PI;
      }
      
      public function §_-T0§() : void
      {
         var _loc1_:Number = this.§_-Nu§().GetPosition().x;
         var _loc2_:Number = this.§_-Nu§().GetPosition().y;
         this.§_-ta§ = this.§_-Q0§;
         this.§_-fi§ = this.§_-dG§;
         this.§_-nR§ = this.§_-JA§;
         this.§_-Q0§ = this.§_-Nu§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-dG§ = _loc1_ / §_-Ay§.§_-G0§;
         this.§_-JA§ = _loc2_ / §_-Ay§.§_-G0§;
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
      
      public function §_-g5§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 0)
         {
            §_-Ne§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-EU§.§_-9N§.§_-dv§.§_-EV§ * 1000;
         }
         param1 *= -1;
         if(this.§_-dG§ == this.§_-fi§ || param1 == 0)
         {
            this.§_-uK§ = 0;
            this.mX = this.§_-dG§;
         }
         else
         {
            this.§_-uK§ = param1 * (this.§_-fi§ - this.§_-dG§) / param2;
            this.mX = this.§_-dG§ + this.§_-uK§;
         }
         if(this.§_-JA§ == this.§_-nR§ || param1 == 0)
         {
            this.§_-88§ = 0;
            this.mY = this.§_-JA§;
         }
         else
         {
            this.§_-88§ = param1 * (this.§_-nR§ - this.§_-JA§) / param2;
            this.mY = this.§_-JA§ + this.§_-88§;
         }
         if(this.§_-Q0§ == this.§_-ta§ || param1 == 0)
         {
            this.§_-AM§ = this.§_-Q0§;
         }
         else if(this.§_-ta§ > this.§_-Q0§ && this.§_-ta§ - this.§_-Q0§ <= 180)
         {
            this.§_-AM§ = this.§_-Q0§ + param1 * (this.§_-ta§ - this.§_-Q0§) / param2;
         }
         else if(this.§_-ta§ > this.§_-Q0§ && this.§_-ta§ - this.§_-Q0§ > 180)
         {
            this.§_-AM§ = this.§_-Q0§ + param1 * (this.§_-ta§ - 360 - this.§_-Q0§) / param2;
         }
         else if(this.§_-ta§ < this.§_-Q0§ && this.§_-Q0§ - this.§_-ta§ <= 180)
         {
            this.§_-AM§ = this.§_-Q0§ + param1 * (this.§_-ta§ - this.§_-Q0§) / param2;
         }
         else if(this.§_-ta§ < this.§_-Q0§ && this.§_-Q0§ - this.§_-ta§ > 180)
         {
            this.§_-AM§ = this.§_-Q0§ + param1 * (this.§_-ta§ + 360 - this.§_-Q0§) / param2;
         }
      }
      
      public function get §_-TS§() : Point
      {
         if(!§_-pz§)
         {
         }
         return null;
      }
      
      public function §_-Jw§() : Boolean
      {
         return this.§_-iw§ == §_-G§.§_-hP§ || this.§_-iw§ == §_-G§.§_-Tk§;
      }
      
      public function §_-M4§() : Boolean
      {
         return this.§_-iw§ == §_-G§.§_-EJ§;
      }
      
      public function §_-KI§() : Boolean
      {
         return this.§_-iw§ == §_-G§.§_-Cw§;
      }
      
      public function §_-LQ§() : Boolean
      {
         return this.§_-iw§ == §_-G§.§_-Tk§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-iw§ == §_-G§.§_-hJ§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-iw§ == §_-G§.§case §;
      }
      
      public function §_-8x§() : Boolean
      {
         return this.§_-iw§ == §_-G§.§_-5M§;
      }
      
      public function §_-GH§() : Boolean
      {
         return this.§_-iw§ == §_-G§.§_-TO§;
      }
      
      public function §_-Is§() : Boolean
      {
         if(this.§_-Pd§ == "MISC_EXPLOSIVE_TNT")
         {
            return true;
         }
         return false;
      }
      
      public function §_-iZ§() : Boolean
      {
         return this.§_-M4§() || this.§_-8x§() || this.§_-GH§();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-fw§() : Number
      {
         return Number(Math.sqrt(this.§_-Nu§().GetLinearVelocity().x * this.§_-Nu§().GetLinearVelocity().x + this.§_-Nu§().GetLinearVelocity().y * this.§_-Nu§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:int = 0;
         if(this.§_-KI§())
         {
            return this.§_-Sy§;
         }
         if(!this.§_-EU§.§_-Ac§())
         {
            return this.§_-Sy§;
         }
         if(this.§_-a§ < 0)
         {
            if(param1 > 30)
            {
               this.§_-j1§(§_-TP§.§_-1Z§);
            }
            else if(param1 > 12)
            {
               this.§_-j1§(§_-TP§.§_-tT§);
            }
            else if(param1 > 3)
            {
               this.§_-j1§(§_-TP§.§_-sU§);
            }
            return this.§_-Sy§;
         }
         if(param1 < this.§_-a§)
         {
            if(param1 >= this.§_-a§ / 2)
            {
               this.§_-j1§(§_-TP§.§_-sU§);
            }
            if(this.§_-Jw§() && this.§_-Sy§ == this.§_-JQ§)
            {
               this.§_-Sy§ = this.§_-JQ§ - 1;
            }
            return this.§_-Sy§;
         }
         param1 -= this.§_-a§;
         if(param2 && this.§_-iZ§())
         {
            _loc5_ = §_-Ay§.§_-nf§ * int(param1);
            this.§_-EU§.§_-9N§.addScore(_loc5_,this.§_-Sy§ > param1 && param3,this.§_-Nu§().GetPosition().x,this.§_-Nu§().GetPosition().y,§_-gu§.§_-L2§(this.§_-Pd§));
         }
         this.§_-Sy§ -= param1;
         if(this.§_-Sy§ < 1 && this.§_-Jw§())
         {
            this.§_-Sy§ = 1;
         }
         if(this.§_-Sy§ < 1)
         {
            this.§_-Sy§ = 0;
            §_-fK§.§_-oI§(§_-TP§.§_-1Z§,this.§_-8O§.§_-Rn§,"ChannelDestroyed");
         }
         else
         {
            this.§_-j1§(§_-TP§.§_-tT§);
            this.addDamageParticles(this.§_-EU§.§_-9N§.§_-Rh§,param1);
         }
         this.§_-ds§.setDamagedFrame();
         return this.§_-Sy§;
      }
      
      public function §_-j1§(param1:int) : void
      {
         §_-fK§.§_-oI§(param1,this.§_-8O§.§_-Rn§);
      }
      
      public function §_-hO§(param1:String) : Number
      {
         return this.§_-8O§.material.§_-6e§(param1) * this.§_-Ry§;
      }
      
      public function §_-rB§(param1:String) : Number
      {
         return this.§_-8O§.material.§_-kS§(param1);
      }
      
      public function §_-3o§() : String
      {
         return this.§_-8O§.material.mName;
      }
      
      public function §_-VH§() : int
      {
         return this.§_-8O§.§_-cC§();
      }
      
      public function §_-NT§() : Boolean
      {
         return this.§_-Nu§().IsAwake() && (this.§_-Jw§() && this.§_-Sy§ == this.§_-JQ§ || Math.abs(this.§_-Nu§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-Nu§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-Nu§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-BS§() : Boolean
      {
         if(!this.§_-Nu§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§_-Nu§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-Nu§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-Nu§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-eJ§(param1:Number = 3) : void
      {
         this.§_-Ry§ = param1;
         if(this.§_-Ry§ > 1)
         {
            this.§_-ds§.§_-CA§();
         }
         else
         {
            this.§_-ds§.§_-0m§ = null;
         }
      }
      
      public function §_-2R§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-8O§.§_-Dx§() == §_-7Y§.§_-Pm§)
         {
            _loc2_ = this.§_-ds§.mW * this.§_-ds§.mH * (§_-Ay§.§_-G0§ * §_-Ay§.§_-G0§);
         }
         else
         {
            _loc2_ = this.§_-Nu§().GetMass() / this.§_-Kf§.§_-TH§();
            if(param1)
            {
               _loc2_ *= this.§_-1g§();
            }
         }
         return _loc2_;
      }
      
      public function §_-1g§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-ds§.§_-Fh§ - 1) / 10);
      }
      
      public function §_-4r§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-Nu§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-Nu§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-Nu§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-oF§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-dI§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-dI§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-e1§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-Nu§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-Nu§().§_-5s§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§_-Ld§();
            _loc3_ = (_loc3_ + 360) % 360;
            _loc4_ = 0;
            if(param1 != 0)
            {
               _loc4_ = _loc3_ % param1;
            }
            if(_loc4_ < param1 / 2)
            {
               _loc3_ -= _loc4_;
            }
            else
            {
               _loc3_ += param1 - _loc4_;
            }
            this.§_-jM§(_loc3_);
         }
         this.§_-jM§(this.§_-Ld§() + param1);
      }
      
      public function §_-1P§(param1:Number) : void
      {
         var _loc2_:Number = §_-x4§(this.§_-Nu§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-sd§(_loc2_);
         this.§_-Nu§().§_-Xb§(_loc2_);
      }
      
      public function §_-v4§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-Nu§().GetPosition().Copy();
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
         this.§_-Nu§().§_-5s§(_loc13_);
      }
   }
}
