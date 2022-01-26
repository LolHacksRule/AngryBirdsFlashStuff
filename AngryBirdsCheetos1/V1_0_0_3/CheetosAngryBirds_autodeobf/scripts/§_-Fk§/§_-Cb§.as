package §_-Fk§
{
   import §_-0-K§.§_-8r§;
   import §_-0-K§.§_-FL§;
   import §_-00B§.b2Body;
   import §_-00B§.b2BodyDef;
   import §_-00B§.b2FilterData;
   import §_-00B§.b2Fixture;
   import §_-00B§.b2World;
   import §_-E5§.§_-Wo§;
   import §_-Jf§.b2Settings;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §_-OY§.b2PolygonShape;
   import §_-Vn§.b2Vec2;
   import §_-X4§.§_-EY§;
   import §_-X4§.§_-Fs§;
   import §_-X4§.§_-aP§;
   import §_-X4§.§_-rI§;
   import §_-X4§.§_-vJ§;
   import §_-r6§.§_-Oy§;
   import §case §.Sprite;
   import flash.geom.Point;
   
   public class §_-Cb§
   {
      
      public static const §_-XU§:uint = 1 << 1;
      
      public static const §_-nk§:uint = 1 << 2;
      
      public static const §_-00K§:uint = 1 << 3;
      
      public static const §_-Pp§:uint = 1 << 4;
      
      public static const §_-ls§:Boolean = true;
       
      
      private var §_-Pl§:int;
      
      private var §_-S7§:int;
      
      public var §_-k-§:String;
      
      public var §_-ly§:int;
      
      private var §_-qk§:§_-EY§;
      
      private var §_-3B§:§_-lp§;
      
      private var mWorld:b2World;
      
      private var §_-bV§:b2Fixture;
      
      private var §_-5D§:b2Body;
      
      private var §_-sp§:b2Vec2;
      
      public var §_-tR§:Number;
      
      public var §_-m1§:Number;
      
      private var §_-Rg§:Number;
      
      private var §_-Co§:Boolean = false;
      
      private var §_-E8§:Number;
      
      private var §_-LK§:Number;
      
      private var §_-mr§:Number;
      
      private var §_-rU§:Number;
      
      private var §_-2p§:Number;
      
      private var §_-oA§:Number;
      
      public var §_-XQ§:Number = 1;
      
      private var §_-m6§:Boolean = false;
      
      public var §_-IG§:Number = 0;
      
      public var §_-Ok§:Number = 0;
      
      protected var §_-DI§:Boolean = false;
      
      public var §_-Rh§:§_-8E§;
      
      private var §_-kv§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-EO§:Number = 0;
      
      private var §_-6L§:Number = 1.0;
      
      private var §_-GJ§:Boolean = false;
      
      private var §_-F7§:Boolean = true;
      
      public function §_-Cb§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§_-k-§ = param6;
         this.§_-qk§ = §_-rI§.§_-0l§(param6);
         this.§_-3B§ = param1;
         this.§_-kv§ = param2;
         this.§_-6L§ = param10;
         this.§_-GJ§ = param11;
         this.§_-Pl§ = param5;
         this.§_-ly§ = this.§_-qk§.§_-ly§;
         this.§_-S7§ = this.§_-qk§.§_-GO§();
         this.§_-Rh§ = new §_-8E§(this,param2,param4);
         if(!this.§_-Rh§.§_-pu§(param1.§_-mC§.§_-Un§))
         {
            this.§_-Rh§.§_-gz§(this.§_-S7§,this.§_-qk§.§_-Th§(),this.§_-qk§.§_-Pq§() / §_-FL§.§_-NU§,this.§_-qk§.§_-vx§() / §_-FL§.§_-NU§);
         }
         this.§_-Rh§.§_-DV§(this.§_-S7§ == §_-vJ§.§_-Lj§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-5D§ = this.mWorld.§_-nm§(_loc12_);
         this.§_-5D§.§_-aa§(this);
         if(this.§_-S7§ == §_-vJ§.§_-Qt§)
         {
            _loc14_ = b2PolygonShape.§_-NM§(this.§_-qk§.shape.§_-LO§ * param10,this.§_-qk§.shape.§_-Fy§ * param10);
            this.§_-bV§ = this.§_-5D§.CreateFixture2(_loc14_,this.§_-qk§.§_-Wa§());
         }
         else if(this.§_-S7§ == §_-vJ§.§_-Lj§ || this.§_-S7§ == §_-vJ§.§_-xK§)
         {
            this.§_-bV§ = this.§_-5D§.CreateFixture2(this.§_-qk§.shape.§_-nU§(param10),this.§_-qk§.§_-Wa§());
         }
         this.§_-bV§.§_-Xw§(this.§_-qk§.§_-Fl§());
         this.§_-bV§.§_-9H§(this.§_-qk§.§_-De§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§_-yG§())
         {
            _loc13_.§_-50§ = §_-XU§;
            _loc13_.§_-Vs§ = 65535 & ~§_-nk§;
         }
         else if(this.§_-k-§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-k-§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§_-50§ = §_-nk§;
            _loc13_.§_-Vs§ = 65535 & ~§_-XU§;
         }
         this.§_-bV§.§_-Na§(_loc13_);
         this.§_-Rg§ = this.§_-qk§.§_-o6§();
         if(this.§_-qk§.§_-m1§ > 0)
         {
            this.§_-tR§ = this.§_-m1§ = this.§_-qk§.§_-m1§;
         }
         else
         {
            this.§_-tR§ = this.§_-m1§ = Math.round(this.§_-nM§(true) * this.§_-qk§.§_-gi§());
            if(this.§_-tR§ < 1)
            {
               this.§_-tR§ = this.§_-m1§ = 1;
            }
         }
         if(this.§_-qk§.§_-ly§ == §_-EY§.§_-YO§)
         {
            this.§_-kv§.visible = false;
         }
         else
         {
            this.§_-Rh§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-TA§(param9);
         }
         this.§_-In§();
         this.§_-jz§(0,1);
         this.§_-Rh§.§_-69§(this.§_-qk§.shape);
      }
      
      public static function §_-KS§(param1:int, param2:§_-aP§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-eq§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-0-J§;
            }
            §_-Wo§.§case§(_loc4_,param3);
         }
      }
      
      public static function §_-6v§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-d3§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-kv§;
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
         return this.§_-6L§;
      }
      
      public function get front() : Boolean
      {
         return this.§_-GJ§;
      }
      
      public function get §_-Ks§() : Number
      {
         return this.§_-5D§.GetPosition().x;
      }
      
      public function get §_-jS§() : Number
      {
         return this.§_-5D§.GetPosition().y;
      }
      
      public function get §_-Lf§() : §_-EY§
      {
         return this.§_-qk§;
      }
      
      public function get §_-AZ§() : Boolean
      {
         return this.§_-Rg§ >= 0;
      }
      
      protected function get container() : §_-lp§
      {
         return this.§_-3B§;
      }
      
      public function get §_-U8§() : Boolean
      {
         return this.§_-F7§;
      }
      
      public function set §_-U8§(param1:Boolean) : void
      {
         this.§_-F7§ = param1;
      }
      
      public function set §_-Vv§(param1:Boolean) : void
      {
         this.§_-Co§ = param1;
      }
      
      public function get §_-lW§() : Boolean
      {
         return this.§_-m6§;
      }
      
      public function set §_-lW§(param1:Boolean) : void
      {
         this.§_-m6§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-Sm§(param1:b2FilterData) : void
      {
         if(this.§_-bV§)
         {
            this.§_-bV§.§_-Na§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-qk§.§_-H7§();
         _loc3_.§_-n-§ = true;
         _loc3_.§_-bt§ = true;
         _loc3_.§_-jI§ = true;
         _loc3_.§_-YU§ = 1;
         _loc3_.§_-M§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§_-U6§(this.§_-Zv§());
            this.mWorld = null;
         }
         this.§_-Rh§.dispose();
         if(this.§_-kv§)
         {
            this.§_-kv§.dispose();
            this.§_-kv§ = null;
         }
         this.§_-bV§ = null;
         this.§_-sp§ = null;
         this.§_-qk§ = null;
      }
      
      public function §_-TA§(param1:Number) : void
      {
         this.§_-Zv§().§_-w1§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §if§() : Number
      {
         return (360 - this.§_-Zv§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-fC§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-Zv§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-kK§();
         }
         if(param3)
         {
            this.§_-C6§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-bV§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-Zv§().GetPosition().x >= param3 && this.§_-Zv§().GetPosition().x <= param4 && this.§_-Zv§().GetPosition().y >= param1 && this.§_-Zv§().GetPosition().y <= param2;
      }
      
      public function §_-q4§(param1:b2Vec2) : void
      {
         this.§_-sp§ = param1;
      }
      
      public function §_-ds§() : void
      {
         if(this.§_-sp§)
         {
            this.§_-fC§(this.§_-sp§,false);
            this.§_-sp§ = null;
         }
      }
      
      public function §_-kK§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-Zv§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-Zv§().§_-ti§(0);
         }
         else
         {
            this.§_-Zv§().§_-ti§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-C6§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-Zv§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-TA§(_loc2_);
      }
      
      public function §_-YI§(param1:Number) : void
      {
         this.§_-Zv§().§_-ti§(param1);
      }
      
      public function §_-Zv§() : b2Body
      {
         if(this.§_-bV§ != null)
         {
            return this.§_-bV§.GetBody();
         }
         return null;
      }
      
      public function §_-if§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§_-Zv§().GetPosition().x = this.mX * §_-FL§.§_-NU§;
         this.§_-Zv§().GetPosition().y = this.mY * §_-FL§.§_-NU§;
      }
      
      public function §_-jz§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-DI§)
         {
            _loc3_ = true;
            this.§_-DI§ = false;
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
            this.§_-Rh§.§_-jb§();
         }
         if(this.§_-XQ§ > 1 && this.§_-Rh§.§ null§)
         {
            _loc4_ = 4 + (this.§_-Rh§.§ null§.blurX - 4 + param2 / 20) % 28;
            this.§_-Rh§.§ null§.blurX = _loc4_;
            this.§_-Rh§.§ null§.blurY = _loc4_;
         }
         this.§_-Rh§.§_-JO§(param2);
         if(§_-ls§)
         {
            this.§_-2v§(param1);
         }
         else
         {
            this.§_-EO§ = this.§_-mr§;
            this.mX = this.§_-E8§;
            this.mY = this.§_-LK§;
         }
         this.§_-kv§.x = Math.round(this.mX);
         this.§_-kv§.y = Math.round(this.mY);
         this.§_-kv§.rotation = this.§_-EO§ / 180 * Math.PI;
      }
      
      public function §_-In§() : void
      {
         var _loc1_:Number = this.§_-Zv§().GetPosition().x;
         var _loc2_:Number = this.§_-Zv§().GetPosition().y;
         this.§_-oA§ = this.§_-mr§;
         this.§_-rU§ = this.§_-E8§;
         this.§_-2p§ = this.§_-LK§;
         this.§_-mr§ = this.§_-Zv§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-E8§ = _loc1_ / §_-FL§.§_-NU§;
         this.§_-LK§ = _loc2_ / §_-FL§.§_-NU§;
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
      
      public function §_-2v§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §_-Oy§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-3B§.§_-mC§.mLevelEngine.§_-D3§ * 1000;
         }
         param1 *= -1;
         if(this.§_-E8§ == this.§_-rU§ || param1 == 0)
         {
            this.§_-IG§ = 0;
            this.mX = this.§_-E8§;
         }
         else
         {
            this.§_-IG§ = param1 * (this.§_-rU§ - this.§_-E8§) / param2;
            this.mX = this.§_-E8§ + this.§_-IG§;
         }
         if(this.§_-LK§ == this.§_-2p§ || param1 == 0)
         {
            this.§_-Ok§ = 0;
            this.mY = this.§_-LK§;
         }
         else
         {
            this.§_-Ok§ = param1 * (this.§_-2p§ - this.§_-LK§) / param2;
            this.mY = this.§_-LK§ + this.§_-Ok§;
         }
         if(this.§_-mr§ == this.§_-oA§ || param1 == 0)
         {
            this.§_-EO§ = this.§_-mr§;
         }
         else if(this.§_-oA§ > this.§_-mr§ && this.§_-oA§ - this.§_-mr§ <= 180)
         {
            this.§_-EO§ = this.§_-mr§ + param1 * (this.§_-oA§ - this.§_-mr§) / param2;
         }
         else if(this.§_-oA§ > this.§_-mr§ && this.§_-oA§ - this.§_-mr§ > 180)
         {
            this.§_-EO§ = this.§_-mr§ + param1 * (this.§_-oA§ - 360 - this.§_-mr§) / param2;
         }
         else if(this.§_-oA§ < this.§_-mr§ && this.§_-mr§ - this.§_-oA§ <= 180)
         {
            this.§_-EO§ = this.§_-mr§ + param1 * (this.§_-oA§ - this.§_-mr§) / param2;
         }
         else if(this.§_-oA§ < this.§_-mr§ && this.§_-mr§ - this.§_-oA§ > 180)
         {
            this.§_-EO§ = this.§_-mr§ + param1 * (this.§_-oA§ + 360 - this.§_-mr§) / param2;
         }
      }
      
      public function get §_-xF§() : Point
      {
         if(!§_-ls§)
         {
         }
         return null;
      }
      
      public function §_-yG§() : Boolean
      {
         return this.§_-ly§ == §_-EY§.§_-8s§ || this.§_-ly§ == §_-EY§.§_-sg§;
      }
      
      public function §_-Zq§() : Boolean
      {
         return this.§_-ly§ == §_-EY§.§_-0-n§;
      }
      
      public function §_-tE§() : Boolean
      {
         return this.§_-ly§ == §_-EY§.§_-PC§;
      }
      
      public function §_-R0§() : Boolean
      {
         return this.§_-ly§ == §_-EY§.§_-sg§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-ly§ == §_-EY§.§_-s3§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-ly§ == §_-EY§.§_-YO§;
      }
      
      public function §_-o7§() : Boolean
      {
         return this.§_-ly§ == §_-EY§.§_-DJ§;
      }
      
      public function §_-gO§() : Boolean
      {
         return this.§_-ly§ == §_-EY§.§_-Xk§;
      }
      
      public function §_-CI§() : Boolean
      {
         if(this.§_-k-§ == "MISC_EXPLOSIVE_TNT" || this.§_-k-§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §_-Lp§() : Boolean
      {
         return (this.§_-Zq§() || this.§_-o7§() || this.§_-gO§()) && !this.§_-lW§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-If§() : Number
      {
         return Number(Math.sqrt(this.§_-Zv§().GetLinearVelocity().x * this.§_-Zv§().GetLinearVelocity().x + this.§_-Zv§().GetLinearVelocity().y * this.§_-Zv§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§_-tE§())
         {
            return this.§_-tR§;
         }
         if(!this.§_-3B§.§_-Dn§())
         {
            return this.§_-tR§;
         }
         if(this.§_-Rg§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§_-0-i§(§_-aP§.§_-0-X§);
            }
            else if(param1 > 12)
            {
               this.§_-0-i§(§_-aP§.§_-mY§);
            }
            else if(param1 > 3)
            {
               this.§_-0-i§(§_-aP§.§_-bY§);
            }
            return this.§_-tR§;
         }
         if(param1 < this.§_-Rg§)
         {
            if(param1 >= this.§_-Rg§ / 2)
            {
               this.§_-0-i§(§_-aP§.§_-bY§);
            }
            if(this.§_-yG§() && this.§_-tR§ == this.§_-m1§)
            {
               this.§_-tR§ = this.§_-m1§ - 1;
            }
            return this.§_-tR§;
         }
         param1 -= this.§_-Rg§;
         if(param2 && this.§_-Lp§())
         {
            _loc7_ = Math.min(this.§_-tR§,int(param1));
            _loc8_ = §_-FL§.§_-zA§.getValue() * _loc7_;
            this.§_-3B§.§_-mC§.addScore(_loc8_,§_-8r§.§_-x5§,this.§_-tR§ > param1 && param3,this.§_-Zv§().GetPosition().x,this.§_-Zv§().GetPosition().y,§_-hQ§.§_-Ct§(this.§_-k-§));
         }
         if(!(param5 && this.§_-Co§))
         {
            this.§_-tR§ -= param1;
         }
         if(this.§_-tR§ < 1 && this.§_-yG§())
         {
            this.§_-tR§ = 1;
         }
         if(this.§_-tR§ < 1)
         {
            this.§_-tR§ = 0;
            §_-Cb§.§_-KS§(§_-aP§.§_-0-X§,this.§_-qk§.§_-0G§,"ChannelDestroyed");
         }
         else
         {
            this.§_-0-i§(§_-aP§.§_-mY§);
            this.addDamageParticles(this.§_-3B§.§_-mC§.particles,param1);
         }
         this.§_-Rh§.setDamagedFrame();
         return this.§_-tR§;
      }
      
      public function §_-0-i§(param1:int) : void
      {
         §_-Cb§.§_-KS§(param1,this.§_-qk§.§_-0G§);
      }
      
      public function §_-uU§(param1:String) : Number
      {
         return this.§_-qk§.material.§_-Mp§(param1) * this.§_-XQ§;
      }
      
      public function §_-nz§(param1:String) : Number
      {
         return this.§_-qk§.material.§_-QZ§(param1);
      }
      
      public function §_-5B§() : String
      {
         return this.§_-qk§.material.mName;
      }
      
      public function §_-zv§() : Number
      {
         return this.§_-qk§.§_-gi§();
      }
      
      public function §_-ZW§() : int
      {
         return this.§_-qk§.§_-lC§();
      }
      
      public function §_-xj§() : Boolean
      {
         return this.§_-Zv§().IsAwake() && (this.§_-yG§() && this.§_-tR§ == this.§_-m1§ || Math.abs(this.§_-Zv§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-Zv§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-Zv§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-RG§() : Boolean
      {
         if(!this.§_-Zv§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§_-Zv§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-Zv§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-Zv§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-oT§(param1:Number = 3) : void
      {
         this.§_-XQ§ = param1;
         if(this.§_-XQ§ > 1)
         {
            this.§_-Rh§.§_-nB§();
         }
         else
         {
            this.§_-Rh§.§ null§ = null;
         }
      }
      
      public function §_-nM§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-qk§.§_-H7§() == §_-Fs§.§_-LE§)
         {
            _loc2_ = this.§_-Rh§.mW * this.§_-Rh§.mH * (§_-FL§.§_-NU§ * §_-FL§.§_-NU§);
         }
         else
         {
            _loc2_ = this.§_-Zv§().GetMass() / this.§_-bV§.§_-nc§();
            if(param1)
            {
               _loc2_ *= this.§_-LB§();
            }
            _loc2_ /= this.§_-6L§ * this.§_-6L§;
         }
         return _loc2_;
      }
      
      public function §_-LB§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-Rh§.§_-GA§ - 1) / 10);
      }
      
      public function §_-e3§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-Zv§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-Zv§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-Zv§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-lp§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-RT§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-RT§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-Pi§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-Zv§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-Zv§().§_-00s§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§if§();
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
            this.§_-TA§(_loc3_);
         }
         this.§_-TA§(this.§if§() + param1);
      }
      
      public function §_-eN§(param1:Number) : void
      {
         var _loc2_:Number = §_-6v§(this.§_-Zv§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-d3§(_loc2_);
         this.§_-Zv§().§_-w1§(_loc2_);
      }
      
      public function §_-l3§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-Zv§().GetPosition().Copy();
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
         this.§_-Zv§().§_-00s§(_loc13_);
      }
   }
}
