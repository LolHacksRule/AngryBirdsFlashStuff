package §_-Jx§
{
   import §_-Eo§.§_-R4§;
   import §_-W7§.§_-jT§;
   import §_-Yh§.§_-fA§;
   import §_-hf§.§_-WL§;
   import §_-iq§.§_-jB§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-dI§ extends §_-Ao§
   {
      
      private static const §_-NO§:String = "RIGHT";
      
      private static const §_-In§:String = "LEFT";
      
      private static const §_-Z8§:String = "TOP";
      
      private static const §_-Md§:String = "BOTTOM";
      
      private static const §_-b2§:String = "CENTER";
       
      
      public var mParentContainer:§_-WL§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-Yy§:Boolean = false;
      
      public var §_-F2§:Boolean = true;
      
      public var §_-c6§:Boolean = false;
      
      public var §_-Up§:Boolean = false;
      
      private var §_-Ez§:String = "LEFT";
      
      private var §_-Dp§:String = "TOP";
      
      private var §_-to§:Boolean = false;
      
      private var §_-fL§:Boolean = false;
      
      private var §_-DG§:Boolean = false;
      
      private var §_-xy§:Boolean = false;
      
      private var §_-Fr§:Boolean = false;
      
      private var §_-3v§:Boolean = false;
      
      protected var §_-EO§:Boolean = false;
      
      private var §_-c7§:Number;
      
      private var §_-ir§:Number;
      
      private var §_-RO§:Number;
      
      private var §_-KM§:Number;
      
      private var §_-em§:Number;
      
      private var §_-Xf§:Number;
      
      private var §_-BA§:Number;
      
      private var §_-4T§:Number;
      
      public function §_-dI§(param1:XML, param2:§_-WL§, param3:MovieClip = null)
      {
         var _loc4_:Class = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         this.mParentContainer = param2;
         this.mName = param1.@name;
         if(param3)
         {
            this.mClip = param3;
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(param1.@fromLibrary.toString().toUpperCase() == "TRUE")
         {
            _loc4_ = §_-jT§.§_-kv§(this.mName);
            this.mClip = new _loc4_();
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(this.mParentContainer)
         {
            this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
            if(this.mClip == null)
            {
               _loc5_ = "Asset instance not found!! [" + this.mName + "] parent: [" + this.mParentContainer.mName + "]";
               §_-R4§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§_-c6§ = true;
            _loc6_ = 16777215;
            _loc7_ = 0.5;
            if(param1.@overlayColor.toString() != "")
            {
               _loc6_ = parseInt(param1.@overlayColor);
            }
            if(param1.@overlayAlpha.toString() != "")
            {
               _loc7_ = parseFloat(param1.@overlayAlpha);
            }
            _loc8_ = this.getParentView().§_-ys§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(param2.§_-c6§)
            {
               param2.mClip.setChildIndex(this.mClip,1);
            }
            else
            {
               param2.mClip.setChildIndex(this.mClip,0);
            }
         }
         if(param1.@animateOnActivation.toString().toUpperCase() == "TRUE")
         {
            this.§_-Up§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.§_-RO§ = this.x;
         this.§_-KM§ = this.y;
         this.§_-em§ = this.width;
         this.§_-Xf§ = this.height;
         this.readInitialVisibility(param1);
         this.§_-yn§(param1);
         this.§_-AQ§(param1);
         this.§_-9s§();
      }
      
      public function get alignH() : String
      {
         return this.§_-Ez§;
      }
      
      public function get alignV() : String
      {
         return this.§_-Dp§;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-c7§ / this.§_-BA§;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-ir§ / this.§_-4T§;
      }
      
      private function §_-9s§() : void
      {
         var _loc1_:Number = this.§_-c7§ / this.§_-BA§;
         var _loc2_:Number = this.§_-ir§ / this.§_-4T§;
         if(this.§_-Fr§)
         {
            if(_loc1_ < _loc2_)
            {
               _loc2_ = _loc1_;
            }
            else
            {
               _loc1_ = _loc2_;
            }
         }
         if(!this.§_-fL§ && _loc1_ > 1)
         {
            _loc1_ = 1;
         }
         if(!this.§_-xy§ && _loc2_ > 1)
         {
            _loc2_ = 1;
         }
         if(this.§_-Ez§ == §_-NO§)
         {
            this.x = this.§_-RO§ + (this.§_-c7§ - §_-jB§.§_-SR§);
         }
         else if(this.§_-Ez§ == §_-b2§)
         {
            this.x = this.§_-RO§ + (this.§_-c7§ - §_-jB§.§_-SR§) / 2;
            if(this.§_-to§)
            {
               this.x = this.§_-RO§ * Math.min(_loc1_,this.§_-c7§ / this.§_-BA§);
               if(!this.§_-fL§ && _loc1_ >= 1)
               {
                  this.x += this.§_-BA§ / 2 * (this.§_-c7§ / this.§_-BA§ - 1);
               }
               else if(this.§_-Fr§)
               {
                  this.x += this.§_-BA§ / 2 * (this.§_-c7§ / this.§_-BA§ - _loc1_);
               }
            }
         }
         if(this.§_-Dp§ == §_-Z8§)
         {
            if(this.§_-DG§)
            {
               this.y = this.§_-KM§ * _loc2_;
            }
         }
         else if(this.§_-Dp§ == §_-Md§)
         {
            this.y = this.§_-KM§ + (this.§_-ir§ - §_-jB§.§_-oB§);
         }
         else if(this.§_-Dp§ == §_-b2§)
         {
            this.y = this.§_-KM§ + (this.§_-ir§ - §_-jB§.§_-oB§) / 2;
            if(this.§_-DG§)
            {
               this.y = this.§_-KM§ * Math.min(_loc2_,this.§_-ir§ / this.§_-4T§);
               if(!this.§_-xy§ && _loc2_ >= 1)
               {
                  this.y += this.§_-4T§ / 2 * (this.§_-ir§ / this.§_-4T§ - 1);
               }
               else if(this.§_-Fr§)
               {
                  this.y += this.§_-4T§ / 2 * (this.§_-ir§ / this.§_-4T§ - _loc2_);
               }
            }
         }
         if(this.§_-to§)
         {
            this.mClip.scaleX = _loc1_;
         }
         if(this.§_-DG§)
         {
            this.mClip.scaleY = _loc2_;
         }
         if(this.§_-3v§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-BA§,this.§_-4T§);
         }
      }
      
      private function §_-AQ§(param1:XML) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!this.mParentContainer)
         {
            _loc2_ = param1.@width;
            _loc3_ = param1.@height;
            this.§_-c7§ = _loc2_;
            this.§_-ir§ = _loc3_;
         }
         else
         {
            this.§_-c7§ = this.mParentContainer.viewWidth;
            this.§_-ir§ = this.mParentContainer.viewHeight;
         }
         this.§_-BA§ = this.§_-c7§;
         this.§_-4T§ = this.§_-ir§;
      }
      
      private function §_-yn§(param1:XML) : void
      {
         var _loc2_:String = param1.@alignH;
         var _loc3_:String = param1.@alignV;
         var _loc4_:String = param1.@scaleH;
         var _loc5_:String = param1.@scaleV;
         var _loc6_:String = param1.@aspectRatioFixed;
         var _loc7_:String = param1.@scrollRect;
         var _loc8_:String = param1.@scaleOnMouseOver;
         this.§_-I-§(_loc2_);
         this.§_-Lu§(_loc3_);
         this.§_-iz§(_loc4_);
         this.§_-g§(_loc5_);
         this.§_-ZU§(_loc6_);
         this.§_-qc§(_loc7_);
         this.§_-9O§(_loc8_);
      }
      
      private function §_-9O§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-EO§ = true;
            }
         }
      }
      
      private function §_-I-§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-NO§ || param1 == §_-b2§)
            {
               this.§_-Ez§ = param1;
            }
         }
      }
      
      private function §_-Lu§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-Md§ || param1 == §_-b2§)
            {
               this.§_-Dp§ = param1;
            }
         }
      }
      
      private function §_-iz§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-to§ = true;
               this.§_-fL§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-to§ = true;
            }
         }
      }
      
      private function §_-g§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-DG§ = true;
               this.§_-xy§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-DG§ = true;
            }
         }
      }
      
      private function §_-ZU§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-Fr§ = true;
            }
         }
      }
      
      private function §_-qc§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-3v§ = true;
         }
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc2_:String = param1.@visible;
         if(_loc2_ && _loc2_.toUpperCase() == "FALSE")
         {
            this.setVisibility(false);
         }
         else
         {
            this.setVisibility(true);
         }
         _loc2_ = param1.@enabled;
         if(_loc2_ && _loc2_.toUpperCase() == "FALSE")
         {
            this.setEnabled(false);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.mParentContainer)
         {
            this.mParentContainer.mClip.removeChild(this.mClip);
         }
         while(this.mClip.numChildren > 0)
         {
            this.mClip.removeChildAt(0);
         }
         this.mClip = null;
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.containerEventOccured(param1,param2,this);
         }
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§_-F2§ = param1;
         this.mClip.visible = this.§_-F2§ && this.§_-Yy§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§_-Yy§ = param1;
         this.mClip.visible = this.§_-F2§ && this.§_-Yy§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§_-Up§)
         {
            if(param1)
            {
               this.mClip.gotoAndPlay(1);
            }
            else
            {
               this.mClip.gotoAndStop(1);
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         this.mClip.mouseEnabled = param1;
         this.mClip.mouseChildren = param1;
      }
      
      public function getParentView() : §_-fA§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = param1;
      }
      
      public function get x() : Number
      {
         return this.mClip.x;
      }
      
      public function get y() : Number
      {
         return this.mClip.y;
      }
      
      public function get visible() : Boolean
      {
         return this.mClip.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.mClip.visible = param1;
      }
      
      public function get width() : Number
      {
         return this.mClip.width;
      }
      
      public function get height() : Number
      {
         return this.mClip.height;
      }
      
      override public function goToFrame(param1:int, param2:Boolean) : void
      {
         super.goToFrame(param1,param2);
         if(this.mClip && this.mClip is MovieClip)
         {
            if(param2)
            {
               this.mClip.gotoAndPlay(param1);
            }
            else
            {
               this.mClip.gotoAndStop(param1);
            }
         }
      }
      
      public function get viewWidth() : Number
      {
         return this.§_-c7§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-ir§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-c7§ = param1;
         this.§_-9s§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-ir§ = param1;
         this.§_-9s§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
