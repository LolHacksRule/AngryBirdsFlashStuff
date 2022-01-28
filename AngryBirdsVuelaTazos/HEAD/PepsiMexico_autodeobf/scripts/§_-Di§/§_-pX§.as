package §_-Di§
{
   import §_-3b§.§_-5p§;
   import §_-4K§.§_-Av§;
   import §_-7x§.§_-yE§;
   import §_-9k§.§_-X7§;
   import §_-Q0§.Texture;
   import §_-Rm§.§_-i8§;
   import §_-Rm§.§_-tv§;
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   import §_-SE§.§_-uX§;
   import §_-bu§.§_-MA§;
   import §_-dH§.§_-ds§;
   import §_-dH§.§_-wT§;
   import §_-gM§.§_-yj§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-pX§
   {
      
      public static const §_-rq§:int = 0;
      
      public static const §_-A1§:int = 1;
      
      public static const §_-MI§:int = 2;
      
      public static const §_-72§:int = 3;
      
      public static const §_-Nc§:int = 5;
      
      public static const §_-SP§:int = 3151368;
      
      protected static const §_-Qw§:int = 8;
      
      protected static const §_-ac§:int = 0;
      
      public static const §_-15§:Number = 46.25;
      
      public static const §_-te§:Number = 52.5;
      
      protected static var §_-Y3§:Texture;
      
      public static const §_-Bd§:Number = 0.4;
       
      
      public var §_-JH§:§_-ix§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-7B§:Number;
      
      protected var §_-U6§:Number;
      
      protected var §_-l0§:Number;
      
      protected var §_-JG§:Number;
      
      protected var §_-Cj§:Number;
      
      public var §_-ez§:Number;
      
      public var §_-2X§:Boolean = false;
      
      protected var §_-0L§:Number;
      
      public var §_-TO§:Vector.<§_-aX§>;
      
      public var §_-hI§:int;
      
      public var §_-Pg§:int;
      
      public var §_-eP§:Number;
      
      public var §_-U2§:§_-SE§.Sprite;
      
      public var §_-IU§:int = 0;
      
      public var §_-NT§:Number = 0;
      
      public var §_-vm§:Array;
      
      public var §_-Ic§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-XI§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §_-l4§:Boolean = false;
      
      public var §_-Fs§:Number;
      
      protected var §_-j§:§_-SE§.Sprite;
      
      protected var §_-UY§:§_-uX§;
      
      protected var §_-5u§:§_-uX§;
      
      protected var §in §:§_-SE§.Sprite;
      
      protected var §_-hk§:§_-SE§.Sprite;
      
      protected var §_-KS§:§_-SE§.Sprite;
      
      protected var §_-CE§:§_-rl§;
      
      protected var §_-7A§:§_-rl§;
      
      public function §_-pX§(param1:§_-ix§, param2:§_-yE§, param3:§_-SE§.Sprite)
      {
         var _loc4_:§_-MA§ = null;
         this.§_-TO§ = new Vector.<§_-aX§>();
         super();
         this.§_-JH§ = param1;
         this.§_-j§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-Iv§,param2.§_-pW§);
            this.§_-W8§();
            for each(_loc4_ in param2.§_-TO§)
            {
               this.§_-ph§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.§_-hI§ = 0;
            if(this.§_-TO§.length <= 0)
            {
               §_-yj§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-Qd§(§_-72§);
            }
            else
            {
               this.§_-Qd§(§_-rq§);
            }
         }
         else
         {
            §_-yj§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-Qd§(§_-72§);
         }
         this.§_-Fs§ = 0;
         this.§_-Qx§();
         this.update(0,true);
         this.§_-F-§();
         this.§_-hb§(0);
      }
      
      public function get sprite() : §_-SE§.Sprite
      {
         return this.§_-j§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-hI§ < this.§_-TO§.length;
      }
      
      public function dispose() : void
      {
         while(this.§_-TO§.length > 0)
         {
            this.§_-ZF§(0);
         }
         this.§_-TO§ = null;
         if(this.§_-j§)
         {
            this.§_-j§.dispose();
            this.§_-j§ = null;
         }
         this.§_-U2§ = null;
         this.§_-vm§ = null;
         this.§_-Ic§ = null;
      }
      
      public function §_-a1§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-aX§
      {
         var _loc5_:§_-aX§;
         (_loc5_ = this.§_-ph§(param1,param2,param3,param4)).§_-7i§();
         return _loc5_;
      }
      
      protected function §_-ph§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-aX§
      {
         var _loc5_:§_-aX§ = new §_-aX§(this,new §_-SE§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§_-TO§.push(_loc5_);
         }
         else
         {
            this.§_-TO§.splice(param4,0,_loc5_);
         }
         this.§_-U2§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      protected function §_-Qd§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-rq§)
         {
            this.§_-YZ§();
            this.§_-eP§ = 1000;
         }
         else if(this.mSlingShotState == §_-A1§)
         {
            this.§_-YZ§();
            this.§_-eP§ = 0;
         }
         else if(this.mSlingShotState == §_-MI§)
         {
            this.§_-eP§ = 10000;
            this.§_-l4§ = false;
            this.§_-YZ§();
         }
         else if(this.mSlingShotState == §_-72§)
         {
            this.§_-YZ§();
            this.§_-eP§ = 2000;
         }
         else if(this.mSlingShotState == §_-Nc§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§_-l4§ = false;
               this.§_-YZ§();
               this.§_-TO§[this.§_-hI§].setPosition(this.§_-JG§ - this.§_-TO§[this.§_-hI§].radius * Math.cos(this.§_-NT§ / (180 / Math.PI)),this.§_-Cj§ + this.§_-TO§[this.§_-hI§].radius * Math.sin(this.§_-NT§ / (180 / Math.PI)));
            }
            else
            {
               this.§_-YZ§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §_-nK§() : §_-ix§
      {
         return this.§_-JH§;
      }
      
      public function §_-en§() : Boolean
      {
         return this.mSlingShotState == §_-72§ && this.§_-eP§ <= 0;
      }
      
      private function §_-W8§() : void
      {
         var _loc1_:§_-5p§ = this.§_-JH§.§_-i1§.§_-8-§("SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§_-CE§ = new §_-rl§(_loc2_);
         this.§_-7A§ = new §_-rl§(_loc3_);
         this.§_-t1§();
         this.§_-n3§();
         this.§_-U2§ = new §_-SE§.Sprite();
         this.§_-j§.addChild(this.§_-CE§);
         this.§_-j§.addChild(this.§in §);
         this.§_-j§.addChild(this.§_-U2§);
         this.§_-j§.addChild(this.§_-KS§);
         this.§_-j§.addChild(this.§_-hk§);
         this.§_-j§.addChild(this.§_-7A§);
         this.§_-7B§ = this.mY + 8.5;
      }
      
      public function §_-t1§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-U6§ = this.mX;
         this.§_-l0§ = this.mY;
         this.§_-0L§ = §_-nT§.§_-3R§;
         _loc1_ = null;
      }
      
      protected function §_-n3§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§_-Y3§)
         {
            _loc2_ = new §_-X7§.§_-IA§("MovieClip_SlingHolder")();
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_);
            §_-Y3§ = this.§_-JH§.§_-G9§.§_-R5§(_loc3_);
         }
         this.§_-KS§ = new §_-SE§.Sprite();
         var _loc1_:§_-rl§ = new §_-rl§(§_-Y3§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-KS§.addChild(_loc1_);
         this.§in § = new §_-SE§.Sprite();
         this.§_-UY§ = new §_-uX§(2,2,§_-SP§);
         this.§in §.addChild(this.§_-UY§);
         this.§_-hk§ = new §_-SE§.Sprite();
         this.§_-5u§ = new §_-uX§(2,2,§_-SP§);
         this.§_-hk§.addChild(this.§_-5u§);
      }
      
      public function §_-hb§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-Cj§ / §_-ix§.§_-z8§;
         var _loc3_:Number = this.§_-JG§ / §_-ix§.§_-z8§;
         var _loc4_:Number = 3.5 + 8 * ((this.§_-0L§ - this.§_-ez§) / this.§_-0L§);
         this.§_-KS§.x = _loc3_;
         this.§_-KS§.y = _loc2_;
         this.§_-KS§.rotation = -this.§_-NT§ / (180 / Math.PI);
         this.§_-CE§.x = this.mX / §_-ix§.§_-z8§ - 3;
         this.§_-CE§.y = this.mY / §_-ix§.§_-z8§ - 30;
         this.§_-7A§.x = this.mX / §_-ix§.§_-z8§ - 30;
         this.§_-7A§.y = this.mY / §_-ix§.§_-z8§ - 30;
         this.§_-hk§.x = this.mX / §_-ix§.§_-z8§ - 17;
         this.§_-hk§.y = this.mY / §_-ix§.§_-z8§ + 5;
         this.§_-hk§.rotation = Math.atan2(_loc2_ - this.§_-hk§.y,_loc3_ - this.§_-hk§.x);
         this.§in §.x = this.mX / §_-ix§.§_-z8§ + 22;
         this.§in §.y = this.mY / §_-ix§.§_-z8§;
         this.§in §.rotation = Math.atan2(_loc2_ - this.§in §.y,_loc3_ - this.§in §.x);
         this.§_-5u§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-hk§.x,2) + Math.pow(_loc2_ - this.§_-hk§.y,2));
         this.§_-UY§.width = Math.sqrt(Math.pow(_loc3_ - this.§in §.x,2) + Math.pow(_loc2_ - this.§in §.y,2));
         this.§_-5u§.height = this.§_-UY§.height = _loc4_ * 2;
         this.§_-5u§.y = -this.§_-5u§.height / 2;
         this.§_-UY§.y = -this.§_-UY§.height / 2;
         this.§_-XI§ = false;
      }
      
      public function §_-WB§() : void
      {
         while(this.§_-TO§.length > 0)
         {
            this.§_-ZF§(0,true);
         }
         this.§_-4Y§();
         this.§_-ph§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-Qd§(§_-MI§);
      }
      
      protected function §_-4Y§() : void
      {
         §_-Av§.§_-so§("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-Qd§(§_-Nc§);
      }
      
      public function §_-YZ§() : void
      {
         this.setNewCoordinatesForRubber(this.§_-U6§,this.§_-l0§ + this.§_-0L§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-JG§ == param1 && this.§_-Cj§ == param2)
         {
            return true;
         }
         this.§_-ez§ = Math.sqrt((param2 - this.§_-l0§) * (param2 - this.§_-l0§) + (param1 - this.§_-U6§) * (param1 - this.§_-U6§));
         if(this.§_-ez§ > this.§_-0L§)
         {
            if(param3)
            {
               this.§_-ez§ = Math.sqrt((this.§_-Cj§ - this.§_-l0§) * (this.§_-Cj§ - this.§_-l0§) + (this.§_-JG§ - this.§_-U6§) * (this.§_-JG§ - this.§_-U6§));
               return false;
            }
            param1 = this.§_-U6§ + this.§_-0L§ * (param1 - this.§_-U6§) / this.§_-ez§;
            param2 = this.§_-l0§ + this.§_-0L§ * (param2 - this.§_-l0§) / this.§_-ez§;
            this.§_-ez§ = this.§_-0L§;
         }
         this.§_-JG§ = param1;
         this.§_-Cj§ = param2;
         this.§_-NT§ = Math.atan2(-(this.§_-Cj§ - this.§_-l0§),this.§_-JG§ - this.§_-U6§);
         this.§_-NT§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-JG§ = param1 - 0.7;
            this.§_-Cj§ = param2;
            this.§_-NT§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-0L§ / 2;
         if(this.§_-ez§ > _loc7_ && this.§_-NT§ > -90 - _loc4_ + _loc5_ && this.§_-NT§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-U6§ + _loc7_ * (param1 - this.§_-U6§) / this.§_-ez§;
            param2 = this.§_-l0§ + _loc7_ * (param2 - this.§_-l0§) / this.§_-ez§;
            this.§_-ez§ = _loc7_;
            this.§_-JG§ = param1;
            this.§_-Cj§ = param2;
         }
         else if(this.§_-ez§ > _loc7_ && this.§_-NT§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-NT§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-0L§ - _loc7_) * (Math.abs(this.§_-NT§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-U6§ + _loc8_ * (param1 - this.§_-U6§) / this.§_-ez§;
            param2 = this.§_-l0§ + _loc8_ * (param2 - this.§_-l0§) / this.§_-ez§;
            this.§_-ez§ = _loc8_;
            this.§_-JG§ = param1;
            this.§_-Cj§ = param2;
         }
         if(this.§_-ez§ <= this.§_-0L§ * 0.45)
         {
            this.§_-2X§ = true;
         }
         else if(this.§_-2X§ && this.§_-ez§ >= this.§_-0L§ * 0.8)
         {
            this.§_-W1§();
            this.§_-2X§ = false;
         }
         this.§_-XI§ = true;
         return true;
      }
      
      protected function §_-W1§() : void
      {
         §_-Av§.§_-so§("SlingshotStreched");
      }
      
      public function §_-Da§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-7B§ += _loc5_;
         this.§_-l0§ += _loc5_;
         this.§_-Cj§ += _loc5_;
         this.§_-U6§ += _loc4_;
         this.§_-JG§ += _loc4_;
         if(param3)
         {
            this.§_-hb§(0);
         }
         this.§_-XI§ = true;
      }
      
      public function §_-2r§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§_-aX§ = null;
         _loc2_ = this.§_-TO§[this.§_-hI§];
         var _loc3_:Number = this.§_-ez§ / this.§_-0L§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-pX§.§_-te§) : Number(§_-pX§.§_-15§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §_-q6§() : Point
      {
         var _loc1_:§_-aX§ = null;
         if(this.§_-TO§.length > this.§_-hI§)
         {
            _loc1_ = this.§_-TO§[this.§_-hI§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §_-AY§() : Point
      {
         return new Point(this.§_-U6§,this.§_-l0§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-aX§ = null;
         this.§_-uy§(param1);
         if(this.§_-XI§)
         {
            this.§_-hb§(param1);
         }
         this.§_-eP§ -= param1;
         if(this.§_-eP§ < 0)
         {
            this.§_-eP§ = 0;
         }
         if(this.mSlingShotState != §_-72§)
         {
            this.§_-WA§(param1,param2);
            _loc3_ = null;
            if(this.§_-TO§.length > 0)
            {
               _loc3_ = this.§_-TO§[this.§_-hI§];
            }
            if(_loc3_)
            {
               _loc3_.§_-Jq§(param1);
            }
            if(!_loc3_)
            {
               this.§_-Qd§(§_-72§);
            }
            else if(this.mSlingShotState == §_-rq§)
            {
               if(this.§_-eP§ <= 0)
               {
                  this.§_-Qd§(§_-A1§);
                  _loc3_.§_-G6§();
               }
            }
            else if(this.mSlingShotState == §_-A1§)
            {
               if(_loc3_.§_-16§)
               {
                  this.§_-Qd§(§_-MI§);
               }
            }
            else if(this.mSlingShotState == §_-MI§)
            {
               _loc3_.setPosition(this.§_-JG§ - _loc3_.radius * Math.cos(this.§_-NT§ / (180 / Math.PI)),this.§_-Cj§ + _loc3_.radius * Math.sin(this.§_-NT§ / (180 / Math.PI)));
               if(this.§_-l4§)
               {
                  this.§_-lK§(this.§_-ez§ / this.§_-0L§,this.§_-NT§);
               }
            }
         }
      }
      
      public function §_-0z§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§_-aX§ = null;
         if(this.§_-TO§.length > 0)
         {
            _loc5_ = this.§_-TO§[this.§_-hI§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§_-lK§(param3,param4);
      }
      
      protected function §_-lK§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-aX§ = null;
         if(this.§_-TO§.length > 0)
         {
            _loc3_ = this.§_-TO§[this.§_-hI§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§_-l4§ = false;
         this.§_-JH§.§_-5T§(_loc3_,param1,param2);
         this.§_-ZF§(this.§_-hI§,_loc3_.§_-3o§ > 0);
         this.§_-Im§();
         if(this.§_-hI§ >= this.§_-TO§.length)
         {
            this.§_-Qd§(§_-72§);
         }
         else
         {
            this.§_-Qd§(§_-rq§);
         }
      }
      
      protected function §_-Im§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §_-Av§.§_-so§("BirdShot" + _loc1_);
      }
      
      public function §_-WA§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§_-hI§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§_-TO§.length)
         {
            if(this.mSlingShotState == §_-Nc§)
            {
               this.§_-TO§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§_-TO§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§_-aX§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§_-YZ§();
         if(this.§_-Pg§ >= this.§_-TO§.length)
         {
            return false;
         }
         _loc1_ = this.§_-TO§[this.§_-Pg§];
         _loc2_ = §_-tv§.§get §(_loc1_.name).score;
         this.§_-JH§.addScore(_loc2_,§_-3w§.§_-YO§,true,_loc1_.mX,_loc1_.mY - 3,§_-ds§.§_-Y4§(_loc1_.name));
         _loc1_.§_-De§(-1,true);
         ++this.§_-Pg§;
         return true;
      }
      
      public function §_-ff§() : int
      {
         var _loc2_:§_-aX§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-TO§)
         {
            _loc1_ += §_-tv§.§get §(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §_-uy§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-Fs§ >= 0)
         {
            this.§_-Fs§ -= param1;
            if(this.§_-Fs§ <= 0)
            {
               _loc2_ = this.§_-JH§.objects.§_-y4§(this.§_-U6§,this.§_-7B§);
               if(_loc2_ < 0)
               {
                  this.§_-Da§(0.1);
                  this.§_-Fs§ = 0;
               }
               else if(!this.§_-JH§.objects.§_-Ex§(_loc2_).§_-Pa§)
               {
                  this.§_-Fs§ = -1;
               }
               else if(this.§_-JH§.objects.§_-Ex§(_loc2_).§_-UO§())
               {
                  this.§_-Fs§ = 2000;
               }
               else
               {
                  this.§_-Fs§ = 500;
               }
            }
         }
      }
      
      public function §_-F-§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§_-JH§.objects.§_-y4§(this.§_-U6§,this.§_-7B§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§_-Da§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§_-Fs§ = -1;
      }
      
      public function §_-3I§(param1:Number, param2:Number) : void
      {
         this.§_-j§.x = -param1;
         this.§_-j§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-MI§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-MI§ && this.§_-ez§ > this.§_-0L§ * §_-Bd§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-Qd§(§_-MI§);
         var _loc1_:§_-aX§ = this.§_-TO§[this.§_-hI§];
         _loc1_.§_-De§(§_-i8§.§_-YA§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-aX§ = this.§_-TO§[this.§_-hI§];
         _loc1_.§_-De§(§_-i8§.§_-Y1§);
      }
      
      public function shoot() : void
      {
         this.§_-l4§ = true;
      }
      
      protected function §_-ZF§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-aX§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§_-TO§[param1])
         {
            _loc3_ = this.§_-TO§[param1];
            this.§_-U2§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-mG§(this.§_-TO§[param1]);
            }
            _loc3_.dispose();
            this.§_-TO§[param1] = null;
         }
         this.§_-TO§.splice(param1,1);
      }
      
      public function §_-mG§(param1:§_-aX§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-ix§.§_-z8§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-ix§.§_-z8§) + Math.random() * -_loc8_ * 2;
            this.§_-JH§.particles.§_-Kw§(§_-ds§.§_-Sz§,§_-wT§.§_-Kz§,§_-ds§.§_-qg§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-ds§.§_-vZ§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-JH§.particles.§_-Kw§(§_-ds§.§_-Y5§,§_-wT§.§_-Kz§,§_-ds§.§_-qg§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-us§(param1:§_-aX§) : void
      {
         this.§_-ZF§(this.§_-TO§.indexOf(param1));
      }
      
      public function §_-Qx§() : void
      {
         var _loc2_:§_-aX§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-aX§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-TO§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§_-TO§[_loc1_].mX) * (this.mX - this.§_-TO§[_loc1_].mX) + (this.mY - this.§_-TO§[_loc1_].mY) * (this.mY - this.§_-TO§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§_-TO§[_loc1_ + 1].mX) * (this.mX - this.§_-TO§[_loc1_ + 1].mX) + (this.mY - this.§_-TO§[_loc1_ + 1].mY) * (this.mY - this.§_-TO§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§_-TO§[_loc1_];
               this.§_-TO§.splice(_loc1_,1);
               this.§_-TO§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§_-U2§.numChildren > 0)
         {
            this.§_-U2§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§_-TO§.length)
         {
            _loc2_ = this.§_-TO§[_loc1_];
            this.§_-U2§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-Hp§(param1:Number, param2:Number) : §_-aX§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-TO§.length)
         {
            if(this.§_-TO§[_loc3_])
            {
               if(this.§_-TO§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§_-TO§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §_-5o§(param1:Number, param2:Number) : §_-pX§
      {
         if(param1 >= this.mX - this.§_-0L§ / 4 && param1 <= this.mX + this.§_-0L§ / 4 && param2 >= this.mY - this.§_-0L§ / 4 && this.mY <= this.§_-7B§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-qR§(param1:§_-yE§) : void
      {
         var _loc3_:§_-aX§ = null;
         var _loc4_:§_-MA§ = null;
         param1.§_-Iv§ = this.mX;
         param1.§_-pW§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-TO§.length)
         {
            _loc3_ = this.§_-TO§[_loc2_];
            (_loc4_ = new §_-MA§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§_-TO§.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-oo§() : void
      {
         while(this.§_-TO§.length > 0)
         {
            this.§_-us§(this.§_-TO§[0]);
         }
      }
      
      public function §_-35§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-TO§.length)
         {
            if(this.§_-TO§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-TO§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §_-EH§() : Array
      {
         return [this.§_-7A§,this.§_-CE§];
      }
      
      public function §_-TK§(param1:String, param2:Number, param3:Number) : §_-aX§
      {
         var _loc4_:§_-aX§ = this.§_-ph§(param1,param2,param3);
         this.§_-Qx§();
         return _loc4_;
      }
      
      public function §_-X8§() : Number
      {
         return this.§_-TO§.length;
      }
   }
}
