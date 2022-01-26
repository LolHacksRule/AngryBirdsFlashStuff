package §_-FQ§
{
   import §_-7§.§_-ph§;
   import §_-Ar§.§_-q3§;
   import §_-JR§.§_-yh§;
   import §_-Jm§.§_-GP§;
   import §_-LM§.§_-wJ§;
   import §_-PP§.§_-Tg§;
   import §_-PP§.§_-qC§;
   import §_-PS§.§_-Xz§;
   import §_-PS§.§_-Zj§;
   import §_-PS§.§_-sq§;
   import §_-PS§.§_-zG§;
   import §_-UX§.DisplayObject;
   import §_-UX§.Sprite;
   import §_-XI§.§_-Er§;
   import §_-Xd§.§_-1c§;
   import §_-Xd§.§_-OL§;
   import §_-Xd§.§_-Xr§;
   import §_-Xd§.§_-sW§;
   import §_-di§.§_-Nw§;
   import §_-mu§.§_-CO§;
   import §_-rQ§.§_-hA§;
   import §_-rQ§.§_-nh§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §var§.b2Vec2;
   
   public class §_-7W§
   {
      
      public static const §_-8G§:Number = §_-ph§.§_-EK§;
      
      public static const §_-T2§:Number = §_-ph§.§_-UU§;
      
      public static const §_-hT§:Number = 1 / 20;
      
      public static const §_-Kj§:Number = §_-ph§.§_-UU§ * §_-hT§;
      
      public static const §_-zN§:Number = §_-8G§ * §_-hT§;
      
      public static const §_-Sa§:§_-Er§ = new §_-Er§(13 - 3);
      
      public static const §_-nv§:Boolean = true;
      
      protected static var §_-dN§:String = "";
       
      
      public var mLevelObjects:§_-OL§;
      
      public var mActiveObject:§_-sW§;
      
      public var §_-a4§:Array = null;
      
      public var §_-3z§:§_-q3§;
      
      public var §_-vs§:§_-v6§;
      
      public var §_-Dw§:§_-ih§;
      
      private var §_-4W§:§_-if§;
      
      public var mLevelSlingshot:§_-Vg§;
      
      public var §_-sk§:§_-Tg§;
      
      public var §_-FO§:Boolean = false;
      
      public var §_-CP§:Number = 1500;
      
      public var §_-fk§:Number = 2400;
      
      public var §_-qP§:Number = 0;
      
      public var §_-U4§:Number = 0.2;
      
      public var §_-It§:Number = 8.8;
      
      public var mPigsAnimationTimer1:Number;
      
      public var mPigsAnimationTimer2:Number;
      
      public var §_-lZ§:Number;
      
      public var §_-kr§:Number;
      
      public var §_-55§:§_-Zj§;
      
      public var §_-TQ§:Boolean = false;
      
      public var §_-sC§:Sprite = null;
      
      public const §_-5A§:int = 2;
      
      public var §_-vA§:int = 0;
      
      private var §_-vW§:§_-Do§;
      
      private var §_-f6§:Sprite;
      
      private var §get §:Vector.<Sprite>;
      
      private var §set §:§_-wJ§ = null;
      
      private var §_-dK§:EventDispatcher;
      
      private var §_-wy§:Array;
      
      private var §_-m4§:Array;
      
      private var §_-FP§:§_-yh§;
      
      private var §_-ED§:§_-Nw§;
      
      private var §_-fS§:§_-hA§;
      
      private var §_-rv§:§_-nh§;
      
      private var mStage:Stage;
      
      private var §_-uI§:§_-CO§;
      
      private var §_-2z§:§_-CO§;
      
      private var §_-s-§:String;
      
      private var §_-J3§:uint = 1.417339207E9;
      
      public function §_-7W§(param1:Stage)
      {
         this.§_-m4§ = [];
         super();
         this.§_-dK§ = new EventDispatcher();
         this.§_-55§ = new §_-Zj§();
         this.mStage = param1;
         this.§_-fS§ = §_-hA§.§_-G4§;
         this.§_-rv§ = this.§_-Eu§(this.§_-fS§);
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§_-FP§ = new §_-yh§(§_-Do§,param1,new Rectangle(0,0,§_-ph§.§_-EK§,§_-ph§.§_-UU§),_loc2_);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-qv§,false,0,true);
         this.§_-FP§.§_-QU§ = false;
         this.§_-FP§.enableErrorChecking = false;
         this.§_-FP§.§_-fh§ = 2;
         this.§_-FP§.§_-V3§();
      }
      
      public static function §_-DZ§(param1:§_-sW§, param2:§_-sW§) : Number
      {
         var _loc3_:Number = param1.§_-m2§ - param2.§_-m2§;
         var _loc4_:Number = param1.§_-ho§ - param2.§_-ho§;
         return §_-Gu§(_loc3_,_loc4_);
      }
      
      public static function §_-Gu§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-f6§ && this.§_-f§)
         {
            this.§_-f6§ = this.§_-vW§.§_-RD§;
            if(this.§_-f6§)
            {
               if(§_-yh§.§_-Yt§)
               {
                  this.§get § = new Vector.<Sprite>();
               }
            }
         }
         return this.§_-f6§;
      }
      
      public function get §_-f§() : Sprite
      {
         if(!this.§_-vW§)
         {
            this.§_-vW§ = this.§_-FP§.§_-8N§ as §_-Do§;
            this.§_-vW§.§_-SS§ = false;
         }
         return this.§_-vW§;
      }
      
      private function get §_-xG§() : DisplayObject
      {
         if(this.§_-f§)
         {
            return (this.§_-f§ as §_-Do§).§_-xG§;
         }
         return null;
      }
      
      public function get §_-FR§() : §_-nh§
      {
         return this.§_-rv§;
      }
      
      public function get §_-xI§() : §_-hA§
      {
         return this.§_-fS§;
      }
      
      protected function §_-Eu§(param1:§_-hA§) : §_-nh§
      {
         return new §_-nh§(param1);
      }
      
      public function §_-G9§(param1:Boolean) : void
      {
         if(this.§_-f§)
         {
            this.§_-f§.visible = param1;
         }
      }
      
      public function §_-Hb§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-0g§(param1:§_-wJ§) : void
      {
         if(this.§set § != null)
         {
            this.§set §.removeEventListeners();
         }
         this.§set § = param1;
         this.§set §.addEventListeners();
      }
      
      public function §_-gh§() : §_-CO§
      {
         return this.§_-uI§;
      }
      
      public function §_-N5§(param1:§_-Nw§, param2:Array, param3:Function) : void
      {
         this.§_-ED§ = param1;
         var _loc4_:int = this.§_-ED§.§_-0U§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-fS§.§_-oF§(this.§_-ED§.§_-jY§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-dK§.addEventListener(Event.INIT,param3);
            this.§_-m4§.push(param3);
         }
         if(this.§_-HA§(param2))
         {
            this.§_-WL§();
         }
      }
      
      private function §_-HA§(param1:Array) : Boolean
      {
         if(this.§_-fS§.§_-0G§())
         {
            this.§_-5L§(param1);
            return true;
         }
         this.§_-wy§ = param1.concat();
         return false;
      }
      
      private function §_-5L§(param1:Array) : void
      {
         this.§_-rv§.§_-5L§(param1);
      }
      
      private function §_-qv§(param1:Event) : void
      {
         this.§_-fS§.§_-on§();
         if(this.§_-wy§)
         {
            this.§_-HA§(this.§_-wy§);
            this.§_-wy§ = null;
            this.§_-WL§();
         }
         if(this.§set § != null)
         {
            this.§set §.addEventListeners();
         }
      }
      
      private function §_-WL§() : void
      {
         this.§_-dK§.dispatchEvent(new Event(Event.INIT));
         this.§_-it§();
      }
      
      private function §_-it§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-m4§)
         {
            this.§_-dK§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-m4§ = [];
      }
      
      public function init(param1:§_-sq§) : void
      {
         if(this.§_-FO§)
         {
            this.clearLevel();
         }
         this.§_-Dw§ = new §_-ih§(this,param1);
         this.§_-vs§ = new §_-v6§(this);
         this.§_-3z§ = new §_-q3§(param1.§_-r1§,this.§_-Dw§.§_-X1§ / §_-hT§,this.§_-rv§,this.§_-fS§);
         this.§_-3z§.§_-J§(§_-ph§.§_-B-§());
         this.mLevelObjects = this.§_-4h§(param1);
         this.mLevelSlingshot = this.§_-BK§(param1);
         this.§_-sk§ = new §_-Tg§(this.§_-rv§,this.§_-fS§);
         this.§_-4W§ = new §_-if§(this,param1);
         this.§_-73§();
         this.§_-lZ§ = 0;
         this.§_-kr§ = 0;
         this.§_-FO§ = true;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-dN§ = param1.§_-r1§;
         this.§_-uI§ = new §_-CO§(§_-Xz§.§_-AP§);
         §_-iw§.init();
         if(this.§_-s-§)
         {
            this.§_-2z§ = §_-CO§.§_-UD§(this.§_-s-§);
            this.§_-2z§.§_-TV§ = 3;
            this.§_-2z§.play();
            this.§_-s-§ = null;
         }
      }
      
      public function §_-qw§(param1:String) : void
      {
         this.§_-s-§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§_-2z§ != null;
      }
      
      protected function §_-4h§(param1:§_-sq§) : §_-OL§
      {
         return new §_-OL§(this,param1,new Sprite());
      }
      
      protected function §_-BK§(param1:§_-sq§) : §_-Vg§
      {
         return new §_-Vg§(this,param1,new Sprite());
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         if(this.§_-FO§)
         {
            this.clearLevel();
         }
         var _loc3_:§_-sq§ = new §_-sq§();
         _loc3_.§_-fm§ = -12;
         var _loc4_:§_-zG§;
         (_loc4_ = new §_-zG§()).left = 0;
         _loc4_.top = -§_-if§.§_-Lz§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §_-if§.§_-Lz§;
         _loc4_.right = _loc4_.left + §_-if§.§_-io§;
         _loc4_.y = -13.929;
         _loc4_.x = §_-if§.§_-io§;
         _loc4_.id = §_-if§.§_-0x§;
         _loc3_.§_-PR§.push(_loc4_);
         var _loc5_:§_-zG§;
         (_loc5_ = new §_-zG§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §_-if§.§_-io§;
         _loc5_.bottom = _loc5_.top + §_-if§.§_-Lz§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §_-if§.§_-io§ / 2;
         _loc5_.id = §_-if§.§_-7V§;
         _loc3_.§_-PR§.push(_loc5_);
         if(param2)
         {
            this.§_-OG§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.§_-r1§ = param1;
         }
         else
         {
            _loc3_.§_-r1§ = §_-dN§;
         }
         this.init(_loc3_);
      }
      
      private function §_-Si§() : Number
      {
         this.§_-J3§ ^= this.§_-J3§ << 21;
         this.§_-J3§ ^= this.§_-J3§ >>> 35;
         this.§_-J3§ ^= this.§_-J3§ << 4;
         return this.§_-J3§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-OG§(param1:§_-sq§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-GP§ = null;
         this.§_-J3§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-Si§() * 5;
               (_loc5_ = new §_-GP§()).x = 30 + _loc3_ * 10 + this.§_-Si§() * 9;
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
                  _loc5_.angle = 45 - this.§_-Si§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-Si§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§_-Si§() * 360;
               }
               param1.§_-7u§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-If§() : void
      {
      }
      
      public function §_-73§() : void
      {
         this.§_-cY§(this.§_-3z§.§_-16§,true);
         if(§_-q3§.§_-Bj§)
         {
            this.§_-cY§(this.§_-3z§.§_-2§,false);
         }
         this.§_-cY§(this.§_-sk§.§_-Ng§(§_-Tg§.§_-9s§),true);
         this.§_-cY§(this.§_-sk§.§_-Ng§(§_-Tg§.§_-oZ§),true);
         this.§_-cY§(this.mLevelObjects.§_-b8§,true);
         this.§_-cY§(this.mLevelSlingshot.sprite,true);
         this.§_-cY§(this.§_-sk§.§_-Ng§(§_-Tg§.§_-U1§),true);
         if(§_-q3§.§_-Bj§)
         {
            this.§_-cY§(this.§_-3z§.§_-s9§,true);
         }
         this.§_-cY§(this.§_-sk§.§_-Ng§(§_-Tg§.§_-CE§),true);
         if(!§_-v6§.§_-v0§)
         {
         }
      }
      
      private function §_-cY§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
         if(param2 && this.§get §)
         {
            this.§get §.push(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-ph§.§_-an§;
         param2 /= §_-ph§.§_-an§;
         _loc3_.x = (param1 / §_-if§.§_-4X§ + this.§_-4W§.§_-U0§ - §_-if§.§_-1r§ / §_-if§.§_-4X§) * §_-hT§;
         _loc3_.y = (param2 / §_-if§.§_-4X§ + this.§_-4W§.§_-RW§ - §_-if§.§_-Rw§ / §_-if§.§_-4X§) * §_-hT§;
         return _loc3_;
      }
      
      public function §_-pp§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-hT§ + §_-if§.§_-1r§ / §_-if§.§_-4X§ - this.§_-4W§.§_-U0§) * §_-if§.§_-4X§;
         _loc3_.y = (param2 / §_-hT§ + §_-if§.§_-Rw§ / §_-if§.§_-4X§ - this.§_-4W§.§_-RW§) * §_-if§.§_-4X§;
         _loc3_.x *= §_-ph§.§_-Qn§;
         _loc3_.y *= §_-ph§.§_-Qn§;
         return _loc3_;
      }
      
      public function §_-nT§(param1:String, param2:Number, param3:Number) : void
      {
         this.mLevelObjects.§_-5h§(param1,param2,param3);
      }
      
      public function §_-Wz§() : void
      {
         if(this.§_-xG§)
         {
            this.§_-xG§.visible = true;
            this.§_-xG§.alpha = 0;
         }
         this.§_-CP§ = 0;
      }
      
      public function §_-w7§() : void
      {
         this.§_-fk§ = 0;
         this.§_-qP§ = 0;
         this.§_-U4§ = §_-eI§.§_-L5§;
         this.§_-It§ = §_-eI§.§_-j0§;
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Sprite = null;
         if(this.§_-3z§)
         {
            this.§_-3z§.dispose();
            this.§_-3z§ = null;
         }
         if(this.mLevelObjects)
         {
            this.mLevelObjects.dispose();
            this.mLevelObjects = null;
            this.mActiveObject = null;
         }
         if(this.§get §)
         {
            for each(_loc1_ in this.§get §)
            {
               _loc1_.dispose();
            }
            this.§get § = new Vector.<Sprite>();
         }
         if(this.§_-vs§)
         {
            if(!this.§_-vs§.§_-8b§)
            {
            }
            this.§_-vs§.clear();
            this.§_-vs§ = null;
         }
         if(this.§_-Dw§)
         {
            this.§_-Dw§.clear();
            this.§_-Dw§ = null;
         }
         if(this.mLevelSlingshot)
         {
            this.mLevelSlingshot.dispose();
            this.mLevelSlingshot = null;
         }
         if(this.§_-4W§)
         {
            this.§_-4W§.clear();
            this.§_-4W§ = null;
         }
         if(this.§_-sk§)
         {
            this.§_-sk§.dispose();
            this.§_-sk§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-lZ§ = 0;
         this.§_-kr§ = 0;
         this.§_-FO§ = false;
         this.§_-CP§ = §_-eI§.§_-Gw§;
         this.§_-fk§ = §_-eI§.§_-Ez§;
         this.§_-qP§ = 0;
         this.§_-U4§ = §_-eI§.§_-L5§;
         this.§_-It§ = §_-eI§.§_-j0§;
         if(this.§_-f§)
         {
            (this.§_-f§ as §_-Do§).§_-wH§.x = 0;
            (this.§_-f§ as §_-Do§).§_-wH§.y = 0;
         }
         if(this.§_-xG§)
         {
            this.§_-xG§.visible = false;
         }
         this.§_-2z§ = null;
         this.§_-uI§ = null;
         this.§_-it§();
      }
      
      public function gameOver() : void
      {
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.§_-FO§ || !§_-yh§.§_-gI§())
         {
            return 0;
         }
         if(this.§_-2z§ && this.§_-2z§.§_-54§)
         {
            return this.§_-V5§(param1,param2,param3);
         }
         return this.§_-i-§(param1,param2,param3);
      }
      
      private function §_-i-§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Number = 0;
         this.§_-kr§ += param1;
         if(param2)
         {
            this.§_-lZ§ += param1;
            _loc4_ = this.§_-vs§.§_-I9§(this.§_-lZ§);
            this.mLevelSlingshot.update(param1,param3);
            this.§_-lZ§ = _loc4_;
         }
         else
         {
            this.mLevelObjects.§_-DC§();
            this.§_-lZ§ = 0;
         }
         this.mLevelObjects.§_-MH§(param1,_loc4_);
         this.§_-Oa§(param1);
         return param1;
      }
      
      private function §_-V5§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:Number = §_-v6§.§_-Cx§ * 1000;
         if(this.§_-2z§)
         {
            _loc4_ /= this.§_-2z§.§_-TV§;
            _loc5_ = this.§_-2z§.§_-Dg§;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               this.§_-2z§.step(this);
               this.§_-i-§(_loc4_,param2,param3);
               _loc6_++;
            }
            return _loc4_ * _loc5_;
         }
         return this.§_-i-§(_loc4_,param2,param3);
      }
      
      private function §_-Oa§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Sprite = null;
         if(this.§_-a4§)
         {
            if(this.§_-TQ§)
            {
               this.§_-vA§ = 0;
            }
            if(this.§_-vA§ == 0)
            {
               this.§_-9M§();
            }
            this.§_-vA§ = (this.§_-vA§ + 1) % this.§_-5A§;
         }
         if(this.§_-CP§ < §_-eI§.§_-Gw§)
         {
            this.§_-CP§ += param1;
            _loc2_ = §_-eI§.§_-Gw§ / 2;
            _loc3_ = (-Math.abs(this.§_-CP§ - _loc2_) + _loc2_) * (§_-eI§.§_-2D§ / _loc2_);
            if(this.§_-xG§)
            {
               this.§_-xG§.alpha = _loc3_;
            }
         }
         else if(this.§_-xG§)
         {
            this.§_-xG§.visible = false;
         }
         if(this.§_-fk§ < §_-eI§.§_-Ez§)
         {
            this.§_-fk§ += param1;
            this.§_-Js§(param1);
         }
         this.§_-4W§.§_-Qi§(param1);
         this.§_-vs§.§_-FF§();
         this.§_-sk§.update(param1);
         if(this.§get §)
         {
            for each(_loc4_ in this.§get §)
            {
               _loc4_.flatten();
            }
         }
      }
      
      public function §_-9M§() : void
      {
         var _loc1_:§_-sW§ = null;
         if(this.§_-a4§ != null)
         {
            for each(_loc1_ in this.§_-a4§)
            {
               _loc1_.addTrail();
            }
         }
      }
      
      private function §_-Js§(param1:Number) : void
      {
         this.§_-qP§ += this.§_-U4§;
         var _loc2_:Number = param1 / §_-eI§.§_-xz§ * this.§_-It§ * Math.sin(Math.PI / 4 + this.§_-qP§ * 2 * Math.PI);
         var _loc3_:Number = param1 / §_-eI§.§_-xz§ * this.§_-It§ * Math.sin(this.§_-qP§ * 2.1 * Math.PI);
         this.§_-It§ -= param1 * §_-eI§.§_-j0§ / §_-eI§.§_-Ez§;
         this.§_-U4§ -= param1 * §_-eI§.§_-L5§ / §_-eI§.§_-Ez§;
         this.§_-4W§.§_-AW§(_loc2_,_loc3_);
         this.§_-4W§.§_-iM§();
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-sW§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.§_-TF§(true);
               _loc2_.§_-UF§.mTryToScream = §_-1c§.§_-sO§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.mLevelObjects.§_-sV§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.§_-TF§(true);
               _loc2_.§_-UF§.mTryToBlink = §_-1c§.§_-7d§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.mLevelObjects.§_-sV§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §_-qC§.§_-hf§;
         }
         §_-iw§.addScore(param1,param2);
         this.§set §.addScore(param1);
         if(param3 && param1 > 0)
         {
            this.get(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function get(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-qC§.§_-Mk§;
         }
         this.§_-sk§.§_-Eo§(§_-qC§.§_-oU§,§_-Tg§.§_-CE§,§_-qC§.§_-I4§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-VH§() : void
      {
         if(!§_-nv§)
         {
            return;
         }
         if(this.§_-sC§)
         {
         }
      }
      
      public function §_-x2§() : void
      {
         if(this.§_-sC§)
         {
            this.§_-sC§ = null;
         }
      }
      
      public function §_-ve§(param1:§_-sW§) : void
      {
         if(this.§_-a4§ == null)
         {
            this.§_-a4§ = new Array();
         }
         this.§_-a4§.push(param1);
      }
      
      public function §_-0C§() : void
      {
         this.mLevelSlingshot.§_-0C§();
         this.mLevelObjects.mSardineCanAdded = true;
      }
      
      public function §_-C9§(param1:§_-sW§) : void
      {
         this.§_-sk§.§_-vJ§(§_-Tg§.§_-9s§);
         if(this.§_-a4§.indexOf(param1) >= 0)
         {
            this.§_-a4§.splice(this.§_-a4§.indexOf(param1),1);
         }
         if(this.§_-a4§.length == 0)
         {
            this.§_-a4§ = null;
         }
      }
      
      public function §_-yu§(param1:§_-ym§, param2:Number, param3:Number) : void
      {
         this.mActiveObject = this.mLevelObjects.§_-5h§(param1.name,param1.mX,param1.mY,0,true);
         this.§_-vA§ = 0;
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-Vg§.§_-v9§) : Number(§_-Vg§.§_-3w§);
         if(param1.§_-dl§ > 1)
         {
            this.mActiveObject.§_-JX§(param1.§_-dl§);
            this.mActiveObject.§_-UF§.§_-fo§();
         }
         if(param1.§_-Zq§ != 0)
         {
            _loc4_ = param1.§_-Zq§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.mActiveObject.§_-hJ§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§_-gP§(§_-if§.§_-w-§);
         if(this.§_-uI§)
         {
            this.§_-uI§.§_-yu§(this.§_-vs§.§_-Po§,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         if(this.getActiveObject() is §_-Xr§ && !(this.getActiveObject() as §_-Xr§).§_-aR§)
         {
            this.mLevelObjects.§_-eN§ = true;
            this.§_-TQ§ = true;
         }
         else
         {
            this.mLevelObjects.§_-jO§();
         }
         if(this.§_-uI§)
         {
            this.§_-uI§.§_-s5§(this.§_-vs§.§_-Po§);
         }
      }
      
      public function §else §() : void
      {
         this.mLevelObjects.§else §();
      }
      
      public function §_-W6§() : void
      {
         this.mLevelObjects.§_-C§();
      }
      
      public function get camera() : §_-if§
      {
         return this.§_-4W§;
      }
      
      public function get objects() : §_-OL§
      {
         return this.mLevelObjects;
      }
      
      public function get particles() : §_-Tg§
      {
         return this.§_-sk§;
      }
      
      public function get background() : §_-q3§
      {
         return this.§_-3z§;
      }
      
      public function get slingshot() : §_-Vg§
      {
         return this.mLevelSlingshot;
      }
      
      public function getActiveObject() : §_-sW§
      {
         return this.mActiveObject;
      }
      
      public function get §_-ps§() : §_-ih§
      {
         return this.§_-Dw§;
      }
      
      public function §_-oI§() : §_-sq§
      {
         var _loc1_:§_-sq§ = new §_-sq§();
         this.§_-4W§.§_-Tm§(_loc1_);
         this.mLevelObjects.§_-gR§(_loc1_);
         this.mLevelSlingshot.§_-1O§(_loc1_);
         _loc1_.§_-r1§ = this.§_-3z§.§_-vm§();
         return _loc1_;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function §_-bu§(param1:Number, param2:Number) : void
      {
         if(this.§_-vW§)
         {
            this.§_-vW§.§_-aO§(param1,param2);
         }
      }
   }
}
