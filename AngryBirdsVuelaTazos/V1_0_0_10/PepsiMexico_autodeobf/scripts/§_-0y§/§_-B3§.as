package §_-0y§
{
   import §_-3P§.§_-Ln§;
   import §_-3P§.§_-Ud§;
   import §_-3P§.§_-ry§;
   import §_-7o§.§_-Kd§;
   import §_-7o§.§_-w7§;
   import §_-B2§.§_-H4§;
   import §_-I1§.§_-2N§;
   import §_-I4§.§_-tx§;
   import §_-KS§.§_-6i§;
   import §_-KS§.§_-ia§;
   import §_-Sp§.§_-D4§;
   import §_-Sp§.§_-JP§;
   import §_-Sp§.§_-Lk§;
   import §_-hT§.§_-rE§;
   import §_-m6§.§_-d§;
   import §_-ow§.§_-Mo§;
   import §_-se§.DisplayObject;
   import §_-se§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-B3§
   {
      
      public static const §_-64§:Number = §_-2N§.§_-ZL§;
      
      public static const §_-KP§:Number = §_-2N§.§_-Uw§;
      
      public static const §_-s8§:Number = 1 / 20;
      
      public static const §_-RN§:Number = §_-2N§.§_-Uw§ * §_-s8§;
      
      public static const §_-8x§:Number = §_-64§ * §_-s8§;
      
      public static const §_-eB§:int = 10;
      
      public static const §_-rw§:Boolean = true;
      
      protected static var §_-2l§:String = "";
       
      
      public var mLevelObjects:§_-D4§;
      
      public var mActiveObject:§_-JP§;
      
      public var §_-BZ§:Array = null;
      
      public var §_-Ms§:§_-Mo§;
      
      public var §_-AT§:§_-RD§;
      
      public var §_-iZ§:§_-B§;
      
      private var §_-tv§:§_-Y4§;
      
      public var mLevelSlingshot:§_-ZB§;
      
      public var §_-29§:§_-Kd§;
      
      public var §_-Ci§:Boolean = false;
      
      public var §_-T-§:Number = 1500;
      
      public var §_-DO§:Number = 2400;
      
      public var §_-Ie§:Number = 0;
      
      public var §_-55§:Number = 0.2;
      
      public var §_-82§:Number = 8.8;
      
      public var mPigsAnimationTimer1:Number;
      
      public var mPigsAnimationTimer2:Number;
      
      public var §_-3w§:Number;
      
      public var §_-pt§:Number;
      
      public var §_-cl§:§_-Ud§;
      
      public var mTrailSpecial:Boolean = false;
      
      public var §_-9-§:Sprite = null;
      
      public const §_-ga§:int = 2;
      
      public var §_-PX§:int = 0;
      
      private var §_-9e§:§_-0Z§;
      
      private var §_-eF§:Sprite;
      
      private var §_-bm§:Vector.<Sprite>;
      
      private var §_-vd§:§_-d§ = null;
      
      private var §_-1p§:EventDispatcher;
      
      private var §_-r1§:Array;
      
      private var §_-ty§:Array;
      
      private var §_-ck§:§_-H4§;
      
      private var §_-Nl§:§_-tx§;
      
      private var §_-NZ§:§_-ia§;
      
      private var §_-T9§:§_-6i§;
      
      private var mStage:Stage;
      
      private var §_-mQ§:uint = 1.417339207E9;
      
      public function §_-B3§(param1:Stage)
      {
         this.§_-ty§ = [];
         super();
         this.§_-1p§ = new EventDispatcher();
         this.§_-cl§ = new §_-Ud§();
         this.mStage = param1;
         this.§_-NZ§ = §_-ia§.§_-vJ§;
         this.§_-T9§ = this.§_-OK§(this.§_-NZ§);
         var _loc2_:Stage3D = param1.stage3Ds[0];
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-kk§,false,0,true);
         this.§_-ck§ = new §_-H4§(§_-0Z§,param1,new Rectangle(0,0,§_-2N§.§_-ZL§,§_-2N§.§_-Uw§),_loc2_);
         this.§_-ck§.§_-7j§ = false;
         this.§_-ck§.enableErrorChecking = false;
         this.§_-ck§.§_-6o§ = 2;
         this.§_-ck§.start();
      }
      
      public static function §_-io§(param1:§_-JP§, param2:§_-JP§) : Number
      {
         var _loc3_:Number = param1.§_-IO§ - param2.§_-IO§;
         var _loc4_:Number = param1.§_-pO§ - param2.§_-pO§;
         return §_-gf§(_loc3_,_loc4_);
      }
      
      public static function §_-gf§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-eF§ && this.§_-sv§)
         {
            this.§_-eF§ = this.§_-9e§.§_-Ac§;
            if(this.§_-eF§)
            {
               if(this.§_-vd§ != null)
               {
                  this.§_-vd§.addEventListeners();
               }
               if(§_-H4§.§_-OR§)
               {
                  this.§_-bm§ = new Vector.<Sprite>();
               }
            }
         }
         return this.§_-eF§;
      }
      
      public function get §_-sv§() : Sprite
      {
         if(!this.§_-9e§)
         {
            this.§_-9e§ = this.§_-ck§.§_-Eg§ as §_-0Z§;
         }
         return this.§_-9e§;
      }
      
      private function get §_-1A§() : DisplayObject
      {
         if(this.§_-sv§)
         {
            return (this.§_-sv§ as §_-0Z§).§_-1A§;
         }
         return null;
      }
      
      public function get §_-b5§() : §_-6i§
      {
         return this.§_-T9§;
      }
      
      public function get §_-WT§() : §_-ia§
      {
         return this.§_-NZ§;
      }
      
      protected function §_-OK§(param1:§_-ia§) : §_-6i§
      {
         return new §_-6i§(param1);
      }
      
      public function §_-jx§(param1:Boolean) : void
      {
         if(this.§_-sv§)
         {
            this.§_-sv§.visible = param1;
         }
      }
      
      public function §_-xN§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-Uk§(param1:§_-d§) : void
      {
         if(this.§_-vd§ != null)
         {
            this.§_-vd§.§_-7a§();
         }
         this.§_-vd§ = param1;
         this.§_-vd§.addEventListeners();
      }
      
      public function §_-Z-§(param1:§_-tx§, param2:Array, param3:Function) : void
      {
         this.§_-Nl§ = param1;
         var _loc4_:int = this.§_-Nl§.§_-TZ§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-NZ§.§_-WW§(this.§_-Nl§.§_-7r§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-1p§.addEventListener(Event.INIT,param3);
            this.§_-ty§.push(param3);
         }
         if(this.§_-4§(param2))
         {
            this.§_-pf§();
         }
      }
      
      private function §_-4§(param1:Array) : Boolean
      {
         if(this.§_-NZ§.§_-YC§())
         {
            this.§_-wq§(param1);
            return true;
         }
         this.§_-r1§ = param1.concat();
         return false;
      }
      
      private function §_-wq§(param1:Array) : void
      {
         this.§_-T9§.§_-wq§(param1);
      }
      
      private function §_-kk§(param1:Event) : void
      {
         this.§_-NZ§.§_-mv§();
         if(this.§_-r1§)
         {
            this.§_-4§(this.§_-r1§);
            this.§_-r1§ = null;
            this.§_-pf§();
         }
      }
      
      private function §_-pf§() : void
      {
         this.§_-1p§.dispatchEvent(new Event(Event.INIT));
         this.§_-Ea§();
      }
      
      private function §_-Ea§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-ty§)
         {
            this.§_-1p§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-ty§ = [];
      }
      
      public function init(param1:§_-ry§) : void
      {
         if(this.§_-Ci§)
         {
            this.clearLevel();
         }
         this.§_-iZ§ = new §_-B§(this,param1);
         this.§_-AT§ = new §_-RD§(this);
         this.§_-Ms§ = new §_-Mo§(param1.§_-j3§,this.§_-iZ§.§_-Ab§ / §_-s8§,this.§_-T9§,this.§_-NZ§);
         this.§_-Ms§.§_-oO§(§_-2N§.§_-Ki§());
         this.mLevelObjects = this.§_-RP§(param1);
         this.mLevelSlingshot = this.§_-wg§(param1);
         this.§_-29§ = new §_-Kd§(this.§_-T9§,this.§_-NZ§);
         this.§_-tv§ = new §_-Y4§(this,param1);
         this.§_-P-§();
         this.§_-3w§ = 0;
         this.§_-pt§ = 0;
         this.§_-Ci§ = true;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-2l§ = param1.§_-j3§;
      }
      
      protected function §_-RP§(param1:§_-ry§) : §_-D4§
      {
         return new §_-D4§(this,param1,new Sprite());
      }
      
      protected function §_-wg§(param1:§_-ry§) : §_-ZB§
      {
         return new §_-ZB§(this,param1,new Sprite());
      }
      
      public function initEmptyEnvironment() : void
      {
         if(this.§_-Ci§)
         {
            this.clearLevel();
         }
         var _loc1_:§_-ry§ = new §_-ry§();
         _loc1_.§_-0Y§ = -12;
         var _loc2_:§_-Ln§ = new §_-Ln§();
         _loc2_.left = 0;
         _loc2_.top = -§_-Y4§.§_-nq§ / 10 * 8;
         _loc2_.bottom = _loc2_.top + §_-Y4§.§_-nq§;
         _loc2_.right = _loc2_.left + §_-Y4§.§_-VJ§;
         _loc2_.y = -13.929;
         _loc2_.x = §_-Y4§.§_-VJ§;
         _loc2_.id = §_-Y4§.§_-vx§;
         _loc1_.§_-wo§.push(_loc2_);
         var _loc3_:§_-Ln§ = new §_-Ln§();
         _loc3_.top = _loc2_.top;
         _loc3_.bottom = _loc2_.bottom;
         _loc3_.left = 150;
         _loc3_.right = _loc3_.left + §_-Y4§.§_-VJ§;
         _loc3_.bottom = _loc3_.top + §_-Y4§.§_-nq§;
         _loc3_.y = _loc2_.y;
         _loc3_.x = _loc3_.left + §_-Y4§.§_-VJ§ / 2;
         _loc3_.id = §_-Y4§.§_-cK§;
         _loc1_.§_-wo§.push(_loc3_);
         this.§_-DW§(_loc1_);
         _loc1_.§_-j3§ = §_-2l§;
         this.init(_loc1_);
      }
      
      private function §_-Lq§() : Number
      {
         this.§_-mQ§ ^= this.§_-mQ§ << 21;
         this.§_-mQ§ ^= this.§_-mQ§ >>> 35;
         this.§_-mQ§ ^= this.§_-mQ§ << 4;
         return this.§_-mQ§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-DW§(param1:§_-ry§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-rE§ = null;
         this.§_-mQ§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-Lq§() * 5;
               (_loc5_ = new §_-rE§()).x = 30 + _loc3_ * 10 + this.§_-Lq§() * 9;
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
                  _loc5_.angle = 45 - this.§_-Lq§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-Lq§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§_-Lq§() * 360;
               }
               param1.§_-Oe§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-2s§() : void
      {
      }
      
      public function §_-P-§() : void
      {
         this.§_-6G§(this.§_-Ms§.§_-Y5§,false);
         if(§_-Mo§.§_-J-§)
         {
            this.§_-6G§(this.§_-Ms§.§_-wc§,false);
         }
         this.§_-6G§(this.§_-29§.§_-s1§(§_-Kd§.§_-8w§),true);
         this.§_-6G§(this.§_-29§.§_-s1§(§_-Kd§.§_-Zh§),true);
         this.§_-6G§(this.mLevelObjects.§_-0e§,true);
         this.§_-6G§(this.mLevelSlingshot.sprite,true);
         this.§_-6G§(this.§_-29§.§_-s1§(§_-Kd§.§_-vR§),true);
         this.§_-6G§(this.§_-Ms§.§_-hx§,true);
         if(§_-Mo§.§_-J-§)
         {
            this.§_-6G§(this.§_-Ms§.§_-G0§,true);
         }
         this.§_-6G§(this.§_-29§.§_-s1§(§_-Kd§.§_-vh§),true);
         if(!§_-RD§.§_-PQ§)
         {
         }
      }
      
      private function §_-6G§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
         if(param2 && this.§_-bm§)
         {
            this.§_-bm§.push(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-2N§.§_-pv§;
         param2 /= §_-2N§.§_-pv§;
         _loc3_.x = (param1 / §_-Y4§.§_-Q-§ + this.§_-tv§.§_-VA§ - §_-Y4§.§_-JB§ / §_-Y4§.§_-Q-§) * §_-s8§;
         _loc3_.y = (param2 / §_-Y4§.§_-Q-§ + this.§_-tv§.§_-ZQ§ - §_-Y4§.§_-Eb§ / §_-Y4§.§_-Q-§) * §_-s8§;
         return _loc3_;
      }
      
      public function §_-Xs§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-s8§ + §_-Y4§.§_-JB§ / §_-Y4§.§_-Q-§ - this.§_-tv§.§_-VA§) * §_-Y4§.§_-Q-§;
         _loc3_.y = (param2 / §_-s8§ + §_-Y4§.§_-Eb§ / §_-Y4§.§_-Q-§ - this.§_-tv§.§_-ZQ§) * §_-Y4§.§_-Q-§;
         _loc3_.x *= §_-2N§.§_-nb§;
         _loc3_.y *= §_-2N§.§_-nb§;
         return _loc3_;
      }
      
      public function §_-Ah§(param1:String, param2:Number, param3:Number) : void
      {
         this.mLevelObjects.§_-08§(param1,param2,param3);
      }
      
      public function §_-2y§() : void
      {
         if(this.§_-1A§)
         {
            this.§_-1A§.visible = true;
            this.§_-1A§.alpha = 0;
         }
         this.§_-T-§ = 0;
      }
      
      public function §_-ZX§() : void
      {
         this.§_-DO§ = 0;
         this.§_-Ie§ = 0;
         this.§_-55§ = §_-Z2§.§_-Ff§;
         this.§_-82§ = §_-Z2§.§_-ZI§;
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Sprite = null;
         if(this.§_-Ms§)
         {
            this.§_-Ms§.dispose();
            this.§_-Ms§ = null;
         }
         if(this.mLevelObjects)
         {
            this.mLevelObjects.dispose();
            this.mLevelObjects = null;
            this.mActiveObject = null;
         }
         if(this.§_-bm§)
         {
            for each(_loc1_ in this.§_-bm§)
            {
               _loc1_.dispose();
            }
            this.§_-bm§ = null;
         }
         if(this.§_-AT§)
         {
            if(!this.§_-AT§.§_-vt§)
            {
            }
            this.§_-AT§.clear();
            this.§_-AT§ = null;
         }
         if(this.§_-iZ§)
         {
            this.§_-iZ§.clear();
            this.§_-iZ§ = null;
         }
         if(this.mLevelSlingshot)
         {
            this.mLevelSlingshot.dispose();
            this.mLevelSlingshot = null;
         }
         if(this.§_-tv§)
         {
            this.§_-tv§.clear();
            this.§_-tv§ = null;
         }
         if(this.§_-29§)
         {
            this.§_-29§.dispose();
            this.§_-29§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-3w§ = 0;
         this.§_-pt§ = 0;
         this.§_-Ci§ = false;
         this.§_-T-§ = §_-Z2§.§_-Du§;
         this.§_-DO§ = §_-Z2§.§_-3f§;
         this.§_-Ie§ = 0;
         this.§_-55§ = §_-Z2§.§_-Ff§;
         this.§_-82§ = §_-Z2§.§_-ZI§;
         if(this.§_-sv§)
         {
            (this.§_-sv§ as §_-0Z§).§_-1C§.x = 0;
            (this.§_-sv§ as §_-0Z§).§_-1C§.y = 0;
         }
         if(this.§_-1A§)
         {
            this.§_-1A§.visible = false;
         }
         this.§_-Ea§();
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         if(!this.§_-Ci§ || !§_-H4§.§_-UE§())
         {
            return;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         this.§_-pt§ += param1;
         if(param2)
         {
            this.§_-3w§ += param1;
            _loc5_ = this.§_-AT§.§_-i0§(this.§_-3w§);
            _loc4_ = this.§_-AT§.§_-Qd§;
         }
         else
         {
            this.mLevelObjects.§_-4U§();
            _loc4_ = param1;
            this.§_-3w§ = 0;
         }
         this.§_-3w§ = _loc5_;
         if(this.§_-BZ§)
         {
            if(this.mTrailSpecial)
            {
               this.§_-PX§ = 0;
            }
            if(this.§_-PX§ == 0)
            {
               this.§_-7T§();
            }
            this.§_-PX§ = (this.§_-PX§ + 1) % this.§_-ga§;
         }
         if(this.§_-T-§ < §_-Z2§.§_-Du§)
         {
            this.§_-T-§ += param1;
            _loc6_ = §_-Z2§.§_-Du§ / 2;
            _loc7_ = (-Math.abs(this.§_-T-§ - _loc6_) + _loc6_) * (§_-Z2§.§_-9Z§ / _loc6_);
            if(this.§_-1A§)
            {
               this.§_-1A§.alpha = _loc7_;
            }
         }
         else if(this.§_-1A§)
         {
            this.§_-1A§.visible = false;
         }
         if(this.§_-DO§ < §_-Z2§.§_-3f§)
         {
            this.§_-DO§ += param1;
            this.§_-X8§(param1);
         }
         this.mLevelObjects.§_-sB§(param1,_loc5_);
         this.§_-tv§.§_-jU§(param1);
         this.§_-AT§.§_-pl§();
         if(param2)
         {
            this.mLevelSlingshot.update(param1,param3);
         }
         this.§_-29§.update(param1);
         if(this.§_-bm§)
         {
            for each(_loc8_ in this.§_-bm§)
            {
               _loc8_.flatten();
            }
         }
      }
      
      public function §_-7T§() : void
      {
         var _loc1_:§_-JP§ = null;
         if(this.§_-BZ§ != null)
         {
            for each(_loc1_ in this.§_-BZ§)
            {
               _loc1_.addTrail();
            }
         }
      }
      
      private function §_-X8§(param1:Number) : void
      {
         this.§_-Ie§ += this.§_-55§;
         var _loc2_:Number = param1 / §_-Z2§.§_-Q1§ * this.§_-82§ * Math.sin(Math.PI / 4 + this.§_-Ie§ * 2 * Math.PI);
         var _loc3_:Number = param1 / §_-Z2§.§_-Q1§ * this.§_-82§ * Math.sin(this.§_-Ie§ * 2.1 * Math.PI);
         this.§_-82§ -= param1 * §_-Z2§.§_-ZI§ / §_-Z2§.§_-3f§;
         this.§_-55§ -= param1 * §_-Z2§.§_-Ff§ / §_-Z2§.§_-3f§;
         this.§_-tv§.§_-qO§(_loc2_,_loc3_);
         this.§_-tv§.§_-x2§();
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-JP§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.§_-Na§(true);
               _loc2_.§_-LF§.mTryToScream = §_-Lk§.§_-1w§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.mLevelObjects.§_-sG§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.§_-Na§(true);
               _loc2_.§_-LF§.mTryToBlink = §_-Lk§.§_-R6§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.mLevelObjects.§_-sG§());
            }
         }
      }
      
      public function addScore(param1:int, param2:Boolean = false, param3:Number = 0, param4:Number = 0, param5:int = -9999) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-w7§.§_-k-§;
         }
         this.§_-vd§.addScore(param1);
         if(param2 && param1 > 0)
         {
            this.§_-fV§(param1.toString(),param3,param4,800,param5,0,0);
         }
      }
      
      public function §_-fV§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-w7§.§_-uO§;
         }
         this.§_-29§.§_-4V§(§_-w7§.§_-uo§,§_-Kd§.§_-vh§,§_-w7§.§_-09§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-3O§() : void
      {
         if(!§_-rw§)
         {
            return;
         }
         if(this.§_-9-§)
         {
         }
      }
      
      public function §_-0C§() : void
      {
         if(this.§_-9-§)
         {
            this.§_-9-§ = null;
         }
      }
      
      public function §_-HE§(param1:§_-JP§) : void
      {
         if(this.§_-BZ§ == null)
         {
            this.§_-BZ§ = new Array();
         }
         this.§_-BZ§.push(param1);
      }
      
      public function §_-0R§() : void
      {
         this.mLevelSlingshot.§_-0R§();
         this.mLevelObjects.mSardineCanAdded = true;
      }
      
      public function §_-TJ§(param1:§_-JP§) : void
      {
         this.§_-29§.§_-lZ§(§_-Kd§.§_-8w§);
         if(this.§_-BZ§.indexOf(param1) >= 0)
         {
            this.§_-BZ§.splice(this.§_-BZ§.indexOf(param1),1);
         }
         if(this.§_-BZ§.length == 0)
         {
            this.§_-BZ§ = null;
         }
      }
      
      public function §_-Cu§() : void
      {
         this.mLevelObjects.§_-Cu§();
      }
      
      public function §_-BS§() : void
      {
         this.mLevelObjects.§_-Sb§();
      }
      
      public function get camera() : §_-Y4§
      {
         return this.§_-tv§;
      }
      
      public function get objects() : §_-D4§
      {
         return this.mLevelObjects;
      }
      
      public function get particles() : §_-Kd§
      {
         return this.§_-29§;
      }
      
      public function get background() : §_-Mo§
      {
         return this.§_-Ms§;
      }
      
      public function get slingshot() : §_-ZB§
      {
         return this.mLevelSlingshot;
      }
      
      public function getActiveObject() : §_-JP§
      {
         return this.mActiveObject;
      }
      
      public function get §_-Wc§() : §_-B§
      {
         return this.§_-iZ§;
      }
      
      public function §_-LS§() : §_-ry§
      {
         var _loc1_:§_-ry§ = new §_-ry§();
         this.§_-tv§.§_-kS§(_loc1_);
         this.mLevelObjects.§_-ZM§(_loc1_);
         this.mLevelSlingshot.§_-9J§(_loc1_);
         _loc1_.§_-j3§ = this.§_-Ms§.§_-c3§();
         return _loc1_;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function §_-nI§(param1:Number, param2:Number) : void
      {
         if(this.§_-9e§)
         {
            this.§_-9e§.§_-Mn§(param1,param2);
         }
      }
   }
}
