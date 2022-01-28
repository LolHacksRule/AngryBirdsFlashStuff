package §_-7V§
{
   import §_-9k§.§_-X7§;
   import §_-Ll§.§_-4G§;
   import §_-Qn§.§_-bo§;
   import §_-gM§.§_-yj§;
   import §_-sO§.§_-a3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-C§ extends §_-Gs§
   {
      
      private static const §_-pY§:String = "RIGHT";
      
      private static const §_-kD§:String = "LEFT";
      
      private static const §_-Gn§:String = "TOP";
      
      private static const §_-Tw§:String = "BOTTOM";
      
      private static const §_-QL§:String = "CENTER";
      
      private static const §_-B6§:String = "NORMAL";
      
      private static const §_-qC§:String = "SQRT";
      
      private static const §_-j5§:String = "SQR";
       
      
      public var mParentContainer:§_-4G§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-yh§:Boolean = false;
      
      public var §_-Kc§:Boolean = true;
      
      public var §_-yq§:Boolean = false;
      
      public var §_-Fl§:Boolean = false;
      
      private var §_-by§:String = "LEFT";
      
      private var §_-c7§:String = "TOP";
      
      private var §_-q-§:Boolean = false;
      
      private var §_-hx§:Boolean = false;
      
      private var §_-0O§:Boolean = false;
      
      private var §_-kw§:Boolean = false;
      
      private var §_-UM§:Boolean = false;
      
      private var §_-DZ§:Boolean = false;
      
      private var §import§:String = "NORMAL";
      
      private var §_-v4§:Boolean = false;
      
      protected var §_-nC§:Boolean = false;
      
      private var §_-bm§:Number;
      
      private var §_-hz§:Number;
      
      private var §_-IR§:Number;
      
      private var §_-pL§:Number;
      
      private var §_-xr§:Number;
      
      private var §_-0d§:Number;
      
      private var §_-Zi§:Number;
      
      private var §_-zT§:Number;
      
      public function §_-C§(param1:XML, param2:§_-4G§, param3:MovieClip = null)
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
            _loc4_ = §_-X7§.§_-IA§(this.mName);
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
               §_-yj§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§_-yq§ = true;
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
            _loc8_ = this.getParentView().§_-nw§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(param2.§_-yq§)
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
            this.§_-Fl§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.§_-IR§ = this.x;
         this.§_-pL§ = this.y;
         this.§_-xr§ = this.width;
         this.§_-0d§ = this.height;
         this.readInitialVisibility(param1);
         this.§_-ZD§(param1);
         this.§_-78§(param1);
         this.§_-g§();
      }
      
      public function get alignH() : String
      {
         return this.§_-by§;
      }
      
      public function get alignV() : String
      {
         return this.§_-c7§;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-bm§ / this.§_-Zi§;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-hz§ / this.§_-zT§;
      }
      
      private function §_-g§() : void
      {
         var _loc1_:Number = this.§_-bm§ / this.§_-Zi§;
         var _loc2_:Number = this.§_-hz§ / this.§_-zT§;
         var _loc3_:Number = _loc1_;
         var _loc4_:Number = _loc2_;
         if(this.§_-UM§)
         {
            if(_loc1_ < _loc2_)
            {
               if(!this.§_-DZ§)
               {
                  _loc2_ = _loc1_;
               }
               else
               {
                  _loc1_ = _loc2_;
               }
            }
            else if(!this.§_-DZ§)
            {
               _loc1_ = _loc2_;
            }
            else
            {
               _loc2_ = _loc1_;
            }
         }
         if(!this.§_-hx§ && _loc1_ > 1)
         {
            _loc1_ = 1;
         }
         if(!this.§_-kw§ && _loc2_ > 1)
         {
            _loc2_ = 1;
         }
         if(this.§_-hx§ && !this.§_-q-§ && _loc1_ < 1)
         {
            _loc1_ = 1;
         }
         if(this.§_-kw§ && !this.§_-0O§ && _loc2_ < 1)
         {
            _loc2_ = 1;
         }
         var _loc5_:Number = _loc1_;
         var _loc6_:Number = _loc2_;
         if(this.§import§ == §_-qC§)
         {
            _loc1_ = Math.sqrt(_loc1_);
            _loc2_ = Math.sqrt(_loc2_);
         }
         else if(this.§import§ == §_-j5§)
         {
            _loc1_ *= _loc1_;
            _loc2_ *= _loc2_;
         }
         if(this.§_-by§ == §_-kD§)
         {
            if(this.§_-q-§ || this.§_-hx§)
            {
               this.x = this.§_-IR§ * _loc1_;
            }
         }
         else if(this.§_-by§ == §_-pY§)
         {
            this.x = this.§_-IR§ + (this.§_-bm§ - §_-a3§.§_-DL§);
         }
         else if(this.§_-by§ == §_-QL§)
         {
            this.x = this.§_-IR§ + (this.§_-bm§ - §_-a3§.§_-DL§) / 2;
            if(this.§_-q-§ || this.§_-hx§)
            {
               this.x = this.§_-IR§ * Math.min(_loc5_,this.§_-bm§ / this.§_-Zi§);
               if(!this.§_-hx§ && _loc1_ >= 1)
               {
                  this.x += this.§_-Zi§ / 2 * (this.§_-bm§ / this.§_-Zi§ - 1);
               }
               else if(this.§_-UM§)
               {
                  if(!this.§_-DZ§)
                  {
                     this.x += this.§_-Zi§ / 2 * (this.§_-bm§ / this.§_-Zi§ - _loc1_);
                  }
                  else
                  {
                     this.x += this.§_-Zi§ / 2 * (this.§_-bm§ / this.§_-Zi§ - _loc3_);
                  }
               }
            }
         }
         if(this.§_-c7§ == §_-Gn§)
         {
            if(this.§_-0O§ || this.§_-kw§)
            {
               this.y = this.§_-pL§ * _loc2_;
            }
         }
         else if(this.§_-c7§ == §_-Tw§)
         {
            this.y = this.§_-pL§ + (this.§_-hz§ - §_-a3§.§_-s§);
         }
         else if(this.§_-c7§ == §_-QL§)
         {
            this.y = this.§_-pL§ + (this.§_-hz§ - §_-a3§.§_-s§) / 2;
            if(this.§_-0O§ || this.§_-kw§)
            {
               this.y = this.§_-pL§ * Math.min(_loc6_,this.§_-hz§ / this.§_-zT§);
               if(!this.§_-kw§ && _loc2_ >= 1)
               {
                  this.y += this.§_-zT§ / 2 * (this.§_-hz§ / this.§_-zT§ - 1);
               }
               else if(this.§_-UM§)
               {
                  if(!this.§_-DZ§)
                  {
                     this.y += this.§_-zT§ / 2 * (this.§_-hz§ / this.§_-zT§ - _loc2_);
                  }
                  else
                  {
                     this.y += this.§_-zT§ / 2 * (this.§_-hz§ / this.§_-zT§ - _loc4_);
                  }
               }
            }
         }
         if(this.§_-q-§ || this.§_-hx§)
         {
            this.mClip.scaleX = _loc1_;
         }
         if(this.§_-0O§ || this.§_-kw§)
         {
            this.mClip.scaleY = _loc2_;
         }
         if(this.§_-v4§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-Zi§,this.§_-zT§);
         }
      }
      
      private function §_-78§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§_-bm§ = _loc2_;
            this.§_-hz§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§_-bm§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§_-bm§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§_-hz§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§_-hz§ = _loc3_;
            }
         }
         this.§_-Zi§ = this.§_-bm§;
         this.§_-zT§ = this.§_-hz§;
      }
      
      private function §_-ZD§(param1:XML) : void
      {
         var _loc2_:String = param1.@alignH;
         var _loc3_:String = param1.@alignV;
         var _loc4_:String = param1.@scaleH;
         var _loc5_:String = param1.@scaleV;
         var _loc6_:String = param1.@scaleFunction;
         var _loc7_:String = param1.@aspectRatioFixed;
         var _loc8_:String = param1.@scrollRect;
         var _loc9_:String = param1.@scaleOnMouseOver;
         this.§_-8§(_loc2_);
         this.§_-iX§(_loc3_);
         this.§_-tR§(_loc4_);
         this.§_-v7§(_loc5_);
         this.§_-P§(_loc6_);
         this.§_-u§(_loc7_);
         this.§_-6d§(_loc8_);
         this.§_-J4§(_loc9_);
      }
      
      private function §_-J4§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-nC§ = true;
            }
         }
      }
      
      private function §_-8§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-pY§ || param1 == §_-QL§)
            {
               this.§_-by§ = param1;
            }
         }
      }
      
      private function §_-iX§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-Tw§ || param1 == §_-QL§)
            {
               this.§_-c7§ = param1;
            }
         }
      }
      
      private function §_-tR§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-q-§ = true;
               this.§_-hx§ = true;
            }
            else if(param1.toUpperCase() == "DOWN")
            {
               this.§_-q-§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-hx§ = true;
            }
         }
      }
      
      private function §_-v7§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-0O§ = true;
               this.§_-kw§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-0O§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-kw§ = true;
            }
         }
      }
      
      private function §_-P§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == §_-qC§)
            {
               this.§import§ = §_-qC§;
            }
            else if(param1.toUpperCase() == §_-j5§)
            {
               this.§import§ = §_-j5§;
            }
         }
      }
      
      private function §_-u§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-UM§ = true;
            }
            else if(param1.toUpperCase() == "UP")
            {
               this.§_-UM§ = true;
               this.§_-DZ§ = true;
            }
         }
      }
      
      private function §_-6d§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-v4§ = true;
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
         this.§_-Kc§ = param1;
         this.mClip.visible = this.§_-Kc§ && this.§_-yh§;
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
         this.§_-yh§ = param1;
         this.mClip.visible = this.§_-Kc§ && this.§_-yh§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§_-Fl§)
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
         if(this.mClip.mouseEnabled != param1)
         {
            this.mClip.mouseEnabled = param1;
         }
         if(this.mClip.mouseChildren != param1)
         {
            this.mClip.mouseChildren = param1;
         }
      }
      
      public function getParentView() : §_-bo§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
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
         return this.§_-bm§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-hz§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-bm§ = param1;
         this.§_-g§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-hz§ = param1;
         this.§_-g§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
