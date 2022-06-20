package §1"2§
{
   import §"",§.§<+§;
   import §0!?§.§'!$§;
   import §]!F§.§"!j§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §#z§ extends §,!]§
   {
       
      
      public var mParentContainer:§<+§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §9!L§:Boolean = false;
      
      public var §]m§:Boolean = true;
      
      public var §3!6§:Boolean = false;
      
      public var §4!s§:Boolean = false;
      
      private var §6P§:§`"@§;
      
      private var §'J§:Boolean = false;
      
      protected var §0V§:Boolean = false;
      
      private var §2f§:Number;
      
      private var §^L§:Number;
      
      private var §`$§:Number;
      
      private var §4!D§:Number;
      
      private var §!H§:String;
      
      private var §9?§:String;
      
      private var §,!e§:String;
      
      private var §@!y§:String;
      
      private var §9!k§:String;
      
      private var §!!^§:String;
      
      public function §#z§(param1:XML, param2:§<+§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§<+§ = param2;
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
            cls = §#!J§.§1!Y§(this.mName);
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
               §'!$§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§3!6§ = true;
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
            tmp = this.getParentView().§+K§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§3!6§)
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
            this.§4!s§ = true;
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
         this.§-j§(data);
         this.§<!o§(data);
      }
      
      private function §"N§() : void
      {
         if(!this.§6P§)
         {
            this.§6P§ = new §`"@§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§`$§,this.§4!D§,this.§!H§,this.§9?§,this.§,!e§,this.§@!y§,this.§!!^§,this.§9!k§);
         }
         this.§6P§.§?l§(this.§2f§,this.§^L§);
         this.mClip.x = this.§6P§.x;
         this.mClip.y = this.§6P§.y;
         this.mClip.scaleX = this.§6P§.scaleX;
         this.mClip.scaleY = this.§6P§.scaleY;
         if(this.§'J§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§`$§,this.§4!D§);
         }
      }
      
      private function §-j§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§2f§ = _loc2_;
            this.§^L§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§2f§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§2f§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§^L§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§^L§ = _loc3_;
            }
         }
         this.§`$§ = this.§2f§;
         this.§4!D§ = this.§^L§;
      }
      
      private function §<!o§(param1:XML) : void
      {
         this.§!H§ = param1.@alignH;
         this.§9?§ = param1.@alignV;
         this.§,!e§ = param1.@scaleH;
         this.§@!y§ = param1.@scaleV;
         this.§9!k§ = param1.@scaleFunction;
         this.§!!^§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§]!c§(_loc2_);
         this.§-1§(_loc3_);
      }
      
      private function §-1§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§0V§ = true;
            }
         }
      }
      
      private function §]!c§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§'J§ = true;
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
         this.§6P§ = null;
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
         this.§]m§ = param1;
         this.mClip.visible = this.§]m§ && this.§9!L§;
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
         this.§9!L§ = param1;
         this.mClip.visible = this.§]m§ && this.§9!L§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§4!s§)
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
      
      public function getParentView() : §"!j§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§6P§)
         {
            this.§6P§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§6P§)
         {
            this.§6P§.y = this.mClip.y;
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
         return this.§2f§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§^L§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§2f§ = param1;
         this.§"N§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§^L§ = param1;
         this.§"N§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§0V§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§0V§ = param1;
      }
   }
}
