package §<s§
{
   import §!4§.§=!Z§;
   import §'Y§.§;J§;
   import §[%§.§&a§;
   import §[-§.§#!,§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'k§ extends §]@§
   {
       
      
      public var mParentContainer:§&a§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §7!G§:Boolean = false;
      
      public var § !+§:Boolean = true;
      
      public var §+!G§:Boolean = false;
      
      public var §@l§:Boolean = false;
      
      private var §=c§:§7e§;
      
      private var §",§:Boolean = false;
      
      protected var §'!K§:Boolean = false;
      
      private var §?J§:Number;
      
      private var §]H§:Number;
      
      private var §2n§:Number;
      
      private var §%4§:Number;
      
      private var §;Q§:String;
      
      private var §+4§:String;
      
      private var §-$§:String;
      
      private var §%H§:String;
      
      private var §=J§:String;
      
      private var §5V§:String;
      
      public function §'k§(param1:XML, param2:§&a§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§&a§ = param2;
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
            cls = §#!,§.§-<§(this.mName);
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
               §=!Z§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§+!G§ = true;
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
            tmp = this.getParentView().§ T§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§+!G§)
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
            this.§@l§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§?!E§(data);
         this.§#!R§(data);
      }
      
      private function §"A§() : void
      {
         if(!this.§=c§)
         {
            this.§=c§ = new §7e§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§2n§,this.§%4§,this.§;Q§,this.§+4§,this.§-$§,this.§%H§,this.§5V§,this.§=J§);
         }
         this.§=c§.§<d§(this.§?J§,this.§]H§);
         this.mClip.x = this.§=c§.x;
         this.mClip.y = this.§=c§.y;
         this.mClip.scaleX = this.§=c§.scaleX;
         this.mClip.scaleY = this.§=c§.scaleY;
         if(this.§",§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§2n§,this.§%4§);
         }
      }
      
      private function §?!E§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§?J§ = _loc2_;
            this.§]H§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§?J§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§?J§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§]H§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§]H§ = _loc3_;
            }
         }
         this.§2n§ = this.§?J§;
         this.§%4§ = this.§]H§;
      }
      
      private function §#!R§(param1:XML) : void
      {
         this.§;Q§ = param1.@alignH;
         this.§+4§ = param1.@alignV;
         this.§-$§ = param1.@scaleH;
         this.§%H§ = param1.@scaleV;
         this.§=J§ = param1.@scaleFunction;
         this.§5V§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§7E§(_loc2_);
         this.§2!^§(_loc3_);
      }
      
      private function §2!^§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§'!K§ = true;
            }
         }
      }
      
      private function §7E§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§",§ = true;
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
         this.§=c§ = null;
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
         this.§ !+§ = param1;
         this.mClip.visible = this.§ !+§ && this.§7!G§;
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
         this.§7!G§ = param1;
         this.mClip.visible = this.§ !+§ && this.§7!G§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§@l§)
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
      
      public function getParentView() : §;J§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§=c§)
         {
            this.§=c§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§=c§)
         {
            this.§=c§.y = this.mClip.y;
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
         return this.§?J§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§]H§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§?J§ = param1;
         this.§"A§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§]H§ = param1;
         this.§"A§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§'!K§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§'!K§ = param1;
      }
   }
}
