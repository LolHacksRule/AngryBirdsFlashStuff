package §_-FQ§
{
   import §_-Cy§.Texture;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-Xd§.§_-sW§;
   import §_-ex§.§_-hj§;
   import §_-rQ§.§_-Fv§;
   import §_-rQ§.§_-MV§;
   import §var§.b2Vec2;
   import §with§.§_-AZ§;
   import §with§.§_-O2§;
   import §with§.§_-fn§;
   
   public class §_-ym§
   {
      
      public static const §_-Fa§:String = "ChannelSlingshot";
      
      public static const §_-Ic§:Number = 900;
      
      public static const §_-7d§:Number = 200;
      
      public static const §_-Gm§:Number = 200;
      
      public static const §_-VX§:Number = 1500;
      
      public static const §_-Yi§:Number = 5000;
      
      public static const §_-Gq§:Number = 1000;
      
      public static const §_-3c§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-K§:Number;
      
      public var §_-2l§:Number;
      
      private var §_-Dt§:§_-AZ§;
      
      private var §_-YV§:Number;
      
      protected var §_-6v§:Number = 1;
      
      private var §_-bB§:Sprite;
      
      private var §_-5v§:§_-Fv§;
      
      private var §_-Bk§:§_-2S§;
      
      private var §_-3o§:§_-Vg§;
      
      private var §_-oC§:Number;
      
      private var §_-YN§:Boolean = false;
      
      private var §_-jk§:Boolean = false;
      
      private var §_-co§:Number;
      
      private var §_-el§:Number = 0;
      
      private var §_-6E§:Number = 0;
      
      private var §_-ab§:Number = 0;
      
      private var §_-eJ§:Number = 1000;
      
      private var §_-1H§:Number;
      
      private var §_-8r§:Number;
      
      private var §_-z7§:int;
      
      private var §_-Ow§:Number = 0;
      
      private var §_-yT§:Number;
      
      private var §_-Lg§:Number;
      
      private var §_-ax§:Number = 0;
      
      private var §_-kg§:Number = 1;
      
      private var §_-4k§:Number = 0;
      
      private var §_-z9§:b2Vec2;
      
      public function §_-ym§(param1:§_-Vg§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-3o§ = param1;
         this.§_-bB§ = param2;
         this.mName = param3;
         this.§_-Dt§ = §_-O2§.§_-k§(this.mName).§_-l2§;
         this.mX = param4;
         this.mY = param5;
         this.§_-K§ = param4;
         this.§_-2l§ = param5;
         this.§_-YV§ = 0;
         this.§_-YN§ = false;
         this.§_-jk§ = false;
         this.§_-el§ = 0;
         this.§_-Mf§();
         this.§_-yT§ = 0;
      }
      
      public function §_-hz§() : void
      {
         this.§_-YN§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-bB§)
         {
            this.§_-bB§.dispose();
            this.§_-bB§ = null;
         }
      }
      
      public function §_-yW§(param1:Number) : void
      {
         if(!this.§_-jk§ || this.§_-YN§)
         {
            return;
         }
         if(this.§_-6v§ != 0)
         {
            this.§_-ab§ = 0;
            this.§_-Ow§ = 0;
            this.§_-YV§ = 0;
            this.§_-8r§ = 0;
            this.§_-6v§ = 0;
         }
         param1 = Math.min(param1,this.§_-co§);
         this.mX += param1 * (this.§_-3o§.mX - this.mX) / this.§_-co§;
         this.mY += param1 * (this.§_-3o§.mY - this.mY) / this.§_-co§;
         this.mY -= param1 / 50 * (this.§_-co§ / §_-Ic§);
         this.§_-YV§ += param1 * (360 - this.§_-YV§) / this.§_-co§;
         this.§_-co§ -= param1;
         if(this.§_-co§ <= 0)
         {
            this.mX = this.§_-3o§.mX;
            this.mY = this.§_-3o§.mY;
            this.§_-jk§ = false;
            this.§_-YN§ = true;
            this.§_-YV§ = 0;
         }
         this.§_-pP§();
      }
      
      public function §_-sS§() : void
      {
         this.§_-jk§ = true;
         this.§_-co§ = §_-Ic§;
         this.§_-Rh§(§_-AZ§.§_-W7§);
         if(this.§_-Ow§ != 0)
         {
            this.mY += this.§_-Ow§;
            this.§_-Ow§ = 0;
         }
      }
      
      public function §_-oP§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-YN§ && this.§_-yT§ >= 0)
         {
            if(this.§_-Lg§ > this.§_-3o§.§_-6q§.§_-Dw§.§_-X1§)
            {
               this.§_-y9§(this.§_-3o§.§_-6q§.§_-Dw§.§_-X1§ - this.§_-Lg§);
               this.§_-yT§ = -1;
            }
            this.§_-yT§ -= param1;
            if(this.§_-yT§ <= 0)
            {
               if(this.§_-ab§ > 0)
               {
                  this.§_-yT§ = this.§_-ab§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-Lg§))
               {
                  _loc2_ = this.§_-3o§.§_-6q§.mLevelObjects.§_-jU§(this.mX,this.§_-Lg§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-y9§(param1 / 100))
                  {
                     this.§_-yT§ = -1;
                  }
                  else
                  {
                     this.§_-yT§ = 0;
                  }
               }
               else if(!this.§_-3o§.§_-6q§.mLevelObjects.getObject(_loc2_).§_-A4§)
               {
                  this.§_-yT§ = -1;
               }
               else if(this.§_-3o§.§_-6q§.mLevelObjects.getObject(_loc2_).§_-AN§())
               {
                  this.§_-yT§ = 2000;
               }
               else
               {
                  this.§_-yT§ = 500;
               }
            }
         }
      }
      
      public function §_-y9§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-Lg§ += param1;
         if(this.§_-Lg§ > this.§_-3o§.§_-6q§.§_-Dw§.§_-X1§)
         {
            param1 = this.§_-Lg§ - this.§_-3o§.§_-6q§.§_-Dw§.§_-X1§;
            this.mY -= param1;
            this.§_-Lg§ -= param1;
            this.§_-pP§();
            return true;
         }
         this.§_-pP§();
         return false;
      }
      
      public function §_-Mf§() : void
      {
         var _loc1_:§_-fn§ = §_-O2§.§_-k§(this.mName).shape;
         if(_loc1_.§do§() == §_-fn§.§_-ms§)
         {
            this.§_-z9§ = _loc1_.§_-Tu§()[0];
            this.§_-oC§ = _loc1_.§_-NR§;
         }
         else if(_loc1_.§do§() == §_-fn§.§_-ul§)
         {
            this.§_-z9§ = new b2Vec2(0,0);
            this.§_-oC§ = 1.5;
         }
         this.§_-5v§ = this.§_-3o§.§_-6q§.§_-FR§.§_-72§(this.mName);
         if(!this.§_-5v§)
         {
            this.§_-cl§(null);
         }
         else
         {
            this.§_-cl§(this.§_-5v§.getFrame(0));
         }
      }
      
      public function §_-cl§(param1:§_-MV§) : void
      {
         var _loc2_:Texture = null;
         if(!param1)
         {
            _loc2_ = this.§_-3o§.§_-iT§.§_-xI§.§_-qL§();
         }
         else
         {
            _loc2_ = param1.texture;
         }
         if(this.§_-Bk§)
         {
            this.§_-bB§.removeChild(this.§_-Bk§,true);
            this.§_-Bk§ = null;
         }
         this.§_-Bk§ = new §_-2S§(_loc2_);
         if(param1)
         {
            this.§_-Bk§.x = -param1.pivotX - this.§_-z9§.x / §_-7W§.§_-hT§;
            this.§_-Bk§.y = -param1.pivotY - this.§_-z9§.y / §_-7W§.§_-hT§;
         }
         else
         {
            this.§_-Bk§.x = -this.§_-Bk§.width / 2;
            this.§_-Bk§.y = -this.§_-Bk§.height / 2;
         }
         this.§_-bB§.addChild(this.§_-Bk§);
         this.§_-pP§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-oP§(param1);
         if(this.§_-jk§)
         {
            this.§_-ab§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-8l§(param1);
            this.§_-qa§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-wr§(param1,param2);
            }
         }
      }
      
      public function §_-8l§(param1:Number) : void
      {
         if(this.§_-el§ > 0)
         {
            this.§_-el§ -= param1;
            if(this.§_-el§ <= 0)
            {
               this.§_-pU§();
            }
         }
         else if(this.§_-6E§ <= 0 && Math.random() * §_-VX§ < param1 && this.§_-3o§.mSlingShotState)
         {
            this.§_-yg§();
         }
      }
      
      public function §_-pU§() : void
      {
         this.§_-el§ = 0;
         this.§_-cl§(this.§_-5v§.getFrame(0));
      }
      
      public function §_-yg§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-el§ = §_-7d§;
         this.§_-cl§(this.§_-5v§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-qa§(param1:Number) : void
      {
         if(this.§_-6E§ > 0)
         {
            this.§_-6E§ -= param1;
            if(this.§_-6E§ <= 0)
            {
               this.§_-uP§();
            }
         }
         else if(this.§_-el§ <= 0 && Math.random() * §_-Yi§ < param1)
         {
            this.§_-Rh§();
         }
      }
      
      public function §_-uP§() : void
      {
         this.§_-6E§ = 0;
         this.§_-cl§(this.§_-5v§.getFrame(0));
      }
      
      public function §_-Rh§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-6E§ > 0)
         {
            this.§_-uP§();
         }
         if(this.§_-el§ > 0)
         {
            this.§_-pU§();
         }
         if(param1 < 0)
         {
            param1 = §_-AZ§.§_-t6§;
         }
         this.§_-6E§ = §_-Gm§;
         this.§_-cl§(this.§_-5v§.getSubAnimation("yell").getFrame(0));
         if(this.§_-YN§ || this.§_-jk§ || param2)
         {
            §_-sW§.§_-0Q§(param1,this.§_-Dt§);
         }
         else
         {
            §_-sW§.§_-0Q§(param1,this.§_-Dt§,§_-Fa§);
         }
      }
      
      public function §_-wr§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-ab§ > 0)
         {
            this.§_-ab§ -= param1;
            if(this.§_-ab§ <= 0)
            {
               ++this.§_-z7§;
               this.§_-8r§ *= 0.4;
               if(!this.§_-YN§ && this.§_-z7§ < 2)
               {
                  if(this.§_-z7§ > 1 && this.§_-8r§ < -1)
                  {
                     this.§_-8r§ = -1;
                  }
                  this.§_-1H§ = this.§_-8r§;
                  this.§_-ab§ = §_-3c§;
                  this.§_-ab§ *= Math.abs(this.§_-1H§) / 2;
                  this.§_-eJ§ = this.§_-ab§;
                  this.§_-YV§ = 0;
                  this.§_-6v§ = 0;
               }
               else if(!this.§_-YN§ && param2)
               {
                  this.§_-C2§(2.25);
               }
               else
               {
                  this.§_-ab§ = 0;
                  this.§_-Ow§ = 0;
                  this.§_-YV§ = 0;
                  this.§_-8r§ = 0;
               }
            }
            else
            {
               if(this.§_-ab§ >= this.§_-eJ§ / 2)
               {
                  _loc3_ = (this.§_-eJ§ - this.§_-ab§) / (this.§_-eJ§ / 2);
                  _loc3_ = §_-hj§.§_-oJ§(_loc3_);
                  this.§_-Ow§ = _loc3_ * this.§_-1H§;
               }
               else
               {
                  _loc3_ = (this.§_-eJ§ / 2 - this.§_-ab§) / (this.§_-eJ§ / 2);
                  _loc3_ = §_-hj§.§_-oJ§(_loc3_,false);
                  this.§_-Ow§ = this.§_-1H§ + _loc3_ * -this.§_-1H§;
               }
               this.§_-YV§ = 360 * §_-hj§.§_-oJ§((this.§_-eJ§ - this.§_-ab§) / this.§_-eJ§) * this.§_-6v§;
            }
            this.§_-pP§();
         }
         else if(Math.random() * §_-Gq§ < param1 && !this.§_-YN§ && !this.§_-jk§)
         {
            this.§_-C2§();
         }
      }
      
      public function §_-C2§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-z7§ = 0;
         this.§_-ab§ = §_-3c§;
         this.§_-Ow§ = 0;
         this.§_-1H§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-8r§ = this.§_-1H§;
         this.§_-ab§ *= Math.abs(this.§_-1H§) / 3;
         this.§_-eJ§ = this.§_-ab§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-6v§ = 0;
         }
         else if(this.§_-ab§ < 350)
         {
            this.§_-6v§ = 0;
         }
         else
         {
            this.§_-6v§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-6v§ = Math.random() > 0.5 ? Number(this.§_-6v§) : Number(0);
         }
      }
      
      public function §_-pP§() : void
      {
         this.§_-bB§.x = this.mX / §_-7W§.§_-hT§;
         this.§_-bB§.y = (this.mY + this.§_-Ow§) / §_-7W§.§_-hT§;
         this.§_-bB§.rotation = this.§_-YV§ / 180 * Math.PI;
      }
      
      public function §_-3C§() : void
      {
         this.§_-YN§ = false;
         this.§_-jk§ = false;
         this.§_-z7§ = 0;
         this.§_-yT§ = 0;
         this.§_-ab§ = 0;
         this.§_-Lg§ = this.mY + this.§_-ax§ + this.radius;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-oC§ * 1.1)
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
         this.§_-Lg§ = this.mY + this.§_-ax§;
         this.§_-yT§ = 100;
         this.§_-pP§();
         if(_loc3_)
         {
            this.§_-3o§.§_-g6§();
         }
      }
      
      public function §_-QA§() : §_-2S§
      {
         return this.§_-Bk§;
      }
      
      public function get §_-PJ§() : Number
      {
         return this.§_-ab§;
      }
      
      public function get §_-vr§() : Number
      {
         return this.§_-yT§;
      }
      
      public function set §_-vr§(param1:Number) : void
      {
         this.§_-yT§ = param1;
      }
      
      public function get §_-dl§() : Number
      {
         return this.§_-kg§;
      }
      
      public function get §_-Q4§() : Boolean
      {
         return this.§_-YN§;
      }
      
      public function get radius() : Number
      {
         return this.§_-oC§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-bB§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-dl§(param1:Number) : void
      {
         this.§_-kg§ = param1;
      }
      
      public function get §_-Zq§() : Number
      {
         return this.§_-4k§;
      }
      
      public function set §_-Zq§(param1:Number) : void
      {
         this.§_-4k§ = param1;
      }
   }
}
