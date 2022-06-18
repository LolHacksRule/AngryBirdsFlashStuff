package §7L§
{
   import §&8§.§<O§;
   import §6&§.§9e§;
   import §=g§.§@!L§;
   import §[]§.§`!`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §-!B§ extends §9I§
   {
       
      
      public var mParentContainer:§`!`§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §-!R§:Boolean = false;
      
      public var §3E§:Boolean = true;
      
      public var §>"§:Boolean = false;
      
      public var §8t§:Boolean = false;
      
      private var §?!W§:§`7§;
      
      private var §[!+§:Boolean = false;
      
      protected var §@8§:Boolean = false;
      
      private var §,`§:Number;
      
      private var §%I§:Number;
      
      private var §?!G§:Number;
      
      private var §!!%§:Number;
      
      private var §[,§:String;
      
      private var §%O§:String;
      
      private var §8!A§:String;
      
      private var §!#§:String;
      
      private var §2^§:String;
      
      private var §^0§:String;
      
      public function §-!B§(param1:XML, param2:§`!`§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§`!`§ = param2;
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
            cls = §9e§.§6!?§(this.mName);
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
               §@!L§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§>"§ = true;
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
            tmp = this.getParentView().§&§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§>"§)
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
            this.§8t§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§-0§(data);
         this.§;!'§(data);
      }
      
      private function §+;§() : void
      {
         if(!this.§?!W§)
         {
            this.§?!W§ = new §`7§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§?!G§,this.§!!%§,this.§[,§,this.§%O§,this.§8!A§,this.§!#§,this.§^0§,this.§2^§);
         }
         this.§?!W§.§ c§(this.§,`§,this.§%I§);
         this.mClip.x = this.§?!W§.x;
         this.mClip.y = this.§?!W§.y;
         this.mClip.scaleX = this.§?!W§.scaleX;
         this.mClip.scaleY = this.§?!W§.scaleY;
         if(this.§[!+§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§?!G§,this.§!!%§);
         }
      }
      
      private function §-0§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§,`§ = _loc2_;
            this.§%I§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§,`§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§,`§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§%I§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§%I§ = _loc3_;
            }
         }
         this.§?!G§ = this.§,`§;
         this.§!!%§ = this.§%I§;
      }
      
      private function §;!'§(param1:XML) : void
      {
         this.§[,§ = param1.@alignH;
         this.§%O§ = param1.@alignV;
         this.§8!A§ = param1.@scaleH;
         this.§!#§ = param1.@scaleV;
         this.§2^§ = param1.@scaleFunction;
         this.§^0§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§3+§(_loc2_);
         this.§6"§(_loc3_);
      }
      
      private function §6"§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§@8§ = true;
            }
         }
      }
      
      private function §3+§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§[!+§ = true;
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
         this.§?!W§ = null;
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
         this.§3E§ = param1;
         this.mClip.visible = this.§3E§ && this.§-!R§;
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
         this.§-!R§ = param1;
         this.mClip.visible = this.§3E§ && this.§-!R§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§8t§)
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
      
      public function getParentView() : §<O§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§?!W§)
         {
            this.§?!W§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§?!W§)
         {
            this.§?!W§.y = this.mClip.y;
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
         return this.§,`§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§%I§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§,`§ = param1;
         this.§+;§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§%I§ = param1;
         this.§+;§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§@8§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§@8§ = param1;
      }
   }
}
