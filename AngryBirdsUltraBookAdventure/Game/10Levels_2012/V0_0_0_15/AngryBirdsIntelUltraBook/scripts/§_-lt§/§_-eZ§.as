package §_-lt§
{
   import §_-03n§.b2PolygonShape;
   import §_-0BH§.§_-FK§;
   import §_-0DG§.§_-0-A§;
   import §_-0DG§.§_-09t§;
   import §_-0DG§.§_-a2§;
   import §_-0DG§.§_-au§;
   import §_-0DG§.§_-sQ§;
   import §_-4g§.§_-pX§;
   import §_-5§.b2Settings;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-40§;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2BodyDef;
   import §_-aU§.b2FilterData;
   import §_-aU§.b2Fixture;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   import flash.geom.Point;
   
   public class §_-eZ§
   {
      
      public static const §_-xV§:uint = 1 << 1;
      
      public static const §_-07Y§:uint = 1 << 2;
      
      public static const §_-1w§:uint = 1 << 3;
      
      public static const §_-0Cm§:uint = 1 << 4;
      
      public static const §_-ko§:Boolean = true;
       
      
      private var §_-9U§:String;
      
      private var §_-Ff§:int;
      
      private var §_-02f§:int;
      
      public var §_-o2§:String;
      
      public var §_-kD§:int;
      
      private var §_-0AN§:§_-0-A§;
      
      private var §_-7c§:§_-30§;
      
      private var mWorld:b2World;
      
      protected var §_-SE§:String = "";
      
      protected var §_-nf§:int = 1;
      
      private var §_-hd§:b2Fixture;
      
      private var §_-qv§:b2Body;
      
      private var §_-rb§:b2Vec2;
      
      public var §_-Kh§:Number;
      
      public var §_-8l§:Number;
      
      private var §_-uZ§:Number;
      
      private var §_-88§:Boolean = false;
      
      private var §_-Wh§:Number;
      
      private var §_-lZ§:Number;
      
      private var §_-0EG§:Number;
      
      private var §_-j8§:Number;
      
      private var §_-02§:Number;
      
      private var §_-DK§:Number;
      
      public var §_-JZ§:Number = 1;
      
      private var §_-0BO§:Boolean = false;
      
      public var §_-02Q§:Number = 0;
      
      public var §_-yE§:Number = 0;
      
      protected var §_-07A§:Boolean = false;
      
      public var §_-U-§:§_-05W§;
      
      private var §_-FQ§:Sprite;
      
      private var §_-c§:Number = 0;
      
      private var §_-l1§:Number = 0;
      
      private var §_-0Cn§:Number = 0;
      
      private var §_-XE§:Number = 1.0;
      
      private var §_-05j§:Boolean = false;
      
      private var §_-dS§:Vector.<Vector.<Number>>;
      
      private var §_-CU§:int = 10;
      
      private var §_-kc§:Boolean = true;
      
      public function §_-eZ§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         this.§_-dS§ = new Vector.<Vector.<Number>>();
         super();
         this.§_-o2§ = param6;
         this.§_-0AN§ = §_-09t§.§_-yf§(param6);
         this.§_-7c§ = param1;
         this.§_-FQ§ = param2;
         this.§_-XE§ = param10;
         this.§_-05j§ = param11;
         this.§_-Ff§ = param5;
         this.§_-kD§ = this.§_-0AN§.§_-kD§;
         this.§_-02f§ = this.§_-0AN§.§_-Kt§();
         this.§_-dS§[0] = new Vector.<Number>();
         this.§_-dS§[1] = new Vector.<Number>();
         this.§_-dS§[2] = new Vector.<Number>();
         this.§_-U-§ = new §_-05W§(this,param2,param4);
         if(!this.§_-U-§.§_-xt§(param1.§_-6A§.animationManager))
         {
            this.§_-U-§.§_-07a§(this.§_-02f§,this.§_-0AN§.§_-0-K§(),this.§_-0AN§.§_-nJ§() / §_-00u§.§_-lY§,this.§_-0AN§.§_-8s§() / §_-00u§.§_-lY§);
         }
         this.§_-U-§.§_-QT§(this.§_-02f§ == §_-sQ§.§_-WD§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-qv§ = this.mWorld.§_-S0§(_loc12_);
         this.§_-qv§.§_-zJ§(this);
         if(this.§_-02f§ == §_-sQ§.§_-07J§)
         {
            _loc14_ = b2PolygonShape.§_-yM§(this.§_-0AN§.shape.§_-ux§ * param10,this.§_-0AN§.shape.§_-09f§ * param10);
            this.§_-hd§ = this.§_-qv§.CreateFixture2(_loc14_,this.§_-0AN§.§_-my§());
         }
         else if(this.§_-02f§ == §_-sQ§.§_-WD§ || this.§_-02f§ == §_-sQ§.§_-2b§)
         {
            this.§_-hd§ = this.§_-qv§.CreateFixture2(this.§_-0AN§.shape.§_-A1§(param10),this.§_-0AN§.§_-my§());
         }
         this.§_-hd§.§_-04G§(this.§_-0AN§.§_-01h§());
         this.§_-hd§.§_-in§(this.§_-0AN§.§_-6R§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§_-ye§())
         {
            _loc13_.§_-R-§ = §_-xV§;
            _loc13_.§_-j6§ = 65535 & ~§_-07Y§;
         }
         else if(this.§_-o2§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-o2§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§_-R-§ = §_-07Y§;
            _loc13_.§_-j6§ = 65535 & ~§_-xV§;
         }
         this.§_-hd§.§_-fL§(_loc13_);
         this.§_-uZ§ = this.§_-0AN§.§_-GW§();
         if(this.§_-0AN§.§_-8l§ > 0)
         {
            this.§_-Kh§ = this.§_-8l§ = this.§_-0AN§.§_-8l§;
         }
         else
         {
            this.§_-Kh§ = this.§_-8l§ = Math.round(this.§_-vw§(true) * this.§_-0AN§.§ get§());
            if(this.§_-Kh§ < 1)
            {
               this.§_-Kh§ = this.§_-8l§ = 1;
            }
         }
         if(this.§_-0AN§.§_-kD§ == §_-0-A§.§_-k9§)
         {
            this.§_-FQ§.visible = false;
         }
         else
         {
            this.§_-U-§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-7E§(param9);
         }
         this.§_-rj§();
         this.§_-x0§(0,1);
         this.§_-U-§.§_-kR§(this.§_-0AN§.shape);
      }
      
      public static function §_-7C§(param1:int, param2:§_-a2§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-XI§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-Bg§;
            }
            §_-pX§.§_-o5§(_loc4_,param3);
         }
      }
      
      public static function §_-R1§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-3X§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function get scale() : Number
      {
         return this.§_-XE§;
      }
      
      public function get front() : Boolean
      {
         return this.§_-05j§;
      }
      
      public function get §_-dB§() : Number
      {
         return this.§_-qv§.GetPosition().x;
      }
      
      public function get §_-5X§() : Number
      {
         return this.§_-qv§.GetPosition().y;
      }
      
      public function get §_-zm§() : §_-0-A§
      {
         return this.§_-0AN§;
      }
      
      public function get §_-0Cj§() : Boolean
      {
         return this.§_-uZ§ >= 0;
      }
      
      protected function get §_-jX§() : §_-30§
      {
         return this.§_-7c§;
      }
      
      public function get §_-ON§() : Boolean
      {
         return this.§_-kc§;
      }
      
      public function set §_-ON§(param1:Boolean) : void
      {
         this.§_-kc§ = param1;
      }
      
      public function set §_-mH§(param1:Boolean) : void
      {
         this.§_-88§ = param1;
      }
      
      public function set §_-Oy§(param1:uint) : void
      {
         this.§_-CU§ = param1;
      }
      
      public function get §_-Oy§() : uint
      {
         return this.§_-CU§;
      }
      
      public function get §_-0N§() : Boolean
      {
         return this.§_-0BO§;
      }
      
      public function set §_-0N§(param1:Boolean) : void
      {
         this.§_-0BO§ = param1;
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
         return this.§_-9U§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         this.§_-9U§ = param1;
      }
      
      public function §_-wj§(param1:b2FilterData) : void
      {
         if(this.§_-hd§)
         {
            this.§_-hd§.§_-fL§(param1);
         }
      }
      
      protected function §_-08L§(param1:String) : int
      {
         return §_-Hv§.§_-08L§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-0AN§.§_-MF§();
         _loc3_.§_-sD§ = true;
         _loc3_.§_-ag§ = true;
         _loc3_.§_-Ba§ = true;
         _loc3_.§_-ZI§ = 1;
         _loc3_.§_-mq§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§_-yl§(this.§_-SJ§());
            this.mWorld = null;
         }
         this.§_-U-§.dispose();
         if(this.§_-FQ§)
         {
            this.§_-FQ§.dispose();
            this.§_-FQ§ = null;
         }
         this.§_-hd§ = null;
         this.§_-rb§ = null;
         this.§_-0AN§ = null;
      }
      
      public function §_-7E§(param1:Number) : void
      {
         this.§_-SJ§().§_-2T§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-NN§() : Number
      {
         return (360 - this.§_-SJ§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-To§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-SJ§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-sZ§();
         }
         if(param3)
         {
            this.§_-0Cl§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-hd§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-SJ§().GetPosition().x >= param3 && this.§_-SJ§().GetPosition().x <= param4 && this.§_-SJ§().GetPosition().y >= param1 && this.§_-SJ§().GetPosition().y <= param2;
      }
      
      public function §_-jc§(param1:b2Vec2) : void
      {
         this.§_-rb§ = param1;
      }
      
      public function §_-03C§() : void
      {
         if(this.§_-rb§)
         {
            this.§_-To§(this.§_-rb§,false);
            this.§_-rb§ = null;
         }
      }
      
      public function §_-sZ§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-SJ§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-SJ§().§_-ZF§(0);
         }
         else
         {
            this.§_-SJ§().§_-ZF§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-0Cl§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-SJ§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-7E§(_loc2_);
      }
      
      public function §_-43§(param1:Number) : void
      {
         this.§_-SJ§().§_-ZF§(param1);
      }
      
      public function §_-SJ§() : b2Body
      {
         if(this.§_-hd§ != null)
         {
            return this.§_-hd§.GetBody();
         }
         return null;
      }
      
      public function §_-7e§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.§_-c§ = param1;
            this.§_-l1§ = param2;
         }
         this.§_-SJ§().GetPosition().x = this.§_-c§ * §_-00u§.§_-lY§;
         this.§_-SJ§().GetPosition().y = this.§_-l1§ * §_-00u§.§_-lY§;
      }
      
      public function §_-x0§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-07A§)
         {
            _loc3_ = true;
            this.§_-07A§ = false;
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
            this.§_-U-§.§_-JE§();
         }
         if(this.§_-JZ§ > 1 && this.§_-U-§.§_-yS§)
         {
            _loc4_ = 4 + (this.§_-U-§.§_-yS§.blurX - 4 + param2 / 20) % 28;
            this.§_-U-§.§_-yS§.blurX = _loc4_;
            this.§_-U-§.§_-yS§.blurY = _loc4_;
         }
         this.§_-U-§.§_-bJ§(param2);
         if(§_-ko§)
         {
            this.§_-r§(param1);
         }
         else
         {
            this.§_-0Cn§ = this.§_-0EG§;
            this.§_-c§ = this.§_-Wh§;
            this.§_-l1§ = this.§_-lZ§;
         }
         this.§_-FQ§.x = Math.round(this.§_-c§);
         this.§_-FQ§.y = Math.round(this.§_-l1§);
         this.§_-FQ§.rotation = this.§_-0Cn§ / 180 * Math.PI;
      }
      
      public function §_-rj§() : void
      {
         var _loc1_:Number = this.§_-SJ§().GetPosition().x;
         var _loc2_:Number = this.§_-SJ§().GetPosition().y;
         this.§_-DK§ = this.§_-0EG§;
         this.§_-j8§ = this.§_-Wh§;
         this.§_-02§ = this.§_-lZ§;
         this.§_-0EG§ = this.§_-SJ§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-Wh§ = _loc1_ / §_-00u§.§_-lY§;
         this.§_-lZ§ = _loc2_ / §_-00u§.§_-lY§;
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
      
      public function §_-r§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §_-FK§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-7c§.§_-6A§.mLevelEngine.§_-Jk§ * 1000;
         }
         param1 *= -1;
         if(this.§_-Wh§ == this.§_-j8§ || param1 == 0)
         {
            this.§_-02Q§ = 0;
            this.§_-c§ = this.§_-Wh§;
         }
         else
         {
            this.§_-02Q§ = param1 * (this.§_-j8§ - this.§_-Wh§) / param2;
            this.§_-c§ = this.§_-Wh§ + this.§_-02Q§;
         }
         if(this.§_-lZ§ == this.§_-02§ || param1 == 0)
         {
            this.§_-yE§ = 0;
            this.§_-l1§ = this.§_-lZ§;
         }
         else
         {
            this.§_-yE§ = param1 * (this.§_-02§ - this.§_-lZ§) / param2;
            this.§_-l1§ = this.§_-lZ§ + this.§_-yE§;
         }
         if(this.§_-0EG§ == this.§_-DK§ || param1 == 0)
         {
            this.§_-0Cn§ = this.§_-0EG§;
         }
         else if(this.§_-DK§ > this.§_-0EG§ && this.§_-DK§ - this.§_-0EG§ <= 180)
         {
            this.§_-0Cn§ = this.§_-0EG§ + param1 * (this.§_-DK§ - this.§_-0EG§) / param2;
         }
         else if(this.§_-DK§ > this.§_-0EG§ && this.§_-DK§ - this.§_-0EG§ > 180)
         {
            this.§_-0Cn§ = this.§_-0EG§ + param1 * (this.§_-DK§ - 360 - this.§_-0EG§) / param2;
         }
         else if(this.§_-DK§ < this.§_-0EG§ && this.§_-0EG§ - this.§_-DK§ <= 180)
         {
            this.§_-0Cn§ = this.§_-0EG§ + param1 * (this.§_-DK§ - this.§_-0EG§) / param2;
         }
         else if(this.§_-DK§ < this.§_-0EG§ && this.§_-0EG§ - this.§_-DK§ > 180)
         {
            this.§_-0Cn§ = this.§_-0EG§ + param1 * (this.§_-DK§ + 360 - this.§_-0EG§) / param2;
         }
      }
      
      public function get §_-xM§() : Point
      {
         if(!§_-ko§)
         {
         }
         return null;
      }
      
      public function §_-ye§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-Rh§ || this.§_-kD§ == §_-0-A§.§_-AS§;
      }
      
      public function §_-Es§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-Zt§;
      }
      
      public function §_-rN§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-gO§;
      }
      
      public function §_-21§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-AS§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-VN§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-k9§;
      }
      
      public function §_-KD§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-OZ§;
      }
      
      public function §_-oj§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-FB§;
      }
      
      public function §_-md§() : Boolean
      {
         if(this.§_-o2§ == "MISC_EXPLOSIVE_TNT" || this.§_-o2§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §_-r-§() : Boolean
      {
         return (this.§_-Es§() || this.§_-KD§() || this.§_-oj§()) && !this.§_-0N§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-06L§() : Number
      {
         return Number(Math.sqrt(this.§_-SJ§().GetLinearVelocity().x * this.§_-SJ§().GetLinearVelocity().x + this.§_-SJ§().GetLinearVelocity().y * this.§_-SJ§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§_-rN§())
         {
            return this.§_-Kh§;
         }
         if(!this.§_-7c§.§_-5u§())
         {
            return this.§_-Kh§;
         }
         if(this.§_-uZ§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§_-Dv§(§_-a2§.§_-05f§);
            }
            else if(param1 > 12)
            {
               this.§_-Dv§(§_-a2§.§_-lC§);
            }
            else if(param1 > 3)
            {
               this.§_-Dv§(§_-a2§.§_-H0§);
            }
            return this.§_-Kh§;
         }
         if(param1 <= this.§_-uZ§)
         {
            if(param1 >= this.§_-uZ§ / 2)
            {
               this.§_-Dv§(§_-a2§.§_-H0§);
            }
            if(this.§_-ye§() && this.§_-Kh§ == this.§_-8l§)
            {
               this.§_-Kh§ = this.§_-8l§ - 1;
            }
            return this.§_-Kh§;
         }
         param1 -= this.§_-uZ§;
         if(param2 && this.§_-r-§())
         {
            _loc7_ = Math.min(this.§_-Kh§,int(param1));
            _loc8_ = §_-00u§.§_-KE§.getValue() * _loc7_;
            this.§_-7c§.§_-6A§.addScore(_loc8_,§_-40§.§_-0Av§,this.§_-Kh§ > param1 && param3,this.§_-SJ§().GetPosition().x,this.§_-SJ§().GetPosition().y,§_-Hv§.§_-04e§(this.§_-o2§));
         }
         if(!(param5 && this.§_-88§))
         {
            this.§_-Kh§ -= param1;
         }
         if(this.§_-Kh§ < 1 && this.§_-ye§())
         {
            this.§_-Kh§ = 1;
         }
         if(this.§_-Kh§ < 1)
         {
            this.§_-Kh§ = 0;
            §_-eZ§.§_-7C§(§_-a2§.§_-05f§,this.§_-0AN§.§_-jf§,"ChannelDestroyed");
         }
         else
         {
            this.§_-Dv§(§_-a2§.§_-lC§);
            this.addDamageParticles(this.§_-7c§.§_-6A§.particles,param1);
         }
         this.§_-U-§.setDamagedFrame();
         return this.§_-Kh§;
      }
      
      public function §_-Dv§(param1:int) : void
      {
         §_-eZ§.§_-7C§(param1,this.§_-0AN§.§_-jf§);
      }
      
      public function §_-kB§(param1:String) : Number
      {
         return this.§_-0AN§.material.§_-Ht§(param1) * this.§_-JZ§;
      }
      
      public function §_-09j§(param1:String) : Number
      {
         return this.§_-0AN§.material.§_-Zm§(param1);
      }
      
      public function §_-r3§() : String
      {
         return this.§_-0AN§.material.mName;
      }
      
      public function §_-gj§() : Number
      {
         return this.§_-0AN§.§ get§();
      }
      
      public function §_-ez§() : int
      {
         return this.§_-0AN§.§_-8o§();
      }
      
      public function §_-Xw§() : Boolean
      {
         return this.§_-SJ§().IsAwake() && (this.§_-ye§() && this.§_-Kh§ == this.§_-8l§ || Math.abs(this.§_-SJ§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-SJ§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-SJ§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-01F§() : Boolean
      {
         if(!this.§_-SJ§().IsAwake())
         {
            return true;
         }
         return !this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         this.§_-wW§();
         if(Math.abs(this.§_-i6§(this.§_-dS§[0])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§_-i6§(this.§_-dS§[1])) < b2Settings.b2_linearSleepTolerance * 5 && Math.abs(this.§_-i6§(this.§_-dS§[2])) < b2Settings.b2_angularSleepTolerance * 5)
         {
            return false;
         }
         return true;
      }
      
      private function §_-i6§(param1:Vector.<Number>) : Number
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
      
      private function §_-wW§() : void
      {
         this.§_-dS§[0].push(this.§_-SJ§().GetLinearVelocity().x);
         this.§_-dS§[1].push(this.§_-SJ§().GetLinearVelocity().y);
         this.§_-dS§[2].push(this.§_-SJ§().GetAngularVelocity());
         var _loc1_:uint = 0;
         while(_loc1_ < 3)
         {
            if(this.§_-dS§[_loc1_].length > this.§_-CU§)
            {
               this.§_-dS§[_loc1_].shift();
            }
            _loc1_++;
         }
      }
      
      public function §_-Px§(param1:Number = 3) : void
      {
         this.§_-JZ§ = param1;
         if(this.§_-JZ§ > 1)
         {
            this.§_-U-§.§_-c4§();
         }
         else
         {
            this.§_-U-§.§_-yS§ = null;
         }
      }
      
      public function §_-vw§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-0AN§.§_-MF§() == §_-au§.§_-cU§)
         {
            _loc2_ = this.§_-U-§.mW * this.§_-U-§.mH * (§_-00u§.§_-lY§ * §_-00u§.§_-lY§);
         }
         else
         {
            _loc2_ = this.§_-SJ§().GetMass() / this.§_-hd§.§_-G-§();
            if(param1)
            {
               _loc2_ *= this.§_-AP§();
            }
            _loc2_ /= this.§_-XE§ * this.§_-XE§;
         }
         return _loc2_;
      }
      
      public function §_-AP§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-U-§.§_-0F9§ - 1) / 10);
      }
      
      public function §_-O1§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-SJ§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-SJ§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-SJ§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-Zc§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-Zc§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-QU§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-SJ§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-SJ§().§_-vE§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param2)
         {
            _loc4_ = ((_loc4_ = this.§_-NN§()) + 360) % 360;
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
            this.§_-7E§(_loc4_);
         }
         var _loc3_:Number = this.§_-NN§() + param1;
         _loc3_ = Math.round(_loc3_ / 22.5) * 22.5;
         this.§_-7E§(_loc3_);
      }
      
      public function §_-0Dc§(param1:Number) : void
      {
         var _loc2_:Number = §_-R1§(this.§_-SJ§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-3X§(_loc2_);
         this.§_-SJ§().§_-2T§(_loc2_);
      }
      
      public function §_-62§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-SJ§().GetPosition().Copy();
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
         this.§_-SJ§().§_-vE§(_loc13_);
      }
   }
}
