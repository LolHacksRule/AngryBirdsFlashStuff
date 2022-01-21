package §6@§
{
   import §0;§.§3=§;
   import §31§.§ !A§;
   import §7!k§.§%!_§;
   import §8<§.§<!7§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'!F§ extends §[! §
   {
       
      
      public var mParentContainer:§ !A§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §1e§:Boolean = false;
      
      public var §&c§:Boolean = true;
      
      public var § !]§:Boolean = false;
      
      public var §%5§:Boolean = false;
      
      private var §3f§:§@!e§;
      
      private var §2! §:Boolean = false;
      
      protected var §7!g§:Boolean = false;
      
      private var §>+§:Number;
      
      private var §"4§:Number;
      
      private var §&K§:Number;
      
      private var §6!7§:Number;
      
      private var §0c§:String;
      
      private var §'!9§:String;
      
      private var §"!P§:String;
      
      private var §;Y§:String;
      
      private var §4!d§:String;
      
      private var §4!3§:String;
      
      public function §'!F§(param1:XML, param2:§ !A§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§ !A§ = param2;
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
            cls = §%!_§.§1$§(this.mName);
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
               §<!7§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§ !]§ = true;
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
            tmp = this.getParentView().§,n§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§ !]§)
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
            this.§%5§ = true;
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
         this.§'Y§(data);
         this.§7!P§(data);
      }
      
      private function §=!Z§() : void
      {
         if(!this.§3f§)
         {
            this.§3f§ = new §@!e§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§&K§,this.§6!7§,this.§0c§,this.§'!9§,this.§"!P§,this.§;Y§,this.§4!3§,this.§4!d§);
         }
         this.§3f§.§<!d§(this.§>+§,this.§"4§);
         this.mClip.x = this.§3f§.x;
         this.mClip.y = this.§3f§.y;
         this.mClip.scaleX = this.§3f§.scaleX;
         this.mClip.scaleY = this.§3f§.scaleY;
         if(this.§2! §)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§&K§,this.§6!7§);
         }
      }
      
      private function §'Y§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§>+§ = _loc2_;
            this.§"4§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§>+§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§>+§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§"4§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§"4§ = _loc3_;
            }
         }
         this.§&K§ = this.§>+§;
         this.§6!7§ = this.§"4§;
      }
      
      private function §7!P§(param1:XML) : void
      {
         this.§0c§ = param1.@alignH;
         this.§'!9§ = param1.@alignV;
         this.§"!P§ = param1.@scaleH;
         this.§;Y§ = param1.@scaleV;
         this.§4!d§ = param1.@scaleFunction;
         this.§4!3§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§4]§(_loc2_);
         this.§97§(_loc3_);
      }
      
      private function §97§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§7!g§ = true;
            }
         }
      }
      
      private function §4]§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§2! § = true;
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
         this.§3f§ = null;
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
         this.§&c§ = param1;
         this.mClip.visible = this.§&c§ && this.§1e§;
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
         this.§1e§ = param1;
         this.mClip.visible = this.§&c§ && this.§1e§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§%5§)
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
      
      public function getParentView() : §3=§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§3f§)
         {
            this.§3f§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§3f§)
         {
            this.§3f§.y = this.mClip.y;
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
         return this.§>+§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§"4§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§>+§ = param1;
         this.§=!Z§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§"4§ = param1;
         this.§=!Z§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§7!g§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§7!g§ = param1;
      }
   }
}
