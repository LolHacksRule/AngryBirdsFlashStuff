package §_-rp§
{
   import §_-1P§.§_-XN§;
   import §_-1P§.§_-uT§;
   import §_-9z§.b2Vec2;
   import §_-H2§.§_-Z§;
   import §_-H2§.§_-fm§;
   import §_-H2§.§_-i7§;
   import §_-RG§.§_-bT§;
   import §_-S4§.Texture;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import §_-u§.§_-5Q§;
   
   public class §_-cl§
   {
      
      public static const §_-B9§:String = "ChannelSlingshot";
      
      public static const §_-P6§:Number = 1200;
      
      public static const §_-Dk§:Number = 200;
      
      public static const §_-aH§:Number = 200;
      
      public static const §_-Ow§:Number = 1500;
      
      public static const §_-eI§:Number = 5000;
      
      public static const §_-L6§:Number = 1000;
      
      public static const §null §:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-T1§:Number;
      
      public var §_-1E§:Number;
      
      private var §_-NT§:§_-i7§;
      
      private var §_-5-§:Number;
      
      protected var §_-aG§:Number = 1;
      
      private var §_-C8§:Sprite;
      
      private var §_-MD§:§_-uT§;
      
      private var §_-XR§:§_-gY§;
      
      private var §_-M6§:§_-BF§;
      
      private var §_-ok§:Number;
      
      private var §_-9G§:Boolean = false;
      
      private var §_-OT§:Boolean = false;
      
      private var §_-G§:Number;
      
      private var §_-dn§:Number = 0;
      
      private var §_-2P§:Number = 0;
      
      private var §_-cB§:Number = 0;
      
      private var §_-eq§:Number = 1000;
      
      private var §_-nH§:Number;
      
      private var §_-Rh§:Number;
      
      private var §_-dY§:int;
      
      private var §_-Vq§:Number = 0;
      
      private var §_-Ww§:Number;
      
      private var §_-Bo§:Number;
      
      private var §_-1I§:Number = 0;
      
      private var §_-mq§:Number = 1;
      
      private var §_-cU§:b2Vec2;
      
      public function §_-cl§(param1:§_-BF§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-M6§ = param1;
         this.§_-C8§ = param2;
         this.mName = param3;
         this.§_-NT§ = §_-Z§.§_-5d§(this.mName).§_-FB§;
         this.mX = param4;
         this.mY = param5;
         this.§_-T1§ = param4;
         this.§_-1E§ = param5;
         this.§_-5-§ = 0;
         this.§_-9G§ = false;
         this.§_-OT§ = false;
         this.§_-dn§ = 0;
         this.§_-cm§();
         this.§_-Ww§ = 0;
      }
      
      public function §_-co§() : void
      {
         this.§_-9G§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-C8§)
         {
            this.§_-C8§.dispose();
            this.§_-C8§ = null;
         }
      }
      
      public function §_-2z§(param1:Number) : void
      {
         if(!this.§_-OT§ || this.§_-9G§)
         {
            return;
         }
         if(this.§_-aG§ != 0)
         {
            this.§_-cB§ = 0;
            this.§_-Vq§ = 0;
            this.§_-5-§ = 0;
            this.§_-Rh§ = 0;
            this.§_-aG§ = 0;
         }
         param1 = Math.min(param1,this.§_-G§);
         this.mX += param1 * (this.§_-M6§.mX - this.mX) / this.§_-G§;
         this.mY += param1 * (this.§_-M6§.mY - this.mY) / this.§_-G§;
         this.mY -= param1 / 50 * (this.§_-G§ / §_-P6§);
         this.§_-5-§ += param1 * (360 - this.§_-5-§) / this.§_-G§;
         this.§_-G§ -= param1;
         if(this.§_-G§ <= 0)
         {
            this.mX = this.§_-M6§.mX;
            this.mY = this.§_-M6§.mY;
            this.§_-OT§ = false;
            this.§_-9G§ = true;
            this.§_-5-§ = 0;
         }
         this.§_-2s§();
      }
      
      public function §_-Sl§() : void
      {
         this.§_-OT§ = true;
         this.§_-G§ = §_-P6§;
         this.§_-SV§(§_-i7§.§_-Yh§);
         if(this.§_-Vq§ != 0)
         {
            this.mY += this.§_-Vq§;
            this.§_-Vq§ = 0;
         }
      }
      
      public function §_-U§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-9G§ && this.§_-Ww§ >= 0)
         {
            if(this.§_-Bo§ > this.§_-M6§.§_-fE§.§_-tB§.§_-JX§)
            {
               this.§_-W1§(this.§_-M6§.§_-fE§.§_-tB§.§_-JX§ - this.§_-Bo§);
               this.§_-Ww§ = -1;
            }
            this.§_-Ww§ -= param1;
            if(this.§_-Ww§ <= 0)
            {
               if(this.§_-cB§ > 0)
               {
                  this.§_-Ww§ = this.§_-cB§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-Bo§))
               {
                  _loc2_ = this.§_-M6§.§_-fE§.mLevelObjects.§_-kY§(this.mX,this.§_-Bo§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-W1§(param1 / 100))
                  {
                     this.§_-Ww§ = -1;
                  }
                  else
                  {
                     this.§_-Ww§ = 0;
                  }
               }
               else if(!this.§_-M6§.§_-fE§.mLevelObjects.getObject(_loc2_).§_-oJ§)
               {
                  this.§_-Ww§ = -1;
               }
               else if(this.§_-M6§.§_-fE§.mLevelObjects.getObject(_loc2_).§_-Vm§())
               {
                  this.§_-Ww§ = 2000;
               }
               else
               {
                  this.§_-Ww§ = 500;
               }
            }
         }
      }
      
      public function §_-W1§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-Bo§ += param1;
         if(this.§_-Bo§ > this.§_-M6§.§_-fE§.§_-tB§.§_-JX§)
         {
            param1 = this.§_-Bo§ - this.§_-M6§.§_-fE§.§_-tB§.§_-JX§;
            this.mY -= param1;
            this.§_-Bo§ -= param1;
            this.§_-2s§();
            return true;
         }
         this.§_-2s§();
         return false;
      }
      
      public function §_-cm§() : void
      {
         var _loc1_:§_-fm§ = §_-Z§.§_-5d§(this.mName).shape;
         if(_loc1_.§_-6L§() == §_-fm§.§_-qq§)
         {
            this.§_-cU§ = _loc1_.§_-Py§()[0];
            this.§_-ok§ = _loc1_.§_-Fy§;
         }
         else if(_loc1_.§_-6L§() == §_-fm§.§_-fi§)
         {
            this.§_-cU§ = new b2Vec2(0,0);
            this.§_-ok§ = 1.5;
         }
         this.§_-MD§ = this.§_-M6§.§_-fE§.§_-hF§.§_-9B§(this.mName);
         if(!this.§_-MD§)
         {
            this.§_-MJ§(null);
         }
         else
         {
            this.§_-MJ§(this.§_-MD§.getFrame(0));
         }
      }
      
      public function §_-MJ§(param1:§_-XN§) : void
      {
         var _loc2_:Texture = null;
         if(!param1)
         {
            _loc2_ = this.§_-M6§.§_-2U§.§_-2I§.§_-WG§();
         }
         else
         {
            _loc2_ = param1.texture;
         }
         if(this.§_-XR§)
         {
            this.§_-C8§.removeChild(this.§_-XR§,true);
            this.§_-XR§ = null;
         }
         this.§_-XR§ = new §_-gY§(_loc2_);
         if(param1)
         {
            this.§_-XR§.x = -param1.pivotX - this.§_-cU§.x / §_-c5§.§_-Wa§;
            this.§_-XR§.y = -param1.pivotY - this.§_-cU§.y / §_-c5§.§_-Wa§;
         }
         else
         {
            this.§_-XR§.x = -this.§_-XR§.width / 2;
            this.§_-XR§.y = -this.§_-XR§.height / 2;
         }
         this.§_-C8§.addChild(this.§_-XR§);
         this.§_-2s§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-U§(param1);
         if(this.§_-OT§)
         {
            this.§_-cB§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-nV§(param1);
            this.§_-Cx§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§import§(param1,param2);
            }
         }
      }
      
      public function §_-nV§(param1:Number) : void
      {
         if(this.§_-dn§ > 0)
         {
            this.§_-dn§ -= param1;
            if(this.§_-dn§ <= 0)
            {
               this.§_-ba§();
            }
         }
         else if(this.§_-2P§ <= 0 && Math.random() * §_-Ow§ < param1 && this.§_-M6§.mSlingShotState)
         {
            this.§_-rz§();
         }
      }
      
      public function §_-ba§() : void
      {
         this.§_-dn§ = 0;
         this.§_-MJ§(this.§_-MD§.getFrame(0));
      }
      
      public function §_-rz§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-dn§ = §_-Dk§;
         this.§_-MJ§(this.§_-MD§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-Cx§(param1:Number) : void
      {
         if(this.§_-2P§ > 0)
         {
            this.§_-2P§ -= param1;
            if(this.§_-2P§ <= 0)
            {
               this.§_-kU§();
            }
         }
         else if(this.§_-dn§ <= 0 && Math.random() * §_-eI§ < param1)
         {
            this.§_-SV§();
         }
      }
      
      public function §_-kU§() : void
      {
         this.§_-2P§ = 0;
         this.§_-MJ§(this.§_-MD§.getFrame(0));
      }
      
      public function §_-SV§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-2P§ > 0)
         {
            this.§_-kU§();
         }
         if(this.§_-dn§ > 0)
         {
            this.§_-ba§();
         }
         if(param1 < 0)
         {
            param1 = §_-i7§.§_-jk§;
         }
         this.§_-2P§ = §_-aH§;
         this.§_-MJ§(this.§_-MD§.getSubAnimation("yell").getFrame(0));
         if(this.§_-9G§ || this.§_-OT§ || param2)
         {
            §_-5Q§.§_-Mo§(param1,this.§_-NT§);
         }
         else
         {
            §_-5Q§.§_-Mo§(param1,this.§_-NT§,§_-B9§);
         }
      }
      
      public function §import§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-cB§ > 0)
         {
            this.§_-cB§ -= param1;
            if(this.§_-cB§ <= 0)
            {
               ++this.§_-dY§;
               this.§_-Rh§ *= 0.4;
               if(!this.§_-9G§ && this.§_-dY§ < 2)
               {
                  if(this.§_-dY§ > 1 && this.§_-Rh§ < -1)
                  {
                     this.§_-Rh§ = -1;
                  }
                  this.§_-nH§ = this.§_-Rh§;
                  this.§_-cB§ = §null §;
                  this.§_-cB§ *= Math.abs(this.§_-nH§) / 2;
                  this.§_-eq§ = this.§_-cB§;
                  this.§_-5-§ = 0;
                  this.§_-aG§ = 0;
               }
               else if(!this.§_-9G§ && param2)
               {
                  this.§_-Kq§(2.25);
               }
               else
               {
                  this.§_-cB§ = 0;
                  this.§_-Vq§ = 0;
                  this.§_-5-§ = 0;
                  this.§_-Rh§ = 0;
               }
            }
            else
            {
               if(this.§_-cB§ >= this.§_-eq§ / 2)
               {
                  _loc3_ = (this.§_-eq§ - this.§_-cB§) / (this.§_-eq§ / 2);
                  _loc3_ = §_-bT§.§_-p8§(_loc3_);
                  this.§_-Vq§ = _loc3_ * this.§_-nH§;
               }
               else
               {
                  _loc3_ = (this.§_-eq§ / 2 - this.§_-cB§) / (this.§_-eq§ / 2);
                  _loc3_ = §_-bT§.§_-p8§(_loc3_,false);
                  this.§_-Vq§ = this.§_-nH§ + _loc3_ * -this.§_-nH§;
               }
               this.§_-5-§ = 360 * §_-bT§.§_-p8§((this.§_-eq§ - this.§_-cB§) / this.§_-eq§) * this.§_-aG§;
            }
            this.§_-2s§();
         }
         else if(Math.random() * §_-L6§ < param1 && !this.§_-9G§ && !this.§_-OT§)
         {
            this.§_-Kq§();
         }
      }
      
      public function §_-Kq§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-dY§ = 0;
         this.§_-cB§ = §null §;
         this.§_-Vq§ = 0;
         this.§_-nH§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-Rh§ = this.§_-nH§;
         this.§_-cB§ *= Math.abs(this.§_-nH§) / 3;
         this.§_-eq§ = this.§_-cB§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-aG§ = 0;
         }
         else if(this.§_-cB§ < 350)
         {
            this.§_-aG§ = 0;
         }
         else
         {
            this.§_-aG§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-aG§ = Math.random() > 0.5 ? Number(this.§_-aG§) : Number(0);
         }
      }
      
      public function §_-2s§() : void
      {
         this.§_-C8§.x = this.mX / §_-c5§.§_-Wa§;
         this.§_-C8§.y = (this.mY + this.§_-Vq§) / §_-c5§.§_-Wa§;
         this.§_-C8§.rotation = this.§_-5-§ / 180 * Math.PI;
      }
      
      public function §_-bU§() : void
      {
         this.§_-9G§ = false;
         this.§_-OT§ = false;
         this.§_-dY§ = 0;
         this.§_-Ww§ = 0;
         this.§_-cB§ = 0;
         this.§_-Bo§ = this.mY + this.§_-1I§ + this.radius;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-ok§ * 1.1)
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
         this.§_-Bo§ = this.mY + this.§_-1I§;
         this.§_-Ww§ = 100;
         this.§_-2s§();
         if(_loc3_)
         {
            this.§_-M6§.§_-jJ§();
         }
      }
      
      public function §_-7I§() : §_-gY§
      {
         return this.§_-XR§;
      }
      
      public function get §_-3Y§() : Number
      {
         return this.§_-cB§;
      }
      
      public function get §_-Jk§() : Number
      {
         return this.§_-Ww§;
      }
      
      public function set §_-Jk§(param1:Number) : void
      {
         this.§_-Ww§ = param1;
      }
      
      public function get §_-FK§() : Number
      {
         return this.§_-mq§;
      }
      
      public function get §_-BD§() : Boolean
      {
         return this.§_-9G§;
      }
      
      public function get radius() : Number
      {
         return this.§_-ok§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-C8§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
   }
}
