package §_-9J§
{
   import §_-3-§.§_-ki§;
   import §_-ES§.§_-L8§;
   import §_-U0§.§_-tF§;
   import §_-q6§.§_-ZW§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-mr§ extends §_-xD§
   {
       
      
      public var mParentContainer:§_-L8§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-rE§:Boolean = false;
      
      public var §_-jT§:Boolean = true;
      
      public var §_-74§:Boolean = false;
      
      public var §_-0N§:Boolean = false;
      
      private var §_-S3§:§_-Di§;
      
      private var §_-w3§:Boolean = false;
      
      protected var §_-k0§:Boolean = false;
      
      private var §_-mb§:Number;
      
      private var §_-L6§:Number;
      
      private var §_-bx§:Number;
      
      private var §_-NE§:Number;
      
      private var §_-DT§:String;
      
      private var §super§:String;
      
      private var §_-y7§:String;
      
      private var §_-dg§:String;
      
      private var §_-CZ§:String;
      
      private var §switch§:String;
      
      public function §_-mr§(param1:XML, param2:§_-L8§, param3:MovieClip = null)
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
            _loc4_ = §_-ki§.§_-pB§(this.mName);
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
               §_-tF§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§_-74§ = true;
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
            _loc8_ = this.getParentView().§_-qE§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(param2.§_-74§)
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
            this.§_-0N§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(param1);
         this.§_-Hn§(param1);
         this.§_-0J§(param1);
      }
      
      private function §_-xs§() : void
      {
         if(!this.§_-S3§)
         {
            this.§_-S3§ = new §_-Di§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§_-bx§,this.§_-NE§,this.§_-DT§,this.§super§,this.§_-y7§,this.§_-dg§,this.§switch§,this.§_-CZ§);
         }
         this.§_-S3§.§_-ga§(this.§_-mb§,this.§_-L6§);
         this.mClip.x = this.§_-S3§.x;
         this.mClip.y = this.§_-S3§.y;
         this.mClip.scaleX = this.§_-S3§.scaleX;
         this.mClip.scaleY = this.§_-S3§.scaleY;
         if(this.§_-w3§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-bx§,this.§_-NE§);
         }
      }
      
      private function §_-Hn§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§_-mb§ = _loc2_;
            this.§_-L6§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§_-mb§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§_-mb§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§_-L6§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§_-L6§ = _loc3_;
            }
         }
         this.§_-bx§ = this.§_-mb§;
         this.§_-NE§ = this.§_-L6§;
      }
      
      private function §_-0J§(param1:XML) : void
      {
         this.§_-DT§ = param1.@alignH;
         this.§super§ = param1.@alignV;
         this.§_-y7§ = param1.@scaleH;
         this.§_-dg§ = param1.@scaleV;
         this.§_-CZ§ = param1.@scaleFunction;
         this.§switch§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§_-ar§(_loc2_);
         this.§_-Cj§(_loc3_);
      }
      
      private function §_-Cj§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-k0§ = true;
            }
         }
      }
      
      private function §_-ar§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-w3§ = true;
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
         this.§_-jT§ = param1;
         this.mClip.visible = this.§_-jT§ && this.§_-rE§;
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
         this.§_-rE§ = param1;
         this.mClip.visible = this.§_-jT§ && this.§_-rE§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§_-0N§)
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
      
      public function getParentView() : §_-ZW§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(!this.§_-S3§)
         {
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(!this.§_-S3§)
         {
         }
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
         return this.§_-mb§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-L6§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-mb§ = param1;
         this.§_-xs§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-L6§ = param1;
         this.§_-xs§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
