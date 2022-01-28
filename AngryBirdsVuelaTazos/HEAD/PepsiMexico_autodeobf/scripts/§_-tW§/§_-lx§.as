package §_-tW§
{
   import §_-4K§.§_-Av§;
   import §_-Di§.§_-3w§;
   import §_-Di§.§_-ix§;
   import §_-Pu§.b2PolygonShape;
   import §_-Rm§.§_-7§;
   import §_-Rm§.§_-bY§;
   import §_-Rm§.§_-i8§;
   import §_-Rm§.§_-kO§;
   import §_-Rm§.§_-tv§;
   import §_-SE§.Sprite;
   import §_-bA§.b2Vec2;
   import §_-dH§.§_-ds§;
   import §_-dH§.§_-wT§;
   import §_-gM§.§_-yj§;
   import §_-rz§.b2Settings;
   import §_-vk§.b2Body;
   import §_-vk§.b2BodyDef;
   import §_-vk§.b2FilterData;
   import §_-vk§.b2Fixture;
   import §_-vk§.b2World;
   import flash.geom.Point;
   
   public class §_-lx§
   {
      
      public static const §_-vL§:uint = 1 << 1;
      
      public static const §_-f8§:uint = 1 << 2;
      
      public static const §_-i5§:uint = 1 << 3;
      
      public static const §_-Gf§:uint = 1 << 4;
      
      public static const §_-W5§:Boolean = true;
       
      
      private var §_-uc§:int;
      
      private var §_-xc§:int;
      
      public var §_-ep§:String;
      
      public var §_-rw§:int;
      
      private var §_-Co§:§_-kO§;
      
      private var §_-Sb§:§_-S5§;
      
      private var §_-s2§:b2World;
      
      private var §_-iV§:b2Fixture;
      
      private var §package§:b2Body;
      
      private var §_-kY§:b2Vec2;
      
      public var §_-hs§:Number;
      
      public var §_-eV§:Number;
      
      private var §_-Mu§:Number;
      
      private var §_-RJ§:Boolean = false;
      
      private var §_-f0§:Number;
      
      private var §_-6l§:Number;
      
      private var §_-sj§:Number;
      
      private var §_-MW§:Number;
      
      private var §_-WE§:Number;
      
      private var §_-4-§:Number;
      
      public var §_-Rt§:Number = 1;
      
      private var §_-cA§:Boolean = false;
      
      public var §_-H7§:Number = 0;
      
      public var §_-ex§:Number = 0;
      
      protected var §_-a0§:Boolean = false;
      
      public var §_-bV§:§_-wS§;
      
      private var §_-j§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-TC§:Number = 0;
      
      private var §_-8R§:Number = 1.0;
      
      private var §_-nL§:Boolean = false;
      
      private var §_-Rw§:Boolean = true;
      
      public function §_-lx§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc14_:b2PolygonShape = null;
         super();
         this.§_-ep§ = param6;
         this.§_-Co§ = §_-tv§.§get §(param6);
         this.§_-Sb§ = param1;
         this.§_-j§ = param2;
         this.§_-8R§ = param10;
         this.§_-nL§ = param11;
         this.§_-uc§ = param5;
         this.§_-rw§ = this.§_-Co§.§_-rw§;
         this.§_-xc§ = this.§_-Co§.§_-Ds§();
         this.§_-bV§ = new §_-wS§(this,param2,param4);
         if(!this.§_-bV§.§_-9V§(param1.§_-JH§.§_-i1§))
         {
            this.§_-bV§.§_-Dx§(this.§_-xc§,this.§_-Co§.§_-Ac§(),this.§_-Co§.§_-xM§() / §_-ix§.§_-z8§,this.§_-Co§.§_-1c§() / §_-ix§.§_-z8§);
         }
         this.§_-bV§.§_-E§(this.§_-xc§ == §_-7§.§_-DK§);
         this.§_-s2§ = param3;
         var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
         this.§package§ = this.§_-s2§.§_-6o§(_loc12_);
         this.§package§.§_-EQ§(this);
         if(this.§_-xc§ == §_-7§.§_-ia§)
         {
            _loc14_ = b2PolygonShape.§_-h§(this.§_-Co§.shape.§_-3Y§ * param10,this.§_-Co§.shape.§_-cy§ * param10);
            this.§_-iV§ = this.§package§.CreateFixture2(_loc14_,this.§_-Co§.§_-RS§());
         }
         else if(this.§_-xc§ == §_-7§.§_-DK§ || this.§_-xc§ == §_-7§.§_-YM§)
         {
            this.§_-iV§ = this.§package§.CreateFixture2(this.§_-Co§.shape.§_-Uj§(param10),this.§_-Co§.§_-RS§());
         }
         this.§_-iV§.§_-d3§(this.§_-Co§.§_-2G§());
         this.§_-iV§.§_-ee§(this.§_-Co§.§_-Yp§());
         var _loc13_:b2FilterData = new b2FilterData();
         if(this.§_-Ak§())
         {
            _loc13_.§_-4V§ = §_-vL§;
            _loc13_.§_-lC§ = 65535 & ~§_-f8§;
         }
         else if(this.§_-ep§.toUpperCase() == "MISC_WHITE_BIRD_EGG" || this.§_-ep§.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc13_.§_-4V§ = §_-f8§;
            _loc13_.§_-lC§ = 65535 & ~§_-vL§;
         }
         this.§_-iV§.§_-rb§(_loc13_);
         this.§_-Mu§ = this.§_-Co§.§_-Ea§();
         if(this.§_-Co§.§_-eV§ > 0)
         {
            this.§_-hs§ = this.§_-eV§ = this.§_-Co§.§_-eV§;
         }
         else
         {
            this.§_-hs§ = this.§_-eV§ = Math.round(this.§_-Zw§(true) * this.§_-Co§.§_-0k§());
            if(this.§_-hs§ < 1)
            {
               this.§_-hs§ = this.§_-eV§ = 1;
            }
         }
         if(this.§_-Co§.§_-rw§ == §_-kO§.§_-qB§)
         {
            this.§_-j§.visible = false;
         }
         else
         {
            this.§_-bV§.setDamagedFrame();
         }
         if(!this.isTexture())
         {
         }
         if(param9 != 0)
         {
            this.§_-qt§(param9);
         }
         this.§_-PJ§();
         this.§_-Vt§(0,1);
         this.§_-bV§.§_-M-§(this.§_-Co§.shape);
      }
      
      public static function §_-J6§(param1:int, param2:§_-i8§, param3:String = "") : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:String;
         if((_loc4_ = param2.§_-Xq§[param1]).length > 0)
         {
            if(param3.length <= 0)
            {
               param3 = param2.§_-AK§;
            }
            §_-Av§.§_-9F§(_loc4_,param3);
         }
      }
      
      public static function §_-g3§(param1:Number) : Number
      {
         return (360 - param1 * 180 / Math.PI % 360) % 360;
      }
      
      public static function §_-uh§(param1:Number) : Number
      {
         return Number((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-j§;
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
         return this.§_-8R§;
      }
      
      public function get front() : Boolean
      {
         return this.§_-nL§;
      }
      
      public function get §_-PN§() : Number
      {
         return this.§package§.GetPosition().x;
      }
      
      public function get §_-gk§() : Number
      {
         return this.§package§.GetPosition().y;
      }
      
      public function get §_-YF§() : §_-kO§
      {
         return this.§_-Co§;
      }
      
      public function get §_-Pa§() : Boolean
      {
         return this.§_-Mu§ >= 0;
      }
      
      protected function get container() : §_-S5§
      {
         return this.§_-Sb§;
      }
      
      public function get §_-ru§() : Boolean
      {
         return this.§_-Rw§;
      }
      
      public function set §_-ru§(param1:Boolean) : void
      {
         this.§_-Rw§ = param1;
      }
      
      public function set §_-eB§(param1:Boolean) : void
      {
         this.§_-RJ§ = param1;
      }
      
      public function get §_-vD§() : Boolean
      {
         return this.§_-cA§;
      }
      
      public function set §_-vD§(param1:Boolean) : void
      {
         this.§_-cA§ = param1;
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-an§(param1:b2FilterData) : void
      {
         if(this.§_-iV§)
         {
            this.§_-iV§.§_-rb§(param1);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         _loc3_.type = this.§_-Co§.§_-r-§();
         _loc3_.§_-kL§ = true;
         _loc3_.§_-yn§ = true;
         _loc3_.§_-A8§ = true;
         _loc3_.§_-0p§ = 1;
         _loc3_.§_-b0§ = false;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.§_-s2§)
         {
            this.§_-s2§.§_-k§(this.§_-UF§());
            this.§_-s2§ = null;
         }
         this.§_-bV§.dispose();
         if(this.§_-j§)
         {
            this.§_-j§.dispose();
            this.§_-j§ = null;
         }
         this.§_-iV§ = null;
         this.§_-kY§ = null;
         this.§_-Co§ = null;
      }
      
      public function §_-qt§(param1:Number) : void
      {
         this.§_-UF§().§_-Cx§((360 - param1 % 360) / (180 / Math.PI));
      }
      
      public function §_-BK§() : Number
      {
         return (360 - this.§_-UF§().GetAngle() * 180 / Math.PI % 360) % 360;
      }
      
      public function §_-BQ§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-UF§().SetLinearVelocity(param1);
         if(param2)
         {
            this.§_-yr§();
         }
         if(param3)
         {
            this.§_-zY§();
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-iV§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-UF§().GetPosition().x >= param3 && this.§_-UF§().GetPosition().x <= param4 && this.§_-UF§().GetPosition().y >= param1 && this.§_-UF§().GetPosition().y <= param2;
      }
      
      public function §_-UG§(param1:b2Vec2) : void
      {
         this.§_-kY§ = param1;
      }
      
      public function §_-gU§() : void
      {
         if(this.§_-kY§)
         {
            this.§_-BQ§(this.§_-kY§,false);
            this.§_-kY§ = null;
         }
      }
      
      public function §_-yr§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-UF§().GetLinearVelocity();
         }
         if(param1.x == 0 && param1.y == 0)
         {
            this.§_-UF§().§_-6i§(0);
         }
         else
         {
            this.§_-UF§().§_-6i§(Math.atan2(param1.x,param1.y));
         }
      }
      
      public function §_-zY§(param1:b2Vec2 = null) : void
      {
         if(!param1)
         {
            param1 = this.§_-UF§().GetLinearVelocity();
         }
         var _loc2_:Number = Math.atan2(-param1.y,param1.x) * (180 / Math.PI);
         this.§_-qt§(_loc2_);
      }
      
      public function §_-Dp§(param1:Number) : void
      {
         this.§_-UF§().§_-6i§(param1);
      }
      
      public function §_-UF§() : b2Body
      {
         if(this.§_-iV§ != null)
         {
            return this.§_-iV§.GetBody();
         }
         return null;
      }
      
      public function §_-ew§(param1:Number = -9999, param2:Number = -9999) : void
      {
         if(param1 != -9999)
         {
            this.mX = param1;
            this.mY = param2;
         }
         this.§_-UF§().GetPosition().x = this.mX * §_-ix§.§_-z8§;
         this.§_-UF§().GetPosition().y = this.mY * §_-ix§.§_-z8§;
      }
      
      public function §_-Vt§(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Boolean = false;
         if(this.§_-a0§)
         {
            _loc3_ = true;
            this.§_-a0§ = false;
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
            this.§_-bV§.§_-p6§();
         }
         if(this.§_-Rt§ > 1 && this.§_-bV§.§_-sn§)
         {
            _loc4_ = 4 + (this.§_-bV§.§_-sn§.blurX - 4 + param2 / 20) % 28;
            this.§_-bV§.§_-sn§.blurX = _loc4_;
            this.§_-bV§.§_-sn§.blurY = _loc4_;
         }
         this.§_-bV§.§_-J9§(param2);
         if(§_-W5§)
         {
            this.§_-rn§(param1);
         }
         else
         {
            this.§_-TC§ = this.§_-sj§;
            this.mX = this.§_-f0§;
            this.mY = this.§_-6l§;
         }
         this.§_-j§.x = Math.round(this.mX);
         this.§_-j§.y = Math.round(this.mY);
         this.§_-j§.rotation = this.§_-TC§ / 180 * Math.PI;
      }
      
      public function §_-PJ§() : void
      {
         var _loc1_:Number = this.§_-UF§().GetPosition().x;
         var _loc2_:Number = this.§_-UF§().GetPosition().y;
         this.§_-4-§ = this.§_-sj§;
         this.§_-MW§ = this.§_-f0§;
         this.§_-WE§ = this.§_-6l§;
         this.§_-sj§ = this.§_-UF§().GetAngle() * (180 / Math.PI) % 360;
         this.§_-f0§ = _loc1_ / §_-ix§.§_-z8§;
         this.§_-6l§ = _loc2_ / §_-ix§.§_-z8§;
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
      
      public function §_-rn§(param1:Number, param2:Number = -1) : void
      {
         if(param1 > 1e-9)
         {
            §_-yj§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1 + " overriding to 0");
         }
         if(param2 < 0)
         {
            param2 = this.§_-Sb§.§_-JH§.§_-v0§.§_-Lc§ * 1000;
         }
         param1 *= -1;
         if(this.§_-f0§ == this.§_-MW§ || param1 == 0)
         {
            this.§_-H7§ = 0;
            this.mX = this.§_-f0§;
         }
         else
         {
            this.§_-H7§ = param1 * (this.§_-MW§ - this.§_-f0§) / param2;
            this.mX = this.§_-f0§ + this.§_-H7§;
         }
         if(this.§_-6l§ == this.§_-WE§ || param1 == 0)
         {
            this.§_-ex§ = 0;
            this.mY = this.§_-6l§;
         }
         else
         {
            this.§_-ex§ = param1 * (this.§_-WE§ - this.§_-6l§) / param2;
            this.mY = this.§_-6l§ + this.§_-ex§;
         }
         if(this.§_-sj§ == this.§_-4-§ || param1 == 0)
         {
            this.§_-TC§ = this.§_-sj§;
         }
         else if(this.§_-4-§ > this.§_-sj§ && this.§_-4-§ - this.§_-sj§ <= 180)
         {
            this.§_-TC§ = this.§_-sj§ + param1 * (this.§_-4-§ - this.§_-sj§) / param2;
         }
         else if(this.§_-4-§ > this.§_-sj§ && this.§_-4-§ - this.§_-sj§ > 180)
         {
            this.§_-TC§ = this.§_-sj§ + param1 * (this.§_-4-§ - 360 - this.§_-sj§) / param2;
         }
         else if(this.§_-4-§ < this.§_-sj§ && this.§_-sj§ - this.§_-4-§ <= 180)
         {
            this.§_-TC§ = this.§_-sj§ + param1 * (this.§_-4-§ - this.§_-sj§) / param2;
         }
         else if(this.§_-4-§ < this.§_-sj§ && this.§_-sj§ - this.§_-4-§ > 180)
         {
            this.§_-TC§ = this.§_-sj§ + param1 * (this.§_-4-§ + 360 - this.§_-sj§) / param2;
         }
      }
      
      public function get §_-bj§() : Point
      {
         if(!§_-W5§)
         {
         }
         return null;
      }
      
      public function §_-Ak§() : Boolean
      {
         return this.§_-rw§ == §_-kO§.§_-9W§ || this.§_-rw§ == §_-kO§.§_-VC§;
      }
      
      public function §_-mo§() : Boolean
      {
         return this.§_-rw§ == §_-kO§.§_-uv§;
      }
      
      public function §_-8b§() : Boolean
      {
         return this.§_-rw§ == §_-kO§.§_-s0§;
      }
      
      public function §_-Wj§() : Boolean
      {
         return this.§_-rw§ == §_-kO§.§_-VC§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-rw§ == §_-kO§.§_-wn§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-rw§ == §_-kO§.§_-qB§;
      }
      
      public function §_-Ig§() : Boolean
      {
         return this.§_-rw§ == §_-kO§.§_-xN§;
      }
      
      public function §_-p3§() : Boolean
      {
         return this.§_-rw§ == §_-kO§.§_-zs§;
      }
      
      public function §_-9Z§() : Boolean
      {
         if(this.§_-ep§ == "MISC_EXPLOSIVE_TNT" || this.§_-ep§ == "POWERUP_BOMB")
         {
            return true;
         }
         return false;
      }
      
      public function §_-eb§() : Boolean
      {
         return (this.§_-mo§() || this.§_-Ig§() || this.§_-p3§()) && !this.§_-vD§;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-e6§() : Number
      {
         return Number(Math.sqrt(this.§_-UF§().GetLinearVelocity().x * this.§_-UF§().GetLinearVelocity().x + this.§_-UF§().GetLinearVelocity().y * this.§_-UF§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : Number
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(this.§_-8b§())
         {
            return this.§_-hs§;
         }
         if(!this.§_-Sb§.§_-nu§())
         {
            return this.§_-hs§;
         }
         if(this.§_-Mu§ < 0)
         {
            if(param1 > 30)
            {
               this.§_-9w§(§_-i8§.§_-Az§);
            }
            else if(param1 > 12)
            {
               this.§_-9w§(§_-i8§.§_-Bb§);
            }
            else if(param1 > 3)
            {
               this.§_-9w§(§_-i8§.§_-3h§);
            }
            return this.§_-hs§;
         }
         if(param1 < this.§_-Mu§)
         {
            if(param1 >= this.§_-Mu§ / 2)
            {
               this.§_-9w§(§_-i8§.§_-3h§);
            }
            if(this.§_-Ak§() && this.§_-hs§ == this.§_-eV§)
            {
               this.§_-hs§ = this.§_-eV§ - 1;
            }
            return this.§_-hs§;
         }
         param1 -= this.§_-Mu§;
         if(param2 && this.§_-eb§())
         {
            _loc6_ = Math.min(this.§_-hs§,int(param1));
            _loc7_ = §_-ix§.§case §.getValue() * _loc6_;
            this.§_-Sb§.§_-JH§.addScore(_loc7_,§_-3w§.§_-rv§,this.§_-hs§ > param1 && param3,this.§_-UF§().GetPosition().x,this.§_-UF§().GetPosition().y,§_-ds§.§_-Y4§(this.§_-ep§));
         }
         if(!(param5 && this.§_-RJ§))
         {
            this.§_-hs§ -= param1;
         }
         if(this.§_-hs§ < 1 && this.§_-Ak§())
         {
            this.§_-hs§ = 1;
         }
         if(this.§_-hs§ < 1)
         {
            this.§_-hs§ = 0;
            §_-lx§.§_-J6§(§_-i8§.§_-Az§,this.§_-Co§.§_-5D§,"ChannelDestroyed");
         }
         else
         {
            this.§_-9w§(§_-i8§.§_-Bb§);
            this.addDamageParticles(this.§_-Sb§.§_-JH§.particles,param1);
         }
         this.§_-bV§.setDamagedFrame();
         return this.§_-hs§;
      }
      
      public function §_-9w§(param1:int) : void
      {
         §_-lx§.§_-J6§(param1,this.§_-Co§.§_-5D§);
      }
      
      public function §_-Ry§(param1:String) : Number
      {
         return this.§_-Co§.material.§_-t2§(param1) * this.§_-Rt§;
      }
      
      public function §_-20§(param1:String) : Number
      {
         return this.§_-Co§.material.§_-Ne§(param1);
      }
      
      public function §_-qm§() : String
      {
         return this.§_-Co§.material.mName;
      }
      
      public function §_-Xd§() : int
      {
         return this.§_-Co§.§_-cL§();
      }
      
      public function §_-sC§() : Boolean
      {
         return this.§_-UF§().IsAwake() && (this.§_-Ak§() && this.§_-hs§ == this.§_-eV§ || Math.abs(this.§_-UF§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-UF§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * 30 || Math.abs(this.§_-UF§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * 30);
      }
      
      public function §_-UO§() : Boolean
      {
         if(!this.§_-UF§().IsAwake())
         {
            return true;
         }
         return this.isMoving();
      }
      
      protected function isMoving() : Boolean
      {
         if(Math.abs(this.§_-UF§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-UF§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 30 && Math.abs(this.§_-UF§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 30)
         {
            return true;
         }
         return false;
      }
      
      public function §_-IP§(param1:Number = 3) : void
      {
         this.§_-Rt§ = param1;
         if(this.§_-Rt§ > 1)
         {
            this.§_-bV§.§_-kB§();
         }
         else
         {
            this.§_-bV§.§_-sn§ = null;
         }
      }
      
      public function §_-Zw§(param1:Boolean) : Number
      {
         var _loc2_:Number = 0;
         if(this.§_-Co§.§_-r-§() == §_-bY§.§_-Hl§)
         {
            _loc2_ = this.§_-bV§.mW * this.§_-bV§.mH * (§_-ix§.§_-z8§ * §_-ix§.§_-z8§);
         }
         else
         {
            _loc2_ = this.§_-UF§().GetMass() / this.§_-iV§.§_-V2§();
            if(param1)
            {
               _loc2_ *= this.§_-33§();
            }
            _loc2_ /= this.§_-8R§ * this.§_-8R§;
         }
         return _loc2_;
      }
      
      public function §_-33§() : Number
      {
         var _loc1_:Number = 1;
         return Number(_loc1_ - _loc1_ / 2 * Math.min(10,this.§_-bV§.§_-4d§ - 1) / 10);
      }
      
      public function §_-XK§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-UF§().GetLinearVelocity().x;
         var _loc3_:Number = this.§_-UF§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         var _loc5_:Number = 1 + param1 / _loc4_;
         _loc2_ *= _loc5_;
         _loc3_ *= _loc5_;
         this.§_-UF§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-S5§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-wT§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-wT§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-KJ§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc4_:b2Vec2 = this.§_-UF§().GetPosition();
         _loc4_.x += param2.x * param1 * param3;
         _loc4_.y += param2.y * param1 * param3;
         this.§_-UF§().§_-GC§(_loc4_);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            _loc3_ = this.§_-BK§();
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
            this.§_-qt§(_loc3_);
         }
         this.§_-qt§(this.§_-BK§() + param1);
      }
      
      public function §finally§(param1:Number) : void
      {
         var _loc2_:Number = §_-g3§(this.§_-UF§().GetAngle());
         _loc2_ -= param1 * 360 / 1000;
         _loc2_ = §_-uh§(_loc2_);
         this.§_-UF§().§_-Cx§(_loc2_);
      }
      
      public function §_-8J§(param1:Number, param2:Point) : void
      {
         this.rotate(param1);
         var _loc3_:b2Vec2 = this.§_-UF§().GetPosition().Copy();
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
         this.§_-UF§().§_-GC§(_loc13_);
      }
   }
}
