package §'!D§
{
   import §7'§.§!y§;
   import §>M§.§<6§;
   import §>P§.§5!§;
   import §>^§.§!6§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §?!h§ extends §08§
   {
       
      
      public var mParentContainer:§<6§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §2A§:Boolean = false;
      
      public var §^!V§:Boolean = true;
      
      public var §%Y§:Boolean = false;
      
      public var §^!&§:Boolean = false;
      
      private var §4!%§:§"F§;
      
      private var §&!^§:Boolean = false;
      
      protected var §%!3§:Boolean = false;
      
      private var §8m§:Number;
      
      private var §&d§:Number;
      
      private var §'Z§:Number;
      
      private var §3!2§:Number;
      
      private var §+n§:String;
      
      private var §0V§:String;
      
      private var §=S§:String;
      
      private var §%-§:String;
      
      private var §-9§:String;
      
      private var §<!>§:String;
      
      public function §?!h§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§<6§ = param2;
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
            cls = §!y§.§%!C§(this.mName);
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
               §!6§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§%Y§ = true;
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
            tmp = this.getParentView().§1+§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§%Y§)
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
            this.§^!&§ = true;
            this.mClip.stop();
         }
         var targetSprite:Sprite = this.mClip;
         if(this.mClip.MouseHitArea)
         {
            this.mClip.MouseHitArea.alpha = 0;
            targetSprite = this.mClip.MouseHitArea;
            targetSprite.visible = true;
         }
         super(targetSprite);
         this.readInitialVisibility(data);
         this.§83§(data);
         this.§?!O§(data);
      }
      
      private function §!!>§() : void
      {
         if(!this.§4!%§)
         {
            this.§4!%§ = new §"F§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§'Z§,this.§3!2§,this.§+n§,this.§0V§,this.§=S§,this.§%-§,this.§<!>§,this.§-9§);
         }
         this.§4!%§.§-g§(this.§8m§,this.§&d§);
         this.mClip.x = this.§4!%§.x;
         this.mClip.y = this.§4!%§.y;
         this.mClip.scaleX = this.§4!%§.scaleX;
         this.mClip.scaleY = this.§4!%§.scaleY;
         if(this.§&!^§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§'Z§,this.§3!2§);
         }
      }
      
      private function §83§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§8m§ = _loc2_;
            this.§&d§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§8m§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§8m§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§&d§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§&d§ = _loc3_;
            }
         }
         this.§'Z§ = this.§8m§;
         this.§3!2§ = this.§&d§;
      }
      
      private function §?!O§(param1:XML) : void
      {
         this.§+n§ = param1.@alignH;
         this.§0V§ = param1.@alignV;
         this.§=S§ = param1.@scaleH;
         this.§%-§ = param1.@scaleV;
         this.§-9§ = param1.@scaleFunction;
         this.§<!>§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§59§(_loc2_);
         this.§5!'§(_loc3_);
      }
      
      private function §5!'§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§%!3§ = true;
            }
         }
      }
      
      private function §59§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§&!^§ = true;
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
         this.§4!%§ = null;
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
         this.§^!V§ = param1;
         this.mClip.visible = this.§^!V§ && this.§2A§;
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
         this.§2A§ = param1;
         this.mClip.visible = this.§^!V§ && this.§2A§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§^!&§)
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
      
      public function getParentView() : §5!§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§4!%§)
         {
            this.§4!%§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§4!%§)
         {
            this.§4!%§.y = this.mClip.y;
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
         return this.§8m§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§&d§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§8m§ = param1;
         this.§!!>§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§&d§ = param1;
         this.§!!>§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§%!3§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§%!3§ = param1;
      }
   }
}
