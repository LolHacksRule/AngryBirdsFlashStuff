package §_-5Y§
{
   import §_-2a§.§_-Lq§;
   import §_-4n§.b2Vec2;
   import §_-BQ§.§_-dO§;
   import §_-CW§.§_-C-§;
   import §_-CW§.§_-hK§;
   import §_-Kb§.§_-CH§;
   import §_-M0§.§_-u4§;
   import §_-Ml§.§_-l0§;
   import §_-PC§.§_-N0§;
   import §_-PC§.§_-lx§;
   import §_-b5§.DisplayObject;
   import §_-b5§.Sprite;
   import §_-fI§.§_-BI§;
   import §_-id§.§_-BC§;
   import §_-mc§.§_-TP§;
   import §_-mj§.§_-8x§;
   import §_-mj§.§_-Fv§;
   import §_-mj§.§_-GI§;
   import §_-mj§.§_-KA§;
   import §_-uh§.§_-HB§;
   import §_-uh§.§_-US§;
   import §_-uh§.§_-VL§;
   import §_-uh§.§_-YW§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-yw§
   {
      
      public static const §_-C7§:Number = §_-u4§.§_-4r§;
      
      public static const §_-ri§:Number = §_-u4§.§_-ho§;
      
      public static const §_-rO§:Number = 1 / 20;
      
      public static const §_-qV§:Number = §_-u4§.§_-ho§ * §_-rO§;
      
      public static const §_-n1§:Number = §_-C7§ * §_-rO§;
      
      public static const §_-FH§:§_-TP§ = new §_-TP§(13 - 3);
      
      protected static var §_-0M§:String = "";
       
      
      private var §_-0o§:§_-Fv§;
      
      private var §_-qd§:§_-GI§;
      
      private var §_-P1§:Array = null;
      
      private var §_-sW§:§_-Lq§;
      
      public var §_-SU§:§_-eM§;
      
      private var §_-9r§:§_-oI§;
      
      private var §_-9M§:§_-vn§;
      
      private var §null §:§_-GA§;
      
      private var §_-Ss§:§_-hK§;
      
      public var §_-3B§:Boolean = false;
      
      public var §_-l5§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §_-BW§:Number;
      
      public var §_-XL§:Number;
      
      private var §_-ed§:Number;
      
      public var §_-OP§:§_-VL§;
      
      public var §_-ZV§:Boolean = false;
      
      private var §_-tG§:§_-7Z§;
      
      private var §_-Fh§:Sprite;
      
      private var §_-nK§:Vector.<Sprite>;
      
      private var §_-MZ§:§_-CH§ = null;
      
      private var §_-xa§:EventDispatcher;
      
      private var §_-Mx§:Array;
      
      private var §_-ah§:Array;
      
      private var §_-DI§:§_-BI§;
      
      private var §_-Di§:§_-BC§;
      
      private var §_-W1§:§_-lx§;
      
      private var §_-Gl§:§_-N0§;
      
      private var mStage:Stage;
      
      private var §_-G-§:§_-RW§;
      
      private var §_-Yf§:§_-l0§;
      
      private var §_-1g§:§_-l0§;
      
      private var §_-6I§:Number = 0.0;
      
      private var §_-Nv§:String;
      
      private var §_-Bd§:uint = 1.417339207E9;
      
      public function §_-yw§(param1:Stage)
      {
         this.§_-ah§ = [];
         super();
         this.§_-xa§ = new EventDispatcher();
         this.§_-OP§ = new §_-VL§();
         this.mStage = param1;
         this.§_-W1§ = §_-lx§.§_-aP§;
         this.§_-Gl§ = this.§_-Mt§(this.§_-W1§);
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§_-DI§ = new §_-BI§(§_-7Z§,param1,new Rectangle(0,0,§_-u4§.§_-4r§,§_-u4§.§_-ho§),_loc2_);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-sp§,false,0,true);
         this.§_-DI§.§_-LA§ = false;
         this.§_-DI§.enableErrorChecking = false;
         this.§_-DI§.§_-WR§ = 2;
         this.§_-DI§.§_-Vg§();
      }
      
      public static function §_-wj§(param1:§_-GI§, param2:§_-GI§) : Number
      {
         var _loc3_:Number = param1.§_-km§ - param2.§_-km§;
         var _loc4_:Number = param1.§_-fE§ - param2.§_-fE§;
         return §_-HG§(_loc3_,_loc4_);
      }
      
      public static function §_-HG§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-Fh§ && this.§_-M2§)
         {
            this.§_-Fh§ = this.§_-tG§.§_-9J§;
            if(this.§_-Fh§)
            {
               if(§_-BI§.§_-Hp§)
               {
                  this.§_-nK§ = new Vector.<Sprite>();
               }
            }
         }
         return this.§_-Fh§;
      }
      
      public function get §_-M2§() : Sprite
      {
         if(!this.§_-tG§)
         {
            this.§_-tG§ = this.§_-DI§.§_-Zl§ as §_-7Z§;
            this.§_-tG§.§_-3V§ = false;
         }
         return this.§_-tG§;
      }
      
      private function get §_-FX§() : DisplayObject
      {
         if(this.§_-M2§)
         {
            return (this.§_-M2§ as §_-7Z§).§_-FX§;
         }
         return null;
      }
      
      public function get §_-9l§() : §_-N0§
      {
         return this.§_-Gl§;
      }
      
      public function get §_-Ly§() : §_-lx§
      {
         return this.§_-W1§;
      }
      
      public function get camera() : §_-vn§
      {
         return this.§_-9M§;
      }
      
      public function get objects() : §_-Fv§
      {
         return this.§_-0o§;
      }
      
      public function get particles() : §_-hK§
      {
         return this.§_-Ss§;
      }
      
      public function get background() : §_-Lq§
      {
         return this.§_-sW§;
      }
      
      public function get slingshot() : §_-GA§
      {
         return this.§null §;
      }
      
      public function get activeObject() : §_-GI§
      {
         return this.§_-qd§;
      }
      
      public function get §_-9W§() : §_-oI§
      {
         return this.§_-9r§;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function set activeObject(param1:§_-GI§) : void
      {
         this.§_-qd§ = param1;
      }
      
      protected function §_-Mt§(param1:§_-lx§) : §_-N0§
      {
         return new §_-N0§(param1);
      }
      
      public function §_-AB§(param1:Boolean) : void
      {
         if(§_-BI§.§_-44§)
         {
            if(param1)
            {
               §_-BI§.§_-44§.start();
            }
            else
            {
               §_-BI§.§_-44§.stop();
            }
         }
      }
      
      public function §_-rt§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-Ib§(param1:§_-CH§) : void
      {
         if(this.§_-MZ§ != null)
         {
            this.§_-MZ§.removeEventListeners();
         }
         this.§_-MZ§ = param1;
         this.§_-MZ§.addEventListeners();
      }
      
      public function §_-y§() : §_-l0§
      {
         return this.§_-Yf§;
      }
      
      public function §_-Zt§(param1:§_-BC§, param2:Array, param3:Function) : void
      {
         this.§_-Di§ = param1;
         var _loc4_:int = this.§_-Di§.§_-X-§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-W1§.§_-cD§(this.§_-Di§.§_-nj§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-xa§.addEventListener(Event.INIT,param3);
            this.§_-ah§.push(param3);
         }
         if(this.§_-cO§(param2))
         {
            this.§_-2I§();
         }
      }
      
      private function §_-cO§(param1:Array) : Boolean
      {
         if(this.§_-W1§.§_-p5§())
         {
            this.§_-Oh§(param1);
            return true;
         }
         this.§_-Mx§ = param1.concat();
         return false;
      }
      
      private function §_-Oh§(param1:Array) : void
      {
         this.§_-Gl§.§_-Oh§(param1);
      }
      
      private function §_-sp§(param1:Event) : void
      {
         this.§_-W1§.§_-kg§();
         if(this.§_-Mx§)
         {
            this.§_-cO§(this.§_-Mx§);
            this.§_-Mx§ = null;
            this.§_-2I§();
         }
         if(this.§_-MZ§ != null)
         {
            this.§_-MZ§.addEventListeners();
         }
      }
      
      private function §_-2I§() : void
      {
         this.§_-xa§.dispatchEvent(new Event(Event.INIT));
         this.§_-hO§();
      }
      
      private function §_-hO§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-ah§)
         {
            this.§_-xa§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-ah§ = [];
      }
      
      public function init(param1:§_-US§) : void
      {
         if(this.§_-3B§)
         {
            this.clearLevel();
         }
         this.§_-9r§ = new §_-oI§(this,param1);
         this.§_-SU§ = new §_-eM§(this);
         this.§_-sW§ = new §_-Lq§(param1.§_-TB§,this.§_-9r§.§_-8B§ / §_-rO§,this.§_-Gl§,this.§_-W1§);
         this.§_-sW§.§_-YZ§(§_-u4§.§_-af§());
         this.§_-0o§ = this.§_-8V§(param1);
         this.§null § = this.§_-ev§(param1);
         this.§_-Ss§ = new §_-hK§(this.§_-Gl§,this.§_-W1§);
         this.§_-9M§ = new §_-vn§(this,param1);
         this.§_-da§();
         this.§_-BW§ = 0;
         this.§_-XL§ = 0;
         this.§_-3B§ = true;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-0M§ = param1.§_-TB§;
         this.§_-Yf§ = new §_-l0§(§_-HB§.§_-Z-§);
         §_-Fy§.init();
         this.§_-ed§ = 0;
         if(this.§_-Nv§)
         {
            this.§_-1g§ = §_-l0§.§_-gD§(this.§_-Nv§);
            this.§_-1g§.speed = 1;
            this.§_-1g§.play();
            this.§_-6I§ = -1000;
            this.§_-Nv§ = null;
         }
      }
      
      public function §_-W9§(param1:String) : void
      {
         this.§_-Nv§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§_-1g§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§_-1g§)
         {
            if(param1)
            {
               this.§_-1g§.speed = Math.min(this.§_-1g§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§_-1g§.speed = Math.max(this.§_-1g§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§_-1g§)
         {
            this.§_-1g§.speed = 1;
         }
      }
      
      protected function §_-8V§(param1:§_-US§) : §_-Fv§
      {
         return new §_-Fv§(this,param1,new Sprite());
      }
      
      protected function §_-ev§(param1:§_-US§) : §_-GA§
      {
         return new §_-GA§(this,param1,new Sprite());
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         if(this.§_-3B§)
         {
            this.clearLevel();
         }
         var _loc3_:§_-US§ = new §_-US§();
         _loc3_.§_-Wq§ = -12;
         var _loc4_:§_-YW§;
         (_loc4_ = new §_-YW§()).left = 0;
         _loc4_.top = -§_-vn§.§_-1F§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §_-vn§.§_-1F§;
         _loc4_.right = _loc4_.left + §_-vn§.§_-YL§;
         _loc4_.y = -13.929;
         _loc4_.x = §_-vn§.§_-YL§;
         _loc4_.id = §_-vn§.§_-y9§;
         _loc3_.§_-Ha§.push(_loc4_);
         var _loc5_:§_-YW§;
         (_loc5_ = new §_-YW§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §_-vn§.§_-YL§;
         _loc5_.bottom = _loc5_.top + §_-vn§.§_-1F§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §_-vn§.§_-YL§ / 2;
         _loc5_.id = §_-vn§.§_-tC§;
         _loc3_.§_-Ha§.push(_loc5_);
         if(param2)
         {
            this.§_-az§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.§_-TB§ = param1;
         }
         else
         {
            _loc3_.§_-TB§ = §_-0M§;
         }
         this.init(_loc3_);
      }
      
      private function §_-nH§() : Number
      {
         this.§_-Bd§ ^= this.§_-Bd§ << 21;
         this.§_-Bd§ ^= this.§_-Bd§ >>> 35;
         this.§_-Bd§ ^= this.§_-Bd§ << 4;
         return this.§_-Bd§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-az§(param1:§_-US§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-dO§ = null;
         this.§_-Bd§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-nH§() * 5;
               (_loc5_ = new §_-dO§()).x = 30 + _loc3_ * 10 + this.§_-nH§() * 9;
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
                  _loc5_.angle = 45 - this.§_-nH§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-nH§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§_-nH§() * 360;
               }
               param1.§_-pf§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-2C§() : void
      {
      }
      
      public function §_-da§() : void
      {
         this.§_-ez§(this.§_-sW§.§_-wA§,true);
         if(§_-Lq§.§_-Qx§)
         {
            this.§_-ez§(this.§_-sW§.§_-Ii§,false);
         }
         this.§_-ez§(this.§_-Ss§.§_-MU§(§_-hK§.§_-zp§),true);
         this.§_-ez§(this.§_-Ss§.§_-MU§(§_-hK§.§_-jg§),true);
         this.§_-ez§(this.§_-0o§.§_-oL§,true);
         this.§_-ez§(this.§null §.sprite,true);
         this.§_-ez§(this.§_-Ss§.§_-MU§(§_-hK§.§_-I1§),true);
         if(§_-Lq§.§_-Qx§)
         {
            this.§_-ez§(this.§_-sW§.§_-qb§,true);
         }
         this.§_-ez§(this.§_-Ss§.§_-MU§(§_-hK§.§_-5j§),true);
         if(!§_-eM§.§_-k1§)
         {
         }
      }
      
      private function §_-ez§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
         if(param2 && this.§_-nK§)
         {
            this.§_-nK§.push(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-u4§.§_-Ps§;
         param2 /= §_-u4§.§_-Ps§;
         _loc3_.x = (param1 / §_-vn§.§_-RC§ + this.§_-9M§.§_-MO§ - §_-vn§.§_-G7§ / §_-vn§.§_-RC§) * §_-rO§;
         _loc3_.y = (param2 / §_-vn§.§_-RC§ + this.§_-9M§.§_-D2§ - §_-vn§.§_-P8§ / §_-vn§.§_-RC§) * §_-rO§;
         return _loc3_;
      }
      
      public function §_-gO§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-rO§ + §_-vn§.§_-G7§ / §_-vn§.§_-RC§ - this.§_-9M§.§_-MO§) * §_-vn§.§_-RC§;
         _loc3_.y = (param2 / §_-rO§ + §_-vn§.§_-P8§ / §_-vn§.§_-RC§ - this.§_-9M§.§_-D2§) * §_-vn§.§_-RC§;
         _loc3_.x *= §_-u4§.§_-bA§;
         _loc3_.y *= §_-u4§.§_-bA§;
         return _loc3_;
      }
      
      public function §_-MK§(param1:String, param2:Number, param3:Number) : void
      {
         this.§_-0o§.§_-NT§(param1,param2,param3);
      }
      
      public function §_-ar§() : void
      {
         if(this.§_-FX§)
         {
            this.§_-FX§.visible = true;
            this.§_-FX§.alpha = 0;
         }
         this.§_-l5§ = 0;
      }
      
      public function §_-XF§() : void
      {
         this.§_-G-§ = new §_-RW§(§_-Lm§.§_-2d§,§_-Lm§.§_-JY§);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Sprite = null;
         if(this.§_-sW§)
         {
            this.§_-sW§.dispose();
            this.§_-sW§ = null;
         }
         if(this.§_-0o§)
         {
            this.§_-0o§.dispose();
            this.§_-0o§ = null;
            this.§_-qd§ = null;
         }
         if(this.§_-nK§)
         {
            for each(_loc1_ in this.§_-nK§)
            {
               _loc1_.dispose();
            }
            this.§_-nK§ = new Vector.<Sprite>();
         }
         if(this.§_-SU§)
         {
            if(!this.§_-SU§.§_-UB§)
            {
            }
            this.§_-SU§.clear();
            this.§_-SU§ = null;
         }
         if(this.§_-9r§)
         {
            this.§_-9r§.clear();
            this.§_-9r§ = null;
         }
         if(this.§null §)
         {
            this.§null §.dispose();
            this.§null § = null;
         }
         if(this.§_-9M§)
         {
            this.§_-9M§.clear();
            this.§_-9M§ = null;
         }
         if(this.§_-Ss§)
         {
            this.§_-Ss§.dispose();
            this.§_-Ss§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-BW§ = 0;
         this.§_-XL§ = 0;
         this.§_-3B§ = false;
         this.§_-l5§ = §_-Lm§.§_-AL§;
         if(this.§_-M2§)
         {
            (this.§_-M2§ as §_-7Z§).§_-pr§.x = 0;
            (this.§_-M2§ as §_-7Z§).§_-pr§.y = 0;
         }
         if(this.§_-FX§)
         {
            this.§_-FX§.visible = false;
         }
         this.§_-1g§ = null;
         this.§_-Yf§ = null;
         this.§_-hO§();
      }
      
      public function gameOver() : void
      {
      }
      
      public function §_-1H§() : String
      {
         if(this.§_-Yf§)
         {
            return this.§_-Yf§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.§_-3B§ || !§_-BI§.§_-s2§())
         {
            return 0;
         }
         if(this.§_-1g§ && this.§_-1g§.§_-Os§)
         {
            return this.§_-3q§(param1,param2,param3);
         }
         return this.§_-LM§(param1,true,param2,param3);
      }
      
      private function §_-LM§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc5_:Number = 0;
         this.§_-XL§ += param1;
         if(param3)
         {
            this.§_-BW§ += param1;
            _loc5_ = this.§_-SU§.§_-Jp§(this.§_-BW§);
            this.§null §.update(param1,param4);
            this.§_-BW§ = _loc5_;
         }
         else
         {
            this.§_-0o§.§_-t2§();
            this.§_-BW§ = 0;
         }
         if(param2)
         {
            this.§_-xk§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §_-3q§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §_-eM§.§_-ZB§ * 1000;
         if(this.§_-1g§)
         {
            param1 *= this.§_-1g§.speed;
            _loc5_ = this.§_-XL§ + param1;
            while(this.§_-XL§ + _loc4_ < _loc5_)
            {
               if(this.§_-XL§ + _loc4_ > this.§_-6I§)
               {
                  this.§_-1g§.step(this);
                  this.§_-6I§ += _loc4_;
               }
               this.§_-LM§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§_-6I§ + _loc4_)
            {
               this.§_-1g§.step(this);
               this.§_-6I§ += _loc4_;
            }
            if(this.§_-XL§ < _loc5_)
            {
               this.§_-LM§(_loc5_ - this.§_-XL§,true,param2,param3);
            }
            return param1;
         }
         return this.§_-LM§(_loc4_,true,param2,param3);
      }
      
      private function §_-xk§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Sprite = null;
         this.§_-0o§.§_-ZD§(param1,param2);
         this.§_-zf§();
         if(this.§_-l5§ < §_-Lm§.§_-AL§)
         {
            this.§_-l5§ += param1;
            _loc3_ = §_-Lm§.§_-AL§ / 2;
            _loc4_ = (-Math.abs(this.§_-l5§ - _loc3_) + _loc3_) * (§_-Lm§.§_-ch§ / _loc3_);
            if(this.§_-FX§)
            {
               this.§_-FX§.alpha = _loc4_;
            }
         }
         else if(this.§_-FX§)
         {
            this.§_-FX§.visible = false;
         }
         if(this.§_-G-§)
         {
            if(!this.§_-G-§.§_-C6§(this.§_-9M§,param1))
            {
               this.§_-G-§ = null;
            }
         }
         this.§_-9M§.§_-PV§(param1);
         this.§_-SU§.§_-lT§();
         this.§_-Ss§.update(param1);
         if(this.§_-nK§)
         {
            for each(_loc5_ in this.§_-nK§)
            {
               _loc5_.flatten();
            }
         }
      }
      
      public function §_-zf§() : void
      {
         var _loc1_:§_-GI§ = null;
         if(this.§_-XL§ > this.§_-ed§ + 1000 / 30)
         {
            if(this.§_-P1§ != null)
            {
               for each(_loc1_ in this.§_-P1§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§_-ed§ = this.§_-XL§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-GI§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§_-0o§.isPigsAlive(true))
            {
               _loc2_ = this.§_-0o§.§_-lG§(true);
               _loc2_.§_-M4§.mTryToScream = §_-KA§.§_-6K§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§_-0o§.§_-sS§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§_-0o§.isPigsAlive(true))
            {
               _loc2_ = this.§_-0o§.§_-lG§(true);
               _loc2_.§_-M4§.mTryToBlink = §_-KA§.§_-NA§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§_-0o§.§_-sS§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §_-C-§.§_-0l§;
         }
         §_-Fy§.addScore(param1,param2);
         this.§_-MZ§.addScore(param1);
         if(param3 && param1 > 0)
         {
            this.§_-Ee§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §_-Ee§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-C-§.§_-sB§;
         }
         this.§_-Ss§.§_-pB§(§_-C-§.§_-LG§,§_-hK§.§_-5j§,§_-C-§.§_-Jn§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-iA§(param1:§_-GI§) : void
      {
         if(this.§_-P1§ == null)
         {
            this.§_-P1§ = new Array();
         }
         this.§_-P1§.push(param1);
      }
      
      public function §_-wD§() : void
      {
         this.§null §.§_-wD§();
         this.§_-0o§.mSardineCanAdded = true;
      }
      
      public function §_-nU§(param1:§_-GI§) : void
      {
         this.§_-Ss§.§_-Xt§(§_-hK§.§_-zp§);
         if(this.§_-P1§.indexOf(param1) >= 0)
         {
            this.§_-P1§.splice(this.§_-P1§.indexOf(param1),1);
         }
         if(this.§_-P1§.length == 0)
         {
            this.§_-P1§ = null;
         }
      }
      
      public function §_-Mq§(param1:§_-UH§, param2:Number, param3:Number) : void
      {
         this.§_-qd§ = this.§_-0o§.§_-NT§(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-GA§.§_-2T§) : Number(§_-GA§.§_-Qg§);
         if(param1.§_-OD§ > 1)
         {
            this.§_-qd§.§_-aM§(param1.§_-OD§);
            this.§_-qd§.§_-M4§.§_-ec§();
         }
         if(param1.§_-Tk§ != 0)
         {
            _loc4_ = param1.§_-Tk§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§_-qd§.§_-vP§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§_-Nq§(§_-vn§.§_-Ur§);
         if(this.§_-Yf§)
         {
            this.§_-Yf§.§_-Mq§(this.§_-SU§.§_-F6§,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         if(this.activeObject is §_-8x§ && !(this.activeObject as §_-8x§).§_-zd§)
         {
            this.§_-0o§.§_-Sq§ = true;
            this.§_-ZV§ = true;
         }
         else
         {
            this.§_-0o§.§_-lh§();
         }
         if(this.§_-Yf§)
         {
            this.§_-Yf§.§_-kU§(this.§_-SU§.§_-F6§);
         }
      }
      
      public function §_-jH§() : void
      {
         this.§_-0o§.§_-jH§();
      }
      
      public function §_-as§() : void
      {
         this.§_-0o§.§_-LH§();
      }
      
      public function §_-Wn§() : §_-US§
      {
         var _loc1_:§_-US§ = new §_-US§();
         this.§_-9M§.§_-W8§(_loc1_);
         this.§_-0o§.§_-7h§(_loc1_);
         this.§null §.§_-oq§(_loc1_);
         _loc1_.§_-TB§ = this.§_-sW§.§_-v2§();
         return _loc1_;
      }
      
      public function §_-0c§(param1:Number, param2:Number) : void
      {
         if(this.§_-tG§)
         {
            this.§_-tG§.§_-o1§(param1,param2);
         }
      }
      
      public function get §_-eC§() : §_-Fv§
      {
         return this.§_-0o§;
      }
   }
}
