package §_-Xd§
{
   import § get§.§_-pD§;
   import §_-8i§.b2PolygonShape;
   import §_-FQ§.§_-7W§;
   import §_-FQ§.§_-iw§;
   import §_-PP§.§_-Tg§;
   import §_-PP§.§_-qC§;
   import §_-SM§.b2Settings;
   import §_-UX§.Sprite;
   import §_-ex§.§_-mR§;
   import §_-qW§.b2Body;
   import §_-qW§.b2BodyDef;
   import §_-qW§.b2FilterData;
   import §_-qW§.b2Fixture;
   import §_-qW§.b2World;
   import flash.geom.Point;
   import §var§.b2Vec2;
   import §with§.§_-AZ§;
   import §with§.§_-O2§;
   import §with§.§_-fn§;
   import §with§.§_-pC§;
   import §with§.§_-y7§;
   
   public class §_-sW§
   {
      
      public static const §_-Qh§:uint = 1 << 1;
      
      public static const §_-K8§:uint = 1 << 2;
      
      public static const §_-Bt§:uint = 1 << 3;
      
      public static const §_-MW§:uint = 1 << 4;
      
      public static const §_-a7§:Boolean = true;
       
      
      private var §_-oa§:int;
      
      private var §_-vg§:int;
      
      public var §true §:String;
      
      public var §_-bi§:int;
      
      private var §_-uz§:§_-y7§;
      
      private var §_-LK§:§_-OL§;
      
      private var §_-9K§:b2World;
      
      private var §_-Gy§:b2Fixture;
      
      private var §_-o4§:b2Body;
      
      private var §_-mU§:b2Vec2;
      
      public var §_-gg§:Number;
      
      public var §_-jW§:Number;
      
      private var §_-oX§:Number;
      
      private var §_-JN§:Number;
      
      private var §_-3K§:Number;
      
      private var §_-Fl§:Number;
      
      private var §_-u2§:Number;
      
      private var §_-6s§:Number;
      
      private var §_-Ao§:Number;
      
      public var §_-kg§:Number = 1;
      
      public var §_-ke§:Number = 0;
      
      public var §_-Ia§:Number = 0;
      
      protected var §_-2e§:Boolean = false;
      
      public var §_-UF§:§_-1c§;
      
      private var §_-bB§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-YV§:Number = 0;
      
      private var §_-ol§:Boolean = true;
      
      public function §_-sW§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         var _loc12_:b2PolygonShape = null;
         super();
         this.§true § = param6;
         this.§_-uz§ = §_-O2§.§_-k§(param6);
         this.§_-LK§ = param1;
         this.§_-bB§ = param2;
         this.§_-oa§ = param5;
         this.§_-bi§ = this.§_-uz§.§_-bi§;
         this.§_-vg§ = this.§_-uz§.§_-3t§();
         this.§_-UF§ = new §_-1c§(this,param2,param4);
         if(!this.§_-UF§.§_-Mf§(param1.§_-6q§.§_-FR§))
         {
            this.§_-UF§.§_-TI§(this.§_-vg§,this.§_-uz§.§_-Ei§(),this.§_-uz§.§_-G6§() / §_-7W§.§_-hT§,this.§_-uz§.§_-Jv§() / §_-7W§.§_-hT§);
         }
         this.§_-UF§.§_-Qv§(this.§_-vg§ == §_-fn§.§_-ms§);
         this.§_-9K§ = param3;
         var _loc10_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-o4§ = this.§_-9K§.§_-ji§(_loc10_);
         this.§_-o4§.§_-WN§(this);
         if(this.§_-vg§ == §_-fn§.§_-SP§)
         {
            _loc12_ = b2PolygonShape.§_-Q5§(this.§_-uz§.shape.§_-NR§,this.§_-uz§.shape.§_-gD§);
            this.§_-Gy§ = this.§_-o4§.CreateFixture2(_loc12_,this.§_-uz§.§_-ko§());
         }
         else if(this.§_-vg§ == §_-fn§.§_-ms§ || this.§_-vg§ == §_-fn§.§_-ul§)
         {
            this.§_-Gy§ = this.§_-o4§.CreateFixture2(this.§_-uz§.shape.§_-NV§(),this.§_-uz§.§_-ko§());
         }
         this.§_-Gy§.§_-YO§(this.§_-uz§.§_-nz§());
         this.§_-Gy§.§_-at§(this.§_-uz§.§_-tb§());
         var _loc11_:b2FilterData = new b2FilterData();
         if(this.§_-bD§())
         {
            _loc11_.§_-Ub§ = §_-Qh§;
            _loc11_.§_-6a§ = 65535 & ~§_-K8§;
         }
         else if(this.§true §.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§true §.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc11_.§_-Ub§ = §_-K8§;
            _loc11_.§_-6a§ = 65535 & ~§_-Qh§;
         }
         this.§_-Gy§.§_-nS§(_loc11_);
         this.§_-oX§ = this.§_-uz§.§_-xj§();
         if(this.§_-uz§.§_-jW§ > 0)
         {
            this.§_-gg§ = this.§_-jW§ = this.§_-uz§.§_-jW§;
         }
         else
         {
            this.§_-gg§ = this.§_-jW§ = Math.round(this.§_-8h§(true) * this.§_-uz§.§_-29§());
            if(this.§_-gg§ < 1)
            {
               this.§_-gg§ = this.§_-jW§ = 1;
            }
         }
         if(this.§_-uz§.§_-bi§ == §_-y7§.§_-KW§)
         {
            this.§_-bB§.visible = false;
         }
         else
         {
            this.§_-UF§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-Xh§(param9);
         }
         this.§_-E9§();
         this.§_-MH§(0,1);
         this.§_-UF§.§_-S§(this.§_-uz§.shape);
      }
      
      public static function §_-0Q§(param1:int, param2:§_-AZ§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-f1§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-Bf§;
            }
            §_-pD§.§_-g5§(_loc4_,param3);
         }
      }
      
      public static function §_-31§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-Mc§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-bB§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §_-m2§() : Number
      {
         return this.§_-o4§.GetPosition().x;
      }
      
      public function get §_-ho§() : Number
      {
         return this.§_-o4§.GetPosition().y;
      }
      
      public function get §_-OQ§() : §_-y7§
      {
         return this.§_-uz§;
      }
      
      public function get §_-A4§() : Boolean
      {
         return this.§_-oX§ >= 0;
      }
      
      protected function get container() : §_-OL§
      {
         return this.§_-LK§;
      }
      
      public function get §_-8D§() : Boolean
      {
         return this.§_-ol§;
      }
      
      public function set §_-8D§(param1:Boolean) : void
      {
         this.§_-ol§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-od§(param1:b2FilterData) : void
      {
         if(this.§_-Gy§)
         {
            this.§_-Gy§.§_-nS§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-uz§.§_-oo§();
         _loc3_.§_-3L§ = true;
         _loc3_.§_-ci§ = true;
         _loc3_.§_-3J§ = true;
         _loc3_.§_-Ko§ = 1;
         _loc3_.§_-Qf§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§_-9K§)
         {
            this.§_-9K§.§_-vG§(this.§_-vv§());
            this.§_-9K§ = null;
         }
         this.§_-UF§.dispose();
         if(this.§_-bB§)
         {
            this.§_-bB§.dispose();
            this.§_-bB§ = null;
         }
         this.§_-Gy§ = null;
         this.§_-mU§ = null;
         this.§_-uz§ = null;
      }
      
      public function §_-Xh§(param1:Number) : void
      {
         this.§_-vv§().§_-I-§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-2d§() : Number
      {
         return (360 - this.§_-vv§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-hJ§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-vv§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-3q§();
         }
         if(param3)
         {
            this.§_-wB§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-Gy§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-vv§().GetPosition().x >= param3 && this.§_-vv§().GetPosition().x <= param4 && this.§_-vv§().GetPosition().y >= param1 && this.§_-vv§().GetPosition().y <= param2;
      }
      
      public function §_-cz§(param1:b2Vec2) : void
      {
         this.§_-mU§ = param1;
      }
      
      public function §_-nF§() : void
      {
         if(this.§_-mU§)
         {
            this.§_-hJ§(this.§_-mU§,false);
            this.§_-mU§ = null;
         }
      }
      
      public function §_-3q§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-vv§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-vv§().§_-o-§(0);
         }
         else
         {
            this.§_-vv§().§_-o-§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-wB§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-vv§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-Xh§(_loc2_);
      }
      
      public function §_-JK§(param1:Number) : void
      {
         this.§_-vv§().§_-o-§(param1);
      }
      
      public function §_-vv§() : b2Body
      {
         if(this.§_-Gy§ != null)
         {
            return this.§_-Gy§.GetBody();
         }
         return null;
      }
      
      public function §_-lE§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§_-vv§().GetPosition().x = this.mX * §_-7W§.§_-hT§;
         this.§_-vv§().GetPosition().y = this.mY * §_-7W§.§_-hT§;
      }
      
      public function §_-MH§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-2e§)
         {
            _loc3_ = true;
            this.§_-2e§ = false;
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
            this.§_-UF§.§_-Y-§();
         }
         if(this.§_-kg§ > 1 && this.§_-UF§.§ do§)
         {
            _loc4_ = 4 + (this.§_-UF§.§ do§.blurX - 4 + param2 / 20) % 28;
            this.§_-UF§.§ do§.blurX = _loc4_;
            this.§_-UF§.§ do§.blurY = _loc4_;
         }
         this.§_-UF§.§_-Qa§(param2);
         if(§_-a7§)
         {
            this.§_-NY§(param1);
         }
         else
         {
            this.§_-YV§ = this.§_-Fl§;
            this.mX = this.§_-JN§;
            this.mY = this.§_-3K§;
         }
         this.§_-bB§.x = Math.round(this.mX);
         this.§_-bB§.y = Math.round(this.mY);
         this.§_-bB§.rotation = this.§_-YV§ / 180 * Math.PI;
      }
      
      public function §_-E9§() : void
      {
         var _loc1_:Number = this.§_-vv§().GetPosition().x;
         var _loc2_:Number = this.§_-vv§().GetPosition().y;
         this.§_-Ao§ = this.§_-Fl§;
         this.§_-u2§ = this.§_-JN§;
         this.§_-6s§ = this.§_-3K§;
         this.§_-Fl§ = this.§_-vv§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-JN§ = _loc1_ / §_-7W§.§_-hT§;
         this.§_-3K§ = _loc2_ / §_-7W§.§_-hT§;
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
      
      public function §_-NY§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §_-mR§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-LK§.§_-6q§.§_-vs§.§_-1X§ * 1000;
         }
         param1 *= -1;
         if(this.§_-JN§ == this.§_-u2§ || param1 == 0)
         {
            this.§_-ke§ = 0;
            this.mX = this.§_-JN§;
         }
         else
         {
            this.§_-ke§ = param1 * (this.§_-u2§ - this.§_-JN§) / param2;
            this.mX = this.§_-JN§ + this.§_-ke§;
         }
         if(this.§_-3K§ == this.§_-6s§ || param1 == 0)
         {
            this.§_-Ia§ = 0;
            this.mY = this.§_-3K§;
         }
         else
         {
            this.§_-Ia§ = param1 * (this.§_-6s§ - this.§_-3K§) / param2;
            this.mY = this.§_-3K§ + this.§_-Ia§;
         }
         if(this.§_-Fl§ == this.§_-Ao§ || param1 == 0)
         {
            this.§_-YV§ = this.§_-Fl§;
         }
         else if(this.§_-Ao§ > this.§_-Fl§ && this.§_-Ao§ - this.§_-Fl§ <= 180)
         {
            this.§_-YV§ = this.§_-Fl§ + param1 * (this.§_-Ao§ - this.§_-Fl§) / param2;
         }
         else if(this.§_-Ao§ > this.§_-Fl§ && this.§_-Ao§ - this.§_-Fl§ > 180)
         {
            this.§_-YV§ = this.§_-Fl§ + param1 * (this.§_-Ao§ - 360 - this.§_-Fl§) / param2;
         }
         else if(this.§_-Ao§ < this.§_-Fl§ && this.§_-Fl§ - this.§_-Ao§ <= 180)
         {
            this.§_-YV§ = this.§_-Fl§ + param1 * (this.§_-Ao§ - this.§_-Fl§) / param2;
         }
         else if(this.§_-Ao§ < this.§_-Fl§ && this.§_-Fl§ - this.§_-Ao§ > 180)
         {
            this.§_-YV§ = this.§_-Fl§ + param1 * (this.§_-Ao§ + 360 - this.§_-Fl§) / param2;
         }
      }
      
      public function get §_-20§() : Point
      {
         if(!§_-a7§)
         {
         }
         return null;
      }
      
      public function §_-bD§() : Boolean
      {
         return this.§_-bi§ == §_-y7§.§_-u3§ || this.§_-bi§ == §_-y7§.§_-T0§;
      }
      
      public function §_-MK§() : Boolean
      {
         return this.§_-bi§ == §_-y7§.§_-Ym§;
      }
      
      public function §_-nL§() : Boolean
      {
         return this.§_-bi§ == §_-y7§.§_-rh§;
      }
      
      public function §_-C5§() : Boolean
      {
         return this.§_-bi§ == §_-y7§.§_-T0§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-bi§ == §_-y7§.§_-XK§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-bi§ == §_-y7§.§_-KW§;
      }
      
      public function §_-re§() : Boolean
      {
         return this.§_-bi§ == §_-y7§.§_-zE§;
      }
      
      public function §_-iB§() : Boolean
      {
         return this.§_-bi§ == §_-y7§.§_-L7§;
      }
      
      public function §_-Rn§() : Boolean
      {
         if(this.§true § == "MISC_EXPLOSIVE_TNT")
         {
            return true;
         }
         return false;
      }
      
      public function §_-nV§() : Boolean
      {
         return this.§_-MK§() || this.§_-re§() || this.§_-iB§();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-pr§() : Number
      {
         return Number(Math.sqrt(this.§_-vv§().GetLinearVelocity().x * this.§_-vv§().GetLinearVelocity().x + this.§_-vv§().GetLinearVelocity().y * this.§_-vv§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§_-nL§())
         {
            return this.§_-gg§;
         }
         if(!this.§_-LK§.§_-eT§())
         {
            return this.§_-gg§;
         }
         if(this.§_-oX§ < 0)
         {
            if(param1 > 30)
            {
               this.§_-yC§(§_-AZ§.§_-ZI§);
            }
            else if(param1 > 12)
            {
               this.§_-yC§(§_-AZ§.§_-V0§);
            }
            else if(param1 > 3)
            {
               this.§_-yC§(§_-AZ§.§_-pK§);
            }
            return this.§_-gg§;
         }
         if(param1 < this.§_-oX§)
         {
            if(param1 >= this.§_-oX§ / 2)
            {
               this.§_-yC§(§_-AZ§.§_-pK§);
            }
            if(this.§_-bD§() && this.§_-gg§ == this.§_-jW§)
            {
               this.§_-gg§ = this.§_-jW§ - 1;
            }
            return this.§_-gg§;
         }
         param1 -= this.§_-oX§;
         if(param2 && this.§_-nV§())
         {
            _loc5_ = Math.min(this.§_-gg§,int(param1));
            _loc6_ = §_-7W§.§_-Sa§.getValue() * _loc5_;
            this.§_-LK§.§_-6q§.addScore(_loc6_,§_-iw§.§_-fA§,this.§_-gg§ > param1 && param3,this.§_-vv§().GetPosition().x,this.§_-vv§().GetPosition().y,§_-qC§.§_-x7§(this.§true §));
         }
         this.§_-gg§ -= param1;
         if(this.§_-gg§ < 1 && this.§_-bD§())
         {
            this.§_-gg§ = 1;
         }
         if(this.§_-gg§ < 1)
         {
            this.§_-gg§ = 0;
            §_-sW§.§_-0Q§(§_-AZ§.§_-ZI§,this.§_-uz§.§_-l2§,"ChannelDestroyed");
         }
         else
         {
            this.§_-yC§(§_-AZ§.§_-V0§);
            this.addDamageParticles(this.§_-LK§.§_-6q§.§_-sk§,param1);
         }
         this.§_-UF§.setDamagedFrame();
         return this.§_-gg§;
      }
      
      public function §_-yC§(param1:int) : void
      {
         §_-sW§.§_-0Q§(param1,this.§_-uz§.§_-l2§);
      }
      
      public function §_-ME§(param1:String) : Number
      {
         return this.§_-uz§.material.§_-yr§(param1) * this.§_-kg§;
      }
      
      public function §_-le§(param1:String) : Number
      {
         return this.§_-uz§.material.§_-de§(param1);
      }
      
      public function §_-fd§() : String
      {
         return this.§_-uz§.material.mName;
      }
      
      public function §_-ir§() : int
      {
         return this.§_-uz§.§_-9H§();
      }
      
      public function §_-nH§() : Boolean
      {
         return this.§_-vv§().IsAwake() && (this.§_-bD§() && this.§_-gg§ == this.§_-jW§ || Math.abs(this.§_-vv§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-vv§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-vv§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-AN§() : Boolean
      {
         if(!this.§_-vv§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§_-vv§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-vv§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-vv§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-JX§(param1:Number = 3) : void
      {
         this.§_-kg§ = param1;
         if(this.§_-kg§ > 1)
         {
            this.§_-UF§.§_-TL§();
         }
         else
         {
            this.§_-UF§.§ do§ = null;
         }
      }
      
      public function §_-8h§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-uz§.§_-oo§() == §_-pC§.§_-lg§)
         {
            _loc2_ = this.§_-UF§.mW * this.§_-UF§.mH * (§_-7W§.§_-hT§ * §_-7W§.§_-hT§);
         }
         else
         {
            _loc2_ = this.§_-vv§().GetMass() / this.§_-Gy§.§_-Xo§();
            if(param1)
            {
               _loc2_ *= this.§_-kp§();
            }
         }
         return _loc2_;
      }
      
      public function §_-kp§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-UF§.§_-2b§ - 1) / 10);
      }
      
      public function §switch§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-vv§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-vv§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-vv§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-OL§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-Tg§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-Tg§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-jQ§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-vv§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-vv§().§_-Ta§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§_-2d§();
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
            this.§_-Xh§(_loc3_);
         }
         this.§_-Xh§(this.§_-2d§() + param1);
      }
      
      public function §_-4I§(param1:Number) : void
      {
         var _loc2_:Number = §_-31§(this.§_-vv§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-Mc§(_loc2_);
         this.§_-vv§().§_-I-§(_loc2_);
      }
      
      public function §_-GR§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-vv§().GetPosition().Copy();
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
         this.§_-vv§().§_-Ta§(_loc13_);
      }
   }
}
