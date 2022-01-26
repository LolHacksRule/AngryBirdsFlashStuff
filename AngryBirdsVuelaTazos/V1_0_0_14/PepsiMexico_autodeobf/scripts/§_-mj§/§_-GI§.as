package §_-mj§
{
   import §_-4n§.b2Vec2;
   import §_-5Y§.§_-Fy§;
   import §_-5Y§.§_-yw§;
   import §_-6n§.§_-5z§;
   import §_-CW§.§_-C-§;
   import §_-CW§.§_-hK§;
   import §_-Eo§.§_-R4§;
   import §_-WH§.§_-0§;
   import §_-WH§.§_-YE§;
   import §_-WH§.§_-Yj§;
   import §_-WH§.§_-ce§;
   import §_-WH§.§_-r5§;
   import §_-b5§.Sprite;
   import §_-bW§.b2Settings;
   import §_-yJ§.b2PolygonShape;
   import §const§.b2Body;
   import §const§.b2BodyDef;
   import §const§.b2FilterData;
   import §const§.b2Fixture;
   import §const§.b2World;
   import flash.geom.Point;
   
   public class §_-GI§
   {
      
      public static const §_-m7§:uint = 1 << 1;
      
      public static const §_-IG§:uint = 1 << 2;
      
      public static const §_-VJ§:uint = 1 << 3;
      
      public static const §_-a4§:uint = 1 << 4;
      
      public static const §_-w0§:Boolean = true;
       
      
      private var §_-GP§:int;
      
      private var §_-13§:int;
      
      public var §_-FK§:String;
      
      public var §_-FB§:int;
      
      private var §_-2k§:§_-r5§;
      
      private var §_-tQ§:§_-Fv§;
      
      private var §_-YD§:b2World;
      
      public var §_-C2§:Boolean = false;
      
      private var §_-5§:b2Fixture;
      
      private var §_-Xe§:b2Body;
      
      private var §_-ft§:b2Vec2;
      
      public var §_-QY§:Number;
      
      public var §_-t6§:Number;
      
      private var §_-pO§:Number;
      
      private var §_-wb§:Number;
      
      private var §_-1x§:Number;
      
      private var §_-MF§:Number;
      
      private var §_-nN§:Number;
      
      private var §_-sz§:Number;
      
      private var §_-rF§:Number;
      
      public var §_-nn§:Number = 1;
      
      public var §_-ls§:Number = 0;
      
      public var §_-tO§:Number = 0;
      
      protected var §_-iS§:Boolean = false;
      
      public var §_-M4§:§_-KA§;
      
      private var §_-MT§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-ny§:Number = 0;
      
      private var §_-2h§:Number = 1.0;
      
      private var §_-Tq§:Boolean = true;
      
      public function §_-GI§(param1:§_-Fv§, param2:Sprite, param3:b2World, param4:§_-yw§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc13_:b2PolygonShape = null;
         super();
         this.§_-FK§ = param6;
         this.§_-2k§ = §_-0§.§_-vN§(param6);
         this.§_-tQ§ = param1;
         this.§_-MT§ = param2;
         this.§_-2h§ = param10;
         this.§_-GP§ = param5;
         this.§_-FB§ = this.§_-2k§.§_-FB§;
         this.§_-13§ = this.§_-2k§.§_-AZ§();
         this.§_-M4§ = new §_-KA§(this,param2,param4);
         if(!this.§_-M4§.§_-TF§(param1.§_-Fx§.§_-9l§))
         {
            this.§_-M4§.§_-fj§(this.§_-13§,this.§_-2k§.§_-sX§(),this.§_-2k§.§_-YC§() / §_-yw§.§_-rO§,this.§_-2k§.§_-t0§() / §_-yw§.§_-rO§);
         }
         this.§_-M4§.§_-yL§(this.§_-13§ == §_-ce§.§_-kD§);
         this.§_-YD§ = param3;
         var _loc11_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-Xe§ = this.§_-YD§.§_-fs§(_loc11_);
         this.§_-Xe§.§_-ii§(this);
         if(this.§_-13§ == §_-ce§.§_-Rw§)
         {
            _loc13_ = b2PolygonShape.§_-D-§(this.§_-2k§.shape.§_-U0§ * param10,this.§_-2k§.shape.§_-bN§ * param10);
            this.§_-5§ = this.§_-Xe§.CreateFixture2(_loc13_,this.§_-2k§.§_-AF§());
         }
         else if(this.§_-13§ == §_-ce§.§_-kD§ || this.§_-13§ == §_-ce§.§_-73§)
         {
            this.§_-5§ = this.§_-Xe§.CreateFixture2(this.§_-2k§.shape.§_-TC§(param10),this.§_-2k§.§_-AF§());
         }
         this.§_-5§.§_-4e§(this.§_-2k§.§_-8S§());
         this.§_-5§.§_-DK§(this.§_-2k§.§_-P-§());
         var _loc12_:b2FilterData = new b2FilterData();
         if(this.§_-gt§())
         {
            _loc12_.§_-iI§ = §_-m7§;
            _loc12_.§_-gA§ = 65535 & ~§_-IG§;
         }
         else if(this.§_-FK§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-FK§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc12_.§_-iI§ = §_-IG§;
            _loc12_.§_-gA§ = 65535 & ~§_-m7§;
         }
         this.§_-5§.§_-sK§(_loc12_);
         this.§_-pO§ = this.§_-2k§.§_-4G§();
         if(this.§_-2k§.§_-t6§ > 0)
         {
            this.§_-QY§ = this.§_-t6§ = this.§_-2k§.§_-t6§;
         }
         else
         {
            this.§_-QY§ = this.§_-t6§ = Math.round(this.§_-Bs§(true) * this.§_-2k§.§_-6r§());
            if(this.§_-QY§ < 1)
            {
               this.§_-QY§ = this.§_-t6§ = 1;
            }
         }
         if(this.§_-2k§.§_-FB§ == §_-r5§.§_-T4§)
         {
            this.§_-MT§.visible = false;
         }
         else
         {
            this.§_-M4§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-DB§(param9);
         }
         this.§_-vt§();
         this.§_-ZD§(0,1);
         this.§_-M4§.§_-lL§(this.§_-2k§.shape);
      }
      
      public static function §_-i2§(param1:int, param2:§_-YE§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-qY§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-Ns§;
            }
            §_-5z§.§_-6h§(_loc4_,param3);
         }
      }
      
      public static function §_-XI§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-lZ§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-MT§;
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
         return this.§_-2h§;
      }
      
      public function get §_-km§() : Number
      {
         return this.§_-Xe§.GetPosition().x;
      }
      
      public function get §_-fE§() : Number
      {
         return this.§_-Xe§.GetPosition().y;
      }
      
      public function get §_-Xn§() : §_-r5§
      {
         return this.§_-2k§;
      }
      
      public function get §_-rQ§() : Boolean
      {
         return this.§_-pO§ >= 0;
      }
      
      protected function get container() : §_-Fv§
      {
         return this.§_-tQ§;
      }
      
      public function get §_-TM§() : Boolean
      {
         return this.§_-Tq§;
      }
      
      public function set §_-TM§(param1:Boolean) : void
      {
         this.§_-Tq§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-RJ§(param1:b2FilterData) : void
      {
         if(this.§_-5§)
         {
            this.§_-5§.§_-sK§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-2k§.§_-Rq§();
         _loc3_.§_-47§ = true;
         _loc3_.get = true;
         _loc3_.§_-xL§ = true;
         _loc3_.§_-AR§ = 1;
         _loc3_.§_-Yb§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§_-YD§)
         {
            this.§_-YD§.§_-S§(this.§_-oR§());
            this.§_-YD§ = null;
         }
         this.§_-M4§.dispose();
         if(this.§_-MT§)
         {
            this.§_-MT§.dispose();
            this.§_-MT§ = null;
         }
         this.§_-5§ = null;
         this.§_-ft§ = null;
         this.§_-2k§ = null;
      }
      
      public function §_-DB§(param1:Number) : void
      {
         this.§_-oR§().§_-2j§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-vx§() : Number
      {
         return (360 - this.§_-oR§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-vP§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-oR§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-h§();
         }
         if(param3)
         {
            this.§_-20§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-5§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-oR§().GetPosition().x >= param3 && this.§_-oR§().GetPosition().x <= param4 && this.§_-oR§().GetPosition().y >= param1 && this.§_-oR§().GetPosition().y <= param2;
      }
      
      public function §_-KH§(param1:b2Vec2) : void
      {
         this.§_-ft§ = param1;
      }
      
      public function §_-IR§() : void
      {
         if(this.§_-ft§)
         {
            this.§_-vP§(this.§_-ft§,false);
            this.§_-ft§ = null;
         }
      }
      
      public function §_-h§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-oR§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-oR§().§_-rJ§(0);
         }
         else
         {
            this.§_-oR§().§_-rJ§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-20§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-oR§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-DB§(_loc2_);
      }
      
      public function §_-CM§(param1:Number) : void
      {
         this.§_-oR§().§_-rJ§(param1);
      }
      
      public function §_-oR§() : b2Body
      {
         if(this.§_-5§ != null)
         {
            return this.§_-5§.GetBody();
         }
         return null;
      }
      
      public function §_-6Z§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§_-oR§().GetPosition().x = this.mX * §_-yw§.§_-rO§;
         this.§_-oR§().GetPosition().y = this.mY * §_-yw§.§_-rO§;
      }
      
      public function §_-ZD§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-iS§)
         {
            _loc3_ = true;
            this.§_-iS§ = false;
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
            this.§_-M4§.§_-XU§();
         }
         if(this.§_-nn§ > 1 && this.§_-M4§.§_-PW§)
         {
            _loc4_ = 4 + (this.§_-M4§.§_-PW§.blurX - 4 + param2 / 20) % 28;
            this.§_-M4§.§_-PW§.blurX = _loc4_;
            this.§_-M4§.§_-PW§.blurY = _loc4_;
         }
         this.§_-M4§.§_-Od§(param2);
         if(§_-w0§)
         {
            this.§_-YU§(param1);
         }
         else
         {
            this.§_-ny§ = this.§_-MF§;
            this.mX = this.§_-wb§;
            this.mY = this.§_-1x§;
         }
         this.§_-MT§.x = Math.round(this.mX);
         this.§_-MT§.y = Math.round(this.mY);
         this.§_-MT§.rotation = this.§_-ny§ / 180 * Math.PI;
      }
      
      public function §_-vt§() : void
      {
         var _loc1_:Number = this.§_-oR§().GetPosition().x;
         var _loc2_:Number = this.§_-oR§().GetPosition().y;
         this.§_-rF§ = this.§_-MF§;
         this.§_-nN§ = this.§_-wb§;
         this.§_-sz§ = this.§_-1x§;
         this.§_-MF§ = this.§_-oR§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-wb§ = _loc1_ / §_-yw§.§_-rO§;
         this.§_-1x§ = _loc2_ / §_-yw§.§_-rO§;
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
      
      public function §_-YU§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §_-R4§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-tQ§.§_-Fx§.§_-SU§.§_-Be§ * 1000;
         }
         param1 *= -1;
         if(this.§_-wb§ == this.§_-nN§ || param1 == 0)
         {
            this.§_-ls§ = 0;
            this.mX = this.§_-wb§;
         }
         else
         {
            this.§_-ls§ = param1 * (this.§_-nN§ - this.§_-wb§) / param2;
            this.mX = this.§_-wb§ + this.§_-ls§;
         }
         if(this.§_-1x§ == this.§_-sz§ || param1 == 0)
         {
            this.§_-tO§ = 0;
            this.mY = this.§_-1x§;
         }
         else
         {
            this.§_-tO§ = param1 * (this.§_-sz§ - this.§_-1x§) / param2;
            this.mY = this.§_-1x§ + this.§_-tO§;
         }
         if(this.§_-MF§ == this.§_-rF§ || param1 == 0)
         {
            this.§_-ny§ = this.§_-MF§;
         }
         else if(this.§_-rF§ > this.§_-MF§ && this.§_-rF§ - this.§_-MF§ <= 180)
         {
            this.§_-ny§ = this.§_-MF§ + param1 * (this.§_-rF§ - this.§_-MF§) / param2;
         }
         else if(this.§_-rF§ > this.§_-MF§ && this.§_-rF§ - this.§_-MF§ > 180)
         {
            this.§_-ny§ = this.§_-MF§ + param1 * (this.§_-rF§ - 360 - this.§_-MF§) / param2;
         }
         else if(this.§_-rF§ < this.§_-MF§ && this.§_-MF§ - this.§_-rF§ <= 180)
         {
            this.§_-ny§ = this.§_-MF§ + param1 * (this.§_-rF§ - this.§_-MF§) / param2;
         }
         else if(this.§_-rF§ < this.§_-MF§ && this.§_-MF§ - this.§_-rF§ > 180)
         {
            this.§_-ny§ = this.§_-MF§ + param1 * (this.§_-rF§ + 360 - this.§_-MF§) / param2;
         }
      }
      
      public function get § get§() : Point
      {
         if(!§_-w0§)
         {
         }
         return null;
      }
      
      public function §_-gt§() : Boolean
      {
         return this.§_-FB§ == §_-r5§.§_-gP§ || this.§_-FB§ == §_-r5§.§_-wM§;
      }
      
      public function §_-xW§() : Boolean
      {
         return this.§_-FB§ == §_-r5§.§_-pe§;
      }
      
      public function §_-Aj§() : Boolean
      {
         return this.§_-FB§ == §_-r5§.§_-Qb§;
      }
      
      public function §_-YY§() : Boolean
      {
         return this.§_-FB§ == §_-r5§.§_-wM§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-FB§ == §_-r5§.§_-wL§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-FB§ == §_-r5§.§_-T4§;
      }
      
      public function §_-2n§() : Boolean
      {
         return this.§_-FB§ == §_-r5§.§_-7W§;
      }
      
      public function §_-6c§() : Boolean
      {
         return this.§_-FB§ == §_-r5§.§_-jY§;
      }
      
      public function §_-37§() : Boolean
      {
         if(this.§_-FK§ == "MISC_EXPLOSIVE_TNT")
         {
            return true;
         }
         return false;
      }
      
      public function §_-Uq§() : Boolean
      {
         return this.§_-xW§() || this.§_-2n§() || this.§_-6c§();
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-6B§() : Number
      {
         return Number(Math.sqrt(this.§_-oR§().GetLinearVelocity().x * this.§_-oR§().GetLinearVelocity().x + this.§_-oR§().GetLinearVelocity().y * this.§_-oR§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.§_-Aj§())
         {
            return this.§_-QY§;
         }
         if(!this.§_-tQ§.§_-4f§())
         {
            return this.§_-QY§;
         }
         if(this.§_-pO§ < 0)
         {
            if(param1 > 30)
            {
               this.§_-kY§(§_-YE§.§_-XO§);
            }
            else if(param1 > 12)
            {
               this.§_-kY§(§_-YE§.§_-TL§);
            }
            else if(param1 > 3)
            {
               this.§_-kY§(§_-YE§.§_-iP§);
            }
            return this.§_-QY§;
         }
         if(param1 < this.§_-pO§)
         {
            if(param1 >= this.§_-pO§ / 2)
            {
               this.§_-kY§(§_-YE§.§_-iP§);
            }
            if(this.§_-gt§() && this.§_-QY§ == this.§_-t6§)
            {
               this.§_-QY§ = this.§_-t6§ - 1;
            }
            return this.§_-QY§;
         }
         param1 -= this.§_-pO§;
         if(param2 && this.§_-Uq§())
         {
            _loc5_ = Math.min(this.§_-QY§,int(param1));
            _loc6_ = §_-yw§.§_-FH§.getValue() * _loc5_;
            this.§_-tQ§.§_-Fx§.addScore(_loc6_,§_-Fy§.§_-VH§,this.§_-QY§ > param1 && param3,this.§_-oR§().GetPosition().x,this.§_-oR§().GetPosition().y,§_-C-§.§_-PG§(this.§_-FK§));
         }
         this.§_-QY§ -= param1;
         if(this.§_-QY§ < 1 && this.§_-gt§())
         {
            this.§_-QY§ = 1;
         }
         if(this.§_-QY§ < 1)
         {
            this.§_-QY§ = 0;
            §_-GI§.§_-i2§(§_-YE§.§_-XO§,this.§_-2k§.§_-aa§,"ChannelDestroyed");
         }
         else
         {
            this.§_-kY§(§_-YE§.§_-TL§);
            this.addDamageParticles(this.§_-tQ§.§_-Fx§.particles,param1);
         }
         this.§_-M4§.setDamagedFrame();
         return this.§_-QY§;
      }
      
      public function §_-kY§(param1:int) : void
      {
         §_-GI§.§_-i2§(param1,this.§_-2k§.§_-aa§);
      }
      
      public function §_-28§(param1:String) : Number
      {
         return this.§_-2k§.material.§_-vB§(param1) * this.§_-nn§;
      }
      
      public function §_-in§(param1:String) : Number
      {
         return this.§_-2k§.material.§_-f5§(param1);
      }
      
      public function §_-xb§() : String
      {
         return this.§_-2k§.material.mName;
      }
      
      public function §_-cI§() : int
      {
         return this.§_-2k§.§_-dh§();
      }
      
      public function §_-IB§() : Boolean
      {
         return this.§_-oR§().IsAwake() && (this.§_-gt§() && this.§_-QY§ == this.§_-t6§ || Math.abs(this.§_-oR§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-oR§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-oR§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-bf§() : Boolean
      {
         if(!this.§_-oR§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§_-oR§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-oR§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-oR§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-aM§(param1:Number = 3) : void
      {
         this.§_-nn§ = param1;
         if(this.§_-nn§ > 1)
         {
            this.§_-M4§.§_-1M§();
         }
         else
         {
            this.§_-M4§.§_-PW§ = null;
         }
      }
      
      public function §_-Bs§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-2k§.§_-Rq§() == §_-Yj§.§_-ta§)
         {
            _loc2_ = this.§_-M4§.mW * this.§_-M4§.mH * (§_-yw§.§_-rO§ * §_-yw§.§_-rO§);
         }
         else
         {
            _loc2_ = this.§_-oR§().GetMass() / this.§_-5§.§_-e2§();
            if(param1)
            {
               _loc2_ *= this.§_-8i§();
            }
            _loc2_ /= this.§_-2h§ * this.§_-2h§;
         }
         return _loc2_;
      }
      
      public function §_-8i§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-M4§.§_-Xx§ - 1) / 10);
      }
      
      public function §_-xY§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-oR§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-oR§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-oR§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-Fv§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-hK§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-hK§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-xe§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-oR§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-oR§().§_-J-§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§_-vx§();
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
            this.§_-DB§(_loc3_);
         }
         this.§_-DB§(this.§_-vx§() + param1);
      }
      
      public function §_-Xm§(param1:Number) : void
      {
         var _loc2_:Number = §_-XI§(this.§_-oR§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-lZ§(_loc2_);
         this.§_-oR§().§_-2j§(_loc2_);
      }
      
      public function §_-Ou§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-oR§().GetPosition().Copy();
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
         this.§_-oR§().§_-J-§(_loc13_);
      }
   }
}
