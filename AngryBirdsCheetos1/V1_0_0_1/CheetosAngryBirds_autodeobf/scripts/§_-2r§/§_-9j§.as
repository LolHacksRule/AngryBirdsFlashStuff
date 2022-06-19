package §_-2r§
{
   import §_-5p§.§_-4§;
   import §_-5p§.§_-b1§;
   import §_-Dk§.Texture;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-Nd§;
   import §_-U0§.§_-RP§;
   import §_-bl§.§_-Ie§;
   import §_-cP§.b2Vec2;
   import §_-p5§.§_-6L§;
   import §_-p5§.§_-ZO§;
   import §_-p5§.§_-lM§;
   
   public class §_-9j§
   {
      
      public static const §_-PI§:String = "ChannelSlingshot";
      
      public static const §_-Ph§:Number = 900;
      
      public static const §_-Na§:Number = 200;
      
      public static const §_-zR§:Number = 200;
      
      public static const §_-R8§:Number = 1500;
      
      public static const §_-gr§:Number = 5000;
      
      public static const §_-Ws§:Number = 1000;
      
      public static const §_-1c§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §get §:Number;
      
      public var §_-su§:Number;
      
      private var §_-fN§:§_-ZO§;
      
      private var §_-AE§:Number;
      
      protected var §_-2N§:Number = 1;
      
      private var §_-S0§:Sprite;
      
      private var §_-Ec§:§_-b1§;
      
      private var §_-CV§:§_-Nd§;
      
      private var §_-ZA§:§_-Qo§;
      
      private var §_-Hi§:Number;
      
      private var §_-TL§:Boolean = false;
      
      private var §_-dx§:Boolean = false;
      
      private var §_-Lm§:Boolean = false;
      
      private var §_-rZ§:Number;
      
      private var §_-f2§:Number = 0;
      
      private var §_-6W§:Number = 0;
      
      private var §_-Eg§:Number = 0;
      
      private var §_-9z§:Number = 1000;
      
      private var §_-XZ§:Number;
      
      private var §_-Ln§:Number;
      
      private var §_-IW§:int;
      
      private var §_-GR§:Number = 0;
      
      private var §_-OB§:Number;
      
      private var §_-0-R§:Number;
      
      private var §_-ZG§:Number = 0;
      
      private var §_-Fj§:Number = 1;
      
      private var §_-3R§:Number = 0;
      
      private var §_-lA§:b2Vec2;
      
      private var §_-7Q§:Number = 1;
      
      public function §_-9j§(param1:§_-Qo§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-ZA§ = param1;
         this.§_-S0§ = param2;
         this.mName = param3;
         this.§_-fN§ = §_-lM§.§_-0-i§(this.mName).§_-DF§;
         this.mX = param4;
         this.mY = param5;
         this.§get § = param4;
         this.§_-su§ = param5;
         this.§_-AE§ = 0;
         this.§_-TL§ = false;
         this.§_-dx§ = false;
         this.§_-f2§ = 0;
         this.§_-Y§();
         this.§_-OB§ = 0;
      }
      
      public function §_-Hg§() : void
      {
         this.§_-TL§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-S0§)
         {
            this.§_-S0§.dispose();
            this.§_-S0§ = null;
         }
      }
      
      public function §_-HD§(param1:Number) : void
      {
         if(!this.§_-dx§ || this.§_-TL§)
         {
            return;
         }
         if(this.§_-2N§ != 0)
         {
            this.§_-Eg§ = 0;
            this.§_-GR§ = 0;
            this.§_-AE§ = 0;
            this.§_-Ln§ = 0;
            this.§_-2N§ = 0;
         }
         param1 = Math.min(param1,this.§_-rZ§);
         this.mX += param1 * (this.§_-ZA§.mX - this.mX) / this.§_-rZ§;
         this.mY += param1 * (this.§_-ZA§.mY - this.mY) / this.§_-rZ§;
         this.mY -= param1 / 50 * (this.§_-rZ§ / §_-Ph§);
         this.§_-AE§ += param1 * (360 - this.§_-AE§) / this.§_-rZ§;
         this.§_-rZ§ -= param1;
         if(this.§_-rZ§ <= 0)
         {
            this.mX = this.§_-ZA§.mX;
            this.mY = this.§_-ZA§.mY;
            this.§_-dx§ = false;
            this.§_-TL§ = true;
            this.§_-AE§ = 0;
         }
         this.§_-T9§();
      }
      
      public function §_-YR§() : void
      {
         this.§_-dx§ = true;
         this.§_-rZ§ = §_-Ph§;
         this.§_-Yj§(§_-ZO§.§_-F§);
         if(this.§_-GR§ != 0)
         {
            this.mY += this.§_-GR§;
            this.§_-GR§ = 0;
         }
      }
      
      public function §_-eu§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-TL§ && this.§_-OB§ >= 0)
         {
            if(this.§_-0-R§ > this.§_-ZA§.§_-5F§.§_-BV§.§use§)
            {
               this.§_-Fg§(this.§_-ZA§.§_-5F§.§_-BV§.§use§ - this.§_-0-R§);
               this.§_-OB§ = -1;
            }
            this.§_-OB§ -= param1;
            if(this.§_-OB§ <= 0)
            {
               if(this.§_-Eg§ > 0)
               {
                  this.§_-OB§ = this.§_-Eg§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-0-R§))
               {
                  _loc2_ = this.§_-ZA§.§_-5F§.objects.§_-SD§(this.mX,this.§_-0-R§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-Fg§(param1 / 100))
                  {
                     this.§_-OB§ = -1;
                  }
                  else
                  {
                     this.§_-OB§ = 0;
                  }
               }
               else if(!this.§_-ZA§.§_-5F§.objects.§_-28§(_loc2_).§do §)
               {
                  this.§_-Lm§ = false;
                  this.§_-OB§ = -1;
               }
               else if(this.§_-ZA§.§_-5F§.objects.§_-28§(_loc2_).§_-UQ§())
               {
                  this.§_-Lm§ = false;
                  this.§_-OB§ = 2000;
               }
               else
               {
                  this.§_-OB§ = 500;
               }
            }
         }
      }
      
      public function §_-Fg§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-0-R§ += param1;
         if(this.§_-0-R§ > this.§_-ZA§.§_-5F§.§_-BV§.§use§)
         {
            param1 = this.§_-0-R§ - this.§_-ZA§.§_-5F§.§_-BV§.§use§;
            this.mY -= param1;
            this.§_-0-R§ -= param1;
            this.§_-T9§();
            return true;
         }
         this.§_-T9§();
         return false;
      }
      
      public function §_-Y§() : void
      {
         var _loc1_:§_-6L§ = §_-lM§.§_-0-i§(this.mName).shape;
         if(_loc1_.§_-H8§() == §_-6L§.§_-Xe§)
         {
            this.§_-lA§ = _loc1_.§_-Vt§()[0];
            this.§_-Hi§ = _loc1_.§_-aC§;
         }
         else if(_loc1_.§_-H8§() == §_-6L§.§_-zi§)
         {
            this.§_-lA§ = new b2Vec2(0,0);
            this.§_-Hi§ = 1.5;
         }
         this.§_-Ec§ = this.§_-ZA§.§_-5F§.§_-fl§.§_-sJ§(this.mName);
         if(!this.§_-Ec§)
         {
            this.§_-jI§(null);
         }
         else
         {
            this.§_-jI§(this.§_-Ec§.getFrame(0));
         }
      }
      
      public function §_-jI§(param1:§_-4§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§_-ZA§.§_-cM§.§_-aJ§.§_-H0§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§_-CV§ == null)
         {
            this.§_-CV§ = new §_-Nd§(_loc2_);
            this.§_-S0§.addChild(this.§_-CV§);
         }
         else
         {
            this.§_-CV§.texture = _loc2_;
         }
         if(param1)
         {
            this.§_-CV§.x = -param1.pivotX - this.§_-lA§.x / §_-sn§.§_-5Y§;
            this.§_-CV§.y = -param1.pivotY - this.§_-lA§.y / §_-sn§.§_-5Y§;
         }
         else
         {
            this.§_-CV§.x = -this.§_-CV§.width / 2;
            this.§_-CV§.y = -this.§_-CV§.height / 2;
         }
         this.§_-CV§.scaleX = _loc3_;
         this.§_-CV§.scaleY = _loc3_;
         this.§_-T9§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-eu§(param1);
         if(this.§_-dx§)
         {
            this.§_-Eg§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-Kt§(param1);
            this.§_-hm§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-G7§(param1,param2);
            }
         }
      }
      
      public function §_-Kt§(param1:Number) : void
      {
         if(this.§_-f2§ > 0)
         {
            this.§_-f2§ -= param1;
            if(this.§_-f2§ <= 0)
            {
               this.§_-E7§();
            }
         }
         else if(this.§_-6W§ <= 0 && Math.random() * §_-R8§ < param1 && this.§_-ZA§.mSlingShotState)
         {
            this.§_-QN§();
         }
      }
      
      public function §_-E7§() : void
      {
         this.§_-f2§ = 0;
         this.§_-jI§(this.§_-Ec§.getFrame(0));
      }
      
      public function §_-QN§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-f2§ = §_-Na§;
         this.§_-jI§(this.§_-Ec§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-hm§(param1:Number) : void
      {
         if(this.§_-6W§ > 0)
         {
            this.§_-6W§ -= param1;
            if(this.§_-6W§ <= 0)
            {
               this.§_-lV§();
            }
         }
         else if(this.§_-f2§ <= 0 && Math.random() * §_-gr§ < param1)
         {
            this.§_-Yj§();
         }
      }
      
      public function §_-lV§() : void
      {
         this.§_-6W§ = 0;
         this.§_-jI§(this.§_-Ec§.getFrame(0));
      }
      
      public function §_-Yj§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-6W§ > 0)
         {
            this.§_-lV§();
         }
         if(this.§_-f2§ > 0)
         {
            this.§_-E7§();
         }
         if(param1 < 0)
         {
            param1 = §_-ZO§.§_-9r§;
         }
         this.§_-6W§ = §_-zR§;
         this.§_-jI§(this.§_-Ec§.getSubAnimation("yell").getFrame(0));
         if(this.§_-TL§ || this.§_-dx§ || param2)
         {
            §_-Ie§.§_-AC§(param1,this.§_-fN§);
         }
         else
         {
            §_-Ie§.§_-AC§(param1,this.§_-fN§,§_-PI§);
         }
      }
      
      public function §_-G7§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-Eg§ > 0)
         {
            this.§_-Eg§ -= param1;
            if(this.§_-Eg§ <= 0)
            {
               ++this.§_-IW§;
               this.§_-Ln§ *= 0.4;
               if(!this.§_-TL§ && this.§_-IW§ < 2)
               {
                  if(this.§_-IW§ > 1 && this.§_-Ln§ < -1)
                  {
                     this.§_-Ln§ = -1;
                  }
                  this.§_-XZ§ = this.§_-Ln§;
                  this.§_-Eg§ = §_-1c§;
                  this.§_-Eg§ *= Math.abs(this.§_-XZ§) / 2;
                  this.§_-9z§ = this.§_-Eg§;
                  this.§_-AE§ = 0;
                  this.§_-2N§ = 0;
               }
               else if(!this.§_-TL§ && param2)
               {
                  this.§_-hz§(2.25);
               }
               else
               {
                  this.§_-Eg§ = 0;
                  this.§_-GR§ = 0;
                  this.§_-AE§ = 0;
                  this.§_-Ln§ = 0;
               }
            }
            else
            {
               if(this.§_-Eg§ >= this.§_-9z§ / 2)
               {
                  _loc3_ = (this.§_-9z§ - this.§_-Eg§) / (this.§_-9z§ / 2);
                  _loc3_ = §_-RP§.§_-55§(_loc3_);
                  this.§_-GR§ = _loc3_ * this.§_-XZ§;
               }
               else
               {
                  _loc3_ = (this.§_-9z§ / 2 - this.§_-Eg§) / (this.§_-9z§ / 2);
                  _loc3_ = §_-RP§.§_-55§(_loc3_,false);
                  this.§_-GR§ = this.§_-XZ§ + _loc3_ * -this.§_-XZ§;
               }
               this.§_-AE§ = 360 * §_-RP§.§_-55§((this.§_-9z§ - this.§_-Eg§) / this.§_-9z§) * this.§_-2N§;
            }
            this.§_-T9§();
         }
         else if(Math.random() * §_-Ws§ < param1 && !this.§_-TL§ && !this.§_-dx§ && !this.§_-Lm§)
         {
            this.§_-hz§();
         }
      }
      
      public function §_-hz§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-IW§ = 0;
         this.§_-Eg§ = §_-1c§;
         this.§_-GR§ = 0;
         this.§_-XZ§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-Ln§ = this.§_-XZ§;
         this.§_-Eg§ *= Math.abs(this.§_-XZ§) / 3;
         this.§_-9z§ = this.§_-Eg§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-2N§ = 0;
         }
         else if(this.§_-Eg§ < 350)
         {
            this.§_-2N§ = 0;
         }
         else
         {
            this.§_-2N§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-2N§ = Math.random() > 0.5 ? Number(this.§_-2N§) : Number(0);
         }
      }
      
      public function §_-T9§() : void
      {
         this.§_-S0§.x = this.mX / §_-sn§.§_-5Y§;
         this.§_-S0§.y = (this.mY + this.§_-GR§) / §_-sn§.§_-5Y§;
         this.§_-S0§.rotation = this.§_-AE§ / 180 * Math.PI;
      }
      
      public function §_-4k§() : void
      {
         this.§_-Lm§ = true;
         this.§_-TL§ = false;
         this.§_-dx§ = false;
         this.§_-IW§ = 0;
         this.§_-OB§ = 0;
         this.§_-Eg§ = 0;
         this.§_-0-R§ = this.mY + this.§_-ZG§ + this.radius;
         this.§_-Eg§ = 0;
         this.§_-GR§ = 0;
         this.§_-AE§ = 0;
         this.§_-Ln§ = 0;
         this.§_-2N§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-Hi§ * 1.1)
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
         this.§_-0-R§ = this.mY + this.§_-ZG§;
         this.§_-OB§ = 100;
         this.§_-T9§();
         if(_loc3_)
         {
            this.§_-ZA§.§_-Ih§();
         }
      }
      
      public function §_-3Y§() : §_-Nd§
      {
         return this.§_-CV§;
      }
      
      public function get §_-5-§() : Number
      {
         return this.§_-Eg§;
      }
      
      public function get §_-QX§() : Number
      {
         return this.§_-OB§;
      }
      
      public function set §_-QX§(param1:Number) : void
      {
         this.§_-OB§ = param1;
      }
      
      public function get §_-5G§() : Number
      {
         return this.§_-Fj§;
      }
      
      public function get §_-qu§() : Boolean
      {
         return this.§_-TL§;
      }
      
      public function get radius() : Number
      {
         return this.§_-Hi§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-S0§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-5G§(param1:Number) : void
      {
         this.§_-Fj§ = param1;
      }
      
      public function get §_-Cm§() : Number
      {
         return this.§_-3R§;
      }
      
      public function set §_-Cm§(param1:Number) : void
      {
         this.§_-3R§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§_-7Q§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-7Q§ = param1;
      }
   }
}
