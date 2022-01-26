package §-V§
{
   import §&N§.§@,§;
   import §'G§.§%!%§;
   import §-0§.§^a§;
   import §-M§.§3!6§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §@!$§ extends §@R§
   {
       
      
      public var mParentContainer:§%!%§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §']§:Boolean = false;
      
      public var §4!>§:Boolean = true;
      
      public var §+F§:Boolean = false;
      
      public var §,P§:Boolean = false;
      
      private var §+L§:§[u§;
      
      private var §[Y§:Boolean = false;
      
      protected var §'!;§:Boolean = false;
      
      private var § ^§:Number;
      
      private var §3i§:Number;
      
      private var §&!=§:Number;
      
      private var §00§:Number;
      
      private var §=&§:String;
      
      private var §#!7§:String;
      
      private var §8-§:String;
      
      private var §1$§:String;
      
      private var §var§:String;
      
      private var §=H§:String;
      
      public function §@!$§(param1:XML, param2:§%!%§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§%!%§ = param2;
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
            cls = §^a§.§;x§(this.mName);
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
               §@,§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§+F§ = true;
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
            tmp = this.getParentView().§@O§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§+F§)
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
            this.§,P§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§ E§(data);
         this.§5!V§(data);
      }
      
      private function §4!§() : void
      {
         if(!this.§+L§)
         {
            this.§+L§ = new §[u§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§&!=§,this.§00§,this.§=&§,this.§#!7§,this.§8-§,this.§1$§,this.§=H§,this.§var§);
         }
         this.§+L§.§^[§(this.§ ^§,this.§3i§);
         this.mClip.x = this.§+L§.x;
         this.mClip.y = this.§+L§.y;
         this.mClip.scaleX = this.§+L§.scaleX;
         this.mClip.scaleY = this.§+L§.scaleY;
         if(this.§[Y§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§&!=§,this.§00§);
         }
      }
      
      private function § E§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§ ^§ = _loc2_;
            this.§3i§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§ ^§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§ ^§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§3i§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§3i§ = _loc3_;
            }
         }
         this.§&!=§ = this.§ ^§;
         this.§00§ = this.§3i§;
      }
      
      private function §5!V§(param1:XML) : void
      {
         this.§=&§ = param1.@alignH;
         this.§#!7§ = param1.@alignV;
         this.§8-§ = param1.@scaleH;
         this.§1$§ = param1.@scaleV;
         this.§var§ = param1.@scaleFunction;
         this.§=H§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§^G§(_loc2_);
         this.§0!Y§(_loc3_);
      }
      
      private function §0!Y§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§'!;§ = true;
            }
         }
      }
      
      private function §^G§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§[Y§ = true;
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
         this.§4!>§ = param1;
         this.mClip.visible = this.§4!>§ && this.§']§;
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
         this.§']§ = param1;
         this.mClip.visible = this.§4!>§ && this.§']§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§,P§)
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
      
      public function getParentView() : §3!6§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(!this.§+L§)
         {
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(!this.§+L§)
         {
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
         return this.§ ^§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§3i§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§ ^§ = param1;
         this.§4!§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§3i§ = param1;
         this.§4!§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
