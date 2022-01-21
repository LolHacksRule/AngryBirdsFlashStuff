package §"%§
{
   import §7!d§.§'!5§;
   import §=<§.§1+§;
   import §>G§.§]f§;
   import §@`§.§>!S§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §+!&§ extends §,!n§
   {
       
      
      public var mParentContainer:§]f§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §@!`§:Boolean = false;
      
      public var §>W§:Boolean = true;
      
      public var §1'§:Boolean = false;
      
      public var §0<§:Boolean = false;
      
      private var §+!0§:§2K§;
      
      private var §8!g§:Boolean = false;
      
      protected var §5o§:Boolean = false;
      
      private var §0I§:Number;
      
      private var § !a§:Number;
      
      private var §77§:Number;
      
      private var §[$§:Number;
      
      private var §8F§:String;
      
      private var §],§:String;
      
      private var §3&§:String;
      
      private var §!E§:String;
      
      private var §?u§:String;
      
      private var §[o§:String;
      
      public function §+!&§(param1:XML, param2:§]f§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§]f§ = param2;
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
            cls = §'!5§.§-!P§(this.mName);
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
               §1+§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§1'§ = true;
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
            tmp = this.getParentView().§4<§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§1'§)
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
            this.§0<§ = true;
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
         this.§7!0§(data);
         this.§53§(data);
      }
      
      private function §,o§() : void
      {
         if(!this.§+!0§)
         {
            this.§+!0§ = new §2K§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§77§,this.§[$§,this.§8F§,this.§],§,this.§3&§,this.§!E§,this.§[o§,this.§?u§);
         }
         this.§+!0§.§,>§(this.§0I§,this.§ !a§);
         this.mClip.x = this.§+!0§.x;
         this.mClip.y = this.§+!0§.y;
         this.mClip.scaleX = this.§+!0§.scaleX;
         this.mClip.scaleY = this.§+!0§.scaleY;
         if(this.§8!g§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§77§,this.§[$§);
         }
      }
      
      private function §7!0§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§0I§ = _loc2_;
            this.§ !a§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§0I§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§0I§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§ !a§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§ !a§ = _loc3_;
            }
         }
         this.§77§ = this.§0I§;
         this.§[$§ = this.§ !a§;
      }
      
      private function §53§(param1:XML) : void
      {
         this.§8F§ = param1.@alignH;
         this.§],§ = param1.@alignV;
         this.§3&§ = param1.@scaleH;
         this.§!E§ = param1.@scaleV;
         this.§?u§ = param1.@scaleFunction;
         this.§[o§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§#u§(_loc2_);
         this.§7!n§(_loc3_);
      }
      
      private function §7!n§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§5o§ = true;
            }
         }
      }
      
      private function §#u§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§8!g§ = true;
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
         this.§+!0§ = null;
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
         this.§>W§ = param1;
         this.mClip.visible = this.§>W§ && this.§@!`§;
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
         this.§@!`§ = param1;
         this.mClip.visible = this.§>W§ && this.§@!`§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§0<§)
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
      
      public function getParentView() : §>!S§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§+!0§)
         {
            this.§+!0§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§+!0§)
         {
            this.§+!0§.y = this.mClip.y;
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
         return this.§0I§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§ !a§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§0I§ = param1;
         this.§,o§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§ !a§ = param1;
         this.§,o§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§5o§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§5o§ = param1;
      }
   }
}
