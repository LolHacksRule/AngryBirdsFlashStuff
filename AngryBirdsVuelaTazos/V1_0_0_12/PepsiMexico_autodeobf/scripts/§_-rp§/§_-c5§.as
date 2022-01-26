package §_-rp§
{
   import §_-1P§.§_-3p§;
   import §_-1P§.§_-lC§;
   import §_-DS§.§_-Aa§;
   import §_-DS§.§_-t0§;
   import §_-Hw§.§_-3C§;
   import §_-Su§.§_-Bk§;
   import §_-Su§.§_-Xk§;
   import §_-Su§.§_-oF§;
   import §_-Tf§.§_-5y§;
   import §_-mK§.§_-ec§;
   import §_-pF§.DisplayObject;
   import §_-pF§.Sprite;
   import §_-u§.§_-5Q§;
   import §_-u§.§_-Av§;
   import §_-u§.§_-iL§;
   import §_-v3§.§_-G3§;
   import §_-wG§.§_-Qf§;
   import §_-wa§.§_-Zg§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-c5§
   {
      
      public static const §_-Vc§:Number = §_-3C§.§_-dN§;
      
      public static const §_-rk§:Number = §_-3C§.§_-mI§;
      
      public static const §_-Wa§:Number = 1 / 20;
      
      public static const §_-FJ§:Number = §_-3C§.§_-mI§ * §_-Wa§;
      
      public static const §_-DC§:Number = §_-Vc§ * §_-Wa§;
      
      public static const §_-Nk§:int = 10;
      
      public static const §_-2r§:Boolean = true;
      
      protected static var §_-tY§:String = "";
       
      
      public var mLevelObjects:§_-Av§;
      
      public var mActiveObject:§_-5Q§;
      
      public var §_-hz§:Array = null;
      
      public var §_-Hu§:§_-Qf§;
      
      public var §_-dl§:§_-NL§;
      
      public var §_-tB§:§_-lD§;
      
      private var §_-4P§:§_-Hz§;
      
      public var mLevelSlingshot:§_-BF§;
      
      public var §_-AC§:§_-t0§;
      
      public var § if§:Boolean = false;
      
      public var §_-rY§:Number = 1500;
      
      public var §_-8g§:Number = 2400;
      
      public var §_-9Q§:Number = 0;
      
      public var §_-rK§:Number = 0.2;
      
      public var §_-ZA§:Number = 8.8;
      
      public var mPigsAnimationTimer1:Number;
      
      public var mPigsAnimationTimer2:Number;
      
      public var §_-SB§:Number;
      
      public var §_-PW§:Number;
      
      public var §_-kT§:§_-oF§;
      
      public var mTrailSpecial:Boolean = false;
      
      public var §_-tQ§:Sprite = null;
      
      public const §_-b-§:int = 2;
      
      public var §_-ig§:int = 0;
      
      private var §_-T2§:§_-fX§;
      
      private var §_-Ec§:Sprite;
      
      private var §_-0E§:Vector.<Sprite>;
      
      private var §_-uH§:§_-5y§ = null;
      
      private var §_-AK§:EventDispatcher;
      
      private var §_-KO§:Array;
      
      private var §_-1n§:Array;
      
      private var §_-9V§:§_-G3§;
      
      private var §_-dW§:§_-ec§;
      
      private var §_-Li§:§_-3p§;
      
      private var §_-S-§:§_-lC§;
      
      private var mStage:Stage;
      
      private var §_-7S§:uint = 1.417339207E9;
      
      public function §_-c5§(param1:Stage)
      {
         this.§_-1n§ = [];
         super();
         this.§_-AK§ = new EventDispatcher();
         this.§_-kT§ = new §_-oF§();
         this.mStage = param1;
         this.§_-Li§ = §_-3p§.§_-WK§;
         this.§_-S-§ = this.§_-A-§(this.§_-Li§);
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§_-9V§ = new §_-G3§(§_-fX§,param1,new Rectangle(0,0,§_-3C§.§_-dN§,§_-3C§.§_-mI§),_loc2_);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-an§,false,0,true);
         this.§_-9V§.§_-DJ§ = false;
         this.§_-9V§.enableErrorChecking = false;
         this.§_-9V§.§_-9e§ = 2;
         this.§_-9V§.§_-Mt§();
      }
      
      public static function §_-vY§(param1:§_-5Q§, param2:§_-5Q§) : Number
      {
         var _loc3_:Number = param1.§_-RF§ - param2.§_-RF§;
         var _loc4_:Number = param1.§_-Yu§ - param2.§_-Yu§;
         return §_-mX§(_loc3_,_loc4_);
      }
      
      public static function §_-mX§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-Ec§ && this.§_-xO§)
         {
            this.§_-Ec§ = this.§_-T2§.§_-Nf§;
            if(this.§_-Ec§)
            {
               if(§_-G3§.§_-ou§)
               {
                  this.§_-0E§ = new Vector.<Sprite>();
               }
            }
         }
         return this.§_-Ec§;
      }
      
      public function get §_-xO§() : Sprite
      {
         if(!this.§_-T2§)
         {
            this.§_-T2§ = this.§_-9V§.§_-5V§ as §_-fX§;
            this.§_-T2§.§_-7e§ = false;
         }
         return this.§_-T2§;
      }
      
      private function get §_-pM§() : DisplayObject
      {
         if(this.§_-xO§)
         {
            return (this.§_-xO§ as §_-fX§).§_-pM§;
         }
         return null;
      }
      
      public function get §_-hF§() : §_-lC§
      {
         return this.§_-S-§;
      }
      
      public function get §_-2I§() : §_-3p§
      {
         return this.§_-Li§;
      }
      
      protected function §_-A-§(param1:§_-3p§) : §_-lC§
      {
         return new §_-lC§(param1);
      }
      
      public function §_-cZ§(param1:Boolean) : void
      {
         if(this.§_-xO§)
         {
            this.§_-xO§.visible = param1;
         }
      }
      
      public function §_-ea§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-dV§(param1:§_-5y§) : void
      {
         if(this.§_-uH§ != null)
         {
            this.§_-uH§.§_-Nx§();
         }
         this.§_-uH§ = param1;
         this.§_-uH§.addEventListeners();
      }
      
      public function §if§(param1:§_-ec§, param2:Array, param3:Function) : void
      {
         this.§_-dW§ = param1;
         var _loc4_:int = this.§_-dW§.§_-i8§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-Li§.§_-lr§(this.§_-dW§.§_-SA§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-AK§.addEventListener(Event.INIT,param3);
            this.§_-1n§.push(param3);
         }
         if(this.§_-Ku§(param2))
         {
            this.§_-1O§();
         }
      }
      
      private function §_-Ku§(param1:Array) : Boolean
      {
         if(this.§_-Li§.§_-RQ§())
         {
            this.§_-49§(param1);
            return true;
         }
         this.§_-KO§ = param1.concat();
         return false;
      }
      
      private function §_-49§(param1:Array) : void
      {
         this.§_-S-§.§_-49§(param1);
      }
      
      private function §_-an§(param1:Event) : void
      {
         this.§_-Li§.§_-Pt§();
         if(this.§_-KO§)
         {
            this.§_-Ku§(this.§_-KO§);
            this.§_-KO§ = null;
            this.§_-1O§();
         }
         if(this.§_-uH§ != null)
         {
            this.§_-uH§.addEventListeners();
         }
      }
      
      private function §_-1O§() : void
      {
         this.§_-AK§.dispatchEvent(new Event(Event.INIT));
         this.§_-9J§();
      }
      
      private function §_-9J§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-1n§)
         {
            this.§_-AK§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-1n§ = [];
      }
      
      public function init(param1:§_-Xk§) : void
      {
         if(this.§ if§)
         {
            this.clearLevel();
         }
         this.§_-tB§ = new §_-lD§(this,param1);
         this.§_-dl§ = new §_-NL§(this);
         this.§_-Hu§ = new §_-Qf§(param1.§_-Of§,this.§_-tB§.§_-JX§ / §_-Wa§,this.§_-S-§,this.§_-Li§);
         this.§_-Hu§.§_-Bj§(§_-3C§.§_-06§());
         this.mLevelObjects = this.§_-v2§(param1);
         this.mLevelSlingshot = this.§_-62§(param1);
         this.§_-AC§ = new §_-t0§(this.§_-S-§,this.§_-Li§);
         this.§_-4P§ = new §_-Hz§(this,param1);
         this.§_-Ji§();
         this.§_-SB§ = 0;
         this.§_-PW§ = 0;
         this.§ if§ = true;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-tY§ = param1.§_-Of§;
      }
      
      protected function §_-v2§(param1:§_-Xk§) : §_-Av§
      {
         return new §_-Av§(this,param1,new Sprite());
      }
      
      protected function §_-62§(param1:§_-Xk§) : §_-BF§
      {
         return new §_-BF§(this,param1,new Sprite());
      }
      
      public function initEmptyEnvironment() : void
      {
         if(this.§ if§)
         {
            this.clearLevel();
         }
         var _loc1_:§_-Xk§ = new §_-Xk§();
         _loc1_.§_-rG§ = -12;
         var _loc2_:§_-Bk§ = new §_-Bk§();
         _loc2_.left = 0;
         _loc2_.top = -§_-Hz§.§_-Lb§ / 10 * 8;
         _loc2_.bottom = _loc2_.top + §_-Hz§.§_-Lb§;
         _loc2_.right = _loc2_.left + §_-Hz§.§_-RT§;
         _loc2_.y = -13.929;
         _loc2_.x = §_-Hz§.§_-RT§;
         _loc2_.id = §_-Hz§.§_-MY§;
         _loc1_.§_-0y§.push(_loc2_);
         var _loc3_:§_-Bk§ = new §_-Bk§();
         _loc3_.top = _loc2_.top;
         _loc3_.bottom = _loc2_.bottom;
         _loc3_.left = 150;
         _loc3_.right = _loc3_.left + §_-Hz§.§_-RT§;
         _loc3_.bottom = _loc3_.top + §_-Hz§.§_-Lb§;
         _loc3_.y = _loc2_.y;
         _loc3_.x = _loc3_.left + §_-Hz§.§_-RT§ / 2;
         _loc3_.id = §_-Hz§.§_-Ua§;
         _loc1_.§_-0y§.push(_loc3_);
         this.§_-q4§(_loc1_);
         _loc1_.§_-Of§ = §_-tY§;
         this.init(_loc1_);
      }
      
      private function §_-D4§() : Number
      {
         this.§_-7S§ ^= this.§_-7S§ << 21;
         this.§_-7S§ ^= this.§_-7S§ >>> 35;
         this.§_-7S§ ^= this.§_-7S§ << 4;
         return this.§_-7S§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-q4§(param1:§_-Xk§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-Zg§ = null;
         this.§_-7S§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-D4§() * 5;
               (_loc5_ = new §_-Zg§()).x = 30 + _loc3_ * 10 + this.§_-D4§() * 9;
               if(_loc2_ == 0)
               {
                  _loc5_.y = 0;
                  if(_loc3_ == 1 || _loc3_ == 2 || _loc3_ == 4)
                  {
                     _loc5_.id = "PIG_MUSTACHE";
                  }
                  else
                  {
                     _loc5_.id = "PIG_HELMET";
                  }
                  _loc5_.angle = 45 - this.§_-D4§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-D4§() * 3 - _loc3_ * 8;
                  if((_loc4_ = (_loc3_ * _loc3_ + _loc2_ * _loc3_ + _loc2_) % 5) == 0)
                  {
                     _loc5_.id = "BIRD_BLACK";
                  }
                  else if(_loc4_ < 3)
                  {
                     _loc5_.id = "BIRD_RED";
                  }
                  else if(_loc4_ == 3)
                  {
                     _loc5_.id = "BIRD_YELLOW";
                  }
                  else
                  {
                     _loc5_.id = "BIRD_BLUE";
                  }
                  _loc5_.angle = this.§_-D4§() * 360;
               }
               param1.§_-X5§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-Rd§() : void
      {
      }
      
      public function §_-Ji§() : void
      {
         this.§_-Q3§(this.§_-Hu§.§_-EJ§,true);
         if(§_-Qf§.§_-Zt§)
         {
            this.§_-Q3§(this.§_-Hu§.§_-H§,false);
         }
         this.§_-Q3§(this.§_-AC§.§_-a6§(§_-t0§.§_-r6§),true);
         this.§_-Q3§(this.§_-AC§.§_-a6§(§_-t0§.§_-hG§),true);
         this.§_-Q3§(this.mLevelObjects.§_-K9§,true);
         this.§_-Q3§(this.mLevelSlingshot.sprite,true);
         this.§_-Q3§(this.§_-AC§.§_-a6§(§_-t0§.§_-FQ§),true);
         if(§_-Qf§.§_-Zt§)
         {
            this.§_-Q3§(this.§_-Hu§.§_-h8§,true);
         }
         this.§_-Q3§(this.§_-AC§.§_-a6§(§_-t0§.§_-kK§),true);
         if(!§_-NL§.§_-4A§)
         {
         }
      }
      
      private function §_-Q3§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
         if(param2 && this.§_-0E§)
         {
            this.§_-0E§.push(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-3C§.§_-Wc§;
         param2 /= §_-3C§.§_-Wc§;
         _loc3_.x = (param1 / §_-Hz§.§_-sV§ + this.§_-4P§.§_-AR§ - §_-Hz§.§_-F5§ / §_-Hz§.§_-sV§) * §_-Wa§;
         _loc3_.y = (param2 / §_-Hz§.§_-sV§ + this.§_-4P§.§_-rL§ - §_-Hz§.§_-cK§ / §_-Hz§.§_-sV§) * §_-Wa§;
         return _loc3_;
      }
      
      public function §_-ii§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-Wa§ + §_-Hz§.§_-F5§ / §_-Hz§.§_-sV§ - this.§_-4P§.§_-AR§) * §_-Hz§.§_-sV§;
         _loc3_.y = (param2 / §_-Wa§ + §_-Hz§.§_-cK§ / §_-Hz§.§_-sV§ - this.§_-4P§.§_-rL§) * §_-Hz§.§_-sV§;
         _loc3_.x *= §_-3C§.§_-w7§;
         _loc3_.y *= §_-3C§.§_-w7§;
         return _loc3_;
      }
      
      public function §_-kH§(param1:String, param2:Number, param3:Number) : void
      {
         this.mLevelObjects.§_-Iq§(param1,param2,param3);
      }
      
      public function §_-8b§() : void
      {
         if(this.§_-pM§)
         {
            this.§_-pM§.visible = true;
            this.§_-pM§.alpha = 0;
         }
         this.§_-rY§ = 0;
      }
      
      public function §_-h5§() : void
      {
         this.§_-8g§ = 0;
         this.§_-9Q§ = 0;
         this.§_-rK§ = §_-lz§.§_-SW§;
         this.§_-ZA§ = §_-lz§.§_-d5§;
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Sprite = null;
         if(this.§_-Hu§)
         {
            this.§_-Hu§.dispose();
            this.§_-Hu§ = null;
         }
         if(this.mLevelObjects)
         {
            this.mLevelObjects.dispose();
            this.mLevelObjects = null;
            this.mActiveObject = null;
         }
         if(this.§_-0E§)
         {
            for each(_loc1_ in this.§_-0E§)
            {
               _loc1_.dispose();
            }
            this.§_-0E§ = new Vector.<Sprite>();
         }
         if(this.§_-dl§)
         {
            if(!this.§_-dl§.§_-Ft§)
            {
            }
            this.§_-dl§.clear();
            this.§_-dl§ = null;
         }
         if(this.§_-tB§)
         {
            this.§_-tB§.clear();
            this.§_-tB§ = null;
         }
         if(this.mLevelSlingshot)
         {
            this.mLevelSlingshot.dispose();
            this.mLevelSlingshot = null;
         }
         if(this.§_-4P§)
         {
            this.§_-4P§.clear();
            this.§_-4P§ = null;
         }
         if(this.§_-AC§)
         {
            this.§_-AC§.dispose();
            this.§_-AC§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-SB§ = 0;
         this.§_-PW§ = 0;
         this.§ if§ = false;
         this.§_-rY§ = §_-lz§.§_-Mj§;
         this.§_-8g§ = §_-lz§.§_-mi§;
         this.§_-9Q§ = 0;
         this.§_-rK§ = §_-lz§.§_-SW§;
         this.§_-ZA§ = §_-lz§.§_-d5§;
         if(this.§_-xO§)
         {
            (this.§_-xO§ as §_-fX§).§_-Yn§.x = 0;
            (this.§_-xO§ as §_-fX§).§_-Yn§.y = 0;
         }
         if(this.§_-pM§)
         {
            this.§_-pM§.visible = false;
         }
         this.§_-9J§();
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         if(!this.§ if§ || !§_-G3§.§_-HS§())
         {
            return;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         this.§_-PW§ += param1;
         if(param2)
         {
            this.§_-SB§ += param1;
            _loc5_ = this.§_-dl§.§_-D3§(this.§_-SB§);
            _loc4_ = this.§_-dl§.§_-jB§;
         }
         else
         {
            this.mLevelObjects.§_-re§();
            _loc4_ = param1;
            this.§_-SB§ = 0;
         }
         this.§_-SB§ = _loc5_;
         if(this.§_-hz§)
         {
            if(this.mTrailSpecial)
            {
               this.§_-ig§ = 0;
            }
            if(this.§_-ig§ == 0)
            {
               this.§_-Gh§();
            }
            this.§_-ig§ = (this.§_-ig§ + 1) % this.§_-b-§;
         }
         if(this.§_-rY§ < §_-lz§.§_-Mj§)
         {
            this.§_-rY§ += param1;
            _loc6_ = §_-lz§.§_-Mj§ / 2;
            _loc7_ = (-Math.abs(this.§_-rY§ - _loc6_) + _loc6_) * (§_-lz§.§_-99§ / _loc6_);
            if(this.§_-pM§)
            {
               this.§_-pM§.alpha = _loc7_;
            }
         }
         else if(this.§_-pM§)
         {
            this.§_-pM§.visible = false;
         }
         if(this.§_-8g§ < §_-lz§.§_-mi§)
         {
            this.§_-8g§ += param1;
            this.§_-Ns§(param1);
         }
         this.mLevelObjects.§_-bE§(param1,_loc5_);
         this.§_-4P§.§_-1y§(param1);
         this.§_-dl§.§_-lP§();
         if(param2)
         {
            this.mLevelSlingshot.update(param1,param3);
         }
         this.§_-AC§.update(param1);
         if(this.§_-0E§)
         {
            for each(_loc8_ in this.§_-0E§)
            {
               _loc8_.flatten();
            }
         }
      }
      
      public function §_-Gh§() : void
      {
         var _loc1_:§_-5Q§ = null;
         if(this.§_-hz§ != null)
         {
            for each(_loc1_ in this.§_-hz§)
            {
               _loc1_.addTrail();
            }
         }
      }
      
      private function §_-Ns§(param1:Number) : void
      {
         this.§_-9Q§ += this.§_-rK§;
         var _loc2_:Number = param1 / §_-lz§.§_-BC§ * this.§_-ZA§ * Math.sin(Math.PI / 4 + this.§_-9Q§ * 2 * Math.PI);
         var _loc3_:Number = param1 / §_-lz§.§_-BC§ * this.§_-ZA§ * Math.sin(this.§_-9Q§ * 2.1 * Math.PI);
         this.§_-ZA§ -= param1 * §_-lz§.§_-d5§ / §_-lz§.§_-mi§;
         this.§_-rK§ -= param1 * §_-lz§.§_-SW§ / §_-lz§.§_-mi§;
         this.§_-4P§.§_-8-§(_loc2_,_loc3_);
         this.§_-4P§.§_-J7§();
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-5Q§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.§_-hI§(true);
               _loc2_.§use§.mTryToScream = §_-iL§.§_-3F§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.mLevelObjects.§_-dG§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.§_-hI§(true);
               _loc2_.§use§.mTryToBlink = §_-iL§.§_-Dk§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.mLevelObjects.§_-dG§());
            }
         }
      }
      
      public function addScore(param1:int, param2:Boolean = false, param3:Number = 0, param4:Number = 0, param5:int = -9999) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-Aa§.§_-lB§;
         }
         this.§_-uH§.addScore(param1);
         if(param2 && param1 > 0)
         {
            this.§_-px§(param1.toString(),param3,param4,800,param5,0,0);
         }
      }
      
      public function §_-px§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-Aa§.§_-tO§;
         }
         this.§_-AC§.§_-RE§(§_-Aa§.§_-N6§,§_-t0§.§_-kK§,§_-Aa§.§_-bq§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-cH§() : void
      {
         if(!§_-2r§)
         {
            return;
         }
         if(this.§_-tQ§)
         {
         }
      }
      
      public function §_-WL§() : void
      {
         if(this.§_-tQ§)
         {
            this.§_-tQ§ = null;
         }
      }
      
      public function §_-Ik§(param1:§_-5Q§) : void
      {
         if(this.§_-hz§ == null)
         {
            this.§_-hz§ = new Array();
         }
         this.§_-hz§.push(param1);
      }
      
      public function §_-6i§() : void
      {
         this.mLevelSlingshot.§_-6i§();
         this.mLevelObjects.mSardineCanAdded = true;
      }
      
      public function §_-j7§(param1:§_-5Q§) : void
      {
         this.§_-AC§.§_-ff§(§_-t0§.§_-r6§);
         if(this.§_-hz§.indexOf(param1) >= 0)
         {
            this.§_-hz§.splice(this.§_-hz§.indexOf(param1),1);
         }
         if(this.§_-hz§.length == 0)
         {
            this.§_-hz§ = null;
         }
      }
      
      public function §_-LF§() : void
      {
         this.mLevelObjects.§_-LF§();
      }
      
      public function §_-CN§() : void
      {
         this.mLevelObjects.§_-Nu§();
      }
      
      public function get camera() : §_-Hz§
      {
         return this.§_-4P§;
      }
      
      public function get objects() : §_-Av§
      {
         return this.mLevelObjects;
      }
      
      public function get particles() : §_-t0§
      {
         return this.§_-AC§;
      }
      
      public function get background() : §_-Qf§
      {
         return this.§_-Hu§;
      }
      
      public function get slingshot() : §_-BF§
      {
         return this.mLevelSlingshot;
      }
      
      public function getActiveObject() : §_-5Q§
      {
         return this.mActiveObject;
      }
      
      public function get §_-EZ§() : §_-lD§
      {
         return this.§_-tB§;
      }
      
      public function §_-hZ§() : §_-Xk§
      {
         var _loc1_:§_-Xk§ = new §_-Xk§();
         this.§_-4P§.§_-io§(_loc1_);
         this.mLevelObjects.§_-H3§(_loc1_);
         this.mLevelSlingshot.§_-JB§(_loc1_);
         _loc1_.§_-Of§ = this.§_-Hu§.§_-hB§();
         return _loc1_;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function §_-Yt§(param1:Number, param2:Number) : void
      {
         if(this.§_-T2§)
         {
            this.§_-T2§.§_-EK§(param1,param2);
         }
      }
   }
}
