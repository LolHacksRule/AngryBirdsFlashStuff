package §_-Kz§
{
   import §_-F2§.b2Vec2;
   import §_-GY§.Sprite;
   import §_-GY§.§_-4W§;
   import §_-TV§.§_-KN§;
   import §_-TV§.§_-Sk§;
   import §_-TV§.§_-gb§;
   import §_-aA§.§_-Tn§;
   import §_-fr§.§_-FX§;
   import §_-my§.§_-GX§;
   import §_-my§.§_-uG§;
   import §_-yp§.Texture;
   
   public class §_-FY§
   {
      
      public static const §_-Ic§:String = "ChannelSlingshot";
      
      public static const §_-006§:Number = 900;
      
      public static const §finally§:Number = 200;
      
      public static const §_-84§:Number = 200;
      
      public static const §_-Hp§:Number = 1500;
      
      public static const §_-M4§:Number = 5000;
      
      public static const §_-41§:Number = 1000;
      
      public static const §_-LU§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-dA§:Number;
      
      public var §_-mr§:Number;
      
      private var §_-zA§:§_-Sk§;
      
      private var §_-Ga§:Number;
      
      protected var §_-W§:Number = 1;
      
      private var §_-xQ§:Sprite;
      
      private var §_-wq§:§_-uG§;
      
      private var §_-B9§:§_-4W§;
      
      private var §_-op§:§_-hD§;
      
      private var §_-9T§:Number;
      
      private var §_-BG§:Boolean = false;
      
      private var §_-aR§:Boolean = false;
      
      private var §catch§:Boolean = false;
      
      private var §_-El§:Number;
      
      private var §_-0-K§:Number = 0;
      
      private var §_-uA§:Number = 0;
      
      private var §_-pC§:Number = 0;
      
      private var §_-lW§:Number = 1000;
      
      private var §_-X8§:Number;
      
      private var §_-yL§:Number;
      
      private var §_-4L§:int;
      
      private var §_-ZU§:Number = 0;
      
      private var §_-3C§:Number;
      
      private var §_-Th§:Number;
      
      private var §_-Cb§:Number = 0;
      
      private var §_-bV§:Number = 1;
      
      private var §_-NP§:Number = 0;
      
      private var §_-YE§:b2Vec2;
      
      private var §_-uV§:Number = 1;
      
      public function §_-FY§(param1:§_-hD§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-op§ = param1;
         this.§_-xQ§ = param2;
         this.mName = param3;
         this.§_-zA§ = §_-gb§.§_-iR§(this.mName).§_-dF§;
         this.mX = param4;
         this.mY = param5;
         this.§_-dA§ = param4;
         this.§_-mr§ = param5;
         this.§_-Ga§ = 0;
         this.§_-BG§ = false;
         this.§_-aR§ = false;
         this.§_-0-K§ = 0;
         this.§_-98§();
         this.§_-3C§ = 0;
      }
      
      public function §_-p7§() : void
      {
         this.§_-BG§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-xQ§)
         {
            this.§_-xQ§.dispose();
            this.§_-xQ§ = null;
         }
      }
      
      public function §_-EQ§(param1:Number) : void
      {
         if(!this.§_-aR§ || this.§_-BG§)
         {
            return;
         }
         if(this.§_-W§ != 0)
         {
            this.§_-pC§ = 0;
            this.§_-ZU§ = 0;
            this.§_-Ga§ = 0;
            this.§_-yL§ = 0;
            this.§_-W§ = 0;
         }
         param1 = Math.min(param1,this.§_-El§);
         this.mX += param1 * (this.§_-op§.mX - this.mX) / this.§_-El§;
         this.mY += param1 * (this.§_-op§.mY - this.mY) / this.§_-El§;
         this.mY -= param1 / 50 * (this.§_-El§ / §_-006§);
         this.§_-Ga§ += param1 * (360 - this.§_-Ga§) / this.§_-El§;
         this.§_-El§ -= param1;
         if(this.§_-El§ <= 0)
         {
            this.mX = this.§_-op§.mX;
            this.mY = this.§_-op§.mY;
            this.§_-aR§ = false;
            this.§_-BG§ = true;
            this.§_-Ga§ = 0;
         }
         this.§_-26§();
      }
      
      public function §_-Xf§() : void
      {
         this.§_-aR§ = true;
         this.§_-El§ = §_-006§;
         this.§_-kL§(§_-Sk§.§_-9X§);
         if(this.§_-ZU§ != 0)
         {
            this.mY += this.§_-ZU§;
            this.§_-ZU§ = 0;
         }
      }
      
      public function §_-Di§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-BG§ && this.§_-3C§ >= 0)
         {
            if(this.§_-Th§ > this.§_-op§.§_-GF§.§_-6X§.§_-Ku§)
            {
               this.§_-FK§(this.§_-op§.§_-GF§.§_-6X§.§_-Ku§ - this.§_-Th§);
               this.§_-3C§ = -1;
            }
            this.§_-3C§ -= param1;
            if(this.§_-3C§ <= 0)
            {
               if(this.§_-pC§ > 0)
               {
                  this.§_-3C§ = this.§_-pC§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-Th§))
               {
                  _loc2_ = this.§_-op§.§_-GF§.objects.§_-V6§(this.mX,this.§_-Th§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-FK§(param1 / 100))
                  {
                     this.§_-3C§ = -1;
                  }
                  else
                  {
                     this.§_-3C§ = 0;
                  }
               }
               else if(!this.§_-op§.§_-GF§.objects.§_-mv§(_loc2_).§_-HG§)
               {
                  this.§catch§ = false;
                  this.§_-3C§ = -1;
               }
               else if(this.§_-op§.§_-GF§.objects.§_-mv§(_loc2_).§_-9q§())
               {
                  this.§catch§ = false;
                  this.§_-3C§ = 2000;
               }
               else
               {
                  this.§_-3C§ = 500;
               }
            }
         }
      }
      
      public function §_-FK§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-Th§ += param1;
         if(this.§_-Th§ > this.§_-op§.§_-GF§.§_-6X§.§_-Ku§)
         {
            param1 = this.§_-Th§ - this.§_-op§.§_-GF§.§_-6X§.§_-Ku§;
            this.mY -= param1;
            this.§_-Th§ -= param1;
            this.§_-26§();
            return true;
         }
         this.§_-26§();
         return false;
      }
      
      public function §_-98§() : void
      {
         var _loc1_:§_-KN§ = §_-gb§.§_-iR§(this.mName).shape;
         if(_loc1_.§_-NS§() == §_-KN§.§_-ul§)
         {
            this.§_-YE§ = _loc1_.§_-QD§()[0];
            this.§_-9T§ = _loc1_.§_-a9§;
         }
         else if(_loc1_.§_-NS§() == §_-KN§.§_-60§)
         {
            this.§_-YE§ = new b2Vec2(0,0);
            this.§_-9T§ = 1.5;
         }
         this.§_-wq§ = this.§_-op§.§_-GF§.§_-oR§.§_-VW§(this.mName);
         if(!this.§_-wq§)
         {
            this.§_-Lp§(null);
         }
         else
         {
            this.§_-Lp§(this.§_-wq§.getFrame(0));
         }
      }
      
      public function §_-Lp§(param1:§_-GX§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§_-op§.§_-I6§.§_-3q§.§_-Mk§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§_-B9§ == null)
         {
            this.§_-B9§ = new §_-4W§(_loc2_);
            this.§_-xQ§.addChild(this.§_-B9§);
         }
         else
         {
            this.§_-B9§.texture = _loc2_;
         }
         if(param1)
         {
            this.§_-B9§.x = -param1.pivotX - this.§_-YE§.x / §_-c3§.§_-GA§;
            this.§_-B9§.y = -param1.pivotY - this.§_-YE§.y / §_-c3§.§_-GA§;
         }
         else
         {
            this.§_-B9§.x = -this.§_-B9§.width / 2;
            this.§_-B9§.y = -this.§_-B9§.height / 2;
         }
         this.§_-B9§.scaleX = _loc3_;
         this.§_-B9§.scaleY = _loc3_;
         this.§_-26§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-Di§(param1);
         if(this.§_-aR§)
         {
            this.§_-pC§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-fj§(param1);
            this.§_-Wa§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-qp§(param1,param2);
            }
         }
      }
      
      public function §_-fj§(param1:Number) : void
      {
         if(this.§_-0-K§ > 0)
         {
            this.§_-0-K§ -= param1;
            if(this.§_-0-K§ <= 0)
            {
               this.§_-j§();
            }
         }
         else if(this.§_-uA§ <= 0 && Math.random() * §_-Hp§ < param1 && this.§_-op§.mSlingShotState)
         {
            this.§_-u§();
         }
      }
      
      public function §_-j§() : void
      {
         this.§_-0-K§ = 0;
         this.§_-Lp§(this.§_-wq§.getFrame(0));
      }
      
      public function §_-u§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-0-K§ = §finally§;
         this.§_-Lp§(this.§_-wq§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-Wa§(param1:Number) : void
      {
         if(this.§_-uA§ > 0)
         {
            this.§_-uA§ -= param1;
            if(this.§_-uA§ <= 0)
            {
               this.§_-SM§();
            }
         }
         else if(this.§_-0-K§ <= 0 && Math.random() * §_-M4§ < param1)
         {
            this.§_-kL§();
         }
      }
      
      public function §_-SM§() : void
      {
         this.§_-uA§ = 0;
         this.§_-Lp§(this.§_-wq§.getFrame(0));
      }
      
      public function §_-kL§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-uA§ > 0)
         {
            this.§_-SM§();
         }
         if(this.§_-0-K§ > 0)
         {
            this.§_-j§();
         }
         if(param1 < 0)
         {
            param1 = §_-Sk§.§_-ZT§;
         }
         this.§_-uA§ = §_-84§;
         this.§_-Lp§(this.§_-wq§.getSubAnimation("yell").getFrame(0));
         if(this.§_-BG§ || this.§_-aR§ || param2)
         {
            §_-FX§.§_-oG§(param1,this.§_-zA§);
         }
         else
         {
            §_-FX§.§_-oG§(param1,this.§_-zA§,§_-Ic§);
         }
      }
      
      public function §_-qp§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-pC§ > 0)
         {
            this.§_-pC§ -= param1;
            if(this.§_-pC§ <= 0)
            {
               ++this.§_-4L§;
               this.§_-yL§ *= 0.4;
               if(!this.§_-BG§ && this.§_-4L§ < 2)
               {
                  if(this.§_-4L§ > 1 && this.§_-yL§ < -1)
                  {
                     this.§_-yL§ = -1;
                  }
                  this.§_-X8§ = this.§_-yL§;
                  this.§_-pC§ = §_-LU§;
                  this.§_-pC§ *= Math.abs(this.§_-X8§) / 2;
                  this.§_-lW§ = this.§_-pC§;
                  this.§_-Ga§ = 0;
                  this.§_-W§ = 0;
               }
               else if(!this.§_-BG§ && param2)
               {
                  this.§_-tq§(2.25);
               }
               else
               {
                  this.§_-pC§ = 0;
                  this.§_-ZU§ = 0;
                  this.§_-Ga§ = 0;
                  this.§_-yL§ = 0;
               }
            }
            else
            {
               if(this.§_-pC§ >= this.§_-lW§ / 2)
               {
                  _loc3_ = (this.§_-lW§ - this.§_-pC§) / (this.§_-lW§ / 2);
                  _loc3_ = §_-Tn§.§_-eb§(_loc3_);
                  this.§_-ZU§ = _loc3_ * this.§_-X8§;
               }
               else
               {
                  _loc3_ = (this.§_-lW§ / 2 - this.§_-pC§) / (this.§_-lW§ / 2);
                  _loc3_ = §_-Tn§.§_-eb§(_loc3_,false);
                  this.§_-ZU§ = this.§_-X8§ + _loc3_ * -this.§_-X8§;
               }
               this.§_-Ga§ = 360 * §_-Tn§.§_-eb§((this.§_-lW§ - this.§_-pC§) / this.§_-lW§) * this.§_-W§;
            }
            this.§_-26§();
         }
         else if(Math.random() * §_-41§ < param1 && !this.§_-BG§ && !this.§_-aR§ && !this.§catch§)
         {
            this.§_-tq§();
         }
      }
      
      public function §_-tq§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-4L§ = 0;
         this.§_-pC§ = §_-LU§;
         this.§_-ZU§ = 0;
         this.§_-X8§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-yL§ = this.§_-X8§;
         this.§_-pC§ *= Math.abs(this.§_-X8§) / 3;
         this.§_-lW§ = this.§_-pC§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-W§ = 0;
         }
         else if(this.§_-pC§ < 350)
         {
            this.§_-W§ = 0;
         }
         else
         {
            this.§_-W§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-W§ = Math.random() > 0.5 ? Number(this.§_-W§) : Number(0);
         }
      }
      
      public function §_-26§() : void
      {
         this.§_-xQ§.x = this.mX / §_-c3§.§_-GA§;
         this.§_-xQ§.y = (this.mY + this.§_-ZU§) / §_-c3§.§_-GA§;
         this.§_-xQ§.rotation = this.§_-Ga§ / 180 * Math.PI;
      }
      
      public function §_-Wp§() : void
      {
         this.§catch§ = true;
         this.§_-BG§ = false;
         this.§_-aR§ = false;
         this.§_-4L§ = 0;
         this.§_-3C§ = 0;
         this.§_-pC§ = 0;
         this.§_-Th§ = this.mY + this.§_-Cb§ + this.radius;
         this.§_-pC§ = 0;
         this.§_-ZU§ = 0;
         this.§_-Ga§ = 0;
         this.§_-yL§ = 0;
         this.§_-W§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-9T§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.mX >= param3 && this.mX <= param4 && this.mY >= param1 && this.mY <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.mX != param1 || this.mY != param2)
         {
            _loc3_ = true;
         }
         this.mX = param1;
         this.mY = param2;
         this.§_-Th§ = this.mY + this.§_-Cb§;
         this.§_-3C§ = 100;
         this.§_-26§();
         if(_loc3_)
         {
            this.§_-op§.§_-cJ§();
         }
      }
      
      public function §_-vL§() : §_-4W§
      {
         return this.§_-B9§;
      }
      
      public function get §_-k3§() : Number
      {
         return this.§_-pC§;
      }
      
      public function get §_-0O§() : Number
      {
         return this.§_-3C§;
      }
      
      public function set §_-0O§(param1:Number) : void
      {
         this.§_-3C§ = param1;
      }
      
      public function get §_-g6§() : Number
      {
         return this.§_-bV§;
      }
      
      public function get §_-wg§() : Boolean
      {
         return this.§_-BG§;
      }
      
      public function get radius() : Number
      {
         return this.§_-9T§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-xQ§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-g6§(param1:Number) : void
      {
         this.§_-bV§ = param1;
      }
      
      public function get §_-k5§() : Number
      {
         return this.§_-NP§;
      }
      
      public function set §_-k5§(param1:Number) : void
      {
         this.§_-NP§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§_-uV§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-uV§ = param1;
      }
   }
}
