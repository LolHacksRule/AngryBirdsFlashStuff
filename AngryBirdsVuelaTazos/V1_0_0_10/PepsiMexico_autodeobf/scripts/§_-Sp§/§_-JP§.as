package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-7o§.§_-Kd§;
   import §_-7o§.§_-w7§;
   import §_-I2§.b2PolygonShape;
   import §_-Zl§.b2Vec2;
   import §_-hR§.§_-RJ§;
   import §_-hR§.§_-X9§;
   import §_-hR§.§_-bJ§;
   import §_-hR§.§_-bZ§;
   import §_-hR§.§_-c§;
   import §_-oZ§.§_-JH§;
   import §_-ot§.§_-o6§;
   import §_-rg§.b2Body;
   import §_-rg§.b2BodyDef;
   import §_-rg§.b2FilterData;
   import §_-rg§.b2Fixture;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   import §_-uS§.b2Settings;
   import flash.geom.Point;
   
   public class §_-JP§
   {
      
      public static const §_-BA§:uint = 1 << 1;
      
      public static const §_-Wo§:uint = 1 << 2;
      
      public static const §_-Fr§:uint = 1 << 3;
      
      public static const §_-bD§:uint = 1 << 4;
      
      public static const §_-P5§:Boolean = true;
       
      
      private var §_-RZ§:int;
      
      private var §_-GZ§:int;
      
      public var §_-TR§:String;
      
      public var §_-OQ§:int;
      
      private var §_-vu§:§_-RJ§;
      
      private var §_-K4§:§_-D4§;
      
      private var §_-Gt§:b2World;
      
      private var §_-WB§:b2Fixture;
      
      private var §_-n2§:b2Body;
      
      private var §_-am§:b2Vec2;
      
      public var §null §:Number;
      
      public var §_-8S§:Number;
      
      private var §_-jk§:Number;
      
      private var §_-5m§:Number;
      
      private var §_-lE§:Number;
      
      private var §_-lH§:Number;
      
      private var §_-2b§:Number;
      
      private var §_-Dy§:Number;
      
      private var §_-Ek§:Number;
      
      public var §_-p0§:Number = 1;
      
      public var §_-XL§:Number = 0;
      
      public var §_-uZ§:Number = 0;
      
      protected var §_-wW§:Boolean = false;
      
      public var §_-LF§:§_-Lk§;
      
      private var §_-Pj§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-Gc§:Number = 0;
      
      public function §_-JP§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         var _loc12_:b2PolygonShape = null;
         super();
         this.§_-TR§ = param6;
         this.§_-vu§ = §_-bJ§.§_-hL§(param6);
         this.§_-K4§ = param1;
         this.§_-Pj§ = param2;
         this.§_-RZ§ = param5;
         this.§_-OQ§ = this.§_-vu§.§_-OQ§;
         this.§_-GZ§ = this.§_-vu§.§_-Nm§();
         this.§_-LF§ = new §_-Lk§(this,param2,param4);
         if(!this.§_-LF§.§_-10§(param1.§_-Ia§.§_-b5§))
         {
            this.§_-LF§.§_-PJ§(this.§_-GZ§,this.§_-vu§.§_-LZ§(),this.§_-vu§.§_-W§() / §_-B3§.§_-s8§,this.§_-vu§.§_-Bq§() / §_-B3§.§_-s8§);
         }
         this.§_-LF§.§_-Me§(this.§_-GZ§ == §_-bZ§.§_-Wy§);
         this.§_-Gt§ = param3;
         var _loc10_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-n2§ = this.§_-Gt§.§_-g2§(_loc10_);
         this.§_-n2§.§_-mK§(this);
         if(this.§_-GZ§ == §_-bZ§.§_-o7§)
         {
            _loc12_ = b2PolygonShape.§_-o9§(this.§_-vu§.shape.§_-NR§,this.§_-vu§.shape.§_-F0§);
            this.§_-WB§ = this.§_-n2§.CreateFixture2(_loc12_,this.§_-vu§.§_-Lt§());
         }
         else if(this.§_-GZ§ == §_-bZ§.§_-Wy§ || this.§_-GZ§ == §_-bZ§.§_-WL§)
         {
            this.§_-WB§ = this.§_-n2§.CreateFixture2(this.§_-vu§.shape.§_-Vg§(),this.§_-vu§.§_-Lt§());
         }
         this.§_-WB§.§_-5x§(this.§_-vu§.§_-Zc§());
         this.§_-WB§.§_-m5§(this.§_-vu§.§_-IK§());
         var _loc11_:b2FilterData = new b2FilterData();
         if(this.§_-is§())
         {
            _loc11_.§_-R5§ = §_-BA§;
            _loc11_.§_-gn§ = 65535 & ~§_-Wo§;
         }
         else if(this.§_-TR§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-TR§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc11_.§_-R5§ = §_-Wo§;
            _loc11_.§_-gn§ = 65535 & ~§_-BA§;
         }
         this.§_-WB§.§_-cC§(_loc11_);
         this.§_-jk§ = this.§_-vu§.§_-RF§();
         if(this.§_-vu§.§_-8S§ > 0)
         {
            this.§null § = this.§_-8S§ = this.§_-vu§.§_-8S§;
         }
         else
         {
            this.§null § = this.§_-8S§ = Math.round(this.§_-mL§(true) * this.§_-vu§.§_-M-§());
            if(this.§null § < 1)
            {
               this.§null § = this.§_-8S§ = 1;
            }
         }
         if(this.§_-vu§.§_-OQ§ == §_-RJ§.§_-Zo§)
         {
            this.§_-Pj§.visible = false;
         }
         else
         {
            this.§_-LF§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-DG§(param9);
         }
         this.§_-NF§();
         this.§_-sB§(0,1);
         this.§_-LF§.§_-Yx§(this.§_-vu§.shape);
      }
      
      public static function §_-fs§(param1:int, param2:§_-c§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-mw§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-RB§;
            }
            §_-JH§.§_-er§(_loc4_,param3);
         }
      }
      
      public static function §_-Z4§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-le§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Pj§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §_-IO§() : Number
      {
         return this.§_-n2§.GetPosition().x;
      }
      
      public function get §_-pO§() : Number
      {
         return this.§_-n2§.GetPosition().y;
      }
      
      public function get §_-dA§() : §_-RJ§
      {
         return this.§_-vu§;
      }
      
      public function get §_-Yk§() : Boolean
      {
         return this.§_-jk§ >= 0;
      }
      
      protected function get container() : §_-D4§
      {
         return this.§_-K4§;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-mY§(param1:b2FilterData) : void
      {
         if(this.§_-WB§)
         {
            this.§_-WB§.§_-cC§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-vu§.§_-Xc§();
         _loc3_.§_-d3§ = true;
         _loc3_.§_-NW§ = true;
         _loc3_.§_-9§ = true;
         _loc3_.§_-Sm§ = 1;
         _loc3_.§_-d7§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§_-Gt§)
         {
            this.§_-Gt§.§_-49§(this.§_-dZ§());
            this.§_-Gt§ = null;
         }
         this.§_-LF§.dispose();
         if(this.§_-Pj§)
         {
            this.§_-Pj§.dispose();
            this.§_-Pj§ = null;
         }
         this.§_-WB§ = null;
         this.§_-am§ = null;
         this.§_-vu§ = null;
      }
      
      public function §_-DG§(param1:Number) : void
      {
         this.§_-dZ§().§_-Pz§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-4S§() : Number
      {
         return (360 - this.§_-dZ§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-Lb§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-dZ§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-LE§();
         }
         if(param3)
         {
            this.§_-sa§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-WB§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-dZ§().GetPosition().x >= param3 && this.§_-dZ§().GetPosition().x <= param4 && this.§_-dZ§().GetPosition().y >= param1 && this.§_-dZ§().GetPosition().y <= param2;
      }
      
      public function §_-SW§(param1:b2Vec2) : void
      {
         this.§_-am§ = param1;
      }
      
      public function §_-My§() : void
      {
         if(this.§_-am§)
         {
            this.§_-Lb§(this.§_-am§,false);
            this.§_-am§ = null;
         }
      }
      
      public function §_-LE§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-dZ§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-dZ§().§_-9i§(0);
         }
         else
         {
            this.§_-dZ§().§_-9i§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-sa§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-dZ§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-DG§(_loc2_);
      }
      
      public function §_-GO§(param1:Number) : void
      {
         this.§_-dZ§().§_-9i§(param1);
      }
      
      public function §_-dZ§() : b2Body
      {
         if(this.§_-WB§ != null)
         {
            return this.§_-WB§.GetBody();
         }
         return null;
      }
      
      public function §_-WV§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§_-dZ§().GetPosition().x = this.mX * §_-B3§.§_-s8§;
         this.§_-dZ§().GetPosition().y = this.mY * §_-B3§.§_-s8§;
      }
      
      public function §_-sB§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-wW§)
         {
            _loc3_ = true;
            this.§_-wW§ = false;
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
            this.§_-LF§.§_-hd§();
         }
         if(this.§_-p0§ > 1 && this.§_-LF§.§_-3N§)
         {
            _loc4_ = 4 + (this.§_-LF§.§_-3N§.blurX - 4 + param2 / 20) % 28;
            this.§_-LF§.§_-3N§.blurX = _loc4_;
            this.§_-LF§.§_-3N§.blurY = _loc4_;
         }
         this.§_-LF§.§_-1o§(param2);
         if(§_-P5§)
         {
            this.§_-At§(param1);
         }
         else
         {
            this.§_-Gc§ = this.§_-lH§;
            this.mX = this.§_-5m§;
            this.mY = this.§_-lE§;
         }
         this.§_-Pj§.x = Math.round(this.mX);
         this.§_-Pj§.y = Math.round(this.mY);
         this.§_-Pj§.rotation = this.§_-Gc§ / 180 * Math.PI;
      }
      
      public function §_-NF§() : void
      {
         var _loc1_:Number = this.§_-dZ§().GetPosition().x;
         var _loc2_:Number = this.§_-dZ§().GetPosition().y;
         this.§_-Ek§ = this.§_-lH§;
         this.§_-2b§ = this.§_-5m§;
         this.§_-Dy§ = this.§_-lE§;
         this.§_-lH§ = this.§_-dZ§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-5m§ = _loc1_ / §_-B3§.§_-s8§;
         this.§_-lE§ = _loc2_ / §_-B3§.§_-s8§;
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
      
      public function §_-At§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 0)
         {
            §_-o6§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-K4§.§_-Ia§.§_-AT§.§_-7I§ * 1000;
         }
         param1 *= -1;
         if(this.§_-5m§ == this.§_-2b§ || param1 == 0)
         {
            this.§_-XL§ = 0;
            this.mX = this.§_-5m§;
         }
         else
         {
            this.§_-XL§ = param1 * (this.§_-2b§ - this.§_-5m§) / param2;
            this.mX = this.§_-5m§ + this.§_-XL§;
         }
         if(this.§_-lE§ == this.§_-Dy§ || param1 == 0)
         {
            this.§_-uZ§ = 0;
            this.mY = this.§_-lE§;
         }
         else
         {
            this.§_-uZ§ = param1 * (this.§_-Dy§ - this.§_-lE§) / param2;
            this.mY = this.§_-lE§ + this.§_-uZ§;
         }
         if(this.§_-lH§ == this.§_-Ek§ || param1 == 0)
         {
            this.§_-Gc§ = this.§_-lH§;
         }
         else if(this.§_-Ek§ > this.§_-lH§ && this.§_-Ek§ - this.§_-lH§ <= 180)
         {
            this.§_-Gc§ = this.§_-lH§ + param1 * (this.§_-Ek§ - this.§_-lH§) / param2;
         }
         else if(this.§_-Ek§ > this.§_-lH§ && this.§_-Ek§ - this.§_-lH§ > 180)
         {
            this.§_-Gc§ = this.§_-lH§ + param1 * (this.§_-Ek§ - 360 - this.§_-lH§) / param2;
         }
         else if(this.§_-Ek§ < this.§_-lH§ && this.§_-lH§ - this.§_-Ek§ <= 180)
         {
            this.§_-Gc§ = this.§_-lH§ + param1 * (this.§_-Ek§ - this.§_-lH§) / param2;
         }
         else if(this.§_-Ek§ < this.§_-lH§ && this.§_-lH§ - this.§_-Ek§ > 180)
         {
            this.§_-Gc§ = this.§_-lH§ + param1 * (this.§_-Ek§ + 360 - this.§_-lH§) / param2;
         }
      }
      
      public function get §_-IW§() : Point
      {
         if(!§_-P5§)
         {
         }
         return null;
      }
      
      public function §_-is§() : Boolean
      {
         return this.§_-OQ§ == §_-RJ§.§_-hz§ || this.§_-OQ§ == §_-RJ§.§_-o4§;
      }
      
      public function §_-fQ§() : Boolean
      {
         return this.§_-OQ§ == §_-RJ§.§_-3i§;
      }
      
      public function §_-wE§() : Boolean
      {
         return this.§_-OQ§ == §_-RJ§.§_-t6§;
      }
      
      public function §_-LT§() : Boolean
      {
         return this.§_-OQ§ == §_-RJ§.§_-o4§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-OQ§ == §_-RJ§.§_-MQ§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-OQ§ == §_-RJ§.§_-Zo§;
      }
      
      public function §_-cb§() : Boolean
      {
         return this.§_-OQ§ == §_-RJ§.§_-K§;
      }
      
      public function §_-BJ§() : Boolean
      {
         return this.§_-OQ§ == §_-RJ§.§_-UV§;
      }
      
      public function §_-iO§() : Boolean
      {
         if(this.§_-TR§ == "MISC_EXPLOSIVE_TNT")
         {
            return true;
         }
         return false;
      }
      
      public function §_-rd§() : Boolean
      {
         return this.§_-fQ§() || this.§_-cb§() || this.§_-BJ§();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-Ui§() : Number
      {
         return Number(Math.sqrt(this.§_-dZ§().GetLinearVelocity().x * this.§_-dZ§().GetLinearVelocity().x + this.§_-dZ§().GetLinearVelocity().y * this.§_-dZ§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:int = 0;
         if(this.§_-wE§())
         {
            return this.§null §;
         }
         if(!this.§_-K4§.§_-l5§())
         {
            return this.§null §;
         }
         if(this.§_-jk§ < 0)
         {
            if(param1 > 30)
            {
               this.§_-m-§(§_-c§.§_-1e§);
            }
            else if(param1 > 12)
            {
               this.§_-m-§(§_-c§.§_-k6§);
            }
            else if(param1 > 3)
            {
               this.§_-m-§(§_-c§.§_-n5§);
            }
            return this.§null §;
         }
         if(param1 < this.§_-jk§)
         {
            if(param1 >= this.§_-jk§ / 2)
            {
               this.§_-m-§(§_-c§.§_-n5§);
            }
            if(this.§_-is§() && this.§null § == this.§_-8S§)
            {
               this.§null § = this.§_-8S§ - 1;
            }
            return this.§null §;
         }
         param1 -= this.§_-jk§;
         if(param2 && this.§_-rd§())
         {
            _loc5_ = §_-B3§.§_-eB§ * int(param1);
            this.§_-K4§.§_-Ia§.addScore(_loc5_,this.§null § > param1 && param3,this.§_-dZ§().GetPosition().x,this.§_-dZ§().GetPosition().y,§_-w7§.§_-B-§(this.§_-TR§));
         }
         this.§null § -= param1;
         if(this.§null § < 1 && this.§_-is§())
         {
            this.§null § = 1;
         }
         if(this.§null § < 1)
         {
            this.§null § = 0;
            §_-JP§.§_-fs§(§_-c§.§_-1e§,this.§_-vu§.§_-fj§,"ChannelDestroyed");
         }
         else
         {
            this.§_-m-§(§_-c§.§_-k6§);
            this.addDamageParticles(this.§_-K4§.§_-Ia§.§_-29§,param1);
         }
         this.§_-LF§.setDamagedFrame();
         return this.§null §;
      }
      
      public function §_-m-§(param1:int) : void
      {
         §_-JP§.§_-fs§(param1,this.§_-vu§.§_-fj§);
      }
      
      public function §_-M2§(param1:String) : Number
      {
         return this.§_-vu§.material.§_-uy§(param1) * this.§_-p0§;
      }
      
      public function §_-qM§(param1:String) : Number
      {
         return this.§_-vu§.material.§_-hM§(param1);
      }
      
      public function §_-0f§() : String
      {
         return this.§_-vu§.material.mName;
      }
      
      public function §_-sd§() : int
      {
         return this.§_-vu§.§_-US§();
      }
      
      public function §_-gu§() : Boolean
      {
         return this.§_-dZ§().IsAwake() && (this.§_-is§() && this.§null § == this.§_-8S§ || Math.abs(this.§_-dZ§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-dZ§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-dZ§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-LB§() : Boolean
      {
         if(!this.§_-dZ§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§_-dZ§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-dZ§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-dZ§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-kV§(param1:Number = 3) : void
      {
         this.§_-p0§ = param1;
         if(this.§_-p0§ > 1)
         {
            this.§_-LF§.§_-tA§();
         }
         else
         {
            this.§_-LF§.§_-3N§ = null;
         }
      }
      
      public function §_-mL§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-vu§.§_-Xc§() == §_-X9§.§_-bF§)
         {
            _loc2_ = this.§_-LF§.mW * this.§_-LF§.mH * (§_-B3§.§_-s8§ * §_-B3§.§_-s8§);
         }
         else
         {
            _loc2_ = this.§_-dZ§().GetMass() / this.§_-WB§.§_-du§();
            if(param1)
            {
               _loc2_ *= this.§_-6n§();
            }
         }
         return _loc2_;
      }
      
      public function §_-6n§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-LF§.§_-jD§ - 1) / 10);
      }
      
      public function §_-P7§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-dZ§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-dZ§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-dZ§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-D4§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-Kd§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-Kd§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-XT§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-dZ§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-dZ§().§_-6j§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§_-4S§();
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
            this.§_-DG§(_loc3_);
         }
         this.§_-DG§(this.§_-4S§() + param1);
      }
      
      public function §_-qN§(param1:Number) : void
      {
         var _loc2_:Number = §_-Z4§(this.§_-dZ§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-le§(_loc2_);
         this.§_-dZ§().§_-Pz§(_loc2_);
      }
      
      public function §_-KH§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-dZ§().GetPosition().Copy();
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
         this.§_-dZ§().§_-6j§(_loc13_);
      }
   }
}
