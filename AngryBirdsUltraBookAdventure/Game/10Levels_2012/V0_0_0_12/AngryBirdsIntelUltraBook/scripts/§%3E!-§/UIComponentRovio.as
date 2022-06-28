package §>!-§
{
   import §4!9§.§6"§;
   import §6b§.Log;
   import §]!6§.UIContainerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §;!M§:Boolean = false;
      
      public var §@!#§:Boolean = true;
      
      public var §^!g§:Boolean = false;
      
      public var §%o§:Boolean = false;
      
      private var §<,§:§7,§;
      
      private var §9+§:Boolean = false;
      
      protected var §8j§:Boolean = false;
      
      private var §&D§:Number;
      
      private var §=!j§:Number;
      
      private var §6D§:Number;
      
      private var §8X§:Number;
      
      private var § !I§:String;
      
      private var §[g§:String;
      
      private var §-l§:String;
      
      private var §?f§:String;
      
      private var §;r§:String;
      
      private var §'!8§:String;
      
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
            cls = AssetCache.§-9§(this.mName);
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
            this.§^!g§ = true;
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
            tmp = this.getParentView().§'T§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§^!g§)
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
            this.§%o§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§9H§(data);
         this.§if §(data);
      }
      
      private function §4^§() : void
      {
         if(!this.§<,§)
         {
            this.§<,§ = new §7,§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§6D§,this.§8X§,this.§ !I§,this.§[g§,this.§-l§,this.§?f§,this.§'!8§,this.§;r§);
         }
         this.§<,§.§#!J§(this.§&D§,this.§=!j§);
         this.mClip.x = this.§<,§.x;
         this.mClip.y = this.§<,§.y;
         this.mClip.scaleX = this.§<,§.scaleX;
         this.mClip.scaleY = this.§<,§.scaleY;
         if(this.§9+§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§6D§,this.§8X§);
         }
      }
      
      private function §9H§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§&D§ = _loc2_;
            this.§=!j§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§&D§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§&D§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§=!j§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§=!j§ = _loc3_;
            }
         }
         this.§6D§ = this.§&D§;
         this.§8X§ = this.§=!j§;
      }
      
      private function §if §(param1:XML) : void
      {
         this.§ !I§ = param1.@alignH;
         this.§[g§ = param1.@alignV;
         this.§-l§ = param1.@scaleH;
         this.§?f§ = param1.@scaleV;
         this.§;r§ = param1.@scaleFunction;
         this.§'!8§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§8S§(_loc2_);
         this.§'!"§(_loc3_);
      }
      
      private function §'!"§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§8j§ = true;
            }
         }
      }
      
      private function §8S§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§9+§ = true;
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
         this.§<,§ = null;
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
         this.§@!#§ = param1;
         this.mClip.visible = this.§@!#§ && this.§;!M§;
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
         this.§;!M§ = param1;
         this.mClip.visible = this.§@!#§ && this.§;!M§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§%o§)
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
      
      public function getParentView() : §6"§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§<,§)
         {
            this.§<,§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§<,§)
         {
            this.§<,§.y = this.mClip.y;
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
         return this.§&D§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§=!j§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§&D§ = param1;
         this.§4^§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§=!j§ = param1;
         this.§4^§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
