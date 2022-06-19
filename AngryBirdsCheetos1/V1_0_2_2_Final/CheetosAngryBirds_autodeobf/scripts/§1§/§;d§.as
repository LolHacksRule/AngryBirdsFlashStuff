package §1§
{
   import § !G§.§ #§;
   import §,j§.§1-§;
   import §0F§.§'j§;
   import §1!K§.§<!I§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §;d§ extends §'n§
   {
       
      
      public var mParentContainer:§1-§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §<C§:Boolean = false;
      
      public var §4Z§:Boolean = true;
      
      public var §>p§:Boolean = false;
      
      public var §8q§:Boolean = false;
      
      private var §,S§:§!h§;
      
      private var § 1§:Boolean = false;
      
      protected var §!!0§:Boolean = false;
      
      private var §#Z§:Number;
      
      private var §%!&§:Number;
      
      private var §1!P§:Number;
      
      private var §8!!§:Number;
      
      private var §!!O§:String;
      
      private var §7!T§:String;
      
      private var §;!2§:String;
      
      private var §1t§:String;
      
      private var §[J§:String;
      
      private var §-!'§:String;
      
      public function §;d§(param1:XML, param2:§1-§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§1-§ = param2;
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
            cls = §<!I§.§;!U§(this.mName);
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
               § #§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§>p§ = true;
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
            tmp = this.getParentView().§?#§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§>p§)
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
            this.§8q§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§<L§(data);
         this.§,f§(data);
      }
      
      private function §#%§() : void
      {
         if(!this.§,S§)
         {
            this.§,S§ = new §!h§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§1!P§,this.§8!!§,this.§!!O§,this.§7!T§,this.§;!2§,this.§1t§,this.§-!'§,this.§[J§);
         }
         this.§,S§.§;+§(this.§#Z§,this.§%!&§);
         this.mClip.x = this.§,S§.x;
         this.mClip.y = this.§,S§.y;
         this.mClip.scaleX = this.§,S§.scaleX;
         this.mClip.scaleY = this.§,S§.scaleY;
         if(this.§ 1§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§1!P§,this.§8!!§);
         }
      }
      
      private function §<L§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§#Z§ = _loc2_;
            this.§%!&§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§#Z§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§#Z§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§%!&§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§%!&§ = _loc3_;
            }
         }
         this.§1!P§ = this.§#Z§;
         this.§8!!§ = this.§%!&§;
      }
      
      private function §,f§(param1:XML) : void
      {
         this.§!!O§ = param1.@alignH;
         this.§7!T§ = param1.@alignV;
         this.§;!2§ = param1.@scaleH;
         this.§1t§ = param1.@scaleV;
         this.§[J§ = param1.@scaleFunction;
         this.§-!'§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§;h§(_loc2_);
         this.§ [§(_loc3_);
      }
      
      private function § [§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§!!0§ = true;
            }
         }
      }
      
      private function §;h§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§ 1§ = true;
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
         this.§,S§ = null;
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
         this.§4Z§ = param1;
         this.mClip.visible = this.§4Z§ && this.§<C§;
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
         this.§<C§ = param1;
         this.mClip.visible = this.§4Z§ && this.§<C§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§8q§)
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
      
      public function getParentView() : §'j§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§,S§)
         {
            this.§,S§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§,S§)
         {
            this.§,S§.y = this.mClip.y;
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
         return this.§#Z§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§%!&§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§#Z§ = param1;
         this.§#%§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§%!&§ = param1;
         this.§#%§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
