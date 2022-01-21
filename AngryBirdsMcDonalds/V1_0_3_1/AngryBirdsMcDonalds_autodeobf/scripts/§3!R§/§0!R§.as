package §3!R§
{
   import § 1§.§=§;
   import §2y§.§]`§;
   import §3g§.§"!n§;
   import §5K§.§[C§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §0!R§ extends §81§
   {
       
      
      public var mParentContainer:§]`§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §#X§:Boolean = false;
      
      public var § !!§:Boolean = true;
      
      public var §@$§:Boolean = false;
      
      public var §,K§:Boolean = false;
      
      private var §?!D§:§?!N§;
      
      private var § !f§:Boolean = false;
      
      protected var §2V§:Boolean = false;
      
      private var §5!f§:Number;
      
      private var §`§:Number;
      
      private var §2p§:Number;
      
      private var §;!_§:Number;
      
      private var §>D§:String;
      
      private var §5F§:String;
      
      private var §-!h§:String;
      
      private var §=,§:String;
      
      private var §"!"§:String;
      
      private var §+!4§:String;
      
      public function §0!R§(param1:XML, param2:§]`§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§]`§ = param2;
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
            cls = §=§.§>!f§(this.mName);
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
               §[C§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§@$§ = true;
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
            tmp = this.getParentView().§[e§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§@$§)
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
            this.§,K§ = true;
            this.mClip.stop();
         }
         var targetSprite:Sprite = this.mClip;
         if(this.mClip.MouseHitArea)
         {
            this.mClip.MouseHitArea.alpha = 0;
            targetSprite = this.mClip.MouseHitArea;
         }
         super(targetSprite);
         this.readInitialVisibility(data);
         this.§0!_§(data);
         this.§!?§(data);
      }
      
      private function §,U§() : void
      {
         if(!this.§?!D§)
         {
            this.§?!D§ = new §?!N§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§2p§,this.§;!_§,this.§>D§,this.§5F§,this.§-!h§,this.§=,§,this.§+!4§,this.§"!"§);
         }
         this.§?!D§.§=t§(this.§5!f§,this.§`§);
         this.mClip.x = this.§?!D§.x;
         this.mClip.y = this.§?!D§.y;
         this.mClip.scaleX = this.§?!D§.scaleX;
         this.mClip.scaleY = this.§?!D§.scaleY;
         if(this.§ !f§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§2p§,this.§;!_§);
         }
      }
      
      private function §0!_§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§5!f§ = _loc2_;
            this.§`§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§5!f§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§5!f§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§`§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§`§ = _loc3_;
            }
         }
         this.§2p§ = this.§5!f§;
         this.§;!_§ = this.§`§;
      }
      
      private function §!?§(param1:XML) : void
      {
         this.§>D§ = param1.@alignH;
         this.§5F§ = param1.@alignV;
         this.§-!h§ = param1.@scaleH;
         this.§=,§ = param1.@scaleV;
         this.§"!"§ = param1.@scaleFunction;
         this.§+!4§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§;#§(_loc2_);
         this.§[!;§(_loc3_);
      }
      
      private function §[!;§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§2V§ = true;
            }
         }
      }
      
      private function §;#§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§ !f§ = true;
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
         this.§?!D§ = null;
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
         this.§ !!§ = param1;
         this.mClip.visible = this.§ !!§ && this.§#X§;
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
         this.§#X§ = param1;
         this.mClip.visible = this.§ !!§ && this.§#X§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§,K§)
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
      
      public function getParentView() : §"!n§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§?!D§)
         {
            this.§?!D§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§?!D§)
         {
            this.§?!D§.y = this.mClip.y;
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
         return this.§5!f§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§`§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§5!f§ = param1;
         this.§,U§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§`§ = param1;
         this.§,U§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§2V§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§2V§ = param1;
      }
   }
}
