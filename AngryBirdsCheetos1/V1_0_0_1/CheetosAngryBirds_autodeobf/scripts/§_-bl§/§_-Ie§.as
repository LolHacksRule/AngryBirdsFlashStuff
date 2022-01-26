package §_-bl§
{
   import §_-2r§.§_-fU§;
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §_-U0§.§_-tF§;
   import §_-b4§.b2Settings;
   import §_-cG§.b2PolygonShape;
   import §_-cP§.b2Vec2;
   import §_-cb§.§_-0B§;
   import §_-p5§.§_-6L§;
   import §_-p5§.§_-Sv§;
   import §_-p5§.§_-ZO§;
   import §_-p5§.§_-lM§;
   import §_-p5§.§_-qt§;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   import flash.geom.Point;
   import §try§.b2Body;
   import §try§.b2BodyDef;
   import §try§.b2FilterData;
   import §try§.b2Fixture;
   import §try§.b2World;
   
   public class §_-Ie§
   {
      
      public static const §_-0-d§:uint = 1 << 1;
      
      public static const §_-oo§:uint = 1 << 2;
      
      public static const §_-UG§:uint = 1 << 3;
      
      public static const §each §:uint = 1 << 4;
      
      public static const §_-6n§:Boolean = true;
       
      
      private var §default§:int;
      
      private var §_-X7§:int;
      
      public var §_-G2§:String;
      
      public var §_-1f§:int;
      
      private var §_-kj§:§_-Sv§;
      
      private var §_-ab§:§_-S4§;
      
      private var mWorld:b2World;
      
      private var §_-C8§:b2Fixture;
      
      private var §_-v8§:b2Body;
      
      private var §_-US§:b2Vec2;
      
      public var §_-T5§:Number;
      
      public var §_-Rj§:Number;
      
      private var §_-0-E§:Number;
      
      private var §_-np§:Boolean = false;
      
      private var §_-wy§:Number;
      
      private var §_-0c§:Number;
      
      private var §_-mX§:Number;
      
      private var §_-BY§:Number;
      
      private var §_-0-Z§:Number;
      
      private var §_-Hb§:Number;
      
      public var §_-Fj§:Number = 1;
      
      private var §_-nV§:Boolean = false;
      
      public var §_-kR§:Number = 0;
      
      public var §_-3p§:Number = 0;
      
      protected var §_-jN§:Boolean = false;
      
      public var §_-KI§:§_-Td§;
      
      private var §_-S0§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-AE§:Number = 0;
      
      private var §_-7Q§:Number = 1.0;
      
      private var §_-Mg§:Boolean = false;
      
      private var §_-kY§:Boolean = true;
      
      public function §_-Ie§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§_-G2§ = param6;
         this.§_-kj§ = §_-lM§.§_-0-i§(param6);
         this.§_-ab§ = param1;
         this.§_-S0§ = param2;
         this.§_-7Q§ = param10;
         this.§_-Mg§ = param11;
         this.§default§ = param5;
         this.§_-1f§ = this.§_-kj§.§_-1f§;
         this.§_-X7§ = this.§_-kj§.§_-5R§();
         this.§_-KI§ = new §_-Td§(this,param2,param4);
         if(!this.§_-KI§.§_-Y§(param1.§_-5F§.§_-fl§))
         {
            this.§_-KI§.§_-fz§(this.§_-X7§,this.§_-kj§.§_-Bq§(),this.§_-kj§.§_-vA§() / §_-sn§.§_-5Y§,this.§_-kj§.§_-Dg§() / §_-sn§.§_-5Y§);
         }
         this.§_-KI§.§_-de§(this.§_-X7§ == §_-6L§.§_-Xe§);
         this.mWorld = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§_-v8§ = this.mWorld.§_-qw§(_loc12_);
         this.§_-v8§.§_-N-§(this);
         if(this.§_-X7§ == §_-6L§.§_-Xq§)
         {
            _loc14_ = b2PolygonShape.§_-vl§(this.§_-kj§.shape.§_-aC§ * param10,this.§_-kj§.shape.§_-3v§ * param10);
            this.§_-C8§ = this.§_-v8§.CreateFixture2(_loc14_,this.§_-kj§.§_-AL§());
         }
         else if(this.§_-X7§ == §_-6L§.§_-Xe§ || this.§_-X7§ == §_-6L§.§_-zi§)
         {
            this.§_-C8§ = this.§_-v8§.CreateFixture2(this.§_-kj§.shape.§_-YD§(param10),this.§_-kj§.§_-AL§());
         }
         this.§_-C8§.§_-6P§(this.§_-kj§.§_-4q§());
         this.§_-C8§.§_-Kj§(this.§_-kj§.§_-Yn§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§_-Mi§())
         {
            _loc13_.§_-26§ = §_-0-d§;
            _loc13_.§_-rY§ = 65535 & ~§_-oo§;
         }
         else if(this.§_-G2§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-G2§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§_-26§ = §_-oo§;
            _loc13_.§_-rY§ = 65535 & ~§_-0-d§;
         }
         this.§_-C8§.§_-wN§(_loc13_);
         this.§_-0-E§ = this.§_-kj§.§_-44§();
         if(this.§_-kj§.§_-Rj§ > 0)
         {
            this.§_-T5§ = this.§_-Rj§ = this.§_-kj§.§_-Rj§;
         }
         else
         {
            this.§_-T5§ = this.§_-Rj§ = Math.round(this.§_-vE§(true) * this.§_-kj§.§_-Pc§());
            if(this.§_-T5§ < 1)
            {
               this.§_-T5§ = this.§_-Rj§ = 1;
            }
         }
         if(this.§_-kj§.§_-1f§ == §_-Sv§.§_-c1§)
         {
            this.§_-S0§.visible = false;
         }
         else
         {
            this.§_-KI§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-ul§(param9);
         }
         this.§_-0-T§();
         this.§_-53§(0,1);
         this.§_-KI§.§_-Qn§(this.§_-kj§.shape);
      }
      
      public static function §_-AC§(param1:int, param2:§_-ZO§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-Oc§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-zl§;
            }
            §_-0B§.§_-ZU§(_loc4_,param3);
         }
      }
      
      public static function §_-pG§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-yr§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-S0§;
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
         return this.§_-7Q§;
      }
      
      public function get front() : Boolean
      {
         return this.§_-Mg§;
      }
      
      public function get §_-hM§() : Number
      {
         return this.§_-v8§.GetPosition().x;
      }
      
      public function get §_-nn§() : Number
      {
         return this.§_-v8§.GetPosition().y;
      }
      
      public function get §_-Az§() : §_-Sv§
      {
         return this.§_-kj§;
      }
      
      public function get §do §() : Boolean
      {
         return this.§_-0-E§ >= 0;
      }
      
      protected function get container() : §_-S4§
      {
         return this.§_-ab§;
      }
      
      public function get §_-wm§() : Boolean
      {
         return this.§_-kY§;
      }
      
      public function set §_-wm§(param1:Boolean) : void
      {
         this.§_-kY§ = param1;
      }
      
      public function set §_-2L§(param1:Boolean) : void
      {
         this.§_-np§ = param1;
      }
      
      public function get §_-yf§() : Boolean
      {
         return this.§_-nV§;
      }
      
      public function set §_-yf§(param1:Boolean) : void
      {
         this.§_-nV§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-lu§(param1:b2FilterData) : void
      {
         if(this.§_-C8§)
         {
            this.§_-C8§.§_-wN§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-kj§.§_-NA§();
         _loc3_.§_-pA§ = true;
         _loc3_.§_-Rm§ = true;
         _loc3_.§_-pL§ = true;
         _loc3_.§_-iY§ = 1;
         _loc3_.§_-II§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mWorld)
         {
            this.mWorld.§_-rH§(this.§_-BO§());
            this.mWorld = null;
         }
         this.§_-KI§.dispose();
         if(this.§_-S0§)
         {
            this.§_-S0§.dispose();
            this.§_-S0§ = null;
         }
         this.§_-C8§ = null;
         this.§_-US§ = null;
         this.§_-kj§ = null;
      }
      
      public function §_-ul§(param1:Number) : void
      {
         this.§_-BO§().§_-fw§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-rM§() : Number
      {
         return (360 - this.§_-BO§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-d9§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-BO§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-5O§();
         }
         if(param3)
         {
            this.§_-3§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-C8§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-BO§().GetPosition().x >= param3 && this.§_-BO§().GetPosition().x <= param4 && this.§_-BO§().GetPosition().y >= param1 && this.§_-BO§().GetPosition().y <= param2;
      }
      
      public function §_-Dy§(param1:b2Vec2) : void
      {
         this.§_-US§ = param1;
      }
      
      public function §_-cW§() : void
      {
         if(this.§_-US§)
         {
            this.§_-d9§(this.§_-US§,false);
            this.§_-US§ = null;
         }
      }
      
      public function §_-5O§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-BO§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-BO§().§_-fL§(0);
         }
         else
         {
            this.§_-BO§().§_-fL§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-3§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-BO§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-ul§(_loc2_);
      }
      
      public function §_-na§(param1:Number) : void
      {
         this.§_-BO§().§_-fL§(param1);
      }
      
      public function §_-BO§() : b2Body
      {
         if(this.§_-C8§ != null)
         {
            return this.§_-C8§.GetBody();
         }
         return null;
      }
      
      public function §_-Gc§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§_-BO§().GetPosition().x = this.mX * §_-sn§.§_-5Y§;
         this.§_-BO§().GetPosition().y = this.mY * §_-sn§.§_-5Y§;
      }
      
      public function §_-53§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-jN§)
         {
            _loc3_ = true;
            this.§_-jN§ = false;
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
            this.§_-KI§.§_-bP§();
         }
         if(this.§_-Fj§ > 1 && this.§_-KI§.§_-Gw§)
         {
            _loc4_ = 4 + (this.§_-KI§.§_-Gw§.blurX - 4 + param2 / 20) % 28;
            this.§_-KI§.§_-Gw§.blurX = _loc4_;
            this.§_-KI§.§_-Gw§.blurY = _loc4_;
         }
         this.§_-KI§.§_-02§(param2);
         if(§_-6n§)
         {
            this.§_-003§(param1);
         }
         else
         {
            this.§_-AE§ = this.§_-mX§;
            this.mX = this.§_-wy§;
            this.mY = this.§_-0c§;
         }
         this.§_-S0§.x = Math.round(this.mX);
         this.§_-S0§.y = Math.round(this.mY);
         this.§_-S0§.rotation = this.§_-AE§ / 180 * Math.PI;
      }
      
      public function §_-0-T§() : void
      {
         var _loc1_:Number = this.§_-BO§().GetPosition().x;
         var _loc2_:Number = this.§_-BO§().GetPosition().y;
         this.§_-Hb§ = this.§_-mX§;
         this.§_-BY§ = this.§_-wy§;
         this.§_-0-Z§ = this.§_-0c§;
         this.§_-mX§ = this.§_-BO§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-wy§ = _loc1_ / §_-sn§.§_-5Y§;
         this.§_-0c§ = _loc2_ / §_-sn§.§_-5Y§;
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
      
      public function §_-003§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §_-tF§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-ab§.§_-5F§.mLevelEngine.§_-X4§ * 1000;
         }
         param1 *= -1;
         if(this.§_-wy§ == this.§_-BY§ || param1 == 0)
         {
            this.§_-kR§ = 0;
            this.mX = this.§_-wy§;
         }
         else
         {
            this.§_-kR§ = param1 * (this.§_-BY§ - this.§_-wy§) / param2;
            this.mX = this.§_-wy§ + this.§_-kR§;
         }
         if(this.§_-0c§ == this.§_-0-Z§ || param1 == 0)
         {
            this.§_-3p§ = 0;
            this.mY = this.§_-0c§;
         }
         else
         {
            this.§_-3p§ = param1 * (this.§_-0-Z§ - this.§_-0c§) / param2;
            this.mY = this.§_-0c§ + this.§_-3p§;
         }
         if(this.§_-mX§ == this.§_-Hb§ || param1 == 0)
         {
            this.§_-AE§ = this.§_-mX§;
         }
         else if(this.§_-Hb§ > this.§_-mX§ && this.§_-Hb§ - this.§_-mX§ <= 180)
         {
            this.§_-AE§ = this.§_-mX§ + param1 * (this.§_-Hb§ - this.§_-mX§) / param2;
         }
         else if(this.§_-Hb§ > this.§_-mX§ && this.§_-Hb§ - this.§_-mX§ > 180)
         {
            this.§_-AE§ = this.§_-mX§ + param1 * (this.§_-Hb§ - 360 - this.§_-mX§) / param2;
         }
         else if(this.§_-Hb§ < this.§_-mX§ && this.§_-mX§ - this.§_-Hb§ <= 180)
         {
            this.§_-AE§ = this.§_-mX§ + param1 * (this.§_-Hb§ - this.§_-mX§) / param2;
         }
         else if(this.§_-Hb§ < this.§_-mX§ && this.§_-mX§ - this.§_-Hb§ > 180)
         {
            this.§_-AE§ = this.§_-mX§ + param1 * (this.§_-Hb§ + 360 - this.§_-mX§) / param2;
         }
      }
      
      public function get §_-82§() : Point
      {
         if(!§_-6n§)
         {
         }
         return null;
      }
      
      public function §_-Mi§() : Boolean
      {
         return this.§_-1f§ == §_-Sv§.§_-L-§ || this.§_-1f§ == §_-Sv§.§_-eP§;
      }
      
      public function §_-z6§() : Boolean
      {
         return this.§_-1f§ == §_-Sv§.§_-pp§;
      }
      
      public function §_-Uh§() : Boolean
      {
         return this.§_-1f§ == §_-Sv§.§_-Ac§;
      }
      
      public function §_-J5§() : Boolean
      {
         return this.§_-1f§ == §_-Sv§.§_-eP§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-1f§ == §_-Sv§.§_-Kh§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-1f§ == §_-Sv§.§_-c1§;
      }
      
      public function §_-ZK§() : Boolean
      {
         return this.§_-1f§ == §_-Sv§.§_-6x§;
      }
      
      public function §_-aQ§() : Boolean
      {
         return this.§_-1f§ == §_-Sv§.§_-wf§;
      }
      
      public function §_-fm§() : Boolean
      {
         if(this.§_-G2§ == "MISC_EXPLOSIVE_TNT" || this.§_-G2§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §_-Tw§() : Boolean
      {
         return (this.§_-z6§() || this.§_-ZK§() || this.§_-aQ§()) && !this.§_-yf§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-a2§() : Number
      {
         return Number(Math.sqrt(this.§_-BO§().GetLinearVelocity().x * this.§_-BO§().GetLinearVelocity().x + this.§_-BO§().GetLinearVelocity().y * this.§_-BO§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§_-Uh§())
         {
            return this.§_-T5§;
         }
         if(!this.§_-ab§.§_-Gl§())
         {
            return this.§_-T5§;
         }
         if(this.§_-0-E§ < 0 && !param6)
         {
            if(param1 > 30)
            {
               this.§_-M6§(§_-ZO§.§_-yq§);
            }
            else if(param1 > 12)
            {
               this.§_-M6§(§_-ZO§.§_-Uf§);
            }
            else if(param1 > 3)
            {
               this.§_-M6§(§_-ZO§.§_-0h§);
            }
            return this.§_-T5§;
         }
         if(param1 < this.§_-0-E§)
         {
            if(param1 >= this.§_-0-E§ / 2)
            {
               this.§_-M6§(§_-ZO§.§_-0h§);
            }
            if(this.§_-Mi§() && this.§_-T5§ == this.§_-Rj§)
            {
               this.§_-T5§ = this.§_-Rj§ - 1;
            }
            return this.§_-T5§;
         }
         param1 -= this.§_-0-E§;
         if(param2 && this.§_-Tw§())
         {
            _loc7_ = Math.min(this.§_-T5§,int(param1));
            _loc8_ = §_-sn§.§_-m9§.getValue() * _loc7_;
            this.§_-ab§.§_-5F§.addScore(_loc8_,§_-fU§.§_-6Y§,this.§_-T5§ > param1 && param3,this.§_-BO§().GetPosition().x,this.§_-BO§().GetPosition().y,§_-yB§.§_-7T§(this.§_-G2§));
         }
         if(!(param5 && this.§_-np§))
         {
            this.§_-T5§ -= param1;
         }
         if(this.§_-T5§ < 1 && this.§_-Mi§())
         {
            this.§_-T5§ = 1;
         }
         if(this.§_-T5§ < 1)
         {
            this.§_-T5§ = 0;
            §_-Ie§.§_-AC§(§_-ZO§.§_-yq§,this.§_-kj§.§_-DF§,"ChannelDestroyed");
         }
         else
         {
            this.§_-M6§(§_-ZO§.§_-Uf§);
            this.addDamageParticles(this.§_-ab§.§_-5F§.particles,param1);
         }
         this.§_-KI§.setDamagedFrame();
         return this.§_-T5§;
      }
      
      public function §_-M6§(param1:int) : void
      {
         §_-Ie§.§_-AC§(param1,this.§_-kj§.§_-DF§);
      }
      
      public function §_-k1§(param1:String) : Number
      {
         return this.§_-kj§.material.§_-cw§(param1) * this.§_-Fj§;
      }
      
      public function §_-px§(param1:String) : Number
      {
         return this.§_-kj§.material.§_-7X§(param1);
      }
      
      public function §_-y4§() : String
      {
         return this.§_-kj§.material.mName;
      }
      
      public function §_-wg§() : Number
      {
         return this.§_-kj§.§_-Pc§();
      }
      
      public function §extends§() : int
      {
         return this.§_-kj§.§_-tX§();
      }
      
      public function §_-Zz§() : Boolean
      {
         return this.§_-BO§().IsAwake() && (this.§_-Mi§() && this.§_-T5§ == this.§_-Rj§ || Math.abs(this.§_-BO§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-BO§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-BO§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-UQ§() : Boolean
      {
         if(!this.§_-BO§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§_-BO§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-BO§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-BO§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-re§(param1:Number = 3) : void
      {
         this.§_-Fj§ = param1;
         if(this.§_-Fj§ > 1)
         {
            this.§_-KI§.§_-2A§();
         }
         else
         {
            this.§_-KI§.§_-Gw§ = null;
         }
      }
      
      public function §_-vE§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-kj§.§_-NA§() == §_-qt§.§_-YF§)
         {
            _loc2_ = this.§_-KI§.mW * this.§_-KI§.mH * (§_-sn§.§_-5Y§ * §_-sn§.§_-5Y§);
         }
         else
         {
            _loc2_ = this.§_-BO§().GetMass() / this.§_-C8§.§_-mn§();
            if(param1)
            {
               _loc2_ *= this.§_-a7§();
            }
            _loc2_ /= this.§_-7Q§ * this.§_-7Q§;
         }
         return _loc2_;
      }
      
      public function §_-a7§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-KI§.§_-vf§ - 1) / 10);
      }
      
      public function §_-ak§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-BO§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-BO§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-BO§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-S4§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-5J§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-5J§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-TG§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-BO§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-BO§().§_-TO§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§_-rM§();
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
            this.§_-ul§(_loc3_);
         }
         this.§_-ul§(this.§_-rM§() + param1);
      }
      
      public function §_-pa§(param1:Number) : void
      {
         var _loc2_:Number = §_-pG§(this.§_-BO§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-yr§(_loc2_);
         this.§_-BO§().§_-fw§(_loc2_);
      }
      
      public function §_-2l§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-BO§().GetPosition().Copy();
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
         this.§_-BO§().§_-TO§(_loc13_);
      }
   }
}
