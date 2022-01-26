package §_-Ys§
{
   import §_-8J§.§_-8s§;
   import §_-RG§.§_-HT§;
   import §_-kI§.§_-2m§;
   import §_-of§.§_-H4§;
   import §_-vA§.§_-XO§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-7o§ extends §_-o-§
   {
      
      private static const §_-p7§:String = "RIGHT";
      
      private static const §_-mr§:String = "LEFT";
      
      private static const §_-tz§:String = "TOP";
      
      private static const §_-0p§:String = "BOTTOM";
      
      private static const §_-P9§:String = "CENTER";
       
      
      public var mParentContainer:§_-H4§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-dA§:Boolean = false;
      
      public var §_-s4§:Boolean = true;
      
      public var §_-fo§:Boolean = false;
      
      public var §_-Jt§:Boolean = false;
      
      private var §_-qK§:String = "LEFT";
      
      private var §_-fH§:String = "TOP";
      
      private var §_-x0§:Boolean = false;
      
      private var §_-4W§:Boolean = false;
      
      private var §_-9l§:Boolean = false;
      
      private var §_-EO§:Boolean = false;
      
      private var §_-2B§:Boolean = false;
      
      private var §_-wQ§:Boolean = false;
      
      protected var §_-Xt§:Boolean = false;
      
      private var §_-Ab§:Number;
      
      private var §_-W0§:Number;
      
      private var §_-5D§:Number;
      
      private var §_-gU§:Number;
      
      private var §_-LZ§:Number;
      
      private var §_-2k§:Number;
      
      private var §_-55§:Number;
      
      private var §_-Wn§:Number;
      
      public function §_-7o§(param1:XML, param2:§_-H4§, param3:MovieClip = null)
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
            _loc4_ = §_-XO§.§_-O3§(this.mName);
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
               §_-HT§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay == "True")
         {
            this.§_-fo§ = true;
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
            _loc8_ = this.getParentView().§_-42§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind == "True")
         {
            if(param2.§_-fo§)
            {
               param2.mClip.setChildIndex(this.mClip,1);
            }
            else
            {
               param2.mClip.setChildIndex(this.mClip,0);
            }
         }
         if(param1.@animateOnActivation == "True")
         {
            this.§_-Jt§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.§_-5D§ = this.x;
         this.§_-gU§ = this.y;
         this.§_-LZ§ = this.width;
         this.§_-2k§ = this.height;
         this.readInitialVisibility(param1);
         this.§_-hd§(param1);
         this.§_-pC§(param1);
         this.§_-MM§();
      }
      
      public function get alignH() : String
      {
         return this.§_-qK§;
      }
      
      public function get alignV() : String
      {
         return this.§_-fH§;
      }
      
      private function §_-MM§() : void
      {
         var _loc1_:Number = this.§_-Ab§ / this.§_-55§;
         var _loc2_:Number = this.§_-W0§ / this.§_-Wn§;
         if(this.§_-2B§)
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
         if(this.§_-qK§ == §_-p7§)
         {
            this.x = this.§_-5D§ + (this.§_-Ab§ - §_-2m§.§_-Mg§);
         }
         else if(this.§_-qK§ == §_-P9§)
         {
            this.x = this.§_-5D§ + (this.§_-Ab§ - §_-2m§.§_-Mg§) / 2;
            if(this.§_-x0§)
            {
               this.x = this.§_-5D§ * Math.min(_loc1_,this.§_-Ab§ / this.§_-55§);
               if(!this.§_-4W§ && _loc1_ >= 1)
               {
                  this.x += this.§_-55§ / 2 * this.§_-Ab§ / this.§_-55§ - this.§_-55§ / 2;
               }
               else if(this.§_-2B§)
               {
                  this.x += this.§_-55§ / 2 * this.§_-Ab§ / this.§_-55§ - this.§_-55§ / 2 * _loc1_;
               }
            }
         }
         if(this.§_-fH§ == §_-tz§)
         {
            if(this.§_-9l§)
            {
               this.y = this.§_-gU§ * _loc2_;
            }
         }
         else if(this.§_-fH§ == §_-0p§)
         {
            this.y = this.§_-gU§ + (this.§_-W0§ - §_-2m§.§_-PD§);
         }
         else if(this.§_-fH§ == §_-P9§)
         {
            this.y = this.§_-gU§ + (this.§_-W0§ - §_-2m§.§_-PD§) / 2;
            if(this.§_-9l§)
            {
               this.y = this.§_-gU§ * Math.min(_loc2_,this.§_-W0§ / this.§_-Wn§);
               if(!this.§_-EO§ && _loc2_ >= 1)
               {
                  this.y += this.§_-Wn§ / 2 * this.§_-W0§ / this.§_-Wn§ - this.§_-Wn§ / 2;
               }
               else if(this.§_-2B§)
               {
                  this.y += this.§_-Wn§ / 2 * this.§_-W0§ / this.§_-Wn§ - this.§_-Wn§ / 2 * _loc2_;
               }
            }
         }
         if(!this.§_-4W§ && _loc1_ > 1)
         {
            _loc1_ = 1;
         }
         if(!this.§_-EO§ && _loc2_ > 1)
         {
            _loc2_ = 1;
         }
         if(this.§_-x0§)
         {
            this.mClip.scaleX = _loc1_;
         }
         if(this.§_-9l§)
         {
            this.mClip.scaleY = _loc2_;
         }
         if(this.§_-wQ§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-55§,this.§_-Wn§);
         }
      }
      
      private function §_-pC§(param1:XML) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!this.mParentContainer)
         {
            _loc2_ = param1.@width;
            _loc3_ = param1.@height;
            this.§_-Ab§ = _loc2_;
            this.§_-W0§ = _loc3_;
         }
         else
         {
            this.§_-Ab§ = this.mParentContainer.viewWidth;
            this.§_-W0§ = this.mParentContainer.viewHeight;
         }
         this.§_-55§ = this.§_-Ab§;
         this.§_-Wn§ = this.§_-W0§;
      }
      
      private function §_-hd§(param1:XML) : void
      {
         var _loc2_:String = param1.@alignH;
         var _loc3_:String = param1.@alignV;
         var _loc4_:String = param1.@scaleH;
         var _loc5_:String = param1.@scaleV;
         var _loc6_:String = param1.@aspectRatioFixed;
         var _loc7_:String = param1.@scrollRect;
         var _loc8_:String = param1.@scaleOnMouseOver;
         this.§_-GE§(_loc2_);
         this.§_-MB§(_loc3_);
         this.native(_loc4_);
         this.§_-J6§(_loc5_);
         this.§_-FS§(_loc6_);
         this.§_-uJ§(_loc7_);
         this.§_-VZ§(_loc8_);
      }
      
      private function §_-VZ§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-Xt§ = true;
            }
         }
      }
      
      private function §_-GE§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-p7§ || param1 == §_-P9§)
            {
               this.§_-qK§ = param1;
            }
         }
      }
      
      private function §_-MB§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-0p§ || param1 == §_-P9§)
            {
               this.§_-fH§ = param1;
            }
         }
      }
      
      private function native(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-x0§ = true;
               this.§_-4W§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-x0§ = true;
            }
         }
      }
      
      private function §_-J6§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-9l§ = true;
               this.§_-EO§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-9l§ = true;
            }
         }
      }
      
      private function §_-FS§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-2B§ = true;
            }
         }
      }
      
      private function §_-uJ§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-wQ§ = true;
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
         this.§_-s4§ = param1;
         this.mClip.visible = this.§_-s4§ && this.§_-dA§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            §_-Nx§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§_-dA§ = param1;
         this.mClip.visible = this.§_-s4§ && this.§_-dA§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            §_-Nx§();
         }
         if(this.§_-Jt§)
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
      
      public function getParentView() : §_-8s§
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
         return this.§_-Ab§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-W0§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-Ab§ = param1;
         this.§_-MM§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-W0§ = param1;
         this.§_-MM§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
