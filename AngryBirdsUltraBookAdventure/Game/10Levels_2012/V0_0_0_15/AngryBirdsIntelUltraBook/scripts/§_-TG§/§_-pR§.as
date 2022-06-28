package §_-TG§
{
   import §_-0BH§.§_-0a§;
   import §_-0DG§.§_-09t§;
   import §_-0DG§.§_-a2§;
   import §_-0DG§.§_-sQ§;
   import §_-8d§.§_-J§;
   import §_-8d§.§_-vz§;
   import §_-Yp§.b2Vec2;
   import §_-lt§.§_-eZ§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   
   public class §_-pR§
   {
      
      public static const §_-AA§:String = "ChannelSlingshot";
      
      public static const §_-0DR§:Number = 900;
      
      public static const §_-Og§:Number = 200;
      
      public static const §_-ZG§:Number = 200;
      
      public static const §_-El§:Number = 1500;
      
      public static const §_-VU§:Number = 5000;
      
      public static const §_-yp§:Number = 1000;
      
      public static const §_-E7§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §_-c§:Number;
      
      protected var §_-l1§:Number;
      
      protected var §_-Hf§:Number;
      
      protected var §_-0Bx§:Number;
      
      private var §_-DJ§:§_-a2§;
      
      protected var §_-0Cn§:Number;
      
      protected var §_-xx§:Number = 1;
      
      private var §_-FQ§:Sprite;
      
      protected var §_-0BJ§:§_-J§;
      
      private var §_-0DD§:§_-09b§;
      
      protected var §_-0E3§:§_-E0§;
      
      private var §_-0D4§:Number;
      
      private var §_-093§:Boolean = false;
      
      private var §_-07W§:Boolean = false;
      
      protected var §_-FY§:Boolean = false;
      
      private var §_-03W§:Number;
      
      private var §_-ik§:Number = 0;
      
      private var §_-MT§:Number = 0;
      
      private var §_-1D§:Number = 0;
      
      private var §_-Rb§:Number = 1000;
      
      private var §_-xY§:Number;
      
      private var §_-v2§:Number;
      
      private var §_-x9§:int;
      
      private var §_-Ck§:Number = 0;
      
      protected var §_-Rl§:Number;
      
      protected var §_-0En§:Number;
      
      private var §_-JZ§:Number = 1;
      
      private var §_-03X§:Number = 0;
      
      private var §_-0-d§:b2Vec2;
      
      private var §_-XE§:Number = 1;
      
      public function §_-pR§(param1:§_-E0§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-0E3§ = param1;
         this.§_-FQ§ = param2;
         this.mName = param3;
         this.§_-DJ§ = §_-09t§.§_-yf§(this.mName).§_-jf§;
         this.§_-c§ = param4;
         this.§_-l1§ = param5;
         this.§_-Hf§ = param4;
         this.§_-0Bx§ = param5;
         this.§_-0Cn§ = 0;
         this.§_-093§ = false;
         this.§_-07W§ = false;
         this.§_-ik§ = 0;
         this.§_-xt§();
         this.§_-Rl§ = 0;
      }
      
      public function §_-0A4§() : void
      {
         this.§_-093§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-FQ§)
         {
            this.§_-FQ§.dispose();
            this.§_-FQ§ = null;
         }
      }
      
      public function §_-U§(param1:Number) : void
      {
         if(!this.§_-07W§ || this.§_-093§)
         {
            return;
         }
         if(this.§_-xx§ != 0)
         {
            this.§_-1D§ = 0;
            this.§_-Ck§ = 0;
            this.§_-0Cn§ = 0;
            this.§_-v2§ = 0;
            this.§_-xx§ = 0;
         }
         param1 = Math.min(param1,this.§_-03W§);
         this.§_-c§ += param1 * (this.§_-0E3§.§_-c§ - this.§_-c§) / this.§_-03W§;
         this.§_-l1§ += param1 * (this.§_-0E3§.§_-l1§ - this.§_-l1§) / this.§_-03W§;
         this.§_-l1§ -= param1 / 50 * (this.§_-03W§ / §_-0DR§);
         this.§_-0Cn§ += param1 * (360 - this.§_-0Cn§) / this.§_-03W§;
         this.§_-03W§ -= param1;
         if(this.§_-03W§ <= 0)
         {
            this.§_-c§ = this.§_-0E3§.§_-c§;
            this.§_-l1§ = this.§_-0E3§.§_-l1§;
            this.§_-07W§ = false;
            this.§_-093§ = true;
            this.§_-0Cn§ = 0;
         }
         this.§_-Hr§();
      }
      
      public function §_-dI§() : void
      {
         this.§_-07W§ = true;
         this.§_-03W§ = §_-0DR§;
         this.§_-G5§(§_-a2§.§_-jI§);
         if(this.§_-Ck§ != 0)
         {
            this.§_-l1§ += this.§_-Ck§;
            this.§_-Ck§ = 0;
         }
      }
      
      public function §_-aT§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-093§ && this.§_-Rl§ >= 0)
         {
            if(this.§_-0En§ > this.§_-0E3§.§_-6A§.§_-Uv§.§_-GV§)
            {
               this.§_-0Ct§(this.§_-0E3§.§_-6A§.§_-Uv§.§_-GV§ - this.§_-0En§);
               this.§_-Rl§ = -1;
            }
            this.§_-Rl§ -= param1;
            if(this.§_-Rl§ <= 0)
            {
               if(this.§_-1D§ > 0)
               {
                  this.§_-Rl§ = this.§_-1D§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-0En§))
               {
                  _loc2_ = this.§_-0E3§.§_-6A§.objects.§_-1X§(this.§_-c§,this.§_-0En§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-0Ct§(param1 / 100))
                  {
                     this.§_-Rl§ = -1;
                  }
                  else
                  {
                     this.§_-Rl§ = 0;
                  }
               }
               else if(!this.§_-0E3§.§_-6A§.objects.§_-086§(_loc2_).§_-0Cj§)
               {
                  this.§_-FY§ = false;
                  this.§_-Rl§ = -1;
               }
               else if(this.§_-0E3§.§_-6A§.objects.§_-086§(_loc2_).§_-01F§())
               {
                  this.§_-FY§ = false;
                  this.§_-Rl§ = 2000;
               }
               else
               {
                  this.§_-Rl§ = 500;
               }
            }
         }
      }
      
      public function §_-0Ct§(param1:Number) : Boolean
      {
         this.§_-l1§ += param1;
         this.§_-0En§ += param1;
         if(this.§_-0En§ > this.§_-0E3§.§_-6A§.§_-Uv§.§_-GV§)
         {
            param1 = this.§_-0En§ - this.§_-0E3§.§_-6A§.§_-Uv§.§_-GV§;
            this.§_-l1§ -= param1;
            this.§_-0En§ -= param1;
            this.§_-Hr§();
            return true;
         }
         this.§_-Hr§();
         return false;
      }
      
      public function §_-xt§() : void
      {
         var _loc1_:§_-sQ§ = §_-09t§.§_-yf§(this.mName).shape;
         if(_loc1_.§_-0AK§() == §_-sQ§.§_-WD§)
         {
            this.§_-0-d§ = _loc1_.§_-J2§()[0];
            this.§_-0D4§ = _loc1_.§_-ux§;
         }
         else if(_loc1_.§_-0AK§() == §_-sQ§.§_-2b§)
         {
            this.§_-0-d§ = new b2Vec2(0,0);
            this.§_-0D4§ = 1.5;
         }
         this.§_-0BJ§ = this.§_-0E3§.§_-6A§.animationManager.getAnimation(this.mName);
         if(!this.§_-0BJ§)
         {
            this.§_-00Q§(null);
         }
         else
         {
            this.§_-00Q§(this.§_-0BJ§.getFrame(0));
         }
      }
      
      public function §_-00Q§(param1:§_-vz§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§_-0E3§.§_-0AM§.textureManager.§_-Fl§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§_-0DD§ == null)
         {
            this.§_-0DD§ = new §_-09b§(_loc2_);
            this.§_-FQ§.addChild(this.§_-0DD§);
         }
         else
         {
            this.§_-0DD§.texture = _loc2_;
         }
         if(param1)
         {
            this.§_-0DD§.x = -param1.pivotX - this.§_-0-d§.x / §_-00u§.§_-lY§;
            this.§_-0DD§.y = -param1.pivotY - this.§_-0-d§.y / §_-00u§.§_-lY§;
         }
         else
         {
            this.§_-0DD§.x = -this.§_-0DD§.width / 2;
            this.§_-0DD§.y = -this.§_-0DD§.height / 2;
         }
         this.§_-0DD§.scaleX = _loc3_;
         this.§_-0DD§.scaleY = _loc3_;
         this.§_-Hr§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-aT§(param1);
         if(this.§_-07W§)
         {
            this.§_-1D§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-08B§(param1);
            this.§_-FA§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-1i§(param1,param2);
            }
         }
      }
      
      public function §_-08B§(param1:Number) : void
      {
         if(this.§_-ik§ > 0)
         {
            this.§_-ik§ -= param1;
            if(this.§_-ik§ <= 0)
            {
               this.§_-tJ§();
            }
         }
         else if(this.§_-MT§ <= 0 && Math.random() * §_-El§ < param1 && this.§_-0E3§.mSlingShotState)
         {
            this.§_-JL§();
         }
      }
      
      public function §_-tJ§() : void
      {
         this.§_-ik§ = 0;
         this.§_-00Q§(this.§_-0BJ§.getFrame(0));
      }
      
      public function §_-JL§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-ik§ = §_-Og§;
         this.§_-00Q§(this.§_-0BJ§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-FA§(param1:Number) : void
      {
         if(this.§_-MT§ > 0)
         {
            this.§_-MT§ -= param1;
            if(this.§_-MT§ <= 0)
            {
               this.§_-mE§();
            }
         }
         else if(this.§_-ik§ <= 0 && Math.random() * §_-VU§ < param1)
         {
            this.§_-G5§();
         }
      }
      
      public function §_-mE§() : void
      {
         this.§_-MT§ = 0;
         this.§_-00Q§(this.§_-0BJ§.getFrame(0));
      }
      
      public function §_-G5§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-MT§ > 0)
         {
            this.§_-mE§();
         }
         if(this.§_-ik§ > 0)
         {
            this.§_-tJ§();
         }
         if(param1 < 0)
         {
            param1 = §_-a2§.§_-l8§;
         }
         this.§_-MT§ = §_-ZG§;
         this.§_-00Q§(this.§_-0BJ§.getSubAnimation("yell").getFrame(0));
         if(this.§_-093§ || this.§_-07W§ || param2)
         {
            §_-eZ§.§_-7C§(param1,this.§_-DJ§);
         }
         else
         {
            §_-eZ§.§_-7C§(param1,this.§_-DJ§,§_-AA§);
         }
      }
      
      public function §_-1i§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-1D§ > 0)
         {
            this.§_-1D§ -= param1;
            if(this.§_-1D§ <= 0)
            {
               ++this.§_-x9§;
               this.§_-v2§ *= 0.4;
               if(!this.§_-093§ && this.§_-x9§ < 2)
               {
                  if(this.§_-x9§ > 1 && this.§_-v2§ < -1)
                  {
                     this.§_-v2§ = -1;
                  }
                  this.§_-xY§ = this.§_-v2§;
                  this.§_-1D§ = §_-E7§;
                  this.§_-1D§ *= Math.abs(this.§_-xY§) / 2;
                  this.§_-Rb§ = this.§_-1D§;
                  this.§_-0Cn§ = 0;
                  this.§_-xx§ = 0;
               }
               else if(!this.§_-093§ && param2)
               {
                  this.§_-Bq§(2.25);
               }
               else
               {
                  this.§_-1D§ = 0;
                  this.§_-Ck§ = 0;
                  this.§_-0Cn§ = 0;
                  this.§_-v2§ = 0;
               }
            }
            else
            {
               if(this.§_-1D§ >= this.§_-Rb§ / 2)
               {
                  _loc3_ = (this.§_-Rb§ - this.§_-1D§) / (this.§_-Rb§ / 2);
                  _loc3_ = §_-0a§.§_-0Ay§(_loc3_);
                  this.§_-Ck§ = _loc3_ * this.§_-xY§;
               }
               else
               {
                  _loc3_ = (this.§_-Rb§ / 2 - this.§_-1D§) / (this.§_-Rb§ / 2);
                  _loc3_ = §_-0a§.§_-0Ay§(_loc3_,false);
                  this.§_-Ck§ = this.§_-xY§ + _loc3_ * -this.§_-xY§;
               }
               this.§_-0Cn§ = 360 * §_-0a§.§_-0Ay§((this.§_-Rb§ - this.§_-1D§) / this.§_-Rb§) * this.§_-xx§;
            }
            this.§_-Hr§();
         }
         else if(Math.random() * §_-yp§ < param1 && !this.§_-093§ && !this.§_-07W§ && !this.§_-FY§)
         {
            this.§_-Bq§();
         }
      }
      
      public function §_-Bq§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-x9§ = 0;
         this.§_-1D§ = §_-E7§;
         this.§_-Ck§ = 0;
         this.§_-xY§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-v2§ = this.§_-xY§;
         this.§_-1D§ *= Math.abs(this.§_-xY§) / 3;
         this.§_-Rb§ = this.§_-1D§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-xx§ = 0;
         }
         else if(this.§_-1D§ < 350)
         {
            this.§_-xx§ = 0;
         }
         else
         {
            this.§_-xx§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-xx§ = Math.random() > 0.5 ? Number(this.§_-xx§) : Number(0);
         }
      }
      
      public function §_-Hr§() : void
      {
         this.§_-FQ§.x = this.§_-c§ / §_-00u§.§_-lY§;
         this.§_-FQ§.y = (this.§_-l1§ + this.§_-Ck§) / §_-00u§.§_-lY§;
         this.§_-FQ§.rotation = this.§_-0Cn§ / 180 * Math.PI;
      }
      
      public function §_-D4§() : void
      {
         this.§_-FY§ = true;
         this.§_-093§ = false;
         this.§_-07W§ = false;
         this.§_-x9§ = 0;
         this.§_-Rl§ = 0;
         this.§_-1D§ = 0;
         this.§_-1D§ = 0;
         this.§_-Ck§ = 0;
         this.§_-0Cn§ = 0;
         this.§_-v2§ = 0;
         this.§_-xx§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§_-c§) * (param1 - this.§_-c§) + (param2 - this.§_-l1§) * (param2 - this.§_-l1§));
         if(_loc3_ <= this.§_-0D4§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§_-c§ >= param3 && this.§_-c§ <= param4 && this.§_-l1§ >= param1 && this.§_-l1§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§_-c§ != param1 || this.§_-l1§ != param2)
         {
            _loc3_ = true;
         }
         this.§_-c§ = param1;
         this.§_-l1§ = param2;
         this.§_-Rl§ = 100;
         this.§_-Hr§();
         if(_loc3_)
         {
            this.§_-0E3§.§_-Lo§();
         }
      }
      
      public function §_-BJ§() : §_-09b§
      {
         return this.§_-0DD§;
      }
      
      public function get §import§() : Number
      {
         return this.§_-1D§;
      }
      
      public function get §_-DV§() : Number
      {
         return this.§_-Rl§;
      }
      
      public function set §_-DV§(param1:Number) : void
      {
         this.§_-Rl§ = param1;
      }
      
      public function get §_-IX§() : Number
      {
         return this.§_-JZ§;
      }
      
      public function get §_-1l§() : Boolean
      {
         return this.§_-093§;
      }
      
      public function get radius() : Number
      {
         return this.§_-0D4§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-IX§(param1:Number) : void
      {
         this.§_-JZ§ = param1;
      }
      
      public function get §_-PV§() : Number
      {
         return this.§_-03X§;
      }
      
      public function set §_-PV§(param1:Number) : void
      {
         this.§_-03X§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§_-XE§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-XE§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function get §_-vT§() : Number
      {
         return this.§_-Hf§;
      }
      
      public function get §_-05n§() : Number
      {
         return this.§_-0Bx§;
      }
   }
}
