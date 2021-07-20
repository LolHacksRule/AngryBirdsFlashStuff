package §_-6r§
{
   import §_-0S§.§_-z1§;
   import §_-9§.§_-JR§;
   import §_-F1§.§_-k4§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-54§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-Tk§ extends §_-7P§
   {
      
      private static const §_-MY§:String = "RIGHT";
      
      private static const §_-xa§:String = "LEFT";
      
      private static const §_-p7§:String = "TOP";
      
      private static const §_-uW§:String = "BOTTOM";
      
      private static const §_-YM§:String = "CENTER";
       
      
      public var mParentContainer:§_-k4§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-ZW§:Boolean = false;
      
      public var §_-DE§:Boolean = true;
      
      public var §_-BY§:Boolean = false;
      
      public var §_-DW§:Boolean = false;
      
      private var §_-m-§:String = "LEFT";
      
      private var §_-Nh§:String = "TOP";
      
      private var §_-ve§:Boolean = false;
      
      private var §_-5Y§:Boolean = false;
      
      private var §_-3R§:Boolean = false;
      
      private var §_-1I§:Boolean = false;
      
      private var §_-8w§:Boolean = false;
      
      private var §_-AS§:Boolean = false;
      
      protected var §_-uD§:Boolean = false;
      
      private var §_-Px§:Number;
      
      private var §_-9t§:Number;
      
      private var §_-7L§:Number;
      
      private var §_-si§:Number;
      
      private var §_-Tm§:Number;
      
      private var §_-gy§:Number;
      
      private var §_-uO§:Number;
      
      private var §_-J§:Number;
      
      public function §_-Tk§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
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
            _loc4_ = §_-z1§.§_-tn§(this.mName);
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
               §_-54§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§_-BY§ = true;
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
            _loc8_ = this.getParentView().§_-Ai§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(param2.§_-BY§)
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
            this.§_-DW§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.§_-7L§ = this.x;
         this.§_-si§ = this.y;
         this.§_-Tm§ = this.width;
         this.§_-gy§ = this.height;
         this.readInitialVisibility(param1);
         this.§_-T0§(param1);
         this.§_-V5§(param1);
         this.§_-KD§();
      }
      
      public function get alignH() : String
      {
         return this.§_-m-§;
      }
      
      public function get alignV() : String
      {
         return this.§_-Nh§;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-Px§ / this.§_-uO§;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-9t§ / this.§_-J§;
      }
      
      private function §_-KD§() : void
      {
         var _loc1_:Number = this.§_-Px§ / this.§_-uO§;
         var _loc2_:Number = this.§_-9t§ / this.§_-J§;
         if(this.§_-8w§)
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
         if(!this.§_-5Y§ && _loc1_ > 1)
         {
            _loc1_ = 1;
         }
         if(!this.§_-1I§ && _loc2_ > 1)
         {
            _loc2_ = 1;
         }
         if(this.§_-m-§ == §_-MY§)
         {
            this.x = this.§_-7L§ + (this.§_-Px§ - §_-JR§.§_-j1§);
         }
         else if(this.§_-m-§ == §_-YM§)
         {
            this.x = this.§_-7L§ + (this.§_-Px§ - §_-JR§.§_-j1§) / 2;
            if(this.§_-ve§)
            {
               this.x = this.§_-7L§ * Math.min(_loc1_,this.§_-Px§ / this.§_-uO§);
               if(!this.§_-5Y§ && _loc1_ >= 1)
               {
                  this.x += this.§_-uO§ / 2 * (this.§_-Px§ / this.§_-uO§ - 1);
               }
               else if(this.§_-8w§)
               {
                  this.x += this.§_-uO§ / 2 * (this.§_-Px§ / this.§_-uO§ - _loc1_);
               }
            }
         }
         if(this.§_-Nh§ == §_-p7§)
         {
            if(this.§_-3R§)
            {
               this.y = this.§_-si§ * _loc2_;
            }
         }
         else if(this.§_-Nh§ == §_-uW§)
         {
            this.y = this.§_-si§ + (this.§_-9t§ - §_-JR§.§_-iZ§);
         }
         else if(this.§_-Nh§ == §_-YM§)
         {
            this.y = this.§_-si§ + (this.§_-9t§ - §_-JR§.§_-iZ§) / 2;
            if(this.§_-3R§)
            {
               this.y = this.§_-si§ * Math.min(_loc2_,this.§_-9t§ / this.§_-J§);
               if(!this.§_-1I§ && _loc2_ >= 1)
               {
                  this.y += this.§_-J§ / 2 * (this.§_-9t§ / this.§_-J§ - 1);
               }
               else if(this.§_-8w§)
               {
                  this.y += this.§_-J§ / 2 * (this.§_-9t§ / this.§_-J§ - _loc2_);
               }
            }
         }
         if(this.§_-ve§)
         {
            this.mClip.scaleX = _loc1_;
         }
         if(this.§_-3R§)
         {
            this.mClip.scaleY = _loc2_;
         }
         if(this.§_-AS§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-uO§,this.§_-J§);
         }
      }
      
      private function §_-V5§(param1:XML) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!this.mParentContainer)
         {
            _loc2_ = param1.@width;
            _loc3_ = param1.@height;
            this.§_-Px§ = _loc2_;
            this.§_-9t§ = _loc3_;
         }
         else
         {
            this.§_-Px§ = this.mParentContainer.viewWidth;
            this.§_-9t§ = this.mParentContainer.viewHeight;
         }
         this.§_-uO§ = this.§_-Px§;
         this.§_-J§ = this.§_-9t§;
      }
      
      private function §_-T0§(param1:XML) : void
      {
         var _loc2_:String = param1.@alignH;
         var _loc3_:String = param1.@alignV;
         var _loc4_:String = param1.@scaleH;
         var _loc5_:String = param1.@scaleV;
         var _loc6_:String = param1.@aspectRatioFixed;
         var _loc7_:String = param1.@scrollRect;
         var _loc8_:String = param1.@scaleOnMouseOver;
         this.§_-2d§(_loc2_);
         this.§_-Uq§(_loc3_);
         this.§_-f7§(_loc4_);
         this.§_-r8§(_loc5_);
         this.§_-2D§(_loc6_);
         this.§_-YB§(_loc7_);
         this.§_-jr§(_loc8_);
      }
      
      private function §_-jr§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-uD§ = true;
            }
         }
      }
      
      private function §_-2d§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-MY§ || param1 == §_-YM§)
            {
               this.§_-m-§ = param1;
            }
         }
      }
      
      private function §_-Uq§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-uW§ || param1 == §_-YM§)
            {
               this.§_-Nh§ = param1;
            }
         }
      }
      
      private function §_-f7§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-ve§ = true;
               this.§_-5Y§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-ve§ = true;
            }
         }
      }
      
      private function §_-r8§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-3R§ = true;
               this.§_-1I§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-3R§ = true;
            }
         }
      }
      
      private function §_-2D§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-8w§ = true;
            }
         }
      }
      
      private function §_-YB§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-AS§ = true;
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
         this.§_-DE§ = param1;
         this.mClip.visible = this.§_-DE§ && this.§_-ZW§;
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
         this.§_-ZW§ = param1;
         this.mClip.visible = this.§_-DE§ && this.§_-ZW§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§_-DW§)
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
      
      public function getParentView() : §_-ru§
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
         return this.§_-Px§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-9t§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-Px§ = param1;
         this.§_-KD§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-9t§ = param1;
         this.§_-KD§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
