package §0!Q§
{
   import §6a§.UIContainerRovio;
   import §<u§.Log;
   import §=!5§.§`X§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §]`§:Boolean = false;
      
      public var §0x§:Boolean = true;
      
      public var §"p§:Boolean = false;
      
      public var §>7§:Boolean = false;
      
      private var §0!#§:§3%§;
      
      private var §0!E§:Boolean = false;
      
      protected var §5N§:Boolean = false;
      
      private var §;!`§:Number;
      
      private var §2§:Number;
      
      private var §+z§:Number;
      
      private var §-G§:Number;
      
      private var §&2§:String;
      
      private var §[!+§:String;
      
      private var §2o§:String;
      
      private var §@?§:String;
      
      private var §'!d§:String;
      
      private var §0M§:String;
      
      public function UIComponentRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:UIContainerRovio = param2;
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
            cls = AssetCache.§%p§(this.mName);
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
               Log.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§"p§ = true;
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
            tmp = this.getParentView().§7!%§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§"p§)
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
            this.§>7§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§1!R§(data);
         this.§-@§(data);
      }
      
      private function §6t§() : void
      {
         if(!this.§0!#§)
         {
            this.§0!#§ = new §3%§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§+z§,this.§-G§,this.§&2§,this.§[!+§,this.§2o§,this.§@?§,this.§0M§,this.§'!d§);
         }
         this.§0!#§.§#!<§(this.§;!`§,this.§2§);
         this.mClip.x = this.§0!#§.x;
         this.mClip.y = this.§0!#§.y;
         this.mClip.scaleX = this.§0!#§.scaleX;
         this.mClip.scaleY = this.§0!#§.scaleY;
         if(this.§0!E§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§+z§,this.§-G§);
         }
      }
      
      private function §1!R§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§;!`§ = _loc2_;
            this.§2§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§;!`§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§;!`§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§2§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§2§ = _loc3_;
            }
         }
         this.§+z§ = this.§;!`§;
         this.§-G§ = this.§2§;
      }
      
      private function §-@§(param1:XML) : void
      {
         this.§&2§ = param1.@alignH;
         this.§[!+§ = param1.@alignV;
         this.§2o§ = param1.@scaleH;
         this.§@?§ = param1.@scaleV;
         this.§'!d§ = param1.@scaleFunction;
         this.§0M§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§ X§(_loc2_);
         this.§=![§(_loc3_);
      }
      
      private function §=![§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§5N§ = true;
            }
         }
      }
      
      private function § X§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§0!E§ = true;
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
         this.§0!#§ = null;
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
         this.§0x§ = param1;
         this.mClip.visible = this.§0x§ && this.§]`§;
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
         this.§]`§ = param1;
         this.mClip.visible = this.§0x§ && this.§]`§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§>7§)
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
      
      public function getParentView() : §`X§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§0!#§)
         {
            this.§0!#§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§0!#§)
         {
            this.§0!#§.y = this.mClip.y;
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
         return this.§;!`§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§2§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§;!`§ = param1;
         this.§6t§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§2§ = param1;
         this.§6t§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§5N§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§5N§ = param1;
      }
   }
}
