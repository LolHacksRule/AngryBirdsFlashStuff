package §_-ez§
{
   import §_-B7§.§_-TP§;
   import §_-B7§.§_-cO§;
   import §_-B7§.§_-pl§;
   import §_-Bp§.§_-9c§;
   import §_-Bp§.§_-wQ§;
   import §_-Q2§.Texture;
   import §_-ST§.§_-fK§;
   import §_-ZG§.§_-3J§;
   import §_-dx§.b2Vec2;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   
   public class §_-7m§
   {
      
      public static const §_-ge§:String = "ChannelSlingshot";
      
      public static const §_-w3§:Number = 1200;
      
      public static const §_-1R§:Number = 200;
      
      public static const §_-92§:Number = 200;
      
      public static const §_-6x§:Number = 1500;
      
      public static const §_-QG§:Number = 5000;
      
      public static const §_-Wk§:Number = 1000;
      
      public static const §_-KY§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-ER§:Number;
      
      public var §_-lN§:Number;
      
      private var §_-97§:§_-TP§;
      
      private var §_-AM§:Number;
      
      protected var §_-DL§:Number = 1;
      
      private var §_-0O§:Sprite;
      
      private var §_-3i§:§_-wQ§;
      
      private var §_-9r§:§_-OW§;
      
      private var §_-HN§:§_-nt§;
      
      private var §_-sK§:Number;
      
      private var §_-oc§:Boolean = false;
      
      private var §_-h9§:Boolean = false;
      
      private var §_-wr§:Number;
      
      private var §_-Np§:Number = 0;
      
      private var §_-Iv§:Number = 0;
      
      private var §_-Rv§:Number = 0;
      
      private var §_-2P§:Number = 1000;
      
      private var §_-Bc§:Number;
      
      private var §_-wt§:Number;
      
      private var §_-mo§:int;
      
      private var §_-Pw§:Number = 0;
      
      private var §_-Dj§:Number;
      
      private var §_-eo§:Number;
      
      private var §_-31§:Number = 0;
      
      private var §_-Ry§:Number = 1;
      
      private var §_-fI§:b2Vec2;
      
      public function §_-7m§(param1:§_-nt§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§_-HN§ = param1;
         this.§_-0O§ = param2;
         this.mName = param3;
         this.§_-97§ = §_-cO§.§_-9y§(this.mName).§_-Rn§;
         this.mX = param4;
         this.mY = param5;
         this.§_-ER§ = param4;
         this.§_-lN§ = param5;
         this.§_-AM§ = 0;
         this.§_-oc§ = false;
         this.§_-h9§ = false;
         this.§_-Np§ = 0;
         this.§_-Mq§();
         this.§_-Dj§ = 0;
      }
      
      public function §_-qd§() : void
      {
         this.§_-oc§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§_-0O§)
         {
            this.§_-0O§.dispose();
            this.§_-0O§ = null;
         }
      }
      
      public function §_-jb§(param1:Number) : void
      {
         if(!this.§_-h9§ || this.§_-oc§)
         {
            return;
         }
         if(this.§_-DL§ != 0)
         {
            this.§_-Rv§ = 0;
            this.§_-Pw§ = 0;
            this.§_-AM§ = 0;
            this.§_-wt§ = 0;
            this.§_-DL§ = 0;
         }
         param1 = Math.min(param1,this.§_-wr§);
         this.mX += param1 * (this.§_-HN§.mX - this.mX) / this.§_-wr§;
         this.mY += param1 * (this.§_-HN§.mY - this.mY) / this.§_-wr§;
         this.mY -= param1 / 50 * (this.§_-wr§ / §_-w3§);
         this.§_-AM§ += param1 * (360 - this.§_-AM§) / this.§_-wr§;
         this.§_-wr§ -= param1;
         if(this.§_-wr§ <= 0)
         {
            this.mX = this.§_-HN§.mX;
            this.mY = this.§_-HN§.mY;
            this.§_-h9§ = false;
            this.§_-oc§ = true;
            this.§_-AM§ = 0;
         }
         this.§_-Ux§();
      }
      
      public function §_-Ev§() : void
      {
         this.§_-h9§ = true;
         this.§_-wr§ = §_-w3§;
         this.§_-GO§(§_-TP§.§_-Co§);
         if(this.§_-Pw§ != 0)
         {
            this.mY += this.§_-Pw§;
            this.§_-Pw§ = 0;
         }
      }
      
      public function §_-Qy§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§_-oc§ && this.§_-Dj§ >= 0)
         {
            if(this.§_-eo§ > this.§_-HN§.§_-9N§.§_-k8§.§_-4p§)
            {
               this.§_-be§(this.§_-HN§.§_-9N§.§_-k8§.§_-4p§ - this.§_-eo§);
               this.§_-Dj§ = -1;
            }
            this.§_-Dj§ -= param1;
            if(this.§_-Dj§ <= 0)
            {
               if(this.§_-Rv§ > 0)
               {
                  this.§_-Dj§ = this.§_-Rv§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§_-eo§))
               {
                  _loc2_ = this.§_-HN§.§_-9N§.mLevelObjects.§_-k-§(this.mX,this.§_-eo§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§_-be§(param1 / 100))
                  {
                     this.§_-Dj§ = -1;
                  }
                  else
                  {
                     this.§_-Dj§ = 0;
                  }
               }
               else if(!this.§_-HN§.§_-9N§.mLevelObjects.getObject(_loc2_).§_-sB§)
               {
                  this.§_-Dj§ = -1;
               }
               else if(this.§_-HN§.§_-9N§.mLevelObjects.getObject(_loc2_).§_-BS§())
               {
                  this.§_-Dj§ = 2000;
               }
               else
               {
                  this.§_-Dj§ = 500;
               }
            }
         }
      }
      
      public function §_-be§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§_-eo§ += param1;
         if(this.§_-eo§ > this.§_-HN§.§_-9N§.§_-k8§.§_-4p§)
         {
            param1 = this.§_-eo§ - this.§_-HN§.§_-9N§.§_-k8§.§_-4p§;
            this.mY -= param1;
            this.§_-eo§ -= param1;
            this.§_-Ux§();
            return true;
         }
         this.§_-Ux§();
         return false;
      }
      
      public function §_-Mq§() : void
      {
         var _loc1_:§_-pl§ = §_-cO§.§_-9y§(this.mName).shape;
         if(_loc1_.§_-pN§() == §_-pl§.§_-gb§)
         {
            this.§_-fI§ = _loc1_.§_-Nr§()[0];
            this.§_-sK§ = _loc1_.§_-x9§;
         }
         else if(_loc1_.§_-pN§() == §_-pl§.§_-Fj§)
         {
            this.§_-fI§ = new b2Vec2(0,0);
            this.§_-sK§ = 1.5;
         }
         this.§_-3i§ = this.§_-HN§.§_-9N§.§_-wg§.§_-hS§(this.mName);
         if(!this.§_-3i§)
         {
            this.§_-RP§(null);
         }
         else
         {
            this.§_-RP§(this.§_-3i§.getFrame(0));
         }
      }
      
      public function §_-RP§(param1:§_-9c§) : void
      {
         var _loc2_:Texture = null;
         if(!param1)
         {
            _loc2_ = this.§_-HN§.§_-vD§.§_-si§.§_-Ex§();
         }
         else
         {
            _loc2_ = param1.texture;
         }
         if(this.§_-9r§)
         {
            this.§_-0O§.removeChild(this.§_-9r§,true);
            this.§_-9r§ = null;
         }
         this.§_-9r§ = new §_-OW§(_loc2_);
         if(param1)
         {
            this.§_-9r§.x = -param1.pivotX - this.§_-fI§.x / §_-Ay§.§_-G0§;
            this.§_-9r§.y = -param1.pivotY - this.§_-fI§.y / §_-Ay§.§_-G0§;
         }
         else
         {
            this.§_-9r§.x = -this.§_-9r§.width / 2;
            this.§_-9r§.y = -this.§_-9r§.height / 2;
         }
         this.§_-0O§.addChild(this.§_-9r§);
         this.§_-Ux§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§_-Qy§(param1);
         if(this.§_-h9§)
         {
            this.§_-Rv§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§_-fz§(param1);
            this.§_-4H§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§_-J7§(param1,param2);
            }
         }
      }
      
      public function §_-fz§(param1:Number) : void
      {
         if(this.§_-Np§ > 0)
         {
            this.§_-Np§ -= param1;
            if(this.§_-Np§ <= 0)
            {
               this.§_-K9§();
            }
         }
         else if(this.§_-Iv§ <= 0 && Math.random() * §_-6x§ < param1 && this.§_-HN§.mSlingShotState)
         {
            this.§_-Y5§();
         }
      }
      
      public function §_-K9§() : void
      {
         this.§_-Np§ = 0;
         this.§_-RP§(this.§_-3i§.getFrame(0));
      }
      
      public function §_-Y5§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-Np§ = §_-1R§;
         this.§_-RP§(this.§_-3i§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §_-4H§(param1:Number) : void
      {
         if(this.§_-Iv§ > 0)
         {
            this.§_-Iv§ -= param1;
            if(this.§_-Iv§ <= 0)
            {
               this.§_-at§();
            }
         }
         else if(this.§_-Np§ <= 0 && Math.random() * §_-QG§ < param1)
         {
            this.§_-GO§();
         }
      }
      
      public function §_-at§() : void
      {
         this.§_-Iv§ = 0;
         this.§_-RP§(this.§_-3i§.getFrame(0));
      }
      
      public function §_-GO§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§_-Iv§ > 0)
         {
            this.§_-at§();
         }
         if(this.§_-Np§ > 0)
         {
            this.§_-K9§();
         }
         if(param1 < 0)
         {
            param1 = §_-TP§.§_-Rg§;
         }
         this.§_-Iv§ = §_-92§;
         this.§_-RP§(this.§_-3i§.getSubAnimation("yell").getFrame(0));
         if(this.§_-oc§ || this.§_-h9§ || param2)
         {
            §_-fK§.§_-oI§(param1,this.§_-97§);
         }
         else
         {
            §_-fK§.§_-oI§(param1,this.§_-97§,§_-ge§);
         }
      }
      
      public function §_-J7§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§_-Rv§ > 0)
         {
            this.§_-Rv§ -= param1;
            if(this.§_-Rv§ <= 0)
            {
               ++this.§_-mo§;
               this.§_-wt§ *= 0.4;
               if(!this.§_-oc§ && this.§_-mo§ < 2)
               {
                  if(this.§_-mo§ > 1 && this.§_-wt§ < -1)
                  {
                     this.§_-wt§ = -1;
                  }
                  this.§_-Bc§ = this.§_-wt§;
                  this.§_-Rv§ = §_-KY§;
                  this.§_-Rv§ *= Math.abs(this.§_-Bc§) / 2;
                  this.§_-2P§ = this.§_-Rv§;
                  this.§_-AM§ = 0;
                  this.§_-DL§ = 0;
               }
               else if(!this.§_-oc§ && param2)
               {
                  this.§_-Dw§(2.25);
               }
               else
               {
                  this.§_-Rv§ = 0;
                  this.§_-Pw§ = 0;
                  this.§_-AM§ = 0;
                  this.§_-wt§ = 0;
               }
            }
            else
            {
               if(this.§_-Rv§ >= this.§_-2P§ / 2)
               {
                  _loc3_ = (this.§_-2P§ - this.§_-Rv§) / (this.§_-2P§ / 2);
                  _loc3_ = §_-3J§.§_-Bq§(_loc3_);
                  this.§_-Pw§ = _loc3_ * this.§_-Bc§;
               }
               else
               {
                  _loc3_ = (this.§_-2P§ / 2 - this.§_-Rv§) / (this.§_-2P§ / 2);
                  _loc3_ = §_-3J§.§_-Bq§(_loc3_,false);
                  this.§_-Pw§ = this.§_-Bc§ + _loc3_ * -this.§_-Bc§;
               }
               this.§_-AM§ = 360 * §_-3J§.§_-Bq§((this.§_-2P§ - this.§_-Rv§) / this.§_-2P§) * this.§_-DL§;
            }
            this.§_-Ux§();
         }
         else if(Math.random() * §_-Wk§ < param1 && !this.§_-oc§ && !this.§_-h9§)
         {
            this.§_-Dw§();
         }
      }
      
      public function §_-Dw§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§_-mo§ = 0;
         this.§_-Rv§ = §_-KY§;
         this.§_-Pw§ = 0;
         this.§_-Bc§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§_-wt§ = this.§_-Bc§;
         this.§_-Rv§ *= Math.abs(this.§_-Bc§) / 3;
         this.§_-2P§ = this.§_-Rv§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§_-DL§ = 0;
         }
         else if(this.§_-Rv§ < 350)
         {
            this.§_-DL§ = 0;
         }
         else
         {
            this.§_-DL§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§_-DL§ = Math.random() > 0.5 ? Number(this.§_-DL§) : Number(0);
         }
      }
      
      public function §_-Ux§() : void
      {
         this.§_-0O§.x = this.mX / §_-Ay§.§_-G0§;
         this.§_-0O§.y = (this.mY + this.§_-Pw§) / §_-Ay§.§_-G0§;
         this.§_-0O§.rotation = this.§_-AM§ / 180 * Math.PI;
      }
      
      public function §_-aI§() : void
      {
         this.§_-oc§ = false;
         this.§_-h9§ = false;
         this.§_-mo§ = 0;
         this.§_-Dj§ = 0;
         this.§_-Rv§ = 0;
         this.§_-eo§ = this.mY + this.§_-31§ + this.radius;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§_-sK§ * 1.1)
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
         this.§_-eo§ = this.mY + this.§_-31§;
         this.§_-Dj§ = 100;
         this.§_-Ux§();
         if(_loc3_)
         {
            this.§_-HN§.§_-Av§();
         }
      }
      
      public function §_-JT§() : §_-OW§
      {
         return this.§_-9r§;
      }
      
      public function get §_-9U§() : Number
      {
         return this.§_-Rv§;
      }
      
      public function get §_-Um§() : Number
      {
         return this.§_-Dj§;
      }
      
      public function set §_-Um§(param1:Number) : void
      {
         this.§_-Dj§ = param1;
      }
      
      public function get §_-3R§() : Number
      {
         return this.§_-Ry§;
      }
      
      public function get §_-hk§() : Boolean
      {
         return this.§_-oc§;
      }
      
      public function get radius() : Number
      {
         return this.§_-sK§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-0O§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
   }
}
