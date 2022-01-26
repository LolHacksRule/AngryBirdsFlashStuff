package §_-0y§
{
   import §_-KS§.§_-3l§;
   import §_-KS§.§_-Wt§;
   import §_-Sp§.§_-JP§;
   import §_-Zl§.b2Vec2;
   import §_-hR§.§_-bJ§;
   import §_-hR§.§_-bZ§;
   import §_-hR§.§_-c§;
   import §_-jY§.Texture;
   import §_-ot§.§_-02§;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   
   public class §_-YK§
   {
      
      public static const §_-or§:String = "ChannelSlingshot";
      
      public static const §_-Z6§:Number = 1200;
      
      public static const §_-R6§:Number = 200;
      
      public static const §_-Hx§:Number = 200;
      
      public static const §_-j§:Number = 1500;
      
      public static const §_-71§:Number = 5000;
      
      public static const §_-pX§:Number = 1000;
      
      public static const §_-3S§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-2u§:Number;
      
      public var §_-1g§:Number;
      
      private var §_-Gk§:§_-c§;
      
      private var §_-Gc§:Number;
      
      protected var §_-m1§:Number = 1;
      
      private var §_-Pj§:Sprite;
      
      private var §_-eV§:§_-3l§;
      
      private var §_-Le§:§_-N§;
      
      private var §_-I0§:§_-ZB§;
      
      private var §_-bN§:Number;
      
      private var §_-m3§:Boolean = false;
      
      private var §_-uY§:Boolean = false;
      
      private var §_-xM§:Number;
      
      private var §_-80§:Number = 0;
      
      private var §_-Q0§:Number = 0;
      
      private var §_-tN§:Number = 0;
      
      private var §_-f3§:Number = 1000;
      
      private var §_-A7§:Number;
      
      private var §_-Gs§:Number;
      
      private var §_-BE§:int;
      
      private var §_-fk§:Number = 0;
      
      private var §_-WF§:Number;
      
      private var §_-vN§:Number;
      
      private var §_-8g§:Number = 0;
      
      private var §_-p0§:Number = 1;
      
      private var §_-q7§:b2Vec2;
      
      public function §_-YK§(param1:§_-ZB§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-I0§ = param1;
         this.§_-Pj§ = param2;
         this.mName = param3;
         this.§_-Gk§ = §_-bJ§.§_-hL§(this.mName).§_-fj§;
         this.mX = param4;
         this.mY = param5;
         this.§_-2u§ = param4;
         this.§_-1g§ = param5;
         this.§_-Gc§ = 0;
         this.§_-m3§ = false;
         this.§_-uY§ = false;
         this.§_-80§ = 0;
         this.§_-10§();
         this.§_-WF§ = 0;
      }
      
      public function §_-II§() : void
      {
         this.§_-m3§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-Pj§)
         {
            this.§_-Pj§.dispose();
            this.§_-Pj§ = null;
         }
      }
      
      public function §_-wx§(param1:Number) : void
      {
         if(!this.§_-uY§ || this.§_-m3§)
         {
            return;
         }
         if(this.§_-m1§ != 0)
         {
            this.§_-tN§ = 0;
            this.§_-fk§ = 0;
            this.§_-Gc§ = 0;
            this.§_-Gs§ = 0;
            this.§_-m1§ = 0;
         }
         param1 = Math.min(param1,this.§_-xM§);
         this.mX += param1 * (this.§_-I0§.mX - this.mX) / this.§_-xM§;
         this.mY += param1 * (this.§_-I0§.mY - this.mY) / this.§_-xM§;
         this.mY -= param1 / 50 * (this.§_-xM§ / §_-Z6§);
         this.§_-Gc§ += param1 * (360 - this.§_-Gc§) / this.§_-xM§;
         this.§_-xM§ -= param1;
         if(this.§_-xM§ <= 0)
         {
            this.mX = this.§_-I0§.mX;
            this.mY = this.§_-I0§.mY;
            this.§_-uY§ = false;
            this.§_-m3§ = true;
            this.§_-Gc§ = 0;
         }
         this.§_-kR§();
      }
      
      public function §_-Z0§() : void
      {
         this.§_-uY§ = true;
         this.§_-xM§ = §_-Z6§;
         this.§_-AO§(§_-c§.§_-tw§);
         if(this.§_-fk§ != 0)
         {
            this.mY += this.§_-fk§;
            this.§_-fk§ = 0;
         }
      }
      
      public function §_-l9§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-m3§ && this.§_-WF§ >= 0)
         {
            if(this.§_-vN§ > this.§_-I0§.§_-Ia§.§_-iZ§.§_-Ab§)
            {
               this.§_-Pc§(this.§_-I0§.§_-Ia§.§_-iZ§.§_-Ab§ - this.§_-vN§);
               this.§_-WF§ = -1;
            }
            this.§_-WF§ -= param1;
            if(this.§_-WF§ <= 0)
            {
               if(this.§_-tN§ > 0)
               {
                  this.§_-WF§ = this.§_-tN§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-vN§))
               {
                  _loc2_ = this.§_-I0§.§_-Ia§.mLevelObjects.§_-Vd§(this.mX,this.§_-vN§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-Pc§(param1 / 100))
                  {
                     this.§_-WF§ = -1;
                  }
                  else
                  {
                     this.§_-WF§ = 0;
                  }
               }
               else if(!this.§_-I0§.§_-Ia§.mLevelObjects.getObject(_loc2_).§_-Yk§)
               {
                  this.§_-WF§ = -1;
               }
               else if(this.§_-I0§.§_-Ia§.mLevelObjects.getObject(_loc2_).§_-LB§())
               {
                  this.§_-WF§ = 2000;
               }
               else
               {
                  this.§_-WF§ = 500;
               }
            }
         }
      }
      
      public function §_-Pc§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-vN§ += param1;
         if(this.§_-vN§ > this.§_-I0§.§_-Ia§.§_-iZ§.§_-Ab§)
         {
            param1 = this.§_-vN§ - this.§_-I0§.§_-Ia§.§_-iZ§.§_-Ab§;
            this.mY -= param1;
            this.§_-vN§ -= param1;
            this.§_-kR§();
            return true;
         }
         this.§_-kR§();
         return false;
      }
      
      public function §_-10§() : void
      {
         var _loc1_:§_-bZ§ = §_-bJ§.§_-hL§(this.mName).shape;
         if(_loc1_.§_-lk§() == §_-bZ§.§_-Wy§)
         {
            this.§_-q7§ = _loc1_.§_-f7§()[0];
            this.§_-bN§ = _loc1_.§_-NR§;
         }
         else if(_loc1_.§_-lk§() == §_-bZ§.§_-WL§)
         {
            this.§_-q7§ = new b2Vec2(0,0);
            this.§_-bN§ = 1.5;
         }
         this.§_-eV§ = this.§_-I0§.§_-Ia§.§_-b5§.§_-bs§(this.mName);
         if(!this.§_-eV§)
         {
            this.§_-Xi§(null);
         }
         else
         {
            this.§_-Xi§(this.§_-eV§.getFrame(0));
         }
      }
      
      public function §_-Xi§(param1:§_-Wt§) : void
      {
         var _loc2_:Texture = null;
         if(!param1)
         {
            _loc2_ = this.§_-I0§.§_-HA§.§_-WT§.§_-O8§();
         }
         else
         {
            _loc2_ = param1.texture;
         }
         if(this.§_-Le§)
         {
            this.§_-Pj§.removeChild(this.§_-Le§,true);
            this.§_-Le§ = null;
         }
         this.§_-Le§ = new §_-N§(_loc2_);
         if(param1)
         {
            this.§_-Le§.x = -param1.pivotX - this.§_-q7§.x / §_-B3§.§_-s8§;
            this.§_-Le§.y = -param1.pivotY - this.§_-q7§.y / §_-B3§.§_-s8§;
         }
         else
         {
            this.§_-Le§.x = -this.§_-Le§.width / 2;
            this.§_-Le§.y = -this.§_-Le§.height / 2;
         }
         this.§_-Pj§.addChild(this.§_-Le§);
         this.§_-kR§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-l9§(param1);
         if(this.§_-uY§)
         {
            this.§_-tN§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-tT§(param1);
            this.§_-mZ§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-HH§(param1,param2);
            }
         }
      }
      
      public function §_-tT§(param1:Number) : void
      {
         if(this.§_-80§ > 0)
         {
            this.§_-80§ -= param1;
            if(this.§_-80§ <= 0)
            {
               this.§_-jI§();
            }
         }
         else if(this.§_-Q0§ <= 0 && Math.random() * §_-j§ < param1 && this.§_-I0§.mSlingShotState)
         {
            this.§_-ZS§();
         }
      }
      
      public function §_-jI§() : void
      {
         this.§_-80§ = 0;
         this.§_-Xi§(this.§_-eV§.getFrame(0));
      }
      
      public function §_-ZS§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-80§ = §_-R6§;
         this.§_-Xi§(this.§_-eV§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-mZ§(param1:Number) : void
      {
         if(this.§_-Q0§ > 0)
         {
            this.§_-Q0§ -= param1;
            if(this.§_-Q0§ <= 0)
            {
               this.§_-Wp§();
            }
         }
         else if(this.§_-80§ <= 0 && Math.random() * §_-71§ < param1)
         {
            this.§_-AO§();
         }
      }
      
      public function §_-Wp§() : void
      {
         this.§_-Q0§ = 0;
         this.§_-Xi§(this.§_-eV§.getFrame(0));
      }
      
      public function §_-AO§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-Q0§ > 0)
         {
            this.§_-Wp§();
         }
         if(this.§_-80§ > 0)
         {
            this.§_-jI§();
         }
         if(param1 < 0)
         {
            param1 = §_-c§.§_-RA§;
         }
         this.§_-Q0§ = §_-Hx§;
         this.§_-Xi§(this.§_-eV§.getSubAnimation("yell").getFrame(0));
         if(this.§_-m3§ || this.§_-uY§ || param2)
         {
            §_-JP§.§_-fs§(param1,this.§_-Gk§);
         }
         else
         {
            §_-JP§.§_-fs§(param1,this.§_-Gk§,§_-or§);
         }
      }
      
      public function §_-HH§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-tN§ > 0)
         {
            this.§_-tN§ -= param1;
            if(this.§_-tN§ <= 0)
            {
               ++this.§_-BE§;
               this.§_-Gs§ *= 0.4;
               if(!this.§_-m3§ && this.§_-BE§ < 2)
               {
                  if(this.§_-BE§ > 1 && this.§_-Gs§ < -1)
                  {
                     this.§_-Gs§ = -1;
                  }
                  this.§_-A7§ = this.§_-Gs§;
                  this.§_-tN§ = §_-3S§;
                  this.§_-tN§ *= Math.abs(this.§_-A7§) / 2;
                  this.§_-f3§ = this.§_-tN§;
                  this.§_-Gc§ = 0;
                  this.§_-m1§ = 0;
               }
               else if(!this.§_-m3§ && param2)
               {
                  this.§_-r6§(2.25);
               }
               else
               {
                  this.§_-tN§ = 0;
                  this.§_-fk§ = 0;
                  this.§_-Gc§ = 0;
                  this.§_-Gs§ = 0;
               }
            }
            else
            {
               if(this.§_-tN§ >= this.§_-f3§ / 2)
               {
                  _loc3_ = (this.§_-f3§ - this.§_-tN§) / (this.§_-f3§ / 2);
                  _loc3_ = §_-02§.§_-Jm§(_loc3_);
                  this.§_-fk§ = _loc3_ * this.§_-A7§;
               }
               else
               {
                  _loc3_ = (this.§_-f3§ / 2 - this.§_-tN§) / (this.§_-f3§ / 2);
                  _loc3_ = §_-02§.§_-Jm§(_loc3_,false);
                  this.§_-fk§ = this.§_-A7§ + _loc3_ * -this.§_-A7§;
               }
               this.§_-Gc§ = 360 * §_-02§.§_-Jm§((this.§_-f3§ - this.§_-tN§) / this.§_-f3§) * this.§_-m1§;
            }
            this.§_-kR§();
         }
         else if(Math.random() * §_-pX§ < param1 && !this.§_-m3§ && !this.§_-uY§)
         {
            this.§_-r6§();
         }
      }
      
      public function §_-r6§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-BE§ = 0;
         this.§_-tN§ = §_-3S§;
         this.§_-fk§ = 0;
         this.§_-A7§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-Gs§ = this.§_-A7§;
         this.§_-tN§ *= Math.abs(this.§_-A7§) / 3;
         this.§_-f3§ = this.§_-tN§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-m1§ = 0;
         }
         else if(this.§_-tN§ < 350)
         {
            this.§_-m1§ = 0;
         }
         else
         {
            this.§_-m1§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-m1§ = Math.random() > 0.5 ? Number(this.§_-m1§) : Number(0);
         }
      }
      
      public function §_-kR§() : void
      {
         this.§_-Pj§.x = this.mX / §_-B3§.§_-s8§;
         this.§_-Pj§.y = (this.mY + this.§_-fk§) / §_-B3§.§_-s8§;
         this.§_-Pj§.rotation = this.§_-Gc§ / 180 * Math.PI;
      }
      
      public function §_-h6§() : void
      {
         this.§_-m3§ = false;
         this.§_-uY§ = false;
         this.§_-BE§ = 0;
         this.§_-WF§ = 0;
         this.§_-tN§ = 0;
         this.§_-vN§ = this.mY + this.§_-8g§ + this.radius;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-bN§ * 1.1)
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
         this.§_-vN§ = this.mY + this.§_-8g§;
         this.§_-WF§ = 100;
         this.§_-kR§();
         if(_loc3_)
         {
            this.§_-I0§.§_-hi§();
         }
      }
      
      public function §throw§() : §_-N§
      {
         return this.§_-Le§;
      }
      
      public function get §_-pP§() : Number
      {
         return this.§_-tN§;
      }
      
      public function get §_-41§() : Number
      {
         return this.§_-WF§;
      }
      
      public function set §_-41§(param1:Number) : void
      {
         this.§_-WF§ = param1;
      }
      
      public function get §_-6r§() : Number
      {
         return this.§_-p0§;
      }
      
      public function get §_-CJ§() : Boolean
      {
         return this.§_-m3§;
      }
      
      public function get radius() : Number
      {
         return this.§_-bN§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Pj§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
   }
}
