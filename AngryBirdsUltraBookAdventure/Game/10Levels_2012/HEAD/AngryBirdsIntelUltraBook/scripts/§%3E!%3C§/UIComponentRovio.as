package §>!<§
{
   import §"!2§.UIContainerRovio;
   import §'N§.Log;
   import §@!H§.§-!H§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §'!f§:Boolean = false;
      
      public var §4b§:Boolean = true;
      
      public var §+!§:Boolean = false;
      
      public var § !d§:Boolean = false;
      
      private var §6I§:§&U§;
      
      private var §@!7§:Boolean = false;
      
      protected var §3q§:Boolean = false;
      
      private var §-]§:Number;
      
      private var §42§:Number;
      
      private var §;E§:Number;
      
      private var §8q§:Number;
      
      private var §5L§:String;
      
      private var §7w§:String;
      
      private var § <§:String;
      
      private var §`=§:String;
      
      private var §0!c§:String;
      
      private var §`O§:String;
      
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
            cls = AssetCache.§,!k§(this.mName);
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
            this.§+!§ = true;
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
            tmp = this.getParentView().§&!L§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§+!§)
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
            this.§ !d§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§;! §(data);
         this.§=!g§(data);
      }
      
      private function §-J§() : void
      {
         if(!this.§6I§)
         {
            this.§6I§ = new §&U§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§;E§,this.§8q§,this.§5L§,this.§7w§,this.§ <§,this.§`=§,this.§`O§,this.§0!c§);
         }
         this.§6I§.§8r§(this.§-]§,this.§42§);
         this.mClip.x = this.§6I§.x;
         this.mClip.y = this.§6I§.y;
         this.mClip.scaleX = this.§6I§.scaleX;
         this.mClip.scaleY = this.§6I§.scaleY;
         if(this.§@!7§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§;E§,this.§8q§);
         }
      }
      
      private function §;! §(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§-]§ = _loc2_;
            this.§42§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§-]§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§-]§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§42§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§42§ = _loc3_;
            }
         }
         this.§;E§ = this.§-]§;
         this.§8q§ = this.§42§;
      }
      
      private function §=!g§(param1:XML) : void
      {
         this.§5L§ = param1.@alignH;
         this.§7w§ = param1.@alignV;
         this.§ <§ = param1.@scaleH;
         this.§`=§ = param1.@scaleV;
         this.§0!c§ = param1.@scaleFunction;
         this.§`O§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§7!N§(_loc2_);
         this.§=!<§(_loc3_);
      }
      
      private function §=!<§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§3q§ = true;
            }
         }
      }
      
      private function §7!N§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§@!7§ = true;
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
         this.§6I§ = null;
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
         this.§4b§ = param1;
         this.mClip.visible = this.§4b§ && this.§'!f§;
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
         this.§'!f§ = param1;
         this.mClip.visible = this.§4b§ && this.§'!f§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§ !d§)
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
      
      public function getParentView() : §-!H§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§6I§)
         {
            this.§6I§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§6I§)
         {
            this.§6I§.y = this.mClip.y;
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
         return this.§-]§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§42§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§-]§ = param1;
         this.§-J§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§42§ = param1;
         this.§-J§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§3q§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§3q§ = param1;
      }
   }
}
