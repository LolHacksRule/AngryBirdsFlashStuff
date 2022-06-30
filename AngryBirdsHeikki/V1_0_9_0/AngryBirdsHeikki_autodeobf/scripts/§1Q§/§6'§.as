package §1Q§
{
   import §"!S§.§<s§;
   import §#Q§.§8Y§;
   import §0i§.§]_§;
   import §@!]§.§'!9§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §6'§ extends §'!`§
   {
       
      
      public var mParentContainer:§'!9§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §[![§:Boolean = false;
      
      public var §?!a§:Boolean = true;
      
      public var §1!;§:Boolean = false;
      
      public var §;![§:Boolean = false;
      
      private var §'!]§:§7w§;
      
      private var §6O§:Boolean = false;
      
      protected var §#"§:Boolean = false;
      
      private var §;!_§:Number;
      
      private var §%M§:Number;
      
      private var §2!Z§:Number;
      
      private var §"f§:Number;
      
      private var §&e§:String;
      
      private var §#=§:String;
      
      private var §9p§:String;
      
      private var §&Z§:String;
      
      private var §#!C§:String;
      
      private var §7!1§:String;
      
      public function §6'§(param1:XML, param2:§'!9§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§'!9§ = param2;
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
            cls = §<s§.§0b§(this.mName);
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
               §]_§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§1!;§ = true;
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
            tmp = this.getParentView().§?!<§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§1!;§)
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
            this.§;![§ = true;
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
         this.§8w§(data);
         this.§#T§(data);
      }
      
      private function §4!f§() : void
      {
         if(!this.§'!]§)
         {
            this.§'!]§ = new §7w§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§2!Z§,this.§"f§,this.§&e§,this.§#=§,this.§9p§,this.§&Z§,this.§7!1§,this.§#!C§);
         }
         this.§'!]§.§6]§(this.§;!_§,this.§%M§);
         this.mClip.x = this.§'!]§.x;
         this.mClip.y = this.§'!]§.y;
         this.mClip.scaleX = this.§'!]§.scaleX;
         this.mClip.scaleY = this.§'!]§.scaleY;
         if(this.§6O§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§2!Z§,this.§"f§);
         }
      }
      
      private function §8w§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§;!_§ = _loc2_;
            this.§%M§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§;!_§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§;!_§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§%M§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§%M§ = _loc3_;
            }
         }
         this.§2!Z§ = this.§;!_§;
         this.§"f§ = this.§%M§;
      }
      
      private function §#T§(param1:XML) : void
      {
         this.§&e§ = param1.@alignH;
         this.§#=§ = param1.@alignV;
         this.§9p§ = param1.@scaleH;
         this.§&Z§ = param1.@scaleV;
         this.§#!C§ = param1.@scaleFunction;
         this.§7!1§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§9g§(_loc2_);
         this.§+7§(_loc3_);
      }
      
      private function §+7§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§#"§ = true;
            }
         }
      }
      
      private function §9g§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§6O§ = true;
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
         this.§'!]§ = null;
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
         this.§?!a§ = param1;
         this.mClip.visible = this.§?!a§ && this.§[![§;
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
         this.§[![§ = param1;
         this.mClip.visible = this.§?!a§ && this.§[![§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§;![§)
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
      
      public function getParentView() : §8Y§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§'!]§)
         {
            this.§'!]§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§'!]§)
         {
            this.§'!]§.y = this.mClip.y;
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
         return this.§;!_§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§%M§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§;!_§ = param1;
         this.§4!f§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§%M§ = param1;
         this.§4!f§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§#"§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§#"§ = param1;
      }
   }
}
