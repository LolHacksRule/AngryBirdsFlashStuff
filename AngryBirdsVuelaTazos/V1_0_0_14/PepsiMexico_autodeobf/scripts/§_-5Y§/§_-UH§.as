package §_-5Y§
{
   import §_-4n§.b2Vec2;
   import §_-DQ§.Texture;
   import §_-Eo§.§_-8U§;
   import §_-PC§.§_-ob§;
   import §_-PC§.§_-qH§;
   import §_-WH§.§_-0§;
   import §_-WH§.§_-YE§;
   import §_-WH§.§_-ce§;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   import §_-mj§.§_-GI§;
   
   public class §_-UH§
   {
      
      public static const §_-rV§:String = "ChannelSlingshot";
      
      public static const §_-Ag§:Number = 900;
      
      public static const §_-NA§:Number = 200;
      
      public static const §_-tt§:Number = 200;
      
      public static const §_-hp§:Number = 1500;
      
      public static const §_-Io§:Number = 5000;
      
      public static const §_-Sn§:Number = 1000;
      
      public static const §_-Ow§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-Sl§:Number;
      
      public var §_-td§:Number;
      
      private var §_-UX§:§_-YE§;
      
      private var §_-ny§:Number;
      
      protected var §_-r-§:Number = 1;
      
      private var §_-MT§:Sprite;
      
      private var §_-x0§:§_-ob§;
      
      private var §_-Cb§:§_-Xj§;
      
      private var §_-lB§:§_-GA§;
      
      private var §_-SI§:Number;
      
      private var §_-4g§:Boolean = false;
      
      private var §_-Kd§:Boolean = false;
      
      private var §_-L3§:Number;
      
      private var §_-gU§:Number = 0;
      
      private var §_-SC§:Number = 0;
      
      private var §_-4o§:Number = 0;
      
      private var §_-51§:Number = 1000;
      
      private var §_-Tp§:Number;
      
      private var §_-Ak§:Number;
      
      private var §_-oe§:int;
      
      private var §_-R9§:Number = 0;
      
      private var §_-3f§:Number;
      
      private var §_-nu§:Number;
      
      private var §_-tA§:Number = 0;
      
      private var §_-nn§:Number = 1;
      
      private var §_-zb§:Number = 0;
      
      private var §_-Eu§:b2Vec2;
      
      private var §_-2h§:Number = 1;
      
      public function §_-UH§(param1:§_-GA§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-lB§ = param1;
         this.§_-MT§ = param2;
         this.mName = param3;
         this.§_-UX§ = §_-0§.§_-vN§(this.mName).§_-aa§;
         this.mX = param4;
         this.mY = param5;
         this.§_-Sl§ = param4;
         this.§_-td§ = param5;
         this.§_-ny§ = 0;
         this.§_-4g§ = false;
         this.§_-Kd§ = false;
         this.§_-gU§ = 0;
         this.§_-TF§();
         this.§_-3f§ = 0;
      }
      
      public function §_-fh§() : void
      {
         this.§_-4g§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-MT§)
         {
            this.§_-MT§.dispose();
            this.§_-MT§ = null;
         }
      }
      
      public function §_-kb§(param1:Number) : void
      {
         if(!this.§_-Kd§ || this.§_-4g§)
         {
            return;
         }
         if(this.§_-r-§ != 0)
         {
            this.§_-4o§ = 0;
            this.§_-R9§ = 0;
            this.§_-ny§ = 0;
            this.§_-Ak§ = 0;
            this.§_-r-§ = 0;
         }
         param1 = Math.min(param1,this.§_-L3§);
         this.mX += param1 * (this.§_-lB§.mX - this.mX) / this.§_-L3§;
         this.mY += param1 * (this.§_-lB§.mY - this.mY) / this.§_-L3§;
         this.mY -= param1 / 50 * (this.§_-L3§ / §_-Ag§);
         this.§_-ny§ += param1 * (360 - this.§_-ny§) / this.§_-L3§;
         this.§_-L3§ -= param1;
         if(this.§_-L3§ <= 0)
         {
            this.mX = this.§_-lB§.mX;
            this.mY = this.§_-lB§.mY;
            this.§_-Kd§ = false;
            this.§_-4g§ = true;
            this.§_-ny§ = 0;
         }
         this.§_-32§();
      }
      
      public function §_-jm§() : void
      {
         this.§_-Kd§ = true;
         this.§_-L3§ = §_-Ag§;
         this.§_-0U§(§_-YE§.§_-bk§);
         if(this.§_-R9§ != 0)
         {
            this.mY += this.§_-R9§;
            this.§_-R9§ = 0;
         }
      }
      
      public function §_-Ft§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-4g§ && this.§_-3f§ >= 0)
         {
            if(this.§_-nu§ > this.§_-lB§.§_-Fx§.§_-9W§.§_-8B§)
            {
               this.§_-gq§(this.§_-lB§.§_-Fx§.§_-9W§.§_-8B§ - this.§_-nu§);
               this.§_-3f§ = -1;
            }
            this.§_-3f§ -= param1;
            if(this.§_-3f§ <= 0)
            {
               if(this.§_-4o§ > 0)
               {
                  this.§_-3f§ = this.§_-4o§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-nu§))
               {
                  _loc2_ = this.§_-lB§.§_-Fx§.objects.§_-Ei§(this.mX,this.§_-nu§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-gq§(param1 / 100))
                  {
                     this.§_-3f§ = -1;
                  }
                  else
                  {
                     this.§_-3f§ = 0;
                  }
               }
               else if(!this.§_-lB§.§_-Fx§.objects.getObject(_loc2_).§_-rQ§)
               {
                  this.§_-3f§ = -1;
               }
               else if(this.§_-lB§.§_-Fx§.objects.getObject(_loc2_).§_-bf§())
               {
                  this.§_-3f§ = 2000;
               }
               else
               {
                  this.§_-3f§ = 500;
               }
            }
         }
      }
      
      public function §_-gq§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-nu§ += param1;
         if(this.§_-nu§ > this.§_-lB§.§_-Fx§.§_-9W§.§_-8B§)
         {
            param1 = this.§_-nu§ - this.§_-lB§.§_-Fx§.§_-9W§.§_-8B§;
            this.mY -= param1;
            this.§_-nu§ -= param1;
            this.§_-32§();
            return true;
         }
         this.§_-32§();
         return false;
      }
      
      public function §_-TF§() : void
      {
         var _loc1_:§_-ce§ = §_-0§.§_-vN§(this.mName).shape;
         if(_loc1_.§_-im§() == §_-ce§.§_-kD§)
         {
            this.§_-Eu§ = _loc1_.§_-ag§()[0];
            this.§_-SI§ = _loc1_.§_-U0§;
         }
         else if(_loc1_.§_-im§() == §_-ce§.§_-73§)
         {
            this.§_-Eu§ = new b2Vec2(0,0);
            this.§_-SI§ = 1.5;
         }
         this.§_-x0§ = this.§_-lB§.§_-Fx§.§_-9l§.§_-CT§(this.mName);
         if(!this.§_-x0§)
         {
            this.§_-31§(null);
         }
         else
         {
            this.§_-31§(this.§_-x0§.getFrame(0));
         }
      }
      
      public function §_-31§(param1:§_-qH§) : void
      {
         var _loc2_:Texture = null;
         if(!param1)
         {
            _loc2_ = this.§_-lB§.§_-qI§.§_-Ly§.§_-hd§();
         }
         else
         {
            _loc2_ = param1.texture;
         }
         if(this.§_-Cb§)
         {
            this.§_-MT§.removeChild(this.§_-Cb§,true);
            this.§_-Cb§ = null;
         }
         this.§_-Cb§ = new §_-Xj§(_loc2_);
         if(param1)
         {
            this.§_-Cb§.x = -param1.pivotX - this.§_-Eu§.x / §_-yw§.§_-rO§;
            this.§_-Cb§.y = -param1.pivotY - this.§_-Eu§.y / §_-yw§.§_-rO§;
         }
         else
         {
            this.§_-Cb§.x = -this.§_-Cb§.width / 2;
            this.§_-Cb§.y = -this.§_-Cb§.height / 2;
         }
         this.§_-MT§.addChild(this.§_-Cb§);
         this.§_-32§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-Ft§(param1);
         if(this.§_-Kd§)
         {
            this.§_-4o§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-jn§(param1);
            this.§_-RN§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-S4§(param1,param2);
            }
         }
      }
      
      public function §_-jn§(param1:Number) : void
      {
         if(this.§_-gU§ > 0)
         {
            this.§_-gU§ -= param1;
            if(this.§_-gU§ <= 0)
            {
               this.§_-3y§();
            }
         }
         else if(this.§_-SC§ <= 0 && Math.random() * §_-hp§ < param1 && this.§_-lB§.mSlingShotState)
         {
            this.§_-z4§();
         }
      }
      
      public function §_-3y§() : void
      {
         this.§_-gU§ = 0;
         this.§_-31§(this.§_-x0§.getFrame(0));
      }
      
      public function §_-z4§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-gU§ = §_-NA§;
         this.§_-31§(this.§_-x0§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-RN§(param1:Number) : void
      {
         if(this.§_-SC§ > 0)
         {
            this.§_-SC§ -= param1;
            if(this.§_-SC§ <= 0)
            {
               this.§_-WS§();
            }
         }
         else if(this.§_-gU§ <= 0 && Math.random() * §_-Io§ < param1)
         {
            this.§_-0U§();
         }
      }
      
      public function §_-WS§() : void
      {
         this.§_-SC§ = 0;
         this.§_-31§(this.§_-x0§.getFrame(0));
      }
      
      public function §_-0U§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-SC§ > 0)
         {
            this.§_-WS§();
         }
         if(this.§_-gU§ > 0)
         {
            this.§_-3y§();
         }
         if(param1 < 0)
         {
            param1 = §_-YE§.§_-De§;
         }
         this.§_-SC§ = §_-tt§;
         this.§_-31§(this.§_-x0§.getSubAnimation("yell").getFrame(0));
         if(this.§_-4g§ || this.§_-Kd§ || param2)
         {
            §_-GI§.§_-i2§(param1,this.§_-UX§);
         }
         else
         {
            §_-GI§.§_-i2§(param1,this.§_-UX§,§_-rV§);
         }
      }
      
      public function §_-S4§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-4o§ > 0)
         {
            this.§_-4o§ -= param1;
            if(this.§_-4o§ <= 0)
            {
               ++this.§_-oe§;
               this.§_-Ak§ *= 0.4;
               if(!this.§_-4g§ && this.§_-oe§ < 2)
               {
                  if(this.§_-oe§ > 1 && this.§_-Ak§ < -1)
                  {
                     this.§_-Ak§ = -1;
                  }
                  this.§_-Tp§ = this.§_-Ak§;
                  this.§_-4o§ = §_-Ow§;
                  this.§_-4o§ *= Math.abs(this.§_-Tp§) / 2;
                  this.§_-51§ = this.§_-4o§;
                  this.§_-ny§ = 0;
                  this.§_-r-§ = 0;
               }
               else if(!this.§_-4g§ && param2)
               {
                  this.§_-qz§(2.25);
               }
               else
               {
                  this.§_-4o§ = 0;
                  this.§_-R9§ = 0;
                  this.§_-ny§ = 0;
                  this.§_-Ak§ = 0;
               }
            }
            else
            {
               if(this.§_-4o§ >= this.§_-51§ / 2)
               {
                  _loc3_ = (this.§_-51§ - this.§_-4o§) / (this.§_-51§ / 2);
                  _loc3_ = §_-8U§.§_-aX§(_loc3_);
                  this.§_-R9§ = _loc3_ * this.§_-Tp§;
               }
               else
               {
                  _loc3_ = (this.§_-51§ / 2 - this.§_-4o§) / (this.§_-51§ / 2);
                  _loc3_ = §_-8U§.§_-aX§(_loc3_,false);
                  this.§_-R9§ = this.§_-Tp§ + _loc3_ * -this.§_-Tp§;
               }
               this.§_-ny§ = 360 * §_-8U§.§_-aX§((this.§_-51§ - this.§_-4o§) / this.§_-51§) * this.§_-r-§;
            }
            this.§_-32§();
         }
         else if(Math.random() * §_-Sn§ < param1 && !this.§_-4g§ && !this.§_-Kd§)
         {
            this.§_-qz§();
         }
      }
      
      public function §_-qz§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-oe§ = 0;
         this.§_-4o§ = §_-Ow§;
         this.§_-R9§ = 0;
         this.§_-Tp§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-Ak§ = this.§_-Tp§;
         this.§_-4o§ *= Math.abs(this.§_-Tp§) / 3;
         this.§_-51§ = this.§_-4o§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-r-§ = 0;
         }
         else if(this.§_-4o§ < 350)
         {
            this.§_-r-§ = 0;
         }
         else
         {
            this.§_-r-§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-r-§ = Math.random() > 0.5 ? Number(this.§_-r-§) : Number(0);
         }
      }
      
      public function §_-32§() : void
      {
         this.§_-MT§.x = this.mX / §_-yw§.§_-rO§;
         this.§_-MT§.y = (this.mY + this.§_-R9§) / §_-yw§.§_-rO§;
         this.§_-MT§.rotation = this.§_-ny§ / 180 * Math.PI;
      }
      
      public function §_-7J§() : void
      {
         this.§_-4g§ = false;
         this.§_-Kd§ = false;
         this.§_-oe§ = 0;
         this.§_-3f§ = 0;
         this.§_-4o§ = 0;
         this.§_-nu§ = this.mY + this.§_-tA§ + this.radius;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-SI§ * 1.1)
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
         this.§_-nu§ = this.mY + this.§_-tA§;
         this.§_-3f§ = 100;
         this.§_-32§();
         if(_loc3_)
         {
            this.§_-lB§.§_-YQ§();
         }
      }
      
      public function §if§() : §_-Xj§
      {
         return this.§_-Cb§;
      }
      
      public function get §_-T§() : Number
      {
         return this.§_-4o§;
      }
      
      public function get §_-YO§() : Number
      {
         return this.§_-3f§;
      }
      
      public function set §_-YO§(param1:Number) : void
      {
         this.§_-3f§ = param1;
      }
      
      public function get §_-OD§() : Number
      {
         return this.§_-nn§;
      }
      
      public function get §_-PJ§() : Boolean
      {
         return this.§_-4g§;
      }
      
      public function get radius() : Number
      {
         return this.§_-SI§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-MT§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-OD§(param1:Number) : void
      {
         this.§_-nn§ = param1;
      }
      
      public function get §_-Tk§() : Number
      {
         return this.§_-zb§;
      }
      
      public function set §_-Tk§(param1:Number) : void
      {
         this.§_-zb§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§_-2h§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-2h§ = param1;
      }
   }
}
