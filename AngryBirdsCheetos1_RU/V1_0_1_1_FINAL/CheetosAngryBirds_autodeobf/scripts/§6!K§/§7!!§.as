package §6!K§
{
   import § N§.§]M§;
   import §,&§.§7$§;
   import §2K§.§,!@§;
   import §>!D§.§;,§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §7!!§ extends §#![§
   {
       
      
      public var mParentContainer:§,!@§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §%Y§:Boolean = false;
      
      public var §7R§:Boolean = true;
      
      public var §;!_§:Boolean = false;
      
      public var §=!_§:Boolean = false;
      
      private var §;G§:§5!O§;
      
      private var §3M§:Boolean = false;
      
      protected var §-S§:Boolean = false;
      
      private var §1]§:Number;
      
      private var §"j§:Number;
      
      private var §[Y§:Number;
      
      private var §`K§:Number;
      
      private var §?j§:String;
      
      private var §,`§:String;
      
      private var §[$§:String;
      
      private var §11§:String;
      
      private var §@[§:String;
      
      private var §@G§:String;
      
      public function §7!!§(param1:XML, param2:§,!@§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§,!@§ = param2;
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
            cls = §7$§.§,W§(this.mName);
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
               §]M§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§;!_§ = true;
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
            tmp = this.getParentView().§5!a§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§;!_§)
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
            this.§=!_§ = true;
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
         this.§9!X§(data);
         this.§0Y§(data);
      }
      
      private function §-!C§() : void
      {
         if(!this.§;G§)
         {
            this.§;G§ = new §5!O§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§[Y§,this.§`K§,this.§?j§,this.§,`§,this.§[$§,this.§11§,this.§@G§,this.§@[§);
         }
         this.§;G§.§!g§(this.§1]§,this.§"j§);
         this.mClip.x = this.§;G§.x;
         this.mClip.y = this.§;G§.y;
         this.mClip.scaleX = this.§;G§.scaleX;
         this.mClip.scaleY = this.§;G§.scaleY;
         if(this.§3M§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§[Y§,this.§`K§);
         }
      }
      
      private function §9!X§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§1]§ = _loc2_;
            this.§"j§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§1]§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§1]§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§"j§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§"j§ = _loc3_;
            }
         }
         this.§[Y§ = this.§1]§;
         this.§`K§ = this.§"j§;
      }
      
      private function §0Y§(param1:XML) : void
      {
         this.§?j§ = param1.@alignH;
         this.§,`§ = param1.@alignV;
         this.§[$§ = param1.@scaleH;
         this.§11§ = param1.@scaleV;
         this.§@[§ = param1.@scaleFunction;
         this.§@G§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§ '§(_loc2_);
         this.§5!D§(_loc3_);
      }
      
      private function §5!D§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§-S§ = true;
            }
         }
      }
      
      private function § '§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§3M§ = true;
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
         this.§;G§ = null;
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
         this.§7R§ = param1;
         this.mClip.visible = this.§7R§ && this.§%Y§;
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
         this.§%Y§ = param1;
         this.mClip.visible = this.§7R§ && this.§%Y§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§=!_§)
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
      
      public function getParentView() : §;,§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§;G§)
         {
            this.§;G§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§;G§)
         {
            this.§;G§.y = this.mClip.y;
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
         return this.§1]§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§"j§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§1]§ = param1;
         this.§-!C§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§"j§ = param1;
         this.§-!C§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§-S§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§-S§ = param1;
      }
   }
}
