package §_-PK§
{
   import §_-E-§.§_-hw§;
   import §_-Ux§.§_-2E§;
   import §_-Yc§.§_-e9§;
   import §_-ec§.§_-GK§;
   import §_-ot§.§_-o6§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-ZR§ extends §_-Jb§
   {
      
      private static const §_-H3§:String = "RIGHT";
      
      private static const §_-9x§:String = "LEFT";
      
      private static const §_-x§:String = "TOP";
      
      private static const §_-KR§:String = "BOTTOM";
      
      private static const §_-kA§:String = "CENTER";
       
      
      public var mParentContainer:§_-hw§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-TY§:Boolean = false;
      
      public var §_-F4§:Boolean = true;
      
      public var §_-Ce§:Boolean = false;
      
      public var §_-e7§:Boolean = false;
      
      private var §_-od§:String = "LEFT";
      
      private var §_-iC§:String = "TOP";
      
      private var §_-Tt§:Boolean = false;
      
      private var §_-gU§:Boolean = false;
      
      private var §_-D§:Boolean = false;
      
      private var §_-P3§:Boolean = false;
      
      private var §_-V6§:Boolean = false;
      
      private var §_-bq§:Boolean = false;
      
      protected var §_-MP§:Boolean = false;
      
      private var §_-OY§:Number;
      
      private var §_-51§:Number;
      
      private var §_-bt§:Number;
      
      private var §_-t0§:Number;
      
      private var §_-Se§:Number;
      
      private var §_-3c§:Number;
      
      private var §_-5c§:Number;
      
      private var §_-2C§:Number;
      
      public function §_-ZR§(param1:XML, param2:§_-hw§, param3:MovieClip = null)
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
            _loc4_ = §_-GK§.§_-dR§(this.mName);
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
               §_-o6§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay == "True")
         {
            this.§_-Ce§ = true;
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
            _loc8_ = this.getParentView().§_-MO§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind == "True")
         {
            if(param2.§_-Ce§)
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
            this.§_-e7§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.§_-bt§ = this.x;
         this.§_-t0§ = this.y;
         this.§_-Se§ = this.width;
         this.§_-3c§ = this.height;
         this.readInitialVisibility(param1);
         this.§_-13§(param1);
         this.§_-2h§(param1);
         this.§_-XM§();
      }
      
      public function get alignH() : String
      {
         return this.§_-od§;
      }
      
      public function get alignV() : String
      {
         return this.§_-iC§;
      }
      
      private function §_-XM§() : void
      {
         var _loc1_:Number = this.§_-OY§ / this.§_-5c§;
         var _loc2_:Number = this.§_-51§ / this.§_-2C§;
         if(this.§_-V6§)
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
         if(this.§_-od§ == §_-H3§)
         {
            this.x = this.§_-bt§ + (this.§_-OY§ - §_-e9§.§_-mb§);
         }
         else if(this.§_-od§ == §_-kA§)
         {
            this.x = this.§_-bt§ + (this.§_-OY§ - §_-e9§.§_-mb§) / 2;
            if(this.§_-Tt§)
            {
               this.x = this.§_-bt§ * Math.min(_loc1_,this.§_-OY§ / this.§_-5c§);
               if(!this.§_-gU§ && _loc1_ >= 1)
               {
                  this.x += this.§_-5c§ / 2 * this.§_-OY§ / this.§_-5c§ - this.§_-5c§ / 2;
               }
               else if(this.§_-V6§)
               {
                  this.x += this.§_-5c§ / 2 * this.§_-OY§ / this.§_-5c§ - this.§_-5c§ / 2 * _loc1_;
               }
            }
         }
         if(this.§_-iC§ == §_-x§)
         {
            if(this.§_-D§)
            {
               this.y = this.§_-t0§ * _loc2_;
            }
         }
         else if(this.§_-iC§ == §_-KR§)
         {
            this.y = this.§_-t0§ + (this.§_-51§ - §_-e9§.§_-gG§);
         }
         else if(this.§_-iC§ == §_-kA§)
         {
            this.y = this.§_-t0§ + (this.§_-51§ - §_-e9§.§_-gG§) / 2;
            if(this.§_-D§)
            {
               this.y = this.§_-t0§ * Math.min(_loc2_,this.§_-51§ / this.§_-2C§);
               if(!this.§_-P3§ && _loc2_ >= 1)
               {
                  this.y += this.§_-2C§ / 2 * this.§_-51§ / this.§_-2C§ - this.§_-2C§ / 2;
               }
               else if(this.§_-V6§)
               {
                  this.y += this.§_-2C§ / 2 * this.§_-51§ / this.§_-2C§ - this.§_-2C§ / 2 * _loc2_;
               }
            }
         }
         if(!this.§_-gU§ && _loc1_ > 1)
         {
            _loc1_ = 1;
         }
         if(!this.§_-P3§ && _loc2_ > 1)
         {
            _loc2_ = 1;
         }
         if(this.§_-Tt§)
         {
            this.mClip.scaleX = _loc1_;
         }
         if(this.§_-D§)
         {
            this.mClip.scaleY = _loc2_;
         }
         if(this.§_-bq§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-5c§,this.§_-2C§);
         }
      }
      
      private function §_-2h§(param1:XML) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!this.mParentContainer)
         {
            _loc2_ = param1.@width;
            _loc3_ = param1.@height;
            this.§_-OY§ = _loc2_;
            this.§_-51§ = _loc3_;
         }
         else
         {
            this.§_-OY§ = this.mParentContainer.viewWidth;
            this.§_-51§ = this.mParentContainer.viewHeight;
         }
         this.§_-5c§ = this.§_-OY§;
         this.§_-2C§ = this.§_-51§;
      }
      
      private function §_-13§(param1:XML) : void
      {
         var _loc2_:String = param1.@alignH;
         var _loc3_:String = param1.@alignV;
         var _loc4_:String = param1.@scaleH;
         var _loc5_:String = param1.@scaleV;
         var _loc6_:String = param1.@aspectRatioFixed;
         var _loc7_:String = param1.@scrollRect;
         var _loc8_:String = param1.@scaleOnMouseOver;
         this.§_-6L§(_loc2_);
         this.§_-uj§(_loc3_);
         this.§_-ef§(_loc4_);
         this.§_-4A§(_loc5_);
         this.§_-Gu§(_loc6_);
         this.§_-0S§(_loc7_);
         this.§_-bL§(_loc8_);
      }
      
      private function §_-bL§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-MP§ = true;
            }
         }
      }
      
      private function §_-6L§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-H3§ || param1 == §_-kA§)
            {
               this.§_-od§ = param1;
            }
         }
      }
      
      private function §_-uj§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == §_-KR§ || param1 == §_-kA§)
            {
               this.§_-iC§ = param1;
            }
         }
      }
      
      private function §_-ef§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-Tt§ = true;
               this.§_-gU§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-Tt§ = true;
            }
         }
      }
      
      private function §_-4A§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-D§ = true;
               this.§_-P3§ = true;
            }
            if(param1.toUpperCase() == "DOWN")
            {
               this.§_-D§ = true;
            }
         }
      }
      
      private function §_-Gu§(param1:String) : void
      {
         if(param1)
         {
            if(param1.toUpperCase() == "TRUE")
            {
               this.§_-V6§ = true;
            }
         }
      }
      
      private function §_-0S§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-bq§ = true;
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
         this.§_-F4§ = param1;
         this.mClip.visible = this.§_-F4§ && this.§_-TY§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            §_-7a§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§_-TY§ = param1;
         this.mClip.visible = this.§_-F4§ && this.§_-TY§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            §_-7a§();
         }
         if(this.§_-e7§)
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
      
      public function getParentView() : §_-2E§
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
         return this.§_-OY§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-51§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-OY§ = param1;
         this.§_-XM§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-51§ = param1;
         this.§_-XM§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
