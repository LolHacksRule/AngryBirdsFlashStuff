package §_-Di§
{
   import §_-3b§.§_-5p§;
   import §_-3b§.§_-Lf§;
   import §_-Q0§.Texture;
   import §_-Rm§.§_-7§;
   import §_-Rm§.§_-i8§;
   import §_-Rm§.§_-tv§;
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   import §_-bA§.b2Vec2;
   import §_-gM§.§_-Em§;
   import §_-tW§.§_-lx§;
   
   public class §_-aX§
   {
      
      public static const §_-yf§:String = "ChannelSlingshot";
      
      public static const §_-7H§:Number = 900;
      
      public static const §_-DA§:Number = 200;
      
      public static const §_-D8§:Number = 200;
      
      public static const §_-Vu§:Number = 1500;
      
      public static const §_-L-§:Number = 5000;
      
      public static const §_-jn§:Number = 1000;
      
      public static const §_-Y§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-kU§:Number;
      
      public var §_-s9§:Number;
      
      private var §_-7g§:§_-i8§;
      
      private var §_-TC§:Number;
      
      protected var §_-NF§:Number = 1;
      
      private var §_-j§:Sprite;
      
      private var §_-h1§:§_-5p§;
      
      private var §_-53§:§_-rl§;
      
      private var §_-mT§:§_-pX§;
      
      private var §_-Kj§:Number;
      
      private var §_-7Z§:Boolean = false;
      
      private var §_-CO§:Boolean = false;
      
      private var §_-EW§:Boolean = false;
      
      private var §_-Fn§:Number;
      
      private var §_-Hf§:Number = 0;
      
      private var §_-A-§:Number = 0;
      
      private var §_-Hg§:Number = 0;
      
      private var §_-1I§:Number = 1000;
      
      private var §_-gY§:Number;
      
      private var §_-cP§:Number;
      
      private var §_-Pi§:int;
      
      private var §_-7W§:Number = 0;
      
      private var §_-Fs§:Number;
      
      private var §_-7B§:Number;
      
      private var §_-tr§:Number = 0;
      
      private var §_-Rt§:Number = 1;
      
      private var §_-D0§:Number = 0;
      
      private var §_-f3§:b2Vec2;
      
      private var §_-8R§:Number = 1;
      
      public function §_-aX§(param1:§_-pX§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-mT§ = param1;
         this.§_-j§ = param2;
         this.mName = param3;
         this.§_-7g§ = §_-tv§.§get §(this.mName).§_-5D§;
         this.mX = param4;
         this.mY = param5;
         this.§_-kU§ = param4;
         this.§_-s9§ = param5;
         this.§_-TC§ = 0;
         this.§_-7Z§ = false;
         this.§_-CO§ = false;
         this.§_-Hf§ = 0;
         this.§_-9V§();
         this.§_-Fs§ = 0;
      }
      
      public function §_-7i§() : void
      {
         this.§_-7Z§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-j§)
         {
            this.§_-j§.dispose();
            this.§_-j§ = null;
         }
      }
      
      public function §_-Jq§(param1:Number) : void
      {
         if(!this.§_-CO§ || this.§_-7Z§)
         {
            return;
         }
         if(this.§_-NF§ != 0)
         {
            this.§_-Hg§ = 0;
            this.§_-7W§ = 0;
            this.§_-TC§ = 0;
            this.§_-cP§ = 0;
            this.§_-NF§ = 0;
         }
         param1 = Math.min(param1,this.§_-Fn§);
         this.mX += param1 * (this.§_-mT§.mX - this.mX) / this.§_-Fn§;
         this.mY += param1 * (this.§_-mT§.mY - this.mY) / this.§_-Fn§;
         this.mY -= param1 / 50 * (this.§_-Fn§ / §_-7H§);
         this.§_-TC§ += param1 * (360 - this.§_-TC§) / this.§_-Fn§;
         this.§_-Fn§ -= param1;
         if(this.§_-Fn§ <= 0)
         {
            this.mX = this.§_-mT§.mX;
            this.mY = this.§_-mT§.mY;
            this.§_-CO§ = false;
            this.§_-7Z§ = true;
            this.§_-TC§ = 0;
         }
         this.§_-oO§();
      }
      
      public function §_-G6§() : void
      {
         this.§_-CO§ = true;
         this.§_-Fn§ = §_-7H§;
         this.§_-De§(§_-i8§.§_-ic§);
         if(this.§_-7W§ != 0)
         {
            this.mY += this.§_-7W§;
            this.§_-7W§ = 0;
         }
      }
      
      public function §_-uy§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-7Z§ && this.§_-Fs§ >= 0)
         {
            if(this.§_-7B§ > this.§_-mT§.§_-JH§.§_-Ts§.§_-p7§)
            {
               this.§_-Da§(this.§_-mT§.§_-JH§.§_-Ts§.§_-p7§ - this.§_-7B§);
               this.§_-Fs§ = -1;
            }
            this.§_-Fs§ -= param1;
            if(this.§_-Fs§ <= 0)
            {
               if(this.§_-Hg§ > 0)
               {
                  this.§_-Fs§ = this.§_-Hg§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-7B§))
               {
                  _loc2_ = this.§_-mT§.§_-JH§.objects.§_-y4§(this.mX,this.§_-7B§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-Da§(param1 / 100))
                  {
                     this.§_-Fs§ = -1;
                  }
                  else
                  {
                     this.§_-Fs§ = 0;
                  }
               }
               else if(!this.§_-mT§.§_-JH§.objects.§_-Ex§(_loc2_).§_-Pa§)
               {
                  this.§_-EW§ = false;
                  this.§_-Fs§ = -1;
               }
               else if(this.§_-mT§.§_-JH§.objects.§_-Ex§(_loc2_).§_-UO§())
               {
                  this.§_-EW§ = false;
                  this.§_-Fs§ = 2000;
               }
               else
               {
                  this.§_-Fs§ = 500;
               }
            }
         }
      }
      
      public function §_-Da§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-7B§ += param1;
         if(this.§_-7B§ > this.§_-mT§.§_-JH§.§_-Ts§.§_-p7§)
         {
            param1 = this.§_-7B§ - this.§_-mT§.§_-JH§.§_-Ts§.§_-p7§;
            this.mY -= param1;
            this.§_-7B§ -= param1;
            this.§_-oO§();
            return true;
         }
         this.§_-oO§();
         return false;
      }
      
      public function §_-9V§() : void
      {
         var _loc1_:§_-7§ = §_-tv§.§get §(this.mName).shape;
         if(_loc1_.§_-6e§() == §_-7§.§_-DK§)
         {
            this.§_-f3§ = _loc1_.§_-pH§()[0];
            this.§_-Kj§ = _loc1_.§_-3Y§;
         }
         else if(_loc1_.§_-6e§() == §_-7§.§_-YM§)
         {
            this.§_-f3§ = new b2Vec2(0,0);
            this.§_-Kj§ = 1.5;
         }
         this.§_-h1§ = this.§_-mT§.§_-JH§.§_-i1§.§_-8-§(this.mName);
         if(!this.§_-h1§)
         {
            this.§_-WU§(null);
         }
         else
         {
            this.§_-WU§(this.§_-h1§.getFrame(0));
         }
      }
      
      public function §_-WU§(param1:§_-Lf§) : void
      {
         var _loc2_:Texture = null;
         if(!param1)
         {
            _loc2_ = this.§_-mT§.§_-nK§.§_-G9§.§_-3i§();
         }
         else
         {
            _loc2_ = param1.texture;
         }
         if(this.§_-53§)
         {
            this.§_-j§.removeChild(this.§_-53§,true);
            this.§_-53§ = null;
         }
         this.§_-53§ = new §_-rl§(_loc2_);
         if(param1)
         {
            this.§_-53§.x = -param1.pivotX - this.§_-f3§.x / §_-ix§.§_-z8§;
            this.§_-53§.y = -param1.pivotY - this.§_-f3§.y / §_-ix§.§_-z8§;
         }
         else
         {
            this.§_-53§.x = -this.§_-53§.width / 2;
            this.§_-53§.y = -this.§_-53§.height / 2;
         }
         this.§_-j§.addChild(this.§_-53§);
         this.§_-oO§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-uy§(param1);
         if(this.§_-CO§)
         {
            this.§_-Hg§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-Jc§(param1);
            this.§_-dT§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-F3§(param1,param2);
            }
         }
      }
      
      public function §_-Jc§(param1:Number) : void
      {
         if(this.§_-Hf§ > 0)
         {
            this.§_-Hf§ -= param1;
            if(this.§_-Hf§ <= 0)
            {
               this.§_-iS§();
            }
         }
         else if(this.§_-A-§ <= 0 && Math.random() * §_-Vu§ < param1 && this.§_-mT§.mSlingShotState)
         {
            this.§_-J8§();
         }
      }
      
      public function §_-iS§() : void
      {
         this.§_-Hf§ = 0;
         this.§_-WU§(this.§_-h1§.getFrame(0));
      }
      
      public function §_-J8§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-Hf§ = §_-DA§;
         this.§_-WU§(this.§_-h1§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-dT§(param1:Number) : void
      {
         if(this.§_-A-§ > 0)
         {
            this.§_-A-§ -= param1;
            if(this.§_-A-§ <= 0)
            {
               this.§_-EC§();
            }
         }
         else if(this.§_-Hf§ <= 0 && Math.random() * §_-L-§ < param1)
         {
            this.§_-De§();
         }
      }
      
      public function §_-EC§() : void
      {
         this.§_-A-§ = 0;
         this.§_-WU§(this.§_-h1§.getFrame(0));
      }
      
      public function §_-De§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-A-§ > 0)
         {
            this.§_-EC§();
         }
         if(this.§_-Hf§ > 0)
         {
            this.§_-iS§();
         }
         if(param1 < 0)
         {
            param1 = §_-i8§.§_-YP§;
         }
         this.§_-A-§ = §_-D8§;
         this.§_-WU§(this.§_-h1§.getSubAnimation("yell").getFrame(0));
         if(this.§_-7Z§ || this.§_-CO§ || param2)
         {
            §_-lx§.§_-J6§(param1,this.§_-7g§);
         }
         else
         {
            §_-lx§.§_-J6§(param1,this.§_-7g§,§_-yf§);
         }
      }
      
      public function §_-F3§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-Hg§ > 0)
         {
            this.§_-Hg§ -= param1;
            if(this.§_-Hg§ <= 0)
            {
               ++this.§_-Pi§;
               this.§_-cP§ *= 0.4;
               if(!this.§_-7Z§ && this.§_-Pi§ < 2)
               {
                  if(this.§_-Pi§ > 1 && this.§_-cP§ < -1)
                  {
                     this.§_-cP§ = -1;
                  }
                  this.§_-gY§ = this.§_-cP§;
                  this.§_-Hg§ = §_-Y§;
                  this.§_-Hg§ *= Math.abs(this.§_-gY§) / 2;
                  this.§_-1I§ = this.§_-Hg§;
                  this.§_-TC§ = 0;
                  this.§_-NF§ = 0;
               }
               else if(!this.§_-7Z§ && param2)
               {
                  this.§_-My§(2.25);
               }
               else
               {
                  this.§_-Hg§ = 0;
                  this.§_-7W§ = 0;
                  this.§_-TC§ = 0;
                  this.§_-cP§ = 0;
               }
            }
            else
            {
               if(this.§_-Hg§ >= this.§_-1I§ / 2)
               {
                  _loc3_ = (this.§_-1I§ - this.§_-Hg§) / (this.§_-1I§ / 2);
                  _loc3_ = §_-Em§.§_-Pj§(_loc3_);
                  this.§_-7W§ = _loc3_ * this.§_-gY§;
               }
               else
               {
                  _loc3_ = (this.§_-1I§ / 2 - this.§_-Hg§) / (this.§_-1I§ / 2);
                  _loc3_ = §_-Em§.§_-Pj§(_loc3_,false);
                  this.§_-7W§ = this.§_-gY§ + _loc3_ * -this.§_-gY§;
               }
               this.§_-TC§ = 360 * §_-Em§.§_-Pj§((this.§_-1I§ - this.§_-Hg§) / this.§_-1I§) * this.§_-NF§;
            }
            this.§_-oO§();
         }
         else if(Math.random() * §_-jn§ < param1 && !this.§_-7Z§ && !this.§_-CO§ && !this.§_-EW§)
         {
            this.§_-My§();
         }
      }
      
      public function §_-My§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-Pi§ = 0;
         this.§_-Hg§ = §_-Y§;
         this.§_-7W§ = 0;
         this.§_-gY§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-cP§ = this.§_-gY§;
         this.§_-Hg§ *= Math.abs(this.§_-gY§) / 3;
         this.§_-1I§ = this.§_-Hg§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-NF§ = 0;
         }
         else if(this.§_-Hg§ < 350)
         {
            this.§_-NF§ = 0;
         }
         else
         {
            this.§_-NF§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-NF§ = Math.random() > 0.5 ? Number(this.§_-NF§) : Number(0);
         }
      }
      
      public function §_-oO§() : void
      {
         this.§_-j§.x = this.mX / §_-ix§.§_-z8§;
         this.§_-j§.y = (this.mY + this.§_-7W§) / §_-ix§.§_-z8§;
         this.§_-j§.rotation = this.§_-TC§ / 180 * Math.PI;
      }
      
      public function §_-PF§() : void
      {
         this.§_-EW§ = true;
         this.§_-7Z§ = false;
         this.§_-CO§ = false;
         this.§_-Pi§ = 0;
         this.§_-Fs§ = 0;
         this.§_-Hg§ = 0;
         this.§_-7B§ = this.mY + this.§_-tr§ + this.radius;
         this.§_-Hg§ = 0;
         this.§_-7W§ = 0;
         this.§_-TC§ = 0;
         this.§_-cP§ = 0;
         this.§_-NF§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-Kj§ * 1.1)
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
         this.§_-7B§ = this.mY + this.§_-tr§;
         this.§_-Fs§ = 100;
         this.§_-oO§();
         if(_loc3_)
         {
            this.§_-mT§.§_-Qx§();
         }
      }
      
      public function §_-1l§() : §_-rl§
      {
         return this.§_-53§;
      }
      
      public function get §_-Ni§() : Number
      {
         return this.§_-Hg§;
      }
      
      public function get §_-GO§() : Number
      {
         return this.§_-Fs§;
      }
      
      public function set §_-GO§(param1:Number) : void
      {
         this.§_-Fs§ = param1;
      }
      
      public function get §_-pc§() : Number
      {
         return this.§_-Rt§;
      }
      
      public function get §_-16§() : Boolean
      {
         return this.§_-7Z§;
      }
      
      public function get radius() : Number
      {
         return this.§_-Kj§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-j§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-pc§(param1:Number) : void
      {
         this.§_-Rt§ = param1;
      }
      
      public function get §_-3o§() : Number
      {
         return this.§_-D0§;
      }
      
      public function set §_-3o§(param1:Number) : void
      {
         this.§_-D0§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§_-8R§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-8R§ = param1;
      }
   }
}
