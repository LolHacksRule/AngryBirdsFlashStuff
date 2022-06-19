package §_-A§
{
   import §_-Eq§.§_-q§;
   import §_-aA§.§_-I0§;
   import §_-ab§.§_-IP§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-Hw§ extends §_-KQ§
   {
       
      
      public var mParentContainer:§_-IP§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-00L§:Boolean = false;
      
      public var §_-5i§:Boolean = true;
      
      public var §_-Tv§:Boolean = false;
      
      public var §_-pm§:Boolean = false;
      
      private var §_-T3§:§_-A2§;
      
      private var §_-zb§:Boolean = false;
      
      protected var §_-sy§:Boolean = false;
      
      private var §_-P5§:Number;
      
      private var §_-Ju§:Number;
      
      private var §_-DJ§:Number;
      
      private var §_-dG§:Number;
      
      private var §_-5h§:String;
      
      private var §_-4J§:String;
      
      private var §_-ZM§:String;
      
      private var §_-Bo§:String;
      
      private var §_-EO§:String;
      
      private var §_-t8§:String;
      
      public function §_-Hw§(param1:XML, param2:§_-IP§, param3:MovieClip = null)
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
            _loc4_ = §_-q§.§_-Ti§(this.mName);
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
               §_-I0§.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§_-Tv§ = true;
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
            _loc8_ = this.getParentView().§_-Jj§(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         if(this.mParentContainer && param1.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(param2.§_-Tv§)
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
            this.§_-pm§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(param1);
         this.§var §(param1);
         this.§_-D8§(param1);
      }
      
      private function §_-Of§() : void
      {
         if(!this.§_-T3§)
         {
            this.§_-T3§ = new §_-A2§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§_-DJ§,this.§_-dG§,this.§_-5h§,this.§_-4J§,this.§_-ZM§,this.§_-Bo§,this.§_-t8§,this.§_-EO§);
         }
         this.§_-T3§.§_-dk§(this.§_-P5§,this.§_-Ju§);
         this.mClip.x = this.§_-T3§.x;
         this.mClip.y = this.§_-T3§.y;
         this.mClip.scaleX = this.§_-T3§.scaleX;
         this.mClip.scaleY = this.§_-T3§.scaleY;
         if(this.§_-zb§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-DJ§,this.§_-dG§);
         }
      }
      
      private function §var §(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§_-P5§ = _loc2_;
            this.§_-Ju§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§_-P5§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§_-P5§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§_-Ju§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§_-Ju§ = _loc3_;
            }
         }
         this.§_-DJ§ = this.§_-P5§;
         this.§_-dG§ = this.§_-Ju§;
      }
      
      private function §_-D8§(param1:XML) : void
      {
         this.§_-5h§ = param1.@alignH;
         this.§_-4J§ = param1.@alignV;
         this.§_-ZM§ = param1.@scaleH;
         this.§_-Bo§ = param1.@scaleV;
         this.§_-EO§ = param1.@scaleFunction;
         this.§_-t8§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§_-OV§(_loc2_);
         this.§_-9K§(_loc3_);
      }
      
      private function §_-9K§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-sy§ = true;
            }
         }
      }
      
      private function §_-OV§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-zb§ = true;
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
         this.§_-5i§ = param1;
         this.mClip.visible = this.§_-5i§ && this.§_-00L§;
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
         this.§_-00L§ = param1;
         this.mClip.visible = this.§_-5i§ && this.§_-00L§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§_-pm§)
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
      
      public function getParentView() : §_-S6§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(!this.§_-T3§)
         {
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(!this.§_-T3§)
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
         return this.§_-P5§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-Ju§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-P5§ = param1;
         this.§_-Of§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-Ju§ = param1;
         this.§_-Of§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
