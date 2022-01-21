package §-1§
{
   import §#Z§.§?R§;
   import §,![§.§[!S§;
   import §9!8§.§0!7§;
   import §`!W§.§2v§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §3!%§ extends §%#§
   {
       
      
      public var mParentContainer:§[!S§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var § §:Boolean = false;
      
      public var §5N§:Boolean = true;
      
      public var §]=§:Boolean = false;
      
      public var §2!Q§:Boolean = false;
      
      private var §+h§:§#!G§;
      
      private var §[l§:Boolean = false;
      
      protected var §<!I§:Boolean = false;
      
      private var §&Q§:Number;
      
      private var §>! §:Number;
      
      private var §>!C§:Number;
      
      private var §"b§:Number;
      
      private var §,H§:String;
      
      private var §4!T§:String;
      
      private var §!m§:String;
      
      private var §9!K§:String;
      
      private var §3"§:String;
      
      private var §04§:String;
      
      public function §3!%§(param1:XML, param2:§[!S§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§[!S§ = param2;
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
            cls = §?R§.§>e§(this.mName);
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
               §2v§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§]=§ = true;
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
            tmp = this.getParentView().§!a§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§]=§)
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
            this.§2!Q§ = true;
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
         this.§['§(data);
         this.§]!V§(data);
      }
      
      private function §#!J§() : void
      {
         if(!this.§+h§)
         {
            this.§+h§ = new §#!G§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§>!C§,this.§"b§,this.§,H§,this.§4!T§,this.§!m§,this.§9!K§,this.§04§,this.§3"§);
         }
         this.§+h§.§[J§(this.§&Q§,this.§>! §);
         this.mClip.x = this.§+h§.x;
         this.mClip.y = this.§+h§.y;
         this.mClip.scaleX = this.§+h§.scaleX;
         this.mClip.scaleY = this.§+h§.scaleY;
         if(this.§[l§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§>!C§,this.§"b§);
         }
      }
      
      private function §['§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§&Q§ = _loc2_;
            this.§>! § = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§&Q§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§&Q§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§>! § = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§>! § = _loc3_;
            }
         }
         this.§>!C§ = this.§&Q§;
         this.§"b§ = this.§>! §;
      }
      
      private function §]!V§(param1:XML) : void
      {
         this.§,H§ = param1.@alignH;
         this.§4!T§ = param1.@alignV;
         this.§!m§ = param1.@scaleH;
         this.§9!K§ = param1.@scaleV;
         this.§3"§ = param1.@scaleFunction;
         this.§04§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§@W§(_loc2_);
         this.§5g§(_loc3_);
      }
      
      private function §5g§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§<!I§ = true;
            }
         }
      }
      
      private function §@W§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§[l§ = true;
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
         this.§+h§ = null;
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
         this.§5N§ = param1;
         this.mClip.visible = this.§5N§ && this.§ §;
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
         this.§ § = param1;
         this.mClip.visible = this.§5N§ && this.§ §;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§2!Q§)
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
      
      public function getParentView() : §0!7§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§+h§)
         {
            this.§+h§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§+h§)
         {
            this.§+h§.y = this.mClip.y;
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
         return this.§&Q§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§>! §;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§&Q§ = param1;
         this.§#!J§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§>! § = param1;
         this.§#!J§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§<!I§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§<!I§ = param1;
      }
   }
}
