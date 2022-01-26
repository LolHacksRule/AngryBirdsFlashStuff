package §_-CR§
{
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-HU§.§_-6n§;
   import §_-HU§.§_-Ju§;
   import §_-HU§.§_-Pq§;
   import §_-HU§.§_-gs§;
   import §_-HU§.§_-yP§;
   import §_-Iw§.b2Body;
   import §_-Iw§.b2BodyDef;
   import §_-Iw§.b2FilterData;
   import §_-Iw§.b2Fixture;
   import §_-Iw§.b2World;
   import §_-Ja§.b2Vec2;
   import §_-Kt§.b2PolygonShape;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   import §_-OJ§.§_-vI§;
   import §_-e3§.§_-54§;
   import §_-lh§.b2Settings;
   import §_-rQ§.§_-Ou§;
   import flash.geom.Point;
   
   public class §_-Dz§
   {
      
      public static const §_-vu§:uint = 1 << 1;
      
      public static const §_-UM§:uint = 1 << 2;
      
      public static const §_-Du§:uint = 1 << 3;
      
      public static const §_-mc§:uint = 1 << 4;
      
      public static const §_-wb§:Boolean = true;
       
      
      private var §_-r§:int;
      
      private var §_-C0§:int;
      
      public var §_-L1§:String;
      
      public var §_-1n§:int;
      
      private var §_-CX§:§_-Pq§;
      
      private var §_-gH§:§_-F5§;
      
      private var §_-fy§:b2World;
      
      public var §_-v2§:Boolean = false;
      
      private var §_-7K§:b2Fixture;
      
      private var §_-ih§:b2Body;
      
      private var §_-Xn§:b2Vec2;
      
      public var §_-Qm§:Number;
      
      public var §_-FF§:Number;
      
      private var §_-1k§:Number;
      
      private var §_-wy§:Number;
      
      private var §_-hB§:Number;
      
      private var §default§:Number;
      
      private var §_-0N§:Number;
      
      private var §_-qn§:Number;
      
      private var §_-Sz§:Number;
      
      public var §_-Qr§:Number = 1;
      
      public var §_-3h§:Number = 0;
      
      public var §_-fO§:Number = 0;
      
      protected var §_-J3§:Boolean = false;
      
      public var §_-e7§:§_-l9§;
      
      private var §_-Cv§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-O5§:Number = 0;
      
      private var §_-KA§:Number = 1.0;
      
      private var §_-kf§:Boolean = true;
      
      public function §_-Dz§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc13_:b2PolygonShape = null;
         super();
         this.§_-L1§ = param6;
         this.§_-CX§ = §_-yP§.§_-nU§(param6);
         this.§_-gH§ = param1;
         this.§_-Cv§ = param2;
         this.§_-KA§ = param10;
         this.§_-r§ = param5;
         this.§_-1n§ = this.§_-CX§.§_-1n§;
         this.§_-C0§ = this.§_-CX§.§_-NI§();
         this.§_-e7§ = new §_-l9§(this,param2,param4);
         if(!this.§_-e7§.§_-Yy§(param1.§_-Ag§.§_-tJ§))
         {
            this.§_-e7§.§_-hu§(this.§_-C0§,this.§_-CX§.§_-zH§(),this.§_-CX§.§_-ff§() / §_-tL§.§_-7m§,this.§_-CX§.§_-zE§() / §_-tL§.§_-7m§);
         }
         this.§_-e7§.§_-Hl§(this.§_-C0§ == §_-Ju§.§_-d9§);
         this.§_-fy§ = param3;
         var _loc11_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-ih§ = this.§_-fy§.§_-EK§(_loc11_);
         this.§_-ih§.§_-g6§(this);
         if(this.§_-C0§ == §_-Ju§.§_-4b§)
         {
            _loc13_ = b2PolygonShape.§_-5V§(this.§_-CX§.shape.§_-sa§ * param10,this.§_-CX§.shape.§_-cr§ * param10);
            this.§_-7K§ = this.§_-ih§.CreateFixture2(_loc13_,this.§_-CX§.§_-eG§());
         }
         else if(this.§_-C0§ == §_-Ju§.§_-d9§ || this.§_-C0§ == §_-Ju§.§_-K9§)
         {
            this.§_-7K§ = this.§_-ih§.CreateFixture2(this.§_-CX§.shape.§_-3O§(param10),this.§_-CX§.§_-eG§());
         }
         this.§_-7K§.§_-FW§(this.§_-CX§.§_-gJ§());
         this.§_-7K§.§_-6X§(this.§_-CX§.§_-sA§());
         var _loc12_:b2FilterData = new b2FilterData();
         if(this.§_-gt§())
         {
            _loc12_.§try§ = §_-vu§;
            _loc12_.§_-Gi§ = 65535 & ~§_-UM§;
         }
         else if(this.§_-L1§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-L1§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc12_.§try§ = §_-UM§;
            _loc12_.§_-Gi§ = 65535 & ~§_-vu§;
         }
         this.§_-7K§.§_-9A§(_loc12_);
         this.§_-1k§ = this.§_-CX§.§_-3j§();
         if(this.§_-CX§.§_-FF§ > 0)
         {
            this.§_-Qm§ = this.§_-FF§ = this.§_-CX§.§_-FF§;
         }
         else
         {
            this.§_-Qm§ = this.§_-FF§ = Math.round(this.§_-jY§(true) * this.§_-CX§.§_-yd§());
            if(this.§_-Qm§ < 1)
            {
               this.§_-Qm§ = this.§_-FF§ = 1;
            }
         }
         if(this.§_-CX§.§_-1n§ == §_-Pq§.§_-J-§)
         {
            this.§_-Cv§.visible = false;
         }
         else
         {
            this.§_-e7§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-JM§(param9);
         }
         this.§_-vU§();
         this.§_-Qk§(0,1);
         this.§_-e7§.§_-Py§(this.§_-CX§.shape);
      }
      
      public static function §_-OR§(param1:int, param2:§_-6n§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-xd§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-C6§;
            }
            §_-Ou§.§_-ml§(_loc4_,param3);
         }
      }
      
      public static function §_-kV§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-gB§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Cv§;
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
         return this.§_-KA§;
      }
      
      public function get §_-Fc§() : Number
      {
         return this.§_-ih§.GetPosition().x;
      }
      
      public function get §_-50§() : Number
      {
         return this.§_-ih§.GetPosition().y;
      }
      
      public function get §_-JZ§() : §_-Pq§
      {
         return this.§_-CX§;
      }
      
      public function get §_-Fi§() : Boolean
      {
         return this.§_-1k§ >= 0;
      }
      
      protected function get container() : §_-F5§
      {
         return this.§_-gH§;
      }
      
      public function get §_-Yz§() : Boolean
      {
         return this.§_-kf§;
      }
      
      public function set §_-Yz§(param1:Boolean) : void
      {
         this.§_-kf§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-RR§(param1:b2FilterData) : void
      {
         if(this.§_-7K§)
         {
            this.§_-7K§.§_-9A§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-CX§.§_-gz§();
         _loc3_.§_-J4§ = true;
         _loc3_.§_-TG§ = true;
         _loc3_.§_-MK§ = true;
         _loc3_.§_-K5§ = 1;
         _loc3_.§_-eK§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§_-fy§)
         {
            this.§_-fy§.§_-uT§(this.§_-zq§());
            this.§_-fy§ = null;
         }
         this.§_-e7§.dispose();
         if(this.§_-Cv§)
         {
            this.§_-Cv§.dispose();
            this.§_-Cv§ = null;
         }
         this.§_-7K§ = null;
         this.§_-Xn§ = null;
         this.§_-CX§ = null;
      }
      
      public function §_-JM§(param1:Number) : void
      {
         this.§_-zq§().§_-eH§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-Js§() : Number
      {
         return (360 - this.§_-zq§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §var§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-zq§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-Nn§();
         }
         if(param3)
         {
            this.§_-gX§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-7K§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-zq§().GetPosition().x >= param3 && this.§_-zq§().GetPosition().x <= param4 && this.§_-zq§().GetPosition().y >= param1 && this.§_-zq§().GetPosition().y <= param2;
      }
      
      public function §_-Io§(param1:b2Vec2) : void
      {
         this.§_-Xn§ = param1;
      }
      
      public function §_-Ac§() : void
      {
         if(this.§_-Xn§)
         {
            this.§var§(this.§_-Xn§,false);
            this.§_-Xn§ = null;
         }
      }
      
      public function §_-Nn§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-zq§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-zq§().§_-kz§(0);
         }
         else
         {
            this.§_-zq§().§_-kz§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-gX§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-zq§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-JM§(_loc2_);
      }
      
      public function §_-zS§(param1:Number) : void
      {
         this.§_-zq§().§_-kz§(param1);
      }
      
      public function §_-zq§() : b2Body
      {
         if(this.§_-7K§ != null)
         {
            return this.§_-7K§.GetBody();
         }
         return null;
      }
      
      public function §_-f3§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§_-zq§().GetPosition().x = this.mX * §_-tL§.§_-7m§;
         this.§_-zq§().GetPosition().y = this.mY * §_-tL§.§_-7m§;
      }
      
      public function §_-Qk§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-J3§)
         {
            _loc3_ = true;
            this.§_-J3§ = false;
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
            this.§_-e7§.§_-nj§();
         }
         if(this.§_-Qr§ > 1 && this.§_-e7§.§_-U9§)
         {
            _loc4_ = 4 + (this.§_-e7§.§_-U9§.blurX - 4 + param2 / 20) % 28;
            this.§_-e7§.§_-U9§.blurX = _loc4_;
            this.§_-e7§.§_-U9§.blurY = _loc4_;
         }
         this.§_-e7§.§_-b2§(param2);
         if(§_-wb§)
         {
            this.§_-vq§(param1);
         }
         else
         {
            this.§_-O5§ = this.§default§;
            this.mX = this.§_-wy§;
            this.mY = this.§_-hB§;
         }
         this.§_-Cv§.x = Math.round(this.mX);
         this.§_-Cv§.y = Math.round(this.mY);
         this.§_-Cv§.rotation = this.§_-O5§ / 180 * Math.PI;
      }
      
      public function §_-vU§() : void
      {
         var _loc1_:Number = this.§_-zq§().GetPosition().x;
         var _loc2_:Number = this.§_-zq§().GetPosition().y;
         this.§_-Sz§ = this.§default§;
         this.§_-0N§ = this.§_-wy§;
         this.§_-qn§ = this.§_-hB§;
         this.§default§ = this.§_-zq§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-wy§ = _loc1_ / §_-tL§.§_-7m§;
         this.§_-hB§ = _loc2_ / §_-tL§.§_-7m§;
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
      
      public function §_-vq§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §_-54§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-gH§.§_-Ag§.§_-hA§.§_-Vi§ * 1000;
         }
         param1 *= -1;
         if(this.§_-wy§ == this.§_-0N§ || param1 == 0)
         {
            this.§_-3h§ = 0;
            this.mX = this.§_-wy§;
         }
         else
         {
            this.§_-3h§ = param1 * (this.§_-0N§ - this.§_-wy§) / param2;
            this.mX = this.§_-wy§ + this.§_-3h§;
         }
         if(this.§_-hB§ == this.§_-qn§ || param1 == 0)
         {
            this.§_-fO§ = 0;
            this.mY = this.§_-hB§;
         }
         else
         {
            this.§_-fO§ = param1 * (this.§_-qn§ - this.§_-hB§) / param2;
            this.mY = this.§_-hB§ + this.§_-fO§;
         }
         if(this.§default§ == this.§_-Sz§ || param1 == 0)
         {
            this.§_-O5§ = this.§default§;
         }
         else if(this.§_-Sz§ > this.§default§ && this.§_-Sz§ - this.§default§ <= 180)
         {
            this.§_-O5§ = this.§default§ + param1 * (this.§_-Sz§ - this.§default§) / param2;
         }
         else if(this.§_-Sz§ > this.§default§ && this.§_-Sz§ - this.§default§ > 180)
         {
            this.§_-O5§ = this.§default§ + param1 * (this.§_-Sz§ - 360 - this.§default§) / param2;
         }
         else if(this.§_-Sz§ < this.§default§ && this.§default§ - this.§_-Sz§ <= 180)
         {
            this.§_-O5§ = this.§default§ + param1 * (this.§_-Sz§ - this.§default§) / param2;
         }
         else if(this.§_-Sz§ < this.§default§ && this.§default§ - this.§_-Sz§ > 180)
         {
            this.§_-O5§ = this.§default§ + param1 * (this.§_-Sz§ + 360 - this.§default§) / param2;
         }
      }
      
      public function get §_-Yg§() : Point
      {
         if(!§_-wb§)
         {
         }
         return null;
      }
      
      public function §_-gt§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-EE§ || this.§_-1n§ == §_-Pq§.§_-FT§;
      }
      
      public function §_-7H§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-B9§;
      }
      
      public function §_-fw§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-NH§;
      }
      
      public function §_-Rb§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-FT§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-Le§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-J-§;
      }
      
      public function §_-U7§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-pV§;
      }
      
      public function §_-ik§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-dH§;
      }
      
      public function §_-rY§() : Boolean
      {
         if(this.§_-L1§ == "MISC_EXPLOSIVE_TNT")
         {
            return true;
         }
         return false;
      }
      
      public function §_-br§() : Boolean
      {
         return this.§_-7H§() || this.§_-U7§() || this.§_-ik§();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-Si§() : Number
      {
         return Number(Math.sqrt(this.§_-zq§().GetLinearVelocity().x * this.§_-zq§().GetLinearVelocity().x + this.§_-zq§().GetLinearVelocity().y * this.§_-zq§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§_-fw§())
         {
            return this.§_-Qm§;
         }
         if(!this.§_-gH§.§_-Jj§())
         {
            return this.§_-Qm§;
         }
         if(this.§_-1k§ < 0)
         {
            if(param1 > 30)
            {
               this.§_-h7§(§_-6n§.§_-eb§);
            }
            else if(param1 > 12)
            {
               this.§_-h7§(§_-6n§.§_-te§);
            }
            else if(param1 > 3)
            {
               this.§_-h7§(§_-6n§.§_-mV§);
            }
            return this.§_-Qm§;
         }
         if(param1 < this.§_-1k§)
         {
            if(param1 >= this.§_-1k§ / 2)
            {
               this.§_-h7§(§_-6n§.§_-mV§);
            }
            if(this.§_-gt§() && this.§_-Qm§ == this.§_-FF§)
            {
               this.§_-Qm§ = this.§_-FF§ - 1;
            }
            return this.§_-Qm§;
         }
         param1 -= this.§_-1k§;
         if(param2 && this.§_-br§())
         {
            _loc5_ = Math.min(this.§_-Qm§,int(param1));
            _loc6_ = §_-tL§.§_-Pt§.getValue() * _loc5_;
            this.§_-gH§.§_-Ag§.addScore(_loc6_,§_-vI§.§_-PL§,this.§_-Qm§ > param1 && param3,this.§_-zq§().GetPosition().x,this.§_-zq§().GetPosition().y,§_-UW§.§_-yw§(this.§_-L1§));
         }
         this.§_-Qm§ -= param1;
         if(this.§_-Qm§ < 1 && this.§_-gt§())
         {
            this.§_-Qm§ = 1;
         }
         if(this.§_-Qm§ < 1)
         {
            this.§_-Qm§ = 0;
            §_-Dz§.§_-OR§(§_-6n§.§_-eb§,this.§_-CX§.§_-Ie§,"ChannelDestroyed");
         }
         else
         {
            this.§_-h7§(§_-6n§.§_-te§);
            this.addDamageParticles(this.§_-gH§.§_-Ag§.particles,param1);
         }
         this.§_-e7§.setDamagedFrame();
         return this.§_-Qm§;
      }
      
      public function §_-h7§(param1:int) : void
      {
         §_-Dz§.§_-OR§(param1,this.§_-CX§.§_-Ie§);
      }
      
      public function §_-pj§(param1:String) : Number
      {
         return this.§_-CX§.material.§_-QL§(param1) * this.§_-Qr§;
      }
      
      public function §_-tm§(param1:String) : Number
      {
         return this.§_-CX§.material.§_-ek§(param1);
      }
      
      public function §_-zW§() : String
      {
         return this.§_-CX§.material.mName;
      }
      
      public function §_-o9§() : int
      {
         return this.§_-CX§.§_-DT§();
      }
      
      public function §_-bU§() : Boolean
      {
         return this.§_-zq§().IsAwake() && (this.§_-gt§() && this.§_-Qm§ == this.§_-FF§ || Math.abs(this.§_-zq§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-zq§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-zq§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-AA§() : Boolean
      {
         if(!this.§_-zq§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§_-zq§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-zq§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-zq§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-08§(param1:Number = 3) : void
      {
         this.§_-Qr§ = param1;
         if(this.§_-Qr§ > 1)
         {
            this.§_-e7§.§_-op§();
         }
         else
         {
            this.§_-e7§.§_-U9§ = null;
         }
      }
      
      public function §_-jY§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-CX§.§_-gz§() == §_-gs§.§_-AZ§)
         {
            _loc2_ = this.§_-e7§.mW * this.§_-e7§.mH * (§_-tL§.§_-7m§ * §_-tL§.§_-7m§);
         }
         else
         {
            _loc2_ = this.§_-zq§().GetMass() / this.§_-7K§.§_-0I§();
            if(param1)
            {
               _loc2_ *= this.§_-Xb§();
            }
            _loc2_ /= this.§_-KA§ * this.§_-KA§;
         }
         return _loc2_;
      }
      
      public function §_-Xb§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-e7§.§super§ - 1) / 10);
      }
      
      public function §_-QR§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-zq§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-zq§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-zq§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-Gb§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-Gb§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-ZN§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-zq§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-zq§().§_-d-§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§_-Js§();
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
            this.§_-JM§(_loc3_);
         }
         this.§_-JM§(this.§_-Js§() + param1);
      }
      
      public function §_-jF§(param1:Number) : void
      {
         var _loc2_:Number = §_-kV§(this.§_-zq§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-gB§(_loc2_);
         this.§_-zq§().§_-eH§(_loc2_);
      }
      
      public function §_-Td§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-zq§().GetPosition().Copy();
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
         this.§_-zq§().§_-d-§(_loc13_);
      }
   }
}
