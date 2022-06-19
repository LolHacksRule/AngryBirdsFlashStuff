package §_-0-K§
{
   import §_-4I§.§_-14§;
   import §_-4I§.§_-EA§;
   import §_-Fk§.§_-Cb§;
   import §_-Vn§.b2Vec2;
   import §_-X4§.§_-aP§;
   import §_-X4§.§_-rI§;
   import §_-X4§.§_-vJ§;
   import §_-i9§.Texture;
   import §_-r6§.§_-zU§;
   import §case §.Sprite;
   import §case §.§_-G3§;
   
   public class §_-ZK§
   {
      
      public static const §_-Iu§:String = "ChannelSlingshot";
      
      public static const §try§:Number = 900;
      
      public static const §_-Ra§:Number = 200;
      
      public static const § set§:Number = 200;
      
      public static const §_-Ar§:Number = 1500;
      
      public static const §_-tx§:Number = 5000;
      
      public static const §_-We§:Number = 1000;
      
      public static const §_-YW§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-jE§:Number;
      
      public var §_-0-T§:Number;
      
      private var §_-O-§:§_-aP§;
      
      private var §_-EO§:Number;
      
      protected var §_-ZL§:Number = 1;
      
      private var §_-kv§:Sprite;
      
      private var §_-wN§:§_-14§;
      
      private var §_-pV§:§_-G3§;
      
      private var §_-eP§:§_-xV§;
      
      private var §_-A§:Number;
      
      private var §_-cs§:Boolean = false;
      
      private var §_-et§:Boolean = false;
      
      private var §_-uc§:Boolean = false;
      
      private var §_-0S§:Number;
      
      private var §_-vC§:Number = 0;
      
      private var §_-JB§:Number = 0;
      
      private var §_-MD§:Number = 0;
      
      private var §_-HT§:Number = 1000;
      
      private var §_-dF§:Number;
      
      private var §_-KB§:Number;
      
      private var §_-KJ§:int;
      
      private var §_-Dy§:Number = 0;
      
      private var §_-MK§:Number;
      
      private var §_-qO§:Number;
      
      private var §_-IV§:Number = 0;
      
      private var §_-XQ§:Number = 1;
      
      private var §_-VT§:Number = 0;
      
      private var §_-7J§:b2Vec2;
      
      private var §_-6L§:Number = 1;
      
      public function §_-ZK§(param1:§_-xV§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-eP§ = param1;
         this.§_-kv§ = param2;
         this.mName = param3;
         this.§_-O-§ = §_-rI§.§_-0l§(this.mName).§_-0G§;
         this.mX = param4;
         this.mY = param5;
         this.§_-jE§ = param4;
         this.§_-0-T§ = param5;
         this.§_-EO§ = 0;
         this.§_-cs§ = false;
         this.§_-et§ = false;
         this.§_-vC§ = 0;
         this.§_-pu§();
         this.§_-MK§ = 0;
      }
      
      public function §_-wY§() : void
      {
         this.§_-cs§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-kv§)
         {
            this.§_-kv§.dispose();
            this.§_-kv§ = null;
         }
      }
      
      public function §_-Ck§(param1:Number) : void
      {
         if(!this.§_-et§ || this.§_-cs§)
         {
            return;
         }
         if(this.§_-ZL§ != 0)
         {
            this.§_-MD§ = 0;
            this.§_-Dy§ = 0;
            this.§_-EO§ = 0;
            this.§_-KB§ = 0;
            this.§_-ZL§ = 0;
         }
         param1 = Math.min(param1,this.§_-0S§);
         this.mX += param1 * (this.§_-eP§.mX - this.mX) / this.§_-0S§;
         this.mY += param1 * (this.§_-eP§.mY - this.mY) / this.§_-0S§;
         this.mY -= param1 / 50 * (this.§_-0S§ / §try§);
         this.§_-EO§ += param1 * (360 - this.§_-EO§) / this.§_-0S§;
         this.§_-0S§ -= param1;
         if(this.§_-0S§ <= 0)
         {
            this.mX = this.§_-eP§.mX;
            this.mY = this.§_-eP§.mY;
            this.§_-et§ = false;
            this.§_-cs§ = true;
            this.§_-EO§ = 0;
         }
         this.§_-ac§();
      }
      
      public function §_-Be§() : void
      {
         this.§_-et§ = true;
         this.§_-0S§ = §try§;
         this.§_-iL§(§_-aP§.§_-TJ§);
         if(this.§_-Dy§ != 0)
         {
            this.mY += this.§_-Dy§;
            this.§_-Dy§ = 0;
         }
      }
      
      public function §_-Fz§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-cs§ && this.§_-MK§ >= 0)
         {
            if(this.§_-qO§ > this.§_-eP§.§_-mC§.§_-v5§.§_-gM§)
            {
               this.§_-f4§(this.§_-eP§.§_-mC§.§_-v5§.§_-gM§ - this.§_-qO§);
               this.§_-MK§ = -1;
            }
            this.§_-MK§ -= param1;
            if(this.§_-MK§ <= 0)
            {
               if(this.§_-MD§ > 0)
               {
                  this.§_-MK§ = this.§_-MD§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-qO§))
               {
                  _loc2_ = this.§_-eP§.§_-mC§.objects.§_-Ni§(this.mX,this.§_-qO§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-f4§(param1 / 100))
                  {
                     this.§_-MK§ = -1;
                  }
                  else
                  {
                     this.§_-MK§ = 0;
                  }
               }
               else if(!this.§_-eP§.§_-mC§.objects.§_-id§(_loc2_).§_-AZ§)
               {
                  this.§_-uc§ = false;
                  this.§_-MK§ = -1;
               }
               else if(this.§_-eP§.§_-mC§.objects.§_-id§(_loc2_).§_-RG§())
               {
                  this.§_-uc§ = false;
                  this.§_-MK§ = 2000;
               }
               else
               {
                  this.§_-MK§ = 500;
               }
            }
         }
      }
      
      public function §_-f4§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-qO§ += param1;
         if(this.§_-qO§ > this.§_-eP§.§_-mC§.§_-v5§.§_-gM§)
         {
            param1 = this.§_-qO§ - this.§_-eP§.§_-mC§.§_-v5§.§_-gM§;
            this.mY -= param1;
            this.§_-qO§ -= param1;
            this.§_-ac§();
            return true;
         }
         this.§_-ac§();
         return false;
      }
      
      public function §_-pu§() : void
      {
         var _loc1_:§_-vJ§ = §_-rI§.§_-0l§(this.mName).shape;
         if(_loc1_.§_-ao§() == §_-vJ§.§_-Lj§)
         {
            this.§_-7J§ = _loc1_.§_-K1§()[0];
            this.§_-A§ = _loc1_.§_-LO§;
         }
         else if(_loc1_.§_-ao§() == §_-vJ§.§_-xK§)
         {
            this.§_-7J§ = new b2Vec2(0,0);
            this.§_-A§ = 1.5;
         }
         this.§_-wN§ = this.§_-eP§.§_-mC§.§_-Un§.§_-Sv§(this.mName);
         if(!this.§_-wN§)
         {
            this.§_-lg§(null);
         }
         else
         {
            this.§_-lg§(this.§_-wN§.getFrame(0));
         }
      }
      
      public function §_-lg§(param1:§_-EA§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§_-eP§.§_-W5§.§_-91§.§_-T-§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§_-pV§ == null)
         {
            this.§_-pV§ = new §_-G3§(_loc2_);
            this.§_-kv§.addChild(this.§_-pV§);
         }
         else
         {
            this.§_-pV§.texture = _loc2_;
         }
         if(param1)
         {
            this.§_-pV§.x = -param1.pivotX - this.§_-7J§.x / §_-FL§.§_-NU§;
            this.§_-pV§.y = -param1.pivotY - this.§_-7J§.y / §_-FL§.§_-NU§;
         }
         else
         {
            this.§_-pV§.x = -this.§_-pV§.width / 2;
            this.§_-pV§.y = -this.§_-pV§.height / 2;
         }
         this.§_-pV§.scaleX = _loc3_;
         this.§_-pV§.scaleY = _loc3_;
         this.§_-ac§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-Fz§(param1);
         if(this.§_-et§)
         {
            this.§_-MD§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-Yl§(param1);
            this.§_-9V§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-Uu§(param1,param2);
            }
         }
      }
      
      public function §_-Yl§(param1:Number) : void
      {
         if(this.§_-vC§ > 0)
         {
            this.§_-vC§ -= param1;
            if(this.§_-vC§ <= 0)
            {
               this.§ var§();
            }
         }
         else if(this.§_-JB§ <= 0 && Math.random() * §_-Ar§ < param1 && this.§_-eP§.mSlingShotState)
         {
            this.§_-8N§();
         }
      }
      
      public function § var§() : void
      {
         this.§_-vC§ = 0;
         this.§_-lg§(this.§_-wN§.getFrame(0));
      }
      
      public function §_-8N§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-vC§ = §_-Ra§;
         this.§_-lg§(this.§_-wN§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-9V§(param1:Number) : void
      {
         if(this.§_-JB§ > 0)
         {
            this.§_-JB§ -= param1;
            if(this.§_-JB§ <= 0)
            {
               this.§_-Nx§();
            }
         }
         else if(this.§_-vC§ <= 0 && Math.random() * §_-tx§ < param1)
         {
            this.§_-iL§();
         }
      }
      
      public function §_-Nx§() : void
      {
         this.§_-JB§ = 0;
         this.§_-lg§(this.§_-wN§.getFrame(0));
      }
      
      public function §_-iL§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-JB§ > 0)
         {
            this.§_-Nx§();
         }
         if(this.§_-vC§ > 0)
         {
            this.§ var§();
         }
         if(param1 < 0)
         {
            param1 = §_-aP§.§_-IT§;
         }
         this.§_-JB§ = § set§;
         this.§_-lg§(this.§_-wN§.getSubAnimation("yell").getFrame(0));
         if(this.§_-cs§ || this.§_-et§ || param2)
         {
            §_-Cb§.§_-KS§(param1,this.§_-O-§);
         }
         else
         {
            §_-Cb§.§_-KS§(param1,this.§_-O-§,§_-Iu§);
         }
      }
      
      public function §_-Uu§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-MD§ > 0)
         {
            this.§_-MD§ -= param1;
            if(this.§_-MD§ <= 0)
            {
               ++this.§_-KJ§;
               this.§_-KB§ *= 0.4;
               if(!this.§_-cs§ && this.§_-KJ§ < 2)
               {
                  if(this.§_-KJ§ > 1 && this.§_-KB§ < -1)
                  {
                     this.§_-KB§ = -1;
                  }
                  this.§_-dF§ = this.§_-KB§;
                  this.§_-MD§ = §_-YW§;
                  this.§_-MD§ *= Math.abs(this.§_-dF§) / 2;
                  this.§_-HT§ = this.§_-MD§;
                  this.§_-EO§ = 0;
                  this.§_-ZL§ = 0;
               }
               else if(!this.§_-cs§ && param2)
               {
                  this.§_-8S§(2.25);
               }
               else
               {
                  this.§_-MD§ = 0;
                  this.§_-Dy§ = 0;
                  this.§_-EO§ = 0;
                  this.§_-KB§ = 0;
               }
            }
            else
            {
               if(this.§_-MD§ >= this.§_-HT§ / 2)
               {
                  _loc3_ = (this.§_-HT§ - this.§_-MD§) / (this.§_-HT§ / 2);
                  _loc3_ = §_-zU§.§_-Af§(_loc3_);
                  this.§_-Dy§ = _loc3_ * this.§_-dF§;
               }
               else
               {
                  _loc3_ = (this.§_-HT§ / 2 - this.§_-MD§) / (this.§_-HT§ / 2);
                  _loc3_ = §_-zU§.§_-Af§(_loc3_,false);
                  this.§_-Dy§ = this.§_-dF§ + _loc3_ * -this.§_-dF§;
               }
               this.§_-EO§ = 360 * §_-zU§.§_-Af§((this.§_-HT§ - this.§_-MD§) / this.§_-HT§) * this.§_-ZL§;
            }
            this.§_-ac§();
         }
         else if(Math.random() * §_-We§ < param1 && !this.§_-cs§ && !this.§_-et§ && !this.§_-uc§)
         {
            this.§_-8S§();
         }
      }
      
      public function §_-8S§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-KJ§ = 0;
         this.§_-MD§ = §_-YW§;
         this.§_-Dy§ = 0;
         this.§_-dF§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-KB§ = this.§_-dF§;
         this.§_-MD§ *= Math.abs(this.§_-dF§) / 3;
         this.§_-HT§ = this.§_-MD§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-ZL§ = 0;
         }
         else if(this.§_-MD§ < 350)
         {
            this.§_-ZL§ = 0;
         }
         else
         {
            this.§_-ZL§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-ZL§ = Math.random() > 0.5 ? Number(this.§_-ZL§) : Number(0);
         }
      }
      
      public function §_-ac§() : void
      {
         this.§_-kv§.x = this.mX / §_-FL§.§_-NU§;
         this.§_-kv§.y = (this.mY + this.§_-Dy§) / §_-FL§.§_-NU§;
         this.§_-kv§.rotation = this.§_-EO§ / 180 * Math.PI;
      }
      
      public function §_-A2§() : void
      {
         this.§_-uc§ = true;
         this.§_-cs§ = false;
         this.§_-et§ = false;
         this.§_-KJ§ = 0;
         this.§_-MK§ = 0;
         this.§_-MD§ = 0;
         this.§_-qO§ = this.mY + this.§_-IV§ + this.radius;
         this.§_-MD§ = 0;
         this.§_-Dy§ = 0;
         this.§_-EO§ = 0;
         this.§_-KB§ = 0;
         this.§_-ZL§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-A§ * 1.1)
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
         this.§_-qO§ = this.mY + this.§_-IV§;
         this.§_-MK§ = 100;
         this.§_-ac§();
         if(_loc3_)
         {
            this.§_-eP§.§_-9t§();
         }
      }
      
      public function §_-NZ§() : §_-G3§
      {
         return this.§_-pV§;
      }
      
      public function get §_-1n§() : Number
      {
         return this.§_-MD§;
      }
      
      public function get §_-aO§() : Number
      {
         return this.§_-MK§;
      }
      
      public function set §_-aO§(param1:Number) : void
      {
         this.§_-MK§ = param1;
      }
      
      public function get §_-RX§() : Number
      {
         return this.§_-XQ§;
      }
      
      public function get §_-UW§() : Boolean
      {
         return this.§_-cs§;
      }
      
      public function get radius() : Number
      {
         return this.§_-A§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-kv§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-RX§(param1:Number) : void
      {
         this.§_-XQ§ = param1;
      }
      
      public function get §_-Dw§() : Number
      {
         return this.§_-VT§;
      }
      
      public function set §_-Dw§(param1:Number) : void
      {
         this.§_-VT§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§_-6L§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-6L§ = param1;
      }
   }
}
