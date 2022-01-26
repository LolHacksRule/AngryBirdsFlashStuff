package §_-J-§
{
   import §_-1p§.§_-K9§;
   import §_-58§.§_-WC§;
   import §_-Ay§.§_-nw§;
   import §_-ex§.§_-mR§;
   import §_-qJ§.§_-Vi§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-9C§ extends §_-ZG§
   {
      
      private static const §_-Xs§:String = "RIGHT";
      
      private static const §_-MN§:String = "LEFT";
      
      private static const §_-fF§:String = "TOP";
      
      private static const §_-VS§:String = "BOTTOM";
      
      private static const §_-nE§:String = "CENTER";
       
      
      public var mParentContainer:§_-WC§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-qf§:Boolean = false;
      
      public var §_-S7§:Boolean = true;
      
      public var §_-z5§:Boolean = false;
      
      public var §_-YI§:Boolean = false;
      
      private var §_-Rv§:String = "LEFT";
      
      private var §_-Yd§:String = "TOP";
      
      private var §_-BF§:Boolean = false;
      
      private var §_-al§:Boolean = false;
      
      private var §_-n7§:Boolean = false;
      
      private var §_-xY§:Boolean = false;
      
      private var §_-rS§:Boolean = false;
      
      private var §_-0j§:Boolean = false;
      
      protected var §const§:Boolean = false;
      
      private var §_-cj§:Number;
      
      private var §_-IC§:Number;
      
      private var §_-Ra§:Number;
      
      private var §_-Dl§:Number;
      
      private var §_-5i§:Number;
      
      private var §_-YB§:Number;
      
      private var §_-r2§:Number;
      
      private var §_-8f§:Number;
      
      public function §_-9C§(param1:XML, param2:§_-WC§, param3:MovieClip = null)
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
            _loc4_ = §_-nw§.§_-Xm§(this.mName);
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
               §_-mR§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§_-z5§ = true;
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
            _loc8_ = this.getParentView().§_-cH§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(param2.§_-z5§)
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
            this.§_-YI§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.§_-Ra§ = this.x;
         this.§_-Dl§ = this.y;
         this.§_-5i§ = this.width;
         this.§_-YB§ = this.height;
         this.readInitialVisibility(param1);
         this.§_-9I§(param1);
         this.§_-W2§(param1);
         this.§_-wT§();
      }
      
      public function get alignH() : String
      {
         return this.§_-Rv§;
      }
      
      public function get alignV() : String
      {
         return this.§_-Yd§;
      }
      
      private function §_-wT§() : void
      {
         var _loc1_:Number = this.§_-cj§ / this.§_-r2§;
         var _loc2_:Number = this.§_-IC§ / this.§_-8f§;
         if(this.§_-rS§)
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
         if(this.§_-Rv§ == §_-Xs§)
         {
            this.x = this.§_-Ra§ + (this.§_-cj§ - §_-Vi§.§_-da§);
         }
         else if(this.§_-Rv§ == §_-nE§)
         {
            this.x = this.§_-Ra§ + (this.§_-cj§ - §_-Vi§.§_-da§) / 2;
            if(this.§_-BF§)
            {
               this.x = this.§_-Ra§ * Math.min(_loc1_,this.§_-cj§ / this.§_-r2§);
               if(!this.§_-al§ && _loc1_ >= 1)
               {
                  this.x += this.§_-r2§ / 2 * this.§_-cj§ / this.§_-r2§ - this.§_-r2§ / 2;
               }
               else if(this.§_-rS§)
               {
                  this.x += this.§_-r2§ / 2 * this.§_-cj§ / this.§_-r2§ - this.§_-r2§ / 2 * _loc1_;
               }
            }
         }
         if(this.§_-Yd§ == §_-fF§)
         {
            if(this.§_-n7§)
            {
               this.y = this.§_-Dl§ * _loc2_;
            }
         }
         else if(this.§_-Yd§ == §_-VS§)
         {
            this.y = this.§_-Dl§ + (this.§_-IC§ - §_-Vi§.§_-Ib§);
         }
         else if(this.§_-Yd§ == §_-nE§)
         {
            this.y = this.§_-Dl§ + (this.§_-IC§ - §_-Vi§.§_-Ib§) / 2;
            if(this.§_-n7§)
            {
               this.y = this.§_-Dl§ * Math.min(_loc2_,this.§_-IC§ / this.§_-8f§);
               if(!this.§_-xY§ && _loc2_ >= 1)
               {
                  this.y += this.§_-8f§ / 2 * this.§_-IC§ / this.§_-8f§ - this.§_-8f§ / 2;
               }
               else if(this.§_-rS§)
               {
                  this.y += this.§_-8f§ / 2 * this.§_-IC§ / this.§_-8f§ - this.§_-8f§ / 2 * _loc2_;
               }
            }
         }
         if(!this.§_-al§ && _loc1_ > 1)
         {
            _loc1_ = 1;
         }
         if(!this.§_-xY§ && _loc2_ > 1)
         {
            _loc2_ = 1;
         }
         if(this.§_-BF§)
         {
            this.mClip.scaleX = _loc1_;
         }
         if(this.§_-n7§)
         {
            this.mClip.scaleY = _loc2_;
         }
         if(this.§_-0j§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-r2§,this.§_-8f§);
         }
      }
      
      private function §_-W2§(param1:XML) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!this.mParentContainer)
         {
            _loc2_ = param1.@width;
            _loc3_ = param1.@height;
            this.§_-cj§ = _loc2_;
            this.§_-IC§ = _loc3_;
         }
         else
         {
            this.§_-cj§ = this.mParentContainer.viewWidth;
            this.§_-IC§ = this.mParentContainer.viewHeight;
         }
         this.§_-r2§ = this.§_-cj§;
         this.§_-8f§ = this.§_-IC§;
      }
      
      private function §_-9I§(param1:XML) : void
      {
         var _loc2_:String = param1.@alignH;
         var _loc3_:String = param1.@alignV;
         var _loc4_:String = param1.@scaleH;
         var _loc5_:String = param1.@scaleV;
         var _loc6_:String = param1.@aspectRatioFixed;
         var _loc7_:String = param1.@scrollRect;
         var _loc8_:String = param1.@scaleOnMouseOver;
         this.§_-jx§(_loc2_);
         this.§_-ae§(_loc3_);
         this.§_-hO§(_loc4_);
         this.§_-Nq§(_loc5_);
         this.§_-ll§(_loc6_);
         this.§_-Fy§(_loc7_);
         this.§_-6V§(_loc8_);
      }
      
      private function §_-6V§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§const§ = true;
            }
         }
      }
      
      private function §_-jx§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-Xs§ || param1 == §_-nE§)
            {
               this.§_-Rv§ = param1;
            }
         }
      }
      
      private function §_-ae§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-VS§ || param1 == §_-nE§)
            {
               this.§_-Yd§ = param1;
            }
         }
      }
      
      private function §_-hO§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-BF§ = true;
               this.§_-al§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-BF§ = true;
            }
         }
      }
      
      private function §_-Nq§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-n7§ = true;
               this.§_-xY§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-n7§ = true;
            }
         }
      }
      
      private function §_-ll§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-rS§ = true;
            }
         }
      }
      
      private function §_-Fy§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-0j§ = true;
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
         this.§_-S7§ = param1;
         this.mClip.visible = this.§_-S7§ && this.§_-qf§;
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
         this.§_-qf§ = param1;
         this.mClip.visible = this.§_-S7§ && this.§_-qf§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§_-YI§)
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
      
      public function getParentView() : §_-K9§
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
         return this.§_-cj§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-IC§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-cj§ = param1;
         this.§_-wT§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-IC§ = param1;
         this.§_-wT§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
