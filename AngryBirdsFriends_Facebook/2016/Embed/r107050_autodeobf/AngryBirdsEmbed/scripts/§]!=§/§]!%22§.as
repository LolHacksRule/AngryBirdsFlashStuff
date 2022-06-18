package §]!=§
{
   import §"!B§.§58§;
   import §'6§.§?!L§;
   import §@a§.§8H§;
   import com.rovio.assets.§%!?§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §]!"§ extends §;!6§
   {
       
      
      public var mParentContainer:§58§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §0>§:Boolean = false;
      
      public var §,!'§:Boolean = true;
      
      public var §@!?§:Boolean = false;
      
      public var §0w§:Boolean = false;
      
      private var §-q§:§"!C§;
      
      private var §^;§:Boolean = false;
      
      protected var §3c§:Boolean = false;
      
      private var §2P§:Number;
      
      private var §5!D§:Number;
      
      private var §40§:Number;
      
      private var §6i§:Number;
      
      private var §1!&§:String;
      
      private var §,!#§:String;
      
      private var §3U§:String;
      
      private var §-M§:String;
      
      private var §?H§:String;
      
      private var §]I§:String;
      
      public function §]!"§(param1:XML, param2:§58§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§58§ = param2;
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
            cls = §%!?§.§4"§(this.mName);
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
               §?!L§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§@!?§ = true;
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
            tmp = this.getParentView().§]!§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§@!?§)
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
            this.§0w§ = true;
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
         this.§@Z§(data);
         this.§^"§(data);
      }
      
      private function static() : void
      {
         if(!this.§-q§)
         {
            this.§-q§ = new §"!C§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§40§,this.§6i§,this.§1!&§,this.§,!#§,this.§3U§,this.§-M§,this.§]I§,this.§?H§);
         }
         this.§-q§.§"§(this.§2P§,this.§5!D§);
         this.mClip.x = this.§-q§.x;
         this.mClip.y = this.§-q§.y;
         this.mClip.scaleX = this.§-q§.scaleX;
         this.mClip.scaleY = this.§-q§.scaleY;
         if(this.§^;§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§40§,this.§6i§);
         }
      }
      
      private function §@Z§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§2P§ = _loc2_;
            this.§5!D§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§2P§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§2P§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§5!D§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§5!D§ = _loc3_;
            }
         }
         this.§40§ = this.§2P§;
         this.§6i§ = this.§5!D§;
      }
      
      private function §^"§(param1:XML) : void
      {
         this.§1!&§ = param1.@alignH;
         this.§,!#§ = param1.@alignV;
         this.§3U§ = param1.@scaleH;
         this.§-M§ = param1.@scaleV;
         this.§?H§ = param1.@scaleFunction;
         this.§]I§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§&r§(_loc2_);
         this.§2F§(_loc3_);
      }
      
      private function §2F§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§3c§ = true;
            }
         }
      }
      
      private function §&r§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§^;§ = true;
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
         this.§-q§ = null;
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
         this.§,!'§ = param1;
         this.mClip.visible = this.§,!'§ && this.§0>§;
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
         this.§0>§ = param1;
         this.mClip.visible = this.§,!'§ && this.§0>§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§0w§)
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
      
      public function getParentView() : §8H§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§-q§)
         {
            this.§-q§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§-q§)
         {
            this.§-q§.y = this.mClip.y;
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
         return this.§2P§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§5!D§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§2P§ = param1;
         this.static();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§5!D§ = param1;
         this.static();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§3c§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§3c§ = param1;
      }
   }
}
