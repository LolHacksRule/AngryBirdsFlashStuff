package §!!0§
{
   import §3!O§.§5q§;
   import §4M§.§^'§;
   import §8]§.§+a§;
   import com.rovio.assets.§^3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class override extends § true§
   {
       
      
      public var mParentContainer:§+a§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var §"j§:Boolean = true;
      
      public var §9g§:Boolean = false;
      
      public var §^!L§:Boolean = false;
      
      private var §+!3§:§,`§;
      
      private var §9!5§:Boolean = false;
      
      protected var §3$§:Boolean = false;
      
      private var §3n§:Number;
      
      private var §0!'§:Number;
      
      private var §4e§:Number;
      
      private var §1@§:Number;
      
      private var §]x§:String;
      
      private var §+!?§:String;
      
      private var §?!8§:String;
      
      private var §%!1§:String;
      
      private var §1m§:String;
      
      private var §!!$§:String;
      
      public function override(param1:XML, param2:§+a§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§+a§ = param2;
         var clip:MovieClip = param3;
         this.mParentContainer = parentContainer;
         this.mName = data.@name;
         if(clip)
         {
            this.mClip = clip;
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(data.@fromLibrary.toString().toUpperCase() == "TRUE")
         {
            cls = §^3§.§+_§(this.mName);
            this.mClip = new cls();
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
               error = "Asset instance not found!! [" + this.mName + "] parent: [" + this.mParentContainer.mName + "]";
               §5q§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§9g§ = true;
            color = 16777215;
            alpha = 0.5;
            if(data.@overlayColor.toString() != "")
            {
               color = parseInt(data.@overlayColor);
            }
            if(data.@overlayAlpha.toString() != "")
            {
               alpha = parseFloat(data.@overlayAlpha);
            }
            tmp = this.getParentView().§0!%§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§9g§)
            {
               parentContainer.mClip.setChildIndex(this.mClip,1);
            }
            else
            {
               parentContainer.mClip.setChildIndex(this.mClip,0);
            }
         }
         if(data.@animateOnActivation.toString().toUpperCase() == "TRUE")
         {
            this.§^!L§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§`!N§(data);
         this.§=O§(data);
      }
      
      private function §%a§() : void
      {
         if(!this.§+!3§)
         {
            this.§+!3§ = new §,`§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§4e§,this.§1@§,this.§]x§,this.§+!?§,this.§?!8§,this.§%!1§,this.§!!$§,this.§1m§);
         }
         this.§+!3§.§4!%§(this.§3n§,this.§0!'§);
         this.mClip.x = this.§+!3§.x;
         this.mClip.y = this.§+!3§.y;
         this.mClip.scaleX = this.§+!3§.scaleX;
         this.mClip.scaleY = this.§+!3§.scaleY;
         if(this.§9!5§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§4e§,this.§1@§);
         }
      }
      
      private function §`!N§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§3n§ = _loc2_;
            this.§0!'§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§3n§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§3n§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§0!'§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§0!'§ = _loc3_;
            }
         }
         this.§4e§ = this.§3n§;
         this.§1@§ = this.§0!'§;
      }
      
      private function §=O§(param1:XML) : void
      {
         this.§]x§ = param1.@alignH;
         this.§+!?§ = param1.@alignV;
         this.§?!8§ = param1.@scaleH;
         this.§%!1§ = param1.@scaleV;
         this.§1m§ = param1.@scaleFunction;
         this.§!!$§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§1Y§(_loc2_);
         this.§&$§(_loc3_);
      }
      
      private function §&$§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§3$§ = true;
            }
         }
      }
      
      private function §1Y§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§9!5§ = true;
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
         this.§+!3§ = null;
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
         this.§"j§ = param1;
         this.mClip.visible = this.§"j§ && this.mActive;
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
         this.mActive = param1;
         this.mClip.visible = this.§"j§ && this.mActive;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§^!L§)
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
      
      public function getParentView() : §^'§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§+!3§)
         {
            this.§+!3§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§+!3§)
         {
            this.§+!3§.y = this.mClip.y;
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
         return this.§3n§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§0!'§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§3n§ = param1;
         this.§%a§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§0!'§ = param1;
         this.§%a§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§3$§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§3$§ = param1;
      }
   }
}
