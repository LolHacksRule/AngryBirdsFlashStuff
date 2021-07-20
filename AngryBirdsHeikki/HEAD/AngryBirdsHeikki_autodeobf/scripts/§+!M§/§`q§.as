package §+!M§
{
   import §&!b§.§ c§;
   import §-!f§.§ else§;
   import §?v§.§&!h§;
   import §]!&§.§5!5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §`q§ extends §7!0§
   {
       
      
      public var mParentContainer:§5!5§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §9!O§:Boolean = false;
      
      public var §57§:Boolean = true;
      
      public var §'$§:Boolean = false;
      
      public var §5E§:Boolean = false;
      
      private var § !B§:§?q§;
      
      private var §%s§:Boolean = false;
      
      protected var §]§:Boolean = false;
      
      private var §;v§:Number;
      
      private var §do §:Number;
      
      private var §4t§:Number;
      
      private var §`x§:Number;
      
      private var §`&§:String;
      
      private var §3! §:String;
      
      private var §4!C§:String;
      
      private var §`@§:String;
      
      private var §6!2§:String;
      
      private var §]#§:String;
      
      public function §`q§(param1:XML, param2:§5!5§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§5!5§ = param2;
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
            cls = §&!h§.§#Q§(this.mName);
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
               § c§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§'$§ = true;
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
            tmp = this.getParentView().§7! §(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§'$§)
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
            this.§5E§ = true;
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
         this.§=g§(data);
         this.§2G§(data);
      }
      
      private function §0!_§() : void
      {
         if(!this.§ !B§)
         {
            this.§ !B§ = new §?q§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§4t§,this.§`x§,this.§`&§,this.§3! §,this.§4!C§,this.§`@§,this.§]#§,this.§6!2§);
         }
         this.§ !B§.§,+§(this.§;v§,this.§do §);
         this.mClip.x = this.§ !B§.x;
         this.mClip.y = this.§ !B§.y;
         this.mClip.scaleX = this.§ !B§.scaleX;
         this.mClip.scaleY = this.§ !B§.scaleY;
         if(this.§%s§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§4t§,this.§`x§);
         }
      }
      
      private function §=g§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§;v§ = _loc2_;
            this.§do § = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§;v§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§;v§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§do § = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§do § = _loc3_;
            }
         }
         this.§4t§ = this.§;v§;
         this.§`x§ = this.§do §;
      }
      
      private function §2G§(param1:XML) : void
      {
         this.§`&§ = param1.@alignH;
         this.§3! § = param1.@alignV;
         this.§4!C§ = param1.@scaleH;
         this.§`@§ = param1.@scaleV;
         this.§6!2§ = param1.@scaleFunction;
         this.§]#§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§#!N§(_loc2_);
         this.§=@§(_loc3_);
      }
      
      private function §=@§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§]§ = true;
            }
         }
      }
      
      private function §#!N§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§%s§ = true;
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
         this.§ !B§ = null;
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
         this.§57§ = param1;
         this.mClip.visible = this.§57§ && this.§9!O§;
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
         this.§9!O§ = param1;
         this.mClip.visible = this.§57§ && this.§9!O§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§5E§)
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
      
      public function getParentView() : § else§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§ !B§)
         {
            this.§ !B§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§ !B§)
         {
            this.§ !B§.y = this.mClip.y;
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
         return this.§;v§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§do §;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§;v§ = param1;
         this.§0!_§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§do § = param1;
         this.§0!_§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§]§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§]§ = param1;
      }
   }
}
