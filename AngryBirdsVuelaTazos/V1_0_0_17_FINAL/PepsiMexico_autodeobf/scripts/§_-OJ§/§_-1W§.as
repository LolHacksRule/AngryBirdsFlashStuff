package §_-OJ§
{
   import §_-4g§.Texture;
   import §_-CR§.§_-Dz§;
   import §_-HU§.§_-6n§;
   import §_-HU§.§_-Ju§;
   import §_-HU§.§_-yP§;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Ra§.§_-RO§;
   import §_-Ra§.§_-Vr§;
   import §_-e3§.§_-Fq§;
   
   public class §_-1W§
   {
      
      public static const §_-3n§:String = "ChannelSlingshot";
      
      public static const §_-oX§:Number = 900;
      
      public static const §_-L5§:Number = 200;
      
      public static const §_-WX§:Number = 200;
      
      public static const §_-w3§:Number = 1500;
      
      public static const §_-De§:Number = 5000;
      
      public static const §_-mS§:Number = 1000;
      
      public static const §_-SU§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-2V§:Number;
      
      public var §_-p8§:Number;
      
      private var §_-A§:§_-6n§;
      
      private var §_-O5§:Number;
      
      protected var §_-oL§:Number = 1;
      
      private var §_-Cv§:Sprite;
      
      private var §_-jC§:§_-RO§;
      
      private var §_-v4§:§_-19§;
      
      private var §_-7g§:§_-7G§;
      
      private var §_-XL§:Number;
      
      private var §_-qi§:Boolean = false;
      
      private var §_-Fz§:Boolean = false;
      
      private var §_-zZ§:Number;
      
      private var §_-GB§:Number = 0;
      
      private var §_-Fb§:Number = 0;
      
      private var §_-fl§:Number = 0;
      
      private var §_-us§:Number = 1000;
      
      private var §_-8E§:Number;
      
      private var §_-Cn§:Number;
      
      private var §_-Ko§:int;
      
      private var §_-o0§:Number = 0;
      
      private var §_-wi§:Number;
      
      private var §_-t7§:Number;
      
      private var §_-Lz§:Number = 0;
      
      private var §_-Qr§:Number = 1;
      
      private var §_-sD§:Number = 0;
      
      private var §_-uV§:b2Vec2;
      
      private var §_-KA§:Number = 1;
      
      public function §_-1W§(param1:§_-7G§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-7g§ = param1;
         this.§_-Cv§ = param2;
         this.mName = param3;
         this.§_-A§ = §_-yP§.§_-nU§(this.mName).§_-Ie§;
         this.mX = param4;
         this.mY = param5;
         this.§_-2V§ = param4;
         this.§_-p8§ = param5;
         this.§_-O5§ = 0;
         this.§_-qi§ = false;
         this.§_-Fz§ = false;
         this.§_-GB§ = 0;
         this.§_-Yy§();
         this.§_-wi§ = 0;
      }
      
      public function §_-k-§() : void
      {
         this.§_-qi§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-Cv§)
         {
            this.§_-Cv§.dispose();
            this.§_-Cv§ = null;
         }
      }
      
      public function §_-3-§(param1:Number) : void
      {
         if(!this.§_-Fz§ || this.§_-qi§)
         {
            return;
         }
         if(this.§_-oL§ != 0)
         {
            this.§_-fl§ = 0;
            this.§_-o0§ = 0;
            this.§_-O5§ = 0;
            this.§_-Cn§ = 0;
            this.§_-oL§ = 0;
         }
         param1 = Math.min(param1,this.§_-zZ§);
         this.mX += param1 * (this.§_-7g§.mX - this.mX) / this.§_-zZ§;
         this.mY += param1 * (this.§_-7g§.mY - this.mY) / this.§_-zZ§;
         this.mY -= param1 / 50 * (this.§_-zZ§ / §_-oX§);
         this.§_-O5§ += param1 * (360 - this.§_-O5§) / this.§_-zZ§;
         this.§_-zZ§ -= param1;
         if(this.§_-zZ§ <= 0)
         {
            this.mX = this.§_-7g§.mX;
            this.mY = this.§_-7g§.mY;
            this.§_-Fz§ = false;
            this.§_-qi§ = true;
            this.§_-O5§ = 0;
         }
         this.§_-nI§();
      }
      
      public function §_-18§() : void
      {
         this.§_-Fz§ = true;
         this.§_-zZ§ = §_-oX§;
         this.§finally§(§_-6n§.§_-jq§);
         if(this.§_-o0§ != 0)
         {
            this.mY += this.§_-o0§;
            this.§_-o0§ = 0;
         }
      }
      
      public function §_-v-§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-qi§ && this.§_-wi§ >= 0)
         {
            if(this.§_-t7§ > this.§_-7g§.§_-Ag§.§_-N7§.§_-IL§)
            {
               this.§_-8W§(this.§_-7g§.§_-Ag§.§_-N7§.§_-IL§ - this.§_-t7§);
               this.§_-wi§ = -1;
            }
            this.§_-wi§ -= param1;
            if(this.§_-wi§ <= 0)
            {
               if(this.§_-fl§ > 0)
               {
                  this.§_-wi§ = this.§_-fl§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-t7§))
               {
                  _loc2_ = this.§_-7g§.§_-Ag§.objects.§_-rH§(this.mX,this.§_-t7§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-8W§(param1 / 100))
                  {
                     this.§_-wi§ = -1;
                  }
                  else
                  {
                     this.§_-wi§ = 0;
                  }
               }
               else if(!this.§_-7g§.§_-Ag§.objects.getObject(_loc2_).§_-Fi§)
               {
                  this.§_-wi§ = -1;
               }
               else if(this.§_-7g§.§_-Ag§.objects.getObject(_loc2_).§_-AA§())
               {
                  this.§_-wi§ = 2000;
               }
               else
               {
                  this.§_-wi§ = 500;
               }
            }
         }
      }
      
      public function §_-8W§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-t7§ += param1;
         if(this.§_-t7§ > this.§_-7g§.§_-Ag§.§_-N7§.§_-IL§)
         {
            param1 = this.§_-t7§ - this.§_-7g§.§_-Ag§.§_-N7§.§_-IL§;
            this.mY -= param1;
            this.§_-t7§ -= param1;
            this.§_-nI§();
            return true;
         }
         this.§_-nI§();
         return false;
      }
      
      public function §_-Yy§() : void
      {
         var _loc1_:§_-Ju§ = §_-yP§.§_-nU§(this.mName).shape;
         if(_loc1_.§_-9B§() == §_-Ju§.§_-d9§)
         {
            this.§_-uV§ = _loc1_.§_-mW§()[0];
            this.§_-XL§ = _loc1_.§_-sa§;
         }
         else if(_loc1_.§_-9B§() == §_-Ju§.§_-K9§)
         {
            this.§_-uV§ = new b2Vec2(0,0);
            this.§_-XL§ = 1.5;
         }
         this.§_-jC§ = this.§_-7g§.§_-Ag§.§_-tJ§.§_-S-§(this.mName);
         if(!this.§_-jC§)
         {
            this.§_-OO§(null);
         }
         else
         {
            this.§_-OO§(this.§_-jC§.getFrame(0));
         }
      }
      
      public function §_-OO§(param1:§_-Vr§) : void
      {
         var _loc2_:Texture = null;
         if(!param1)
         {
            _loc2_ = this.§_-7g§.§_-Bd§.§_-JG§.§_-Z0§();
         }
         else
         {
            _loc2_ = param1.texture;
         }
         if(this.§_-v4§)
         {
            this.§_-Cv§.removeChild(this.§_-v4§,true);
            this.§_-v4§ = null;
         }
         this.§_-v4§ = new §_-19§(_loc2_);
         if(param1)
         {
            this.§_-v4§.x = -param1.pivotX - this.§_-uV§.x / §_-tL§.§_-7m§;
            this.§_-v4§.y = -param1.pivotY - this.§_-uV§.y / §_-tL§.§_-7m§;
         }
         else
         {
            this.§_-v4§.x = -this.§_-v4§.width / 2;
            this.§_-v4§.y = -this.§_-v4§.height / 2;
         }
         this.§_-Cv§.addChild(this.§_-v4§);
         this.§_-nI§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-v-§(param1);
         if(this.§_-Fz§)
         {
            this.§_-fl§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-Jt§(param1);
            this.§_-Db§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-8m§(param1,param2);
            }
         }
      }
      
      public function §_-Jt§(param1:Number) : void
      {
         if(this.§_-GB§ > 0)
         {
            this.§_-GB§ -= param1;
            if(this.§_-GB§ <= 0)
            {
               this.§_-2u§();
            }
         }
         else if(this.§_-Fb§ <= 0 && Math.random() * §_-w3§ < param1 && this.§_-7g§.mSlingShotState)
         {
            this.§_-C5§();
         }
      }
      
      public function §_-2u§() : void
      {
         this.§_-GB§ = 0;
         this.§_-OO§(this.§_-jC§.getFrame(0));
      }
      
      public function §_-C5§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-GB§ = §_-L5§;
         this.§_-OO§(this.§_-jC§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-Db§(param1:Number) : void
      {
         if(this.§_-Fb§ > 0)
         {
            this.§_-Fb§ -= param1;
            if(this.§_-Fb§ <= 0)
            {
               this.final();
            }
         }
         else if(this.§_-GB§ <= 0 && Math.random() * §_-De§ < param1)
         {
            this.§finally§();
         }
      }
      
      public function final() : void
      {
         this.§_-Fb§ = 0;
         this.§_-OO§(this.§_-jC§.getFrame(0));
      }
      
      public function §finally§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-Fb§ > 0)
         {
            this.final();
         }
         if(this.§_-GB§ > 0)
         {
            this.§_-2u§();
         }
         if(param1 < 0)
         {
            param1 = §_-6n§.§_-d4§;
         }
         this.§_-Fb§ = §_-WX§;
         this.§_-OO§(this.§_-jC§.getSubAnimation("yell").getFrame(0));
         if(this.§_-qi§ || this.§_-Fz§ || param2)
         {
            §_-Dz§.§_-OR§(param1,this.§_-A§);
         }
         else
         {
            §_-Dz§.§_-OR§(param1,this.§_-A§,§_-3n§);
         }
      }
      
      public function §_-8m§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-fl§ > 0)
         {
            this.§_-fl§ -= param1;
            if(this.§_-fl§ <= 0)
            {
               ++this.§_-Ko§;
               this.§_-Cn§ *= 0.4;
               if(!this.§_-qi§ && this.§_-Ko§ < 2)
               {
                  if(this.§_-Ko§ > 1 && this.§_-Cn§ < -1)
                  {
                     this.§_-Cn§ = -1;
                  }
                  this.§_-8E§ = this.§_-Cn§;
                  this.§_-fl§ = §_-SU§;
                  this.§_-fl§ *= Math.abs(this.§_-8E§) / 2;
                  this.§_-us§ = this.§_-fl§;
                  this.§_-O5§ = 0;
                  this.§_-oL§ = 0;
               }
               else if(!this.§_-qi§ && param2)
               {
                  this.§_-Ig§(2.25);
               }
               else
               {
                  this.§_-fl§ = 0;
                  this.§_-o0§ = 0;
                  this.§_-O5§ = 0;
                  this.§_-Cn§ = 0;
               }
            }
            else
            {
               if(this.§_-fl§ >= this.§_-us§ / 2)
               {
                  _loc3_ = (this.§_-us§ - this.§_-fl§) / (this.§_-us§ / 2);
                  _loc3_ = §_-Fq§.§_-tf§(_loc3_);
                  this.§_-o0§ = _loc3_ * this.§_-8E§;
               }
               else
               {
                  _loc3_ = (this.§_-us§ / 2 - this.§_-fl§) / (this.§_-us§ / 2);
                  _loc3_ = §_-Fq§.§_-tf§(_loc3_,false);
                  this.§_-o0§ = this.§_-8E§ + _loc3_ * -this.§_-8E§;
               }
               this.§_-O5§ = 360 * §_-Fq§.§_-tf§((this.§_-us§ - this.§_-fl§) / this.§_-us§) * this.§_-oL§;
            }
            this.§_-nI§();
         }
         else if(Math.random() * §_-mS§ < param1 && !this.§_-qi§ && !this.§_-Fz§)
         {
            this.§_-Ig§();
         }
      }
      
      public function §_-Ig§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-Ko§ = 0;
         this.§_-fl§ = §_-SU§;
         this.§_-o0§ = 0;
         this.§_-8E§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-Cn§ = this.§_-8E§;
         this.§_-fl§ *= Math.abs(this.§_-8E§) / 3;
         this.§_-us§ = this.§_-fl§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-oL§ = 0;
         }
         else if(this.§_-fl§ < 350)
         {
            this.§_-oL§ = 0;
         }
         else
         {
            this.§_-oL§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-oL§ = Math.random() > 0.5 ? Number(this.§_-oL§) : Number(0);
         }
      }
      
      public function §_-nI§() : void
      {
         this.§_-Cv§.x = this.mX / §_-tL§.§_-7m§;
         this.§_-Cv§.y = (this.mY + this.§_-o0§) / §_-tL§.§_-7m§;
         this.§_-Cv§.rotation = this.§_-O5§ / 180 * Math.PI;
      }
      
      public function §_-pZ§() : void
      {
         this.§_-qi§ = false;
         this.§_-Fz§ = false;
         this.§_-Ko§ = 0;
         this.§_-wi§ = 0;
         this.§_-fl§ = 0;
         this.§_-t7§ = this.mY + this.§_-Lz§ + this.radius;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-XL§ * 1.1)
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
         this.§_-t7§ = this.mY + this.§_-Lz§;
         this.§_-wi§ = 100;
         this.§_-nI§();
         if(_loc3_)
         {
            this.§_-7g§.§_-gK§();
         }
      }
      
      public function §_-Ex§() : §_-19§
      {
         return this.§_-v4§;
      }
      
      public function get §_-it§() : Number
      {
         return this.§_-fl§;
      }
      
      public function get §_-YH§() : Number
      {
         return this.§_-wi§;
      }
      
      public function set §_-YH§(param1:Number) : void
      {
         this.§_-wi§ = param1;
      }
      
      public function get §_-rj§() : Number
      {
         return this.§_-Qr§;
      }
      
      public function get §_-A4§() : Boolean
      {
         return this.§_-qi§;
      }
      
      public function get radius() : Number
      {
         return this.§_-XL§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Cv§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-rj§(param1:Number) : void
      {
         this.§_-Qr§ = param1;
      }
      
      public function get §_-Rq§() : Number
      {
         return this.§_-sD§;
      }
      
      public function set §_-Rq§(param1:Number) : void
      {
         this.§_-sD§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§_-KA§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-KA§ = param1;
      }
   }
}
