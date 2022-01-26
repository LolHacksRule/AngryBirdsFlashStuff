package §_-u§
{
   import §_-9z§.b2Vec2;
   import §_-Bt§.b2PolygonShape;
   import §_-DS§.§_-Aa§;
   import §_-DS§.§_-t0§;
   import §_-EH§.b2Body;
   import §_-EH§.b2BodyDef;
   import §_-EH§.b2FilterData;
   import §_-EH§.b2Fixture;
   import §_-EH§.b2World;
   import §_-H2§.§_-Wq§;
   import §_-H2§.§_-Z§;
   import §_-H2§.§_-fm§;
   import §_-H2§.§_-i7§;
   import §_-H2§.§_-pd§;
   import §_-RG§.§_-HT§;
   import §_-am§.§_-XJ§;
   import §_-pF§.Sprite;
   import §_-rp§.§_-c5§;
   import §_-sU§.b2Settings;
   import flash.geom.Point;
   
   public class §_-5Q§
   {
      
      public static const §_-g6§:uint = 1 << 1;
      
      public static const §_-h7§:uint = 1 << 2;
      
      public static const §_-YD§:uint = 1 << 3;
      
      public static const §_-1q§:uint = 1 << 4;
      
      public static const §_-K4§:Boolean = true;
       
      
      private var §_-U6§:int;
      
      private var §_-oK§:int;
      
      public var §_-s7§:String;
      
      public var §_-i§:int;
      
      private var §_-up§:§_-Wq§;
      
      private var §_-wB§:§_-Av§;
      
      private var §_-VH§:b2World;
      
      private var §_-kE§:b2Fixture;
      
      private var §_-9v§:b2Body;
      
      private var §_-FC§:b2Vec2;
      
      public var §_-c8§:Number;
      
      public var §_-gA§:Number;
      
      private var §_-Gi§:Number;
      
      private var §_-Op§:Number;
      
      private var §_-Ix§:Number;
      
      private var §_-Mr§:Number;
      
      private var §_-iZ§:Number;
      
      private var §_-Z2§:Number;
      
      private var §_-7B§:Number;
      
      public var §_-mq§:Number = 1;
      
      public var §_-vr§:Number = 0;
      
      public var §_-M-§:Number = 0;
      
      protected var §_-nP§:Boolean = false;
      
      public var §use§:§_-iL§;
      
      private var §_-C8§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-5-§:Number = 0;
      
      public function §_-5Q§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         var _loc12_:b2PolygonShape = null;
         super();
         this.§_-s7§ = param6;
         this.§_-up§ = §_-Z§.§_-5d§(param6);
         this.§_-wB§ = param1;
         this.§_-C8§ = param2;
         this.§_-U6§ = param5;
         this.§_-i§ = this.§_-up§.§_-i§;
         this.§_-oK§ = this.§_-up§.§_-W6§();
         this.§use§ = new §_-iL§(this,param2,param4);
         if(!this.§use§.§_-cm§(param1.§_-fE§.§_-hF§))
         {
            this.§use§.§_-0§(this.§_-oK§,this.§_-up§.§_-OZ§(),this.§_-up§.§_-F-§() / §_-c5§.§_-Wa§,this.§_-up§.§_-OO§() / §_-c5§.§_-Wa§);
         }
         this.§use§.§_-D5§(this.§_-oK§ == §_-fm§.§_-qq§);
         this.§_-VH§ = param3;
         var _loc10_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-9v§ = this.§_-VH§.§_-kv§(_loc10_);
         this.§_-9v§.§_-wK§(this);
         if(this.§_-oK§ == §_-fm§.§_-fv§)
         {
            _loc12_ = b2PolygonShape.§_-5M§(this.§_-up§.shape.§_-Fy§,this.§_-up§.shape.§_-XU§);
            this.§_-kE§ = this.§_-9v§.CreateFixture2(_loc12_,this.§_-up§.§_-7s§());
         }
         else if(this.§_-oK§ == §_-fm§.§_-qq§ || this.§_-oK§ == §_-fm§.§_-fi§)
         {
            this.§_-kE§ = this.§_-9v§.CreateFixture2(this.§_-up§.shape.§_-ub§(),this.§_-up§.§_-7s§());
         }
         this.§_-kE§.§_-ZH§(this.§_-up§.§_-wW§());
         this.§_-kE§.§_-6K§(this.§_-up§.§_-G8§());
         var _loc11_:b2FilterData = new b2FilterData();
         if(this.§_-Cf§())
         {
            _loc11_.§_-B5§ = §_-g6§;
            _loc11_.§_-lN§ = 65535 & ~§_-h7§;
         }
         else if(this.§_-s7§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-s7§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc11_.§_-B5§ = §_-h7§;
            _loc11_.§_-lN§ = 65535 & ~§_-g6§;
         }
         this.§_-kE§.§_-VI§(_loc11_);
         this.§_-Gi§ = this.§_-up§.§_-kz§();
         if(this.§_-up§.§_-gA§ > 0)
         {
            this.§_-c8§ = this.§_-gA§ = this.§_-up§.§_-gA§;
         }
         else
         {
            this.§_-c8§ = this.§_-gA§ = Math.round(this.§_-dd§(true) * this.§_-up§.§_-TV§());
            if(this.§_-c8§ < 1)
            {
               this.§_-c8§ = this.§_-gA§ = 1;
            }
         }
         if(this.§_-up§.§_-i§ == §_-Wq§.§_-x7§)
         {
            this.§_-C8§.visible = false;
         }
         else
         {
            this.§use§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-6§(param9);
         }
         this.§_-Uf§();
         this.§_-bE§(0,1);
         this.§use§.§_-m0§(this.§_-up§.shape);
      }
      
      public static function §_-Mo§(param1:int, param2:§_-i7§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-kO§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-w2§;
            }
            §_-XJ§.§_-Wd§(_loc4_,param3);
         }
      }
      
      public static function §_-Fq§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-x4§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-C8§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §_-RF§() : Number
      {
         return this.§_-9v§.GetPosition().x;
      }
      
      public function get §_-Yu§() : Number
      {
         return this.§_-9v§.GetPosition().y;
      }
      
      public function get §_-jU§() : §_-Wq§
      {
         return this.§_-up§;
      }
      
      public function get §_-oJ§() : Boolean
      {
         return this.§_-Gi§ >= 0;
      }
      
      protected function get container() : §_-Av§
      {
         return this.§_-wB§;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-cs§(param1:b2FilterData) : void
      {
         if(this.§_-kE§)
         {
            this.§_-kE§.§_-VI§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-up§.§_-6N§();
         _loc3_.§_-bY§ = true;
         _loc3_.§_-8§ = true;
         _loc3_.§_-f5§ = true;
         _loc3_.§_-Tj§ = 1;
         _loc3_.§_-IK§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§_-VH§)
         {
            this.§_-VH§.§_-Fi§(this.§_-t9§());
            this.§_-VH§ = null;
         }
         this.§use§.dispose();
         if(this.§_-C8§)
         {
            this.§_-C8§.dispose();
            this.§_-C8§ = null;
         }
         this.§_-kE§ = null;
         this.§_-FC§ = null;
         this.§_-up§ = null;
      }
      
      public function §_-6§(param1:Number) : void
      {
         this.§_-t9§().§_-bo§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-aU§() : Number
      {
         return (360 - this.§_-t9§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-jl§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-t9§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-E§();
         }
         if(param3)
         {
            this.§_-Af§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-kE§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-t9§().GetPosition().x >= param3 && this.§_-t9§().GetPosition().x <= param4 && this.§_-t9§().GetPosition().y >= param1 && this.§_-t9§().GetPosition().y <= param2;
      }
      
      public function §_-pj§(param1:b2Vec2) : void
      {
         this.§_-FC§ = param1;
      }
      
      public function §_-N5§() : void
      {
         if(this.§_-FC§)
         {
            this.§_-jl§(this.§_-FC§,false);
            this.§_-FC§ = null;
         }
      }
      
      public function §_-E§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-t9§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-t9§().§_-gP§(0);
         }
         else
         {
            this.§_-t9§().§_-gP§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-Af§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-t9§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-6§(_loc2_);
      }
      
      public function §_-pw§(param1:Number) : void
      {
         this.§_-t9§().§_-gP§(param1);
      }
      
      public function §_-t9§() : b2Body
      {
         if(this.§_-kE§ != null)
         {
            return this.§_-kE§.GetBody();
         }
         return null;
      }
      
      public function §_-cD§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§_-t9§().GetPosition().x = this.mX * §_-c5§.§_-Wa§;
         this.§_-t9§().GetPosition().y = this.mY * §_-c5§.§_-Wa§;
      }
      
      public function §_-bE§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-nP§)
         {
            _loc3_ = true;
            this.§_-nP§ = false;
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
            this.§use§.§_-nJ§();
         }
         if(this.§_-mq§ > 1 && this.§use§.§_-Jm§)
         {
            _loc4_ = 4 + (this.§use§.§_-Jm§.blurX - 4 + param2 / 20) % 28;
            this.§use§.§_-Jm§.blurX = _loc4_;
            this.§use§.§_-Jm§.blurY = _loc4_;
         }
         this.§use§.§_-GJ§(param2);
         if(§_-K4§)
         {
            this.§_-cp§(param1);
         }
         else
         {
            this.§_-5-§ = this.§_-Mr§;
            this.mX = this.§_-Op§;
            this.mY = this.§_-Ix§;
         }
         this.§_-C8§.x = Math.round(this.mX);
         this.§_-C8§.y = Math.round(this.mY);
         this.§_-C8§.rotation = this.§_-5-§ / 180 * Math.PI;
      }
      
      public function §_-Uf§() : void
      {
         var _loc1_:Number = this.§_-t9§().GetPosition().x;
         var _loc2_:Number = this.§_-t9§().GetPosition().y;
         this.§_-7B§ = this.§_-Mr§;
         this.§_-iZ§ = this.§_-Op§;
         this.§_-Z2§ = this.§_-Ix§;
         this.§_-Mr§ = this.§_-t9§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-Op§ = _loc1_ / §_-c5§.§_-Wa§;
         this.§_-Ix§ = _loc2_ / §_-c5§.§_-Wa§;
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
      
      public function §_-cp§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 0)
         {
            §_-HT§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-wB§.§_-fE§.§_-dl§.§_-Iu§ * 1000;
         }
         param1 *= -1;
         if(this.§_-Op§ == this.§_-iZ§ || param1 == 0)
         {
            this.§_-vr§ = 0;
            this.mX = this.§_-Op§;
         }
         else
         {
            this.§_-vr§ = param1 * (this.§_-iZ§ - this.§_-Op§) / param2;
            this.mX = this.§_-Op§ + this.§_-vr§;
         }
         if(this.§_-Ix§ == this.§_-Z2§ || param1 == 0)
         {
            this.§_-M-§ = 0;
            this.mY = this.§_-Ix§;
         }
         else
         {
            this.§_-M-§ = param1 * (this.§_-Z2§ - this.§_-Ix§) / param2;
            this.mY = this.§_-Ix§ + this.§_-M-§;
         }
         if(this.§_-Mr§ == this.§_-7B§ || param1 == 0)
         {
            this.§_-5-§ = this.§_-Mr§;
         }
         else if(this.§_-7B§ > this.§_-Mr§ && this.§_-7B§ - this.§_-Mr§ <= 180)
         {
            this.§_-5-§ = this.§_-Mr§ + param1 * (this.§_-7B§ - this.§_-Mr§) / param2;
         }
         else if(this.§_-7B§ > this.§_-Mr§ && this.§_-7B§ - this.§_-Mr§ > 180)
         {
            this.§_-5-§ = this.§_-Mr§ + param1 * (this.§_-7B§ - 360 - this.§_-Mr§) / param2;
         }
         else if(this.§_-7B§ < this.§_-Mr§ && this.§_-Mr§ - this.§_-7B§ <= 180)
         {
            this.§_-5-§ = this.§_-Mr§ + param1 * (this.§_-7B§ - this.§_-Mr§) / param2;
         }
         else if(this.§_-7B§ < this.§_-Mr§ && this.§_-Mr§ - this.§_-7B§ > 180)
         {
            this.§_-5-§ = this.§_-Mr§ + param1 * (this.§_-7B§ + 360 - this.§_-Mr§) / param2;
         }
      }
      
      public function get §_-KV§() : Point
      {
         if(!§_-K4§)
         {
         }
         return null;
      }
      
      public function §_-Cf§() : Boolean
      {
         return this.§_-i§ == §_-Wq§.§_-AU§ || this.§_-i§ == §_-Wq§.§_-dp§;
      }
      
      public function §_-3E§() : Boolean
      {
         return this.§_-i§ == §_-Wq§.§_-BI§;
      }
      
      public function § var§() : Boolean
      {
         return this.§_-i§ == §_-Wq§.§_-Lm§;
      }
      
      public function §_-Mk§() : Boolean
      {
         return this.§_-i§ == §_-Wq§.§_-dp§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-i§ == §_-Wq§.§_-Z8§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-i§ == §_-Wq§.§_-x7§;
      }
      
      public function §_-Xd§() : Boolean
      {
         return this.§_-i§ == §_-Wq§.§_-aF§;
      }
      
      public function §try§() : Boolean
      {
         return this.§_-i§ == §_-Wq§.§_-uC§;
      }
      
      public function §_-Q0§() : Boolean
      {
         if(this.§_-s7§ == "MISC_EXPLOSIVE_TNT")
         {
            return true;
         }
         return false;
      }
      
      public function §_-Ve§() : Boolean
      {
         return this.§_-3E§() || this.§_-Xd§() || this.§try§();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-vm§() : Number
      {
         return Number(Math.sqrt(this.§_-t9§().GetLinearVelocity().x * this.§_-t9§().GetLinearVelocity().x + this.§_-t9§().GetLinearVelocity().y * this.§_-t9§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:int = 0;
         if(this.§ var§())
         {
            return this.§_-c8§;
         }
         if(!this.§_-wB§.§_-j-§())
         {
            return this.§_-c8§;
         }
         if(this.§_-Gi§ < 0)
         {
            if(param1 > 30)
            {
               this.§_-5E§(§_-i7§.§_-i2§);
            }
            else if(param1 > 12)
            {
               this.§_-5E§(§_-i7§.§_-NC§);
            }
            else if(param1 > 3)
            {
               this.§_-5E§(§_-i7§.§_-Fd§);
            }
            return this.§_-c8§;
         }
         if(param1 < this.§_-Gi§)
         {
            if(param1 >= this.§_-Gi§ / 2)
            {
               this.§_-5E§(§_-i7§.§_-Fd§);
            }
            if(this.§_-Cf§() && this.§_-c8§ == this.§_-gA§)
            {
               this.§_-c8§ = this.§_-gA§ - 1;
            }
            return this.§_-c8§;
         }
         param1 -= this.§_-Gi§;
         if(param2 && this.§_-Ve§())
         {
            _loc5_ = §_-c5§.§_-Nk§ * int(param1);
            this.§_-wB§.§_-fE§.addScore(_loc5_,this.§_-c8§ > param1 && param3,this.§_-t9§().GetPosition().x,this.§_-t9§().GetPosition().y,§_-Aa§.§_-2H§(this.§_-s7§));
         }
         this.§_-c8§ -= param1;
         if(this.§_-c8§ < 1 && this.§_-Cf§())
         {
            this.§_-c8§ = 1;
         }
         if(this.§_-c8§ < 1)
         {
            this.§_-c8§ = 0;
            §_-5Q§.§_-Mo§(§_-i7§.§_-i2§,this.§_-up§.§_-FB§,"ChannelDestroyed");
         }
         else
         {
            this.§_-5E§(§_-i7§.§_-NC§);
            this.addDamageParticles(this.§_-wB§.§_-fE§.§_-AC§,param1);
         }
         this.§use§.setDamagedFrame();
         return this.§_-c8§;
      }
      
      public function §_-5E§(param1:int) : void
      {
         §_-5Q§.§_-Mo§(param1,this.§_-up§.§_-FB§);
      }
      
      public function §_-rS§(param1:String) : Number
      {
         return this.§_-up§.material.§_-Rc§(param1) * this.§_-mq§;
      }
      
      public function §_-FP§(param1:String) : Number
      {
         return this.§_-up§.material.§_-2T§(param1);
      }
      
      public function §_-pP§() : String
      {
         return this.§_-up§.material.mName;
      }
      
      public function §_-kt§() : int
      {
         return this.§_-up§.§_-JM§();
      }
      
      public function §_-eu§() : Boolean
      {
         return this.§_-t9§().IsAwake() && (this.§_-Cf§() && this.§_-c8§ == this.§_-gA§ || Math.abs(this.§_-t9§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-t9§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-t9§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-Vm§() : Boolean
      {
         if(!this.§_-t9§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§_-t9§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-t9§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-t9§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-bH§(param1:Number = 3) : void
      {
         this.§_-mq§ = param1;
         if(this.§_-mq§ > 1)
         {
            this.§use§.§_-pk§();
         }
         else
         {
            this.§use§.§_-Jm§ = null;
         }
      }
      
      public function §_-dd§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-up§.§_-6N§() == §_-pd§.§_-dU§)
         {
            _loc2_ = this.§use§.mW * this.§use§.mH * (§_-c5§.§_-Wa§ * §_-c5§.§_-Wa§);
         }
         else
         {
            _loc2_ = this.§_-t9§().GetMass() / this.§_-kE§.§_-OY§();
            if(param1)
            {
               _loc2_ *= this.§_-iU§();
            }
         }
         return _loc2_;
      }
      
      public function §_-iU§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§use§.§_-RP§ - 1) / 10);
      }
      
      public function §_-vu§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-t9§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-t9§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-t9§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-Av§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-t0§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-t0§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-Cw§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-t9§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-t9§().§_-Pm§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§_-aU§();
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
            this.§_-6§(_loc3_);
         }
         this.§_-6§(this.§_-aU§() + param1);
      }
      
      public function §_-RI§(param1:Number) : void
      {
         var _loc2_:Number = §_-Fq§(this.§_-t9§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-x4§(_loc2_);
         this.§_-t9§().§_-bo§(_loc2_);
      }
      
      public function §_-IJ§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-t9§().GetPosition().Copy();
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
         this.§_-t9§().§_-Pm§(_loc13_);
      }
   }
}
