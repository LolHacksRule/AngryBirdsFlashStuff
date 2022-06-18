package §]!5§
{
   import §%t§.§@!%§;
   import §<K§.§0e§;
   import §]!&§.§]!K§;
   import §]!Y§.§5W§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §1k§ extends §-!3§
   {
       
      
      public var mParentContainer:§]!K§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §;K§:Boolean = false;
      
      public var §#6§:Boolean = true;
      
      public var §?!J§:Boolean = false;
      
      public var §5u§:Boolean = false;
      
      private var §!w§:§6!D§;
      
      private var §6G§:Boolean = false;
      
      protected var §;!C§:Boolean = false;
      
      private var §1!<§:Number;
      
      private var §;!'§:Number;
      
      private var §-l§:Number;
      
      private var §7W§:Number;
      
      private var §-w§:String;
      
      private var §[G§:String;
      
      private var §]n§:String;
      
      private var §#!+§:String;
      
      private var § Z§:String;
      
      private var §8^§:String;
      
      public function §1k§(param1:XML, param2:§]!K§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§]!K§ = param2;
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
            cls = §0e§.§#!!§(this.mName);
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
               §@!%§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§?!J§ = true;
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
            tmp = this.getParentView().§`m§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§?!J§)
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
            this.§5u§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§%R§(data);
         this.§"q§(data);
      }
      
      private function §=!^§() : void
      {
         if(!this.§!w§)
         {
            this.§!w§ = new §6!D§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§-l§,this.§7W§,this.§-w§,this.§[G§,this.§]n§,this.§#!+§,this.§8^§,this.§ Z§);
         }
         this.§!w§.§8a§(this.§1!<§,this.§;!'§);
         this.mClip.x = this.§!w§.x;
         this.mClip.y = this.§!w§.y;
         this.mClip.scaleX = this.§!w§.scaleX;
         this.mClip.scaleY = this.§!w§.scaleY;
         if(this.§6G§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§-l§,this.§7W§);
         }
      }
      
      private function §%R§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§1!<§ = _loc2_;
            this.§;!'§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§1!<§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§1!<§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§;!'§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§;!'§ = _loc3_;
            }
         }
         this.§-l§ = this.§1!<§;
         this.§7W§ = this.§;!'§;
      }
      
      private function §"q§(param1:XML) : void
      {
         this.§-w§ = param1.@alignH;
         this.§[G§ = param1.@alignV;
         this.§]n§ = param1.@scaleH;
         this.§#!+§ = param1.@scaleV;
         this.§ Z§ = param1.@scaleFunction;
         this.§8^§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§ z§(_loc2_);
         this.§?!Z§(_loc3_);
      }
      
      private function §?!Z§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§;!C§ = true;
            }
         }
      }
      
      private function § z§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§6G§ = true;
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
         this.§!w§ = null;
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
         this.§#6§ = param1;
         this.mClip.visible = this.§#6§ && this.§;K§;
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
         this.§;K§ = param1;
         this.mClip.visible = this.§#6§ && this.§;K§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§5u§)
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
      
      public function getParentView() : §5W§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§!w§)
         {
            this.§!w§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§!w§)
         {
            this.§!w§.y = this.mClip.y;
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
         return this.§1!<§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§;!'§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§1!<§ = param1;
         this.§=!^§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§;!'§ = param1;
         this.§=!^§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§;!C§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§;!C§ = param1;
      }
   }
}
