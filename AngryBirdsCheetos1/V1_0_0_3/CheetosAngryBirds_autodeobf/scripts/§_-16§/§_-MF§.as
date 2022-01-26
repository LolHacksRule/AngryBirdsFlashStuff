package §_-16§
{
   import §_-2B§.§_-wA§;
   import §_-Eg§.§_-Up§;
   import §_-r6§.§_-Oy§;
   import §_-xL§.§_-1-§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-MF§ extends §_-VR§
   {
       
      
      public var mParentContainer:§_-Up§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-c8§:Boolean = false;
      
      public var §_-tk§:Boolean = true;
      
      public var §_-ku§:Boolean = false;
      
      public var §_-s4§:Boolean = false;
      
      private var §_-sB§:§ do§;
      
      private var §_-Gg§:Boolean = false;
      
      protected var §_-im§:Boolean = false;
      
      private var §_-mK§:Number;
      
      private var §_-uJ§:Number;
      
      private var §_-os§:Number;
      
      private var §_-jH§:Number;
      
      private var §_-E9§:String;
      
      private var §_-z1§:String;
      
      private var §_-qo§:String;
      
      private var §_-uy§:String;
      
      private var §_-8M§:String;
      
      private var §_-mJ§:String;
      
      public function §_-MF§(param1:XML, param2:§_-Up§, param3:MovieClip = null)
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
            _loc4_ = §_-wA§.§_-Mh§(this.mName);
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
               §_-Oy§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§_-ku§ = true;
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
            _loc8_ = this.getParentView().§_-S3§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(param2.§_-ku§)
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
            this.§_-s4§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(param1);
         this.§_-q§(param1);
         this.§_-3T§(param1);
      }
      
      private function §_-RZ§() : void
      {
         if(!this.§_-sB§)
         {
            this.§_-sB§ = new § do§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§_-os§,this.§_-jH§,this.§_-E9§,this.§_-z1§,this.§_-qo§,this.§_-uy§,this.§_-mJ§,this.§_-8M§);
         }
         this.§_-sB§.§_-g§(this.§_-mK§,this.§_-uJ§);
         this.mClip.x = this.§_-sB§.x;
         this.mClip.y = this.§_-sB§.y;
         this.mClip.scaleX = this.§_-sB§.scaleX;
         this.mClip.scaleY = this.§_-sB§.scaleY;
         if(this.§_-Gg§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-os§,this.§_-jH§);
         }
      }
      
      private function §_-q§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§_-mK§ = _loc2_;
            this.§_-uJ§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§_-mK§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§_-mK§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§_-uJ§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§_-uJ§ = _loc3_;
            }
         }
         this.§_-os§ = this.§_-mK§;
         this.§_-jH§ = this.§_-uJ§;
      }
      
      private function §_-3T§(param1:XML) : void
      {
         this.§_-E9§ = param1.@alignH;
         this.§_-z1§ = param1.@alignV;
         this.§_-qo§ = param1.@scaleH;
         this.§_-uy§ = param1.@scaleV;
         this.§_-8M§ = param1.@scaleFunction;
         this.§_-mJ§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§_-Xp§(_loc2_);
         this.§_-V-§(_loc3_);
      }
      
      private function §_-V-§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-im§ = true;
            }
         }
      }
      
      private function §_-Xp§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-Gg§ = true;
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
         this.§_-tk§ = param1;
         this.mClip.visible = this.§_-tk§ && this.§_-c8§;
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
         this.§_-c8§ = param1;
         this.mClip.visible = this.§_-tk§ && this.§_-c8§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§_-s4§)
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
      
      public function getParentView() : §_-1-§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(!this.§_-sB§)
         {
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(!this.§_-sB§)
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
         return this.§_-mK§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-uJ§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-mK§ = param1;
         this.§_-RZ§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-uJ§ = param1;
         this.§_-RZ§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
