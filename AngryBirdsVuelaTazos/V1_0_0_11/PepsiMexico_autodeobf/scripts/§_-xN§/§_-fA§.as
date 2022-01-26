package §_-xN§
{
   import §_-QM§.§_-Ns§;
   import §_-TW§.§_-qq§;
   import §_-ZG§.§_-Ne§;
   import §_-p7§.§_-WY§;
   import §_-qT§.§_-5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-fA§ extends §_-pB§
   {
      
      private static const §_-Ti§:String = "RIGHT";
      
      private static const §_-OZ§:String = "LEFT";
      
      private static const §_-p§:String = "TOP";
      
      private static const §_-dl§:String = "BOTTOM";
      
      private static const §_-uO§:String = "CENTER";
       
      
      public var mParentContainer:§_-qq§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-Wx§:Boolean = false;
      
      public var §_-UE§:Boolean = true;
      
      public var §_-ig§:Boolean = false;
      
      public var §_-eA§:Boolean = false;
      
      private var §_-DA§:String = "LEFT";
      
      private var §_-Qr§:String = "TOP";
      
      private var §_-Rc§:Boolean = false;
      
      private var §_-sr§:Boolean = false;
      
      private var §_-lt§:Boolean = false;
      
      private var §_-7I§:Boolean = false;
      
      private var §_-1s§:Boolean = false;
      
      private var §_-W6§:Boolean = false;
      
      protected var §_-5k§:Boolean = false;
      
      private var §_-UP§:Number;
      
      private var §_-IY§:Number;
      
      private var §_-p1§:Number;
      
      private var §_-nk§:Number;
      
      private var §_-Tl§:Number;
      
      private var §_-9Y§:Number;
      
      private var §_-oO§:Number;
      
      private var §_-Df§:Number;
      
      public function §_-fA§(param1:XML, param2:§_-qq§, param3:MovieClip = null)
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
            _loc4_ = §_-WY§.§_-fs§(this.mName);
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
               §_-Ne§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay == "True")
         {
            this.§_-ig§ = true;
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
            _loc8_ = this.getParentView().§_-5P§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind == "True")
         {
            if(param2.§_-ig§)
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
            this.§_-eA§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.§_-p1§ = this.x;
         this.§_-nk§ = this.y;
         this.§_-Tl§ = this.width;
         this.§_-9Y§ = this.height;
         this.readInitialVisibility(param1);
         this.§_-D1§(param1);
         this.§_-5C§(param1);
         this.§_-wE§();
      }
      
      public function get alignH() : String
      {
         return this.§_-DA§;
      }
      
      public function get alignV() : String
      {
         return this.§_-Qr§;
      }
      
      private function §_-wE§() : void
      {
         var _loc1_:Number = this.§_-UP§ / this.§_-oO§;
         var _loc2_:Number = this.§_-IY§ / this.§_-Df§;
         if(this.§_-1s§)
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
         if(this.§_-DA§ == §_-Ti§)
         {
            this.x = this.§_-p1§ + (this.§_-UP§ - §_-5§.§_-jQ§);
         }
         else if(this.§_-DA§ == §_-uO§)
         {
            this.x = this.§_-p1§ + (this.§_-UP§ - §_-5§.§_-jQ§) / 2;
            if(this.§_-Rc§)
            {
               this.x = this.§_-p1§ * Math.min(_loc1_,this.§_-UP§ / this.§_-oO§);
               if(!this.§_-sr§ && _loc1_ >= 1)
               {
                  this.x += this.§_-oO§ / 2 * this.§_-UP§ / this.§_-oO§ - this.§_-oO§ / 2;
               }
               else if(this.§_-1s§)
               {
                  this.x += this.§_-oO§ / 2 * this.§_-UP§ / this.§_-oO§ - this.§_-oO§ / 2 * _loc1_;
               }
            }
         }
         if(this.§_-Qr§ == §_-p§)
         {
            if(this.§_-lt§)
            {
               this.y = this.§_-nk§ * _loc2_;
            }
         }
         else if(this.§_-Qr§ == §_-dl§)
         {
            this.y = this.§_-nk§ + (this.§_-IY§ - §_-5§.§_-Sl§);
         }
         else if(this.§_-Qr§ == §_-uO§)
         {
            this.y = this.§_-nk§ + (this.§_-IY§ - §_-5§.§_-Sl§) / 2;
            if(this.§_-lt§)
            {
               this.y = this.§_-nk§ * Math.min(_loc2_,this.§_-IY§ / this.§_-Df§);
               if(!this.§_-7I§ && _loc2_ >= 1)
               {
                  this.y += this.§_-Df§ / 2 * this.§_-IY§ / this.§_-Df§ - this.§_-Df§ / 2;
               }
               else if(this.§_-1s§)
               {
                  this.y += this.§_-Df§ / 2 * this.§_-IY§ / this.§_-Df§ - this.§_-Df§ / 2 * _loc2_;
               }
            }
         }
         if(!this.§_-sr§ && _loc1_ > 1)
         {
            _loc1_ = 1;
         }
         if(!this.§_-7I§ && _loc2_ > 1)
         {
            _loc2_ = 1;
         }
         if(this.§_-Rc§)
         {
            this.mClip.scaleX = _loc1_;
         }
         if(this.§_-lt§)
         {
            this.mClip.scaleY = _loc2_;
         }
         if(this.§_-W6§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-oO§,this.§_-Df§);
         }
      }
      
      private function §_-5C§(param1:XML) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!this.mParentContainer)
         {
            _loc2_ = param1.@width;
            _loc3_ = param1.@height;
            this.§_-UP§ = _loc2_;
            this.§_-IY§ = _loc3_;
         }
         else
         {
            this.§_-UP§ = this.mParentContainer.viewWidth;
            this.§_-IY§ = this.mParentContainer.viewHeight;
         }
         this.§_-oO§ = this.§_-UP§;
         this.§_-Df§ = this.§_-IY§;
      }
      
      private function §_-D1§(param1:XML) : void
      {
         var _loc2_:String = param1.@alignH;
         var _loc3_:String = param1.@alignV;
         var _loc4_:String = param1.@scaleH;
         var _loc5_:String = param1.@scaleV;
         var _loc6_:String = param1.@aspectRatioFixed;
         var _loc7_:String = param1.@scrollRect;
         var _loc8_:String = param1.@scaleOnMouseOver;
         this.§_-lC§(_loc2_);
         this.§_-KX§(_loc3_);
         this.§_-Oa§(_loc4_);
         this.§_-Qx§(_loc5_);
         this.§_-1O§(_loc6_);
         this.§_-qM§(_loc7_);
         this.§_-LT§(_loc8_);
      }
      
      private function §_-LT§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-5k§ = true;
            }
         }
      }
      
      private function §_-lC§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-Ti§ || param1 == §_-uO§)
            {
               this.§_-DA§ = param1;
            }
         }
      }
      
      private function §_-KX§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-dl§ || param1 == §_-uO§)
            {
               this.§_-Qr§ = param1;
            }
         }
      }
      
      private function §_-Oa§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-Rc§ = true;
               this.§_-sr§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-Rc§ = true;
            }
         }
      }
      
      private function §_-Qx§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-lt§ = true;
               this.§_-7I§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-lt§ = true;
            }
         }
      }
      
      private function §_-1O§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-1s§ = true;
            }
         }
      }
      
      private function §_-qM§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-W6§ = true;
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
         this.§_-UE§ = param1;
         this.mClip.visible = this.§_-UE§ && this.§_-Wx§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            §_-D7§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§_-Wx§ = param1;
         this.mClip.visible = this.§_-UE§ && this.§_-Wx§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            §_-D7§();
         }
         if(this.§_-eA§)
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
      
      public function getParentView() : §_-Ns§
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
         return this.§_-UP§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-IY§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-UP§ = param1;
         this.§_-wE§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-IY§ = param1;
         this.§_-wE§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
