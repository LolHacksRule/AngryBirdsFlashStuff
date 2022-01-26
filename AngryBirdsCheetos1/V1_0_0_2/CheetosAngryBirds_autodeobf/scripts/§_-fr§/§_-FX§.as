package §_-fr§
{
   import § if§.b2PolygonShape;
   import §_-43§.b2Body;
   import §_-43§.b2BodyDef;
   import §_-43§.b2FilterData;
   import §_-43§.b2Fixture;
   import §_-43§.b2World;
   import §_-F2§.b2Vec2;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-bv§;
   import §_-Kz§.§_-c3§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   import §_-TV§.§_-KN§;
   import §_-TV§.§_-Or§;
   import §_-TV§.§_-Sk§;
   import §_-TV§.§_-gb§;
   import §_-TV§.§_-m0§;
   import §_-VH§.§_-X6§;
   import §_-aA§.§_-I0§;
   import §_-d6§.b2Settings;
   import flash.geom.Point;
   
   public class §_-FX§
   {
      
      public static const §_-O0§:uint = 1 << 1;
      
      public static const §_-W2§:uint = 1 << 2;
      
      public static const §_-Hu§:uint = 1 << 3;
      
      public static const §_-Tc§:uint = 1 << 4;
      
      public static const §_-r§:Boolean = true;
       
      
      private var §_-11§:int;
      
      private var §_-Xk§:int;
      
      public var §_-05§:String;
      
      public var §_-rV§:int;
      
      private var §_-zf§:§_-Or§;
      
      private var §_-4T§:§ else§;
      
      private var mWorld:b2World;
      
      private var §_-un§:b2Fixture;
      
      private var §_-Ap§:b2Body;
      
      private var §_-AQ§:b2Vec2;
      
      public var §_-KZ§:Number;
      
      public var §_-EU§:Number;
      
      private var §_-K3§:Number;
      
      private var §_-ue§:Boolean = false;
      
      private var §_-4S§:Number;
      
      private var §_-ge§:Number;
      
      private var §_-Fd§:Number;
      
      private var §_-o1§:Number;
      
      private var §_-aB§:Number;
      
      private var §_-gh§:Number;
      
      public var §_-bV§:Number = 1;
      
      private var §_-Wt§:Boolean = false;
      
      public var §_-Ys§:Number = 0;
      
      public var §_-v6§:Number = 0;
      
      protected var §_-dj§:Boolean = false;
      
      public var §_-9G§:§_-e9§;
      
      private var §_-xQ§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-Ga§:Number = 0;
      
      private var §_-uV§:Number = 1.0;
      
      private var §_-Ew§:Boolean = false;
      
      private var §_-Xc§:Boolean = true;
      
      public function §_-FX§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§_-05§ = param6;
         this.§_-zf§ = §_-gb§.§_-iR§(param6);
         this.§_-4T§ = param1;
         this.§_-xQ§ = param2;
         this.§_-uV§ = param10;
         this.§_-Ew§ = param11;
         this.§_-11§ = param5;
         this.§_-rV§ = this.§_-zf§.§_-rV§;
         this.§_-Xk§ = this.§_-zf§.§_-5k§();
         this.§_-9G§ = new §_-e9§(this,param2,param4);
         if(!this.§_-9G§.§_-98§(param1.§_-GF§.§_-oR§))
         {
            this.§_-9G§.§_-ND§(this.§_-Xk§,this.§_-zf§.§_-PW§(),this.§_-zf§.§_-Kx§() / §_-c3§.§_-GA§,this.§_-zf§.§_-tC§() / §_-c3§.§_-GA§);
         }
         this.§_-9G§.§_-RS§(this.§_-Xk§ == §_-KN§.§_-ul§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-Ap§ = this.mWorld.§_-dS§(_loc12_);
         this.§_-Ap§.§_-CM§(this);
         if(this.§_-Xk§ == §_-KN§.§_-wk§)
         {
            _loc14_ = b2PolygonShape.§_-BU§(this.§_-zf§.shape.§_-a9§ * param10,this.§_-zf§.shape.§_-7y§ * param10);
            this.§_-un§ = this.§_-Ap§.CreateFixture2(_loc14_,this.§_-zf§.§_-8i§());
         }
         else if(this.§_-Xk§ == §_-KN§.§_-ul§ || this.§_-Xk§ == §_-KN§.§_-60§)
         {
            this.§_-un§ = this.§_-Ap§.CreateFixture2(this.§_-zf§.shape.§_-qA§(param10),this.§_-zf§.§_-8i§());
         }
         this.§_-un§.§_-hl§(this.§_-zf§.§_-rB§());
         this.§_-un§.§_-rI§(this.§_-zf§.§_-Lg§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§_-Rp§())
         {
            _loc13_.§_-eR§ = §_-O0§;
            _loc13_.§_-uo§ = 65535 & ~§_-W2§;
         }
         else if(this.§_-05§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-05§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§_-eR§ = §_-W2§;
            _loc13_.§_-uo§ = 65535 & ~§_-O0§;
         }
         this.§_-un§.§_-0-C§(_loc13_);
         this.§_-K3§ = this.§_-zf§.§_-R-§();
         if(this.§_-zf§.§_-EU§ > 0)
         {
            this.§_-KZ§ = this.§_-EU§ = this.§_-zf§.§_-EU§;
         }
         else
         {
            this.§_-KZ§ = this.§_-EU§ = Math.round(this.§_-m8§(true) * this.§_-zf§.§_-C-§());
            if(this.§_-KZ§ < 1)
            {
               this.§_-KZ§ = this.§_-EU§ = 1;
            }
         }
         if(this.§_-zf§.§_-rV§ == §_-Or§.§_-nI§)
         {
            this.§_-xQ§.visible = false;
         }
         else
         {
            this.§_-9G§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-Dw§(param9);
         }
         this.§_-pW§();
         this.§_-J9§(0,1);
         this.§_-9G§.§_-00§(this.§_-zf§.shape);
      }
      
      public static function §_-oG§(param1:int, param2:§_-Sk§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-nh§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-EY§;
            }
            §_-X6§.§_-Qr§(_loc4_,param3);
         }
      }
      
      public static function §_-lk§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-Yl§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-xQ§;
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
         return this.§_-uV§;
      }
      
      public function get front() : Boolean
      {
         return this.§_-Ew§;
      }
      
      public function get §_-he§() : Number
      {
         return this.§_-Ap§.GetPosition().x;
      }
      
      public function get §_-JY§() : Number
      {
         return this.§_-Ap§.GetPosition().y;
      }
      
      public function get §_-9Z§() : §_-Or§
      {
         return this.§_-zf§;
      }
      
      public function get §_-HG§() : Boolean
      {
         return this.§_-K3§ >= 0;
      }
      
      protected function get container() : § else§
      {
         return this.§_-4T§;
      }
      
      public function get §_-s6§() : Boolean
      {
         return this.§_-Xc§;
      }
      
      public function set §_-s6§(param1:Boolean) : void
      {
         this.§_-Xc§ = param1;
      }
      
      public function set §_-Wy§(param1:Boolean) : void
      {
         this.§_-ue§ = param1;
      }
      
      public function get §_-yK§() : Boolean
      {
         return this.§_-Wt§;
      }
      
      public function set §_-yK§(param1:Boolean) : void
      {
         this.§_-Wt§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-yN§(param1:b2FilterData) : void
      {
         if(this.§_-un§)
         {
            this.§_-un§.§_-0-C§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-zf§.§_-bp§();
         _loc3_.§_-hm§ = true;
         _loc3_.§_-Je§ = true;
         _loc3_.§_-8A§ = true;
         _loc3_.§_-IM§ = 1;
         _loc3_.§_-S9§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§_-qD§(this.§implements§());
            this.mWorld = null;
         }
         this.§_-9G§.dispose();
         if(this.§_-xQ§)
         {
            this.§_-xQ§.dispose();
            this.§_-xQ§ = null;
         }
         this.§_-un§ = null;
         this.§_-AQ§ = null;
         this.§_-zf§ = null;
      }
      
      public function §_-Dw§(param1:Number) : void
      {
         this.§implements§().§_-oo§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-qr§() : Number
      {
         return (360 - this.§implements§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-PP§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§implements§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-Re§();
         }
         if(param3)
         {
            this.§_-Wv§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-un§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§implements§().GetPosition().x >= param3 && this.§implements§().GetPosition().x <= param4 && this.§implements§().GetPosition().y >= param1 && this.§implements§().GetPosition().y <= param2;
      }
      
      public function §_-AG§(param1:b2Vec2) : void
      {
         this.§_-AQ§ = param1;
      }
      
      public function §_-d1§() : void
      {
         if(this.§_-AQ§)
         {
            this.§_-PP§(this.§_-AQ§,false);
            this.§_-AQ§ = null;
         }
      }
      
      public function §_-Re§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§implements§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§implements§().§_-Ht§(0);
         }
         else
         {
            this.§implements§().§_-Ht§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-Wv§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§implements§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-Dw§(_loc2_);
      }
      
      public function §_-y7§(param1:Number) : void
      {
         this.§implements§().§_-Ht§(param1);
      }
      
      public function §implements§() : b2Body
      {
         if(this.§_-un§ != null)
         {
            return this.§_-un§.GetBody();
         }
         return null;
      }
      
      public function §_-qd§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§implements§().GetPosition().x = this.mX * §_-c3§.§_-GA§;
         this.§implements§().GetPosition().y = this.mY * §_-c3§.§_-GA§;
      }
      
      public function §_-J9§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-dj§)
         {
            _loc3_ = true;
            this.§_-dj§ = false;
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
            this.§_-9G§.§_-bC§();
         }
         if(this.§_-bV§ > 1 && this.§_-9G§.§_-ja§)
         {
            _loc4_ = 4 + (this.§_-9G§.§_-ja§.blurX - 4 + param2 / 20) % 28;
            this.§_-9G§.§_-ja§.blurX = _loc4_;
            this.§_-9G§.§_-ja§.blurY = _loc4_;
         }
         this.§_-9G§.§_-Il§(param2);
         if(§_-r§)
         {
            this.§_-cL§(param1);
         }
         else
         {
            this.§_-Ga§ = this.§_-Fd§;
            this.mX = this.§_-4S§;
            this.mY = this.§_-ge§;
         }
         this.§_-xQ§.x = Math.round(this.mX);
         this.§_-xQ§.y = Math.round(this.mY);
         this.§_-xQ§.rotation = this.§_-Ga§ / 180 * Math.PI;
      }
      
      public function §_-pW§() : void
      {
         var _loc1_:Number = this.§implements§().GetPosition().x;
         var _loc2_:Number = this.§implements§().GetPosition().y;
         this.§_-gh§ = this.§_-Fd§;
         this.§_-o1§ = this.§_-4S§;
         this.§_-aB§ = this.§_-ge§;
         this.§_-Fd§ = this.§implements§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-4S§ = _loc1_ / §_-c3§.§_-GA§;
         this.§_-ge§ = _loc2_ / §_-c3§.§_-GA§;
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
      
      public function §_-cL§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §_-I0§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-4T§.§_-GF§.mLevelEngine.§_-0-b§ * 1000;
         }
         param1 *= -1;
         if(this.§_-4S§ == this.§_-o1§ || param1 == 0)
         {
            this.§_-Ys§ = 0;
            this.mX = this.§_-4S§;
         }
         else
         {
            this.§_-Ys§ = param1 * (this.§_-o1§ - this.§_-4S§) / param2;
            this.mX = this.§_-4S§ + this.§_-Ys§;
         }
         if(this.§_-ge§ == this.§_-aB§ || param1 == 0)
         {
            this.§_-v6§ = 0;
            this.mY = this.§_-ge§;
         }
         else
         {
            this.§_-v6§ = param1 * (this.§_-aB§ - this.§_-ge§) / param2;
            this.mY = this.§_-ge§ + this.§_-v6§;
         }
         if(this.§_-Fd§ == this.§_-gh§ || param1 == 0)
         {
            this.§_-Ga§ = this.§_-Fd§;
         }
         else if(this.§_-gh§ > this.§_-Fd§ && this.§_-gh§ - this.§_-Fd§ <= 180)
         {
            this.§_-Ga§ = this.§_-Fd§ + param1 * (this.§_-gh§ - this.§_-Fd§) / param2;
         }
         else if(this.§_-gh§ > this.§_-Fd§ && this.§_-gh§ - this.§_-Fd§ > 180)
         {
            this.§_-Ga§ = this.§_-Fd§ + param1 * (this.§_-gh§ - 360 - this.§_-Fd§) / param2;
         }
         else if(this.§_-gh§ < this.§_-Fd§ && this.§_-Fd§ - this.§_-gh§ <= 180)
         {
            this.§_-Ga§ = this.§_-Fd§ + param1 * (this.§_-gh§ - this.§_-Fd§) / param2;
         }
         else if(this.§_-gh§ < this.§_-Fd§ && this.§_-Fd§ - this.§_-gh§ > 180)
         {
            this.§_-Ga§ = this.§_-Fd§ + param1 * (this.§_-gh§ + 360 - this.§_-Fd§) / param2;
         }
      }
      
      public function get §_-C4§() : Point
      {
         if(!§_-r§)
         {
         }
         return null;
      }
      
      public function §_-Rp§() : Boolean
      {
         return this.§_-rV§ == §_-Or§.§_-x-§ || this.§_-rV§ == §_-Or§.§_-Ep§;
      }
      
      public function §_-9w§() : Boolean
      {
         return this.§_-rV§ == §_-Or§.§_-6n§;
      }
      
      public function §_-3X§() : Boolean
      {
         return this.§_-rV§ == §_-Or§.§_-7P§;
      }
      
      public function §_-Na§() : Boolean
      {
         return this.§_-rV§ == §_-Or§.§_-Ep§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-rV§ == §_-Or§.§_-jT§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-rV§ == §_-Or§.§_-nI§;
      }
      
      public function §_-LG§() : Boolean
      {
         return this.§_-rV§ == §_-Or§.§_-ka§;
      }
      
      public function §_-lU§() : Boolean
      {
         return this.§_-rV§ == §_-Or§.§_-0c§;
      }
      
      public function §_-Rs§() : Boolean
      {
         if(this.§_-05§ == "MISC_EXPLOSIVE_TNT" || this.§_-05§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §_-iY§() : Boolean
      {
         return (this.§_-9w§() || this.§_-LG§() || this.§_-lU§()) && !this.§_-yK§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-kk§() : Number
      {
         return Number(Math.sqrt(this.§implements§().GetLinearVelocity().x * this.§implements§().GetLinearVelocity().x + this.§implements§().GetLinearVelocity().y * this.§implements§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§_-3X§())
         {
            return this.§_-KZ§;
         }
         if(!this.§_-4T§.§_-6y§())
         {
            return this.§_-KZ§;
         }
         if(this.§_-K3§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§_-HX§(§_-Sk§.§_-XM§);
            }
            else if(param1 > 12)
            {
               this.§_-HX§(§_-Sk§.§_-w§);
            }
            else if(param1 > 3)
            {
               this.§_-HX§(§_-Sk§.§_-Jp§);
            }
            return this.§_-KZ§;
         }
         if(param1 < this.§_-K3§)
         {
            if(param1 >= this.§_-K3§ / 2)
            {
               this.§_-HX§(§_-Sk§.§_-Jp§);
            }
            if(this.§_-Rp§() && this.§_-KZ§ == this.§_-EU§)
            {
               this.§_-KZ§ = this.§_-EU§ - 1;
            }
            return this.§_-KZ§;
         }
         param1 -= this.§_-K3§;
         if(param2 && this.§_-iY§())
         {
            _loc7_ = Math.min(this.§_-KZ§,int(param1));
            _loc8_ = §_-c3§.§_-a-§.getValue() * _loc7_;
            this.§_-4T§.§_-GF§.addScore(_loc8_,§_-bv§.§_-fb§,this.§_-KZ§ > param1 && param3,this.§implements§().GetPosition().x,this.§implements§().GetPosition().y,§_-K-§.§_-eM§(this.§_-05§));
         }
         if(!(param5 && this.§_-ue§))
         {
            this.§_-KZ§ -= param1;
         }
         if(this.§_-KZ§ < 1 && this.§_-Rp§())
         {
            this.§_-KZ§ = 1;
         }
         if(this.§_-KZ§ < 1)
         {
            this.§_-KZ§ = 0;
            §_-FX§.§_-oG§(§_-Sk§.§_-XM§,this.§_-zf§.§_-dF§,"ChannelDestroyed");
         }
         else
         {
            this.§_-HX§(§_-Sk§.§_-w§);
            this.addDamageParticles(this.§_-4T§.§_-GF§.particles,param1);
         }
         this.§_-9G§.setDamagedFrame();
         return this.§_-KZ§;
      }
      
      public function §_-HX§(param1:int) : void
      {
         §_-FX§.§_-oG§(param1,this.§_-zf§.§_-dF§);
      }
      
      public function §_-0-u§(param1:String) : Number
      {
         return this.§_-zf§.material.§_-xE§(param1) * this.§_-bV§;
      }
      
      public function §_-xe§(param1:String) : Number
      {
         return this.§_-zf§.material.§_-Nt§(param1);
      }
      
      public function §_-xg§() : String
      {
         return this.§_-zf§.material.mName;
      }
      
      public function §_-el§() : Number
      {
         return this.§_-zf§.§_-C-§();
      }
      
      public function §_-uH§() : int
      {
         return this.§_-zf§.§_-NA§();
      }
      
      public function §_-gW§() : Boolean
      {
         return this.§implements§().IsAwake() && (this.§_-Rp§() && this.§_-KZ§ == this.§_-EU§ || Math.abs(this.§implements§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§implements§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§implements§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-9q§() : Boolean
      {
         if(!this.§implements§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§implements§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§implements§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§implements§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-jq§(param1:Number = 3) : void
      {
         this.§_-bV§ = param1;
         if(this.§_-bV§ > 1)
         {
            this.§_-9G§.§_-iK§();
         }
         else
         {
            this.§_-9G§.§_-ja§ = null;
         }
      }
      
      public function §_-m8§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-zf§.§_-bp§() == §_-m0§.§_-2g§)
         {
            _loc2_ = this.§_-9G§.mW * this.§_-9G§.mH * (§_-c3§.§_-GA§ * §_-c3§.§_-GA§);
         }
         else
         {
            _loc2_ = this.§implements§().GetMass() / this.§_-un§.§_-Xa§();
            if(param1)
            {
               _loc2_ *= this.§_-vP§();
            }
            _loc2_ /= this.§_-uV§ * this.§_-uV§;
         }
         return _loc2_;
      }
      
      public function §_-vP§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-9G§.§_-Ir§ - 1) / 10);
      }
      
      public function §_-eX§(param1:Number) : void
      {
         var _loc2_:Number = this.§implements§().GetLinearVelocity().x;
         var _loc3_:Number = this.§implements§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§implements§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§ else§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-Jq§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-Jq§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-JZ§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§implements§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§implements§().§_-PQ§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§_-qr§();
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
            this.§_-Dw§(_loc3_);
         }
         this.§_-Dw§(this.§_-qr§() + param1);
      }
      
      public function §_-n4§(param1:Number) : void
      {
         var _loc2_:Number = §_-lk§(this.§implements§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-Yl§(_loc2_);
         this.§implements§().§_-oo§(_loc2_);
      }
      
      public function §_-U-§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§implements§().GetPosition().Copy();
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
         this.§implements§().§_-PQ§(_loc13_);
      }
   }
}
