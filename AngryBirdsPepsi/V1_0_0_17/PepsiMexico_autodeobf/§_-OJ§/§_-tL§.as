package §_-OJ§
{
   import §_-2J§.§_-QM§;
   import §_-CR§.§_-Dz§;
   import §_-CR§.§_-F5§;
   import §_-CR§.§_-l9§;
   import §_-CR§.§_-zf§;
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-IG§.§_-1E§;
   import §_-IV§.§_-dW§;
   import §_-Ja§.b2Vec2;
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   import §_-Qx§.§_-3G§;
   import §_-Qx§.§_-7x§;
   import §_-Qx§.§_-Sf§;
   import §_-Qx§.§_-Wv§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-M7§;
   import §_-W3§.§_-qz§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-ls§.§_-LR§;
   import §_-sK§.§_-Bs§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-tL§
   {
      
      public static const §_-il§:Number = §_-MB§.§_-1q§;
      
      public static const §_-zh§:Number = §_-MB§.§_-SP§;
      
      public static const §_-7m§:Number = 1 / 20;
      
      public static const §_-YW§:Number = §_-MB§.§_-SP§ * §_-7m§;
      
      public static const §_-ZG§:Number = §_-il§ * §_-7m§;
      
      public static const §_-Pt§:§_-dW§ = new §_-dW§(13 - 3);
      
      protected static var §_-52§:String = "";
       
      
      private var §_-S5§:§_-F5§;
      
      private var §_-vX§:§_-Dz§;
      
      private var §_-S9§:Array = null;
      
      private var §_-EL§:§_-LR§;
      
      public var §_-hA§:§_-Bu§;
      
      private var §_-9p§:§_-y5§;
      
      private var §true§:§_-LW§;
      
      private var §_-Gh§:§_-7G§;
      
      private var §_-D6§:§_-Gb§;
      
      public var §_-57§:Boolean = false;
      
      public var §_-nV§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §_-J7§:Number;
      
      public var §_-9c§:Number;
      
      private var §_-Ye§:Number;
      
      public var §_-§:§_-3G§;
      
      public var §_-aE§:Boolean = false;
      
      private var §_-H8§:§_-EU§;
      
      private var §_-ta§:Sprite;
      
      private var §_-SF§:Vector.<Sprite>;
      
      private var §_-t1§:§_-qz§ = null;
      
      private var §_-4V§:EventDispatcher;
      
      private var §_-qD§:Array;
      
      private var §_-qt§:Array;
      
      private var §_-Br§:§_-Vu§;
      
      private var §_-7i§:§_-QM§;
      
      private var §_-gS§:§_-2X§;
      
      private var §_-Mi§:§_-M7§;
      
      private var mStage:Stage;
      
      private var §_-7u§:§_-Rh§;
      
      private var §_-A0§:§_-Bs§;
      
      private var §_-3i§:§_-Bs§;
      
      private var §_-xV§:Number = 0.0;
      
      private var §_-ji§:String;
      
      private var §_-8Y§:uint = 1.417339207E9;
      
      public function §_-tL§(param1:Stage)
      {
         this.§_-qt§ = [];
         super();
         this.§_-4V§ = new EventDispatcher();
         this.§_-§ = new §_-3G§();
         this.mStage = param1;
         this.§_-gS§ = §_-2X§.§_-mE§;
         this.§_-Mi§ = this.§_-Te§(this.§_-gS§);
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§_-Br§ = new §_-Vu§(§_-EU§,param1,new Rectangle(0,0,§_-MB§.§_-1q§,§_-MB§.§_-SP§),_loc2_);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-2n§,false,0,true);
         this.§_-Br§.include = false;
         this.§_-Br§.enableErrorChecking = false;
         this.§_-Br§.§_-IN§ = 2;
         this.§_-Br§.§_-R0§();
      }
      
      public static function §_-2L§(param1:§_-Dz§, param2:§_-Dz§) : Number
      {
         var _loc3_:Number = param1.§_-Fc§ - param2.§_-Fc§;
         var _loc4_:Number = param1.§_-50§ - param2.§_-50§;
         return §_-t0§(_loc3_,_loc4_);
      }
      
      public static function §_-t0§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-ta§ && this.§_-Zo§)
         {
            this.§_-ta§ = this.§_-H8§.§_-61§;
            if(this.§_-ta§)
            {
               if(§_-Vu§.§_-wB§)
               {
                  this.§_-SF§ = new Vector.<Sprite>();
               }
            }
         }
         return this.§_-ta§;
      }
      
      public function get §_-Zo§() : Sprite
      {
         if(!this.§_-H8§)
         {
            this.§_-H8§ = this.§_-Br§.§_-UN§ as §_-EU§;
            this.§_-H8§.§_-pE§ = false;
         }
         return this.§_-H8§;
      }
      
      private function get §_-8y§() : DisplayObject
      {
         if(this.§_-Zo§)
         {
            return (this.§_-Zo§ as §_-EU§).§_-8y§;
         }
         return null;
      }
      
      public function get §_-tJ§() : §_-M7§
      {
         return this.§_-Mi§;
      }
      
      public function get §_-JG§() : §_-2X§
      {
         return this.§_-gS§;
      }
      
      public function get camera() : §_-LW§
      {
         return this.§true§;
      }
      
      public function get objects() : §_-F5§
      {
         return this.§_-S5§;
      }
      
      public function get particles() : §_-Gb§
      {
         return this.§_-D6§;
      }
      
      public function get background() : §_-LR§
      {
         return this.§_-EL§;
      }
      
      public function get slingshot() : §_-7G§
      {
         return this.§_-Gh§;
      }
      
      public function get activeObject() : §_-Dz§
      {
         return this.§_-vX§;
      }
      
      public function get §_-N7§() : §_-y5§
      {
         return this.§_-9p§;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function set activeObject(param1:§_-Dz§) : void
      {
         this.§_-vX§ = param1;
      }
      
      protected function §_-Te§(param1:§_-2X§) : §_-M7§
      {
         return new §_-M7§(param1);
      }
      
      public function §_-Gf§(param1:Boolean) : void
      {
         if(§_-Vu§.§_-dq§)
         {
            if(param1)
            {
               §_-Vu§.§_-dq§.start();
            }
            else
            {
               §_-Vu§.§_-dq§.stop();
            }
         }
      }
      
      public function §_-m3§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-U0§(param1:§_-qz§) : void
      {
         if(this.§_-t1§ != null)
         {
            this.§_-t1§.removeEventListeners();
         }
         this.§_-t1§ = param1;
         this.§_-t1§.addEventListeners();
      }
      
      public function §_-tt§() : §_-Bs§
      {
         return this.§_-A0§;
      }
      
      public function §_-Et§(param1:§_-QM§, param2:Array, param3:Function) : void
      {
         this.§_-7i§ = param1;
         var _loc4_:int = this.§_-7i§.§_-Np§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-gS§.§_-Lf§(this.§_-7i§.§_-Hb§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-4V§.addEventListener(Event.INIT,param3);
            this.§_-qt§.push(param3);
         }
         if(this.§_-0O§(param2))
         {
            this.§_-7h§();
         }
      }
      
      private function §_-0O§(param1:Array) : Boolean
      {
         if(this.§_-gS§.§_-WP§())
         {
            this.§_-K7§(param1);
            return true;
         }
         this.§_-qD§ = param1.concat();
         return false;
      }
      
      private function §_-K7§(param1:Array) : void
      {
         this.§_-Mi§.§_-K7§(param1);
      }
      
      private function §_-2n§(param1:Event) : void
      {
         this.§_-gS§.§_-dk§();
         if(this.§_-qD§)
         {
            this.§_-0O§(this.§_-qD§);
            this.§_-qD§ = null;
            this.§_-7h§();
         }
         if(this.§_-t1§ != null)
         {
            this.§_-t1§.addEventListeners();
         }
      }
      
      private function §_-7h§() : void
      {
         this.§_-4V§.dispatchEvent(new Event(Event.INIT));
         this.§_-Cd§();
      }
      
      private function §_-Cd§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-qt§)
         {
            this.§_-4V§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-qt§ = [];
      }
      
      public function init(param1:§_-Wv§) : void
      {
         if(this.§_-57§)
         {
            this.clearLevel();
         }
         this.§_-9p§ = new §_-y5§(this,param1);
         this.§_-hA§ = new §_-Bu§(this);
         this.§_-EL§ = new §_-LR§(param1.§_-Tt§,this.§_-9p§.§_-IL§ / §_-7m§,this.§_-Mi§,this.§_-gS§);
         this.§_-EL§.§_-o3§(§_-MB§.§_-G8§());
         this.§_-S5§ = this.§_-Bc§(param1);
         this.§_-Gh§ = this.§_-Ax§(param1);
         this.§_-D6§ = new §_-Gb§(this.§_-Mi§,this.§_-gS§);
         this.§true§ = new §_-LW§(this,param1);
         this.§_-0k§();
         this.§_-J7§ = 0;
         this.§_-9c§ = 0;
         this.§_-57§ = true;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-52§ = param1.§_-Tt§;
         this.§_-A0§ = new §_-Bs§(§_-Sf§.§_-vj§);
         §_-vI§.init();
         this.§_-Ye§ = 0;
         if(this.§_-ji§)
         {
            this.§_-3i§ = §_-Bs§.§_-oA§(this.§_-ji§);
            this.§_-3i§.speed = 1;
            this.§_-3i§.play();
            this.§_-xV§ = -1000;
            this.§_-ji§ = null;
         }
      }
      
      public function §_-xs§(param1:String) : void
      {
         this.§_-ji§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§_-3i§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§_-3i§)
         {
            if(param1)
            {
               this.§_-3i§.speed = Math.min(this.§_-3i§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§_-3i§.speed = Math.max(this.§_-3i§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§_-3i§)
         {
            this.§_-3i§.speed = 1;
         }
      }
      
      protected function §_-Bc§(param1:§_-Wv§) : §_-F5§
      {
         return new §_-F5§(this,param1,new Sprite());
      }
      
      protected function §_-Ax§(param1:§_-Wv§) : §_-7G§
      {
         return new §_-7G§(this,param1,new Sprite());
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         if(this.§_-57§)
         {
            this.clearLevel();
         }
         var _loc3_:§_-Wv§ = new §_-Wv§();
         _loc3_.§_-tP§ = -12;
         var _loc4_:§_-7x§;
         (_loc4_ = new §_-7x§()).left = 0;
         _loc4_.top = -§_-LW§.§_-iy§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §_-LW§.§_-iy§;
         _loc4_.right = _loc4_.left + §_-LW§.§_-Bh§;
         _loc4_.y = -13.929;
         _loc4_.x = §_-LW§.§_-Bh§;
         _loc4_.id = §_-LW§.§_-3Y§;
         _loc3_.§_-Pg§.push(_loc4_);
         var _loc5_:§_-7x§;
         (_loc5_ = new §_-7x§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §_-LW§.§_-Bh§;
         _loc5_.bottom = _loc5_.top + §_-LW§.§_-iy§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §_-LW§.§_-Bh§ / 2;
         _loc5_.id = §_-LW§.§_-ZB§;
         _loc3_.§_-Pg§.push(_loc5_);
         if(param2)
         {
            this.§_-SZ§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.§_-Tt§ = param1;
         }
         else
         {
            _loc3_.§_-Tt§ = §_-52§;
         }
         this.init(_loc3_);
      }
      
      private function §null §() : Number
      {
         this.§_-8Y§ ^= this.§_-8Y§ << 21;
         this.§_-8Y§ ^= this.§_-8Y§ >>> 35;
         this.§_-8Y§ ^= this.§_-8Y§ << 4;
         return this.§_-8Y§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-SZ§(param1:§_-Wv§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-1E§ = null;
         this.§_-8Y§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§null §() * 5;
               (_loc5_ = new §_-1E§()).x = 30 + _loc3_ * 10 + this.§null §() * 9;
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
                  _loc5_.angle = 45 - this.§null §() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§null §() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§null §() * 360;
               }
               param1.§_-yZ§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-vy§() : void
      {
      }
      
      public function §_-0k§() : void
      {
         this.§_-4z§(this.§_-EL§.§_-zm§,true);
         if(§_-LR§.§_-iQ§)
         {
            this.§_-4z§(this.§_-EL§.§_-1l§,false);
         }
         this.§_-4z§(this.§_-D6§.§_-IW§(§_-Gb§.§_-uJ§),true);
         this.§_-4z§(this.§_-D6§.§_-IW§(§_-Gb§.§_-kL§),true);
         this.§_-4z§(this.§_-S5§.§_-tR§,true);
         this.§_-4z§(this.§_-Gh§.sprite,true);
         this.§_-4z§(this.§_-D6§.§_-IW§(§_-Gb§.§_-oO§),true);
         if(§_-LR§.§_-iQ§)
         {
            this.§_-4z§(this.§_-EL§.§_-so§,true);
         }
         this.§_-4z§(this.§_-D6§.§_-IW§(§_-Gb§.§_-l4§),true);
         if(!§_-Bu§.§_-CD§)
         {
         }
      }
      
      private function §_-4z§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
         if(param2 && this.§_-SF§)
         {
            this.§_-SF§.push(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-MB§.§_-y3§;
         param2 /= §_-MB§.§_-y3§;
         _loc3_.x = (param1 / §_-LW§.§ use§ + this.§true§.§_-bM§ - §_-LW§.§_-wF§ / §_-LW§.§ use§) * §_-7m§;
         _loc3_.y = (param2 / §_-LW§.§ use§ + this.§true§.§_-z§ - §_-LW§.§_-C4§ / §_-LW§.§ use§) * §_-7m§;
         return _loc3_;
      }
      
      public function §_-pB§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-7m§ + §_-LW§.§_-wF§ / §_-LW§.§ use§ - this.§true§.§_-bM§) * §_-LW§.§ use§;
         _loc3_.y = (param2 / §_-7m§ + §_-LW§.§_-C4§ / §_-LW§.§ use§ - this.§true§.§_-z§) * §_-LW§.§ use§;
         _loc3_.x *= §_-MB§.§_-D1§;
         _loc3_.y *= §_-MB§.§_-D1§;
         return _loc3_;
      }
      
      public function §_-hE§(param1:String, param2:Number, param3:Number) : void
      {
         this.§_-S5§.§switch§(param1,param2,param3);
      }
      
      public function §_-qS§() : void
      {
         if(this.§_-8y§)
         {
            this.§_-8y§.visible = true;
            this.§_-8y§.alpha = 0;
         }
         this.§_-nV§ = 0;
      }
      
      public function §_-9e§() : void
      {
         this.§_-7u§ = new §_-Rh§(§_-EQ§.§_-uy§,§_-EQ§.§_-AC§);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Sprite = null;
         if(this.§_-EL§)
         {
            this.§_-EL§.dispose();
            this.§_-EL§ = null;
         }
         if(this.§_-S5§)
         {
            this.§_-S5§.dispose();
            this.§_-S5§ = null;
            this.§_-vX§ = null;
         }
         if(this.§_-SF§)
         {
            for each(_loc1_ in this.§_-SF§)
            {
               _loc1_.dispose();
            }
            this.§_-SF§ = new Vector.<Sprite>();
         }
         if(this.§_-hA§)
         {
            if(!this.§_-hA§.§_-5i§)
            {
            }
            this.§_-hA§.clear();
            this.§_-hA§ = null;
         }
         if(this.§_-9p§)
         {
            this.§_-9p§.clear();
            this.§_-9p§ = null;
         }
         if(this.§_-Gh§)
         {
            this.§_-Gh§.dispose();
            this.§_-Gh§ = null;
         }
         if(this.§true§)
         {
            this.§true§.clear();
            this.§true§ = null;
         }
         if(this.§_-D6§)
         {
            this.§_-D6§.dispose();
            this.§_-D6§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-J7§ = 0;
         this.§_-9c§ = 0;
         this.§_-57§ = false;
         this.§_-nV§ = §_-EQ§.§_-KC§;
         if(this.§_-Zo§)
         {
            (this.§_-Zo§ as §_-EU§).§_-Nt§.x = 0;
            (this.§_-Zo§ as §_-EU§).§_-Nt§.y = 0;
         }
         if(this.§_-8y§)
         {
            this.§_-8y§.visible = false;
         }
         this.§_-3i§ = null;
         this.§_-A0§ = null;
         this.§_-Cd§();
      }
      
      public function gameOver() : void
      {
      }
      
      public function §_-ex§() : String
      {
         if(this.§_-A0§)
         {
            return this.§_-A0§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.§_-57§ || !§_-Vu§.§_-5v§())
         {
            return 0;
         }
         if(this.§_-3i§ && this.§_-3i§.§_-Z§)
         {
            return this.§_-sR§(param1,param2,param3);
         }
         return this.§_-fc§(param1,true,param2,param3);
      }
      
      private function §_-fc§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc5_:Number = 0;
         this.§_-9c§ += param1;
         if(param3)
         {
            this.§_-J7§ += param1;
            _loc5_ = this.§_-hA§.§_-mi§(this.§_-J7§);
            this.§_-Gh§.update(param1,param4);
            this.§_-J7§ = _loc5_;
         }
         else
         {
            this.§_-S5§.§_-FN§();
            this.§_-J7§ = 0;
         }
         if(param2)
         {
            this.§_-nC§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §_-sR§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §_-Bu§.§_-Ks§ * 1000;
         if(this.§_-3i§)
         {
            param1 *= this.§_-3i§.speed;
            _loc5_ = this.§_-9c§ + param1;
            while(this.§_-9c§ + _loc4_ < _loc5_)
            {
               if(this.§_-9c§ + _loc4_ > this.§_-xV§)
               {
                  this.§_-3i§.step(this);
                  this.§_-xV§ += _loc4_;
               }
               this.§_-fc§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§_-xV§ + _loc4_)
            {
               this.§_-3i§.step(this);
               this.§_-xV§ += _loc4_;
            }
            if(this.§_-9c§ < _loc5_)
            {
               this.§_-fc§(_loc5_ - this.§_-9c§,true,param2,param3);
            }
            return param1;
         }
         return this.§_-fc§(_loc4_,true,param2,param3);
      }
      
      private function §_-nC§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Sprite = null;
         this.§_-S5§.§_-Qk§(param1,param2);
         this.§_-mX§();
         if(this.§_-nV§ < §_-EQ§.§_-KC§)
         {
            this.§_-nV§ += param1;
            _loc3_ = §_-EQ§.§_-KC§ / 2;
            _loc4_ = (-Math.abs(this.§_-nV§ - _loc3_) + _loc3_) * (§_-EQ§.§_-kF§ / _loc3_);
            if(this.§_-8y§)
            {
               this.§_-8y§.alpha = _loc4_;
            }
         }
         else if(this.§_-8y§)
         {
            this.§_-8y§.visible = false;
         }
         if(this.§_-7u§)
         {
            if(!this.§_-7u§.§_-Nq§(this.§true§,param1))
            {
               this.§_-7u§ = null;
            }
         }
         this.§true§.§_-Jl§(param1);
         this.§_-hA§.§_-oK§();
         this.§_-D6§.update(param1);
         if(this.§_-SF§)
         {
            for each(_loc5_ in this.§_-SF§)
            {
               _loc5_.flatten();
            }
         }
      }
      
      public function §_-mX§() : void
      {
         var _loc1_:§_-Dz§ = null;
         if(this.§_-9c§ > this.§_-Ye§ + 1000 / 30)
         {
            if(this.§_-S9§ != null)
            {
               for each(_loc1_ in this.§_-S9§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§_-Ye§ = this.§_-9c§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-Dz§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§_-S5§.isPigsAlive(true))
            {
               _loc2_ = this.§_-S5§.§_-Xy§(true);
               _loc2_.§_-e7§.mTryToScream = §_-l9§.§_-ey§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§_-S5§.§_-2G§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§_-S5§.isPigsAlive(true))
            {
               _loc2_ = this.§_-S5§.§_-Xy§(true);
               _loc2_.§_-e7§.mTryToBlink = §_-l9§.§_-L5§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§_-S5§.§_-2G§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §_-UW§.§_-Hs§;
         }
         §_-vI§.addScore(param1,param2);
         this.§_-t1§.addScore(param1);
         if(param3 && param1 > 0)
         {
            this.§_-Fh§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §_-Fh§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-UW§.§_-Tr§;
         }
         this.§_-D6§.§_-JY§(§_-UW§.§_-HS§,§_-Gb§.§_-l4§,§_-UW§.§_-og§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-Ng§(param1:§_-Dz§) : void
      {
         if(this.§_-S9§ == null)
         {
            this.§_-S9§ = new Array();
         }
         this.§_-S9§.push(param1);
      }
      
      public function §_-mN§() : void
      {
         this.§_-Gh§.§_-mN§();
         this.§_-S5§.mSardineCanAdded = true;
      }
      
      public function §_-iF§(param1:§_-Dz§) : void
      {
         this.§_-D6§.§_-QQ§(§_-Gb§.§_-uJ§);
         if(this.§_-S9§.indexOf(param1) >= 0)
         {
            this.§_-S9§.splice(this.§_-S9§.indexOf(param1),1);
         }
         if(this.§_-S9§.length == 0)
         {
            this.§_-S9§ = null;
         }
      }
      
      public function §_-cQ§(param1:§_-1W§, param2:Number, param3:Number) : void
      {
         this.§_-vX§ = this.§_-S5§.§switch§(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-7G§.§_-LQ§) : Number(§_-7G§.§_-st§);
         if(param1.§_-rj§ > 1)
         {
            this.§_-vX§.§_-08§(param1.§_-rj§);
            this.§_-vX§.§_-e7§.§_-2w§();
         }
         if(param1.§_-Rq§ != 0)
         {
            _loc4_ = param1.§_-Rq§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§_-vX§.§var§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§_-dE§(§_-LW§.§_-Z3§);
         if(this.§_-A0§)
         {
            this.§_-A0§.§_-cQ§(this.§_-hA§.§_-mv§,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         if(this.activeObject is §_-zf§ && !(this.activeObject as §_-zf§).§_-mb§)
         {
            this.§_-S5§.§_-cY§ = true;
            this.§_-aE§ = true;
         }
         else
         {
            this.§_-S5§.§_-xU§();
         }
         if(this.§_-A0§)
         {
            this.§_-A0§.§_-HX§(this.§_-hA§.§_-mv§);
         }
      }
      
      public function §_-hd§() : void
      {
         this.§_-S5§.§_-hd§();
      }
      
      public function §_-6a§() : void
      {
         this.§_-S5§.§_-vK§();
      }
      
      public function §_-sy§() : §_-Wv§
      {
         var _loc1_:§_-Wv§ = new §_-Wv§();
         this.§true§.§_-fU§(_loc1_);
         this.§_-S5§.§_-NG§(_loc1_);
         this.§_-Gh§.§try §(_loc1_);
         _loc1_.§_-Tt§ = this.§_-EL§.§_-WY§();
         return _loc1_;
      }
      
      public function §_-ha§(param1:Number, param2:Number) : void
      {
         if(this.§_-H8§)
         {
            this.§_-H8§.§_-nk§(param1,param2);
         }
      }
      
      public function get §_-83§() : §_-F5§
      {
         return this.§_-S5§;
      }
   }
}
