package §;!0§
{
   import § !3§.§!X§;
   import §#!+§.§"$§;
   import §,y§.§?!0§;
   import §-!V§.§@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §-!'§ extends §4!I§
   {
       
      
      public var mParentContainer:§@§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §@!M§:Boolean = false;
      
      public var §=]§:Boolean = true;
      
      public var §?U§:Boolean = false;
      
      public var §3!Z§:Boolean = false;
      
      private var § m§:§]c§;
      
      private var § W§:Boolean = false;
      
      protected var §]J§:Boolean = false;
      
      private var §4A§:Number;
      
      private var §[X§:Number;
      
      private var §&!%§:Number;
      
      private var §-!I§:Number;
      
      private var §!!c§:String;
      
      private var §>t§:String;
      
      private var §#p§:String;
      
      private var § !=§:String;
      
      private var §?%§:String;
      
      private var §0!C§:String;
      
      public function §-!'§(param1:XML, param2:§@§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§@§ = param2;
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
            cls = §?!0§.§^e§(this.mName);
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
               §!X§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§?U§ = true;
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
            tmp = this.getParentView().§,!d§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§?U§)
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
            this.§3!Z§ = true;
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
         this.§`Y§(data);
         this.§#K§(data);
      }
      
      private function §&y§() : void
      {
         if(!this.§ m§)
         {
            this.§ m§ = new §]c§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§&!%§,this.§-!I§,this.§!!c§,this.§>t§,this.§#p§,this.§ !=§,this.§0!C§,this.§?%§);
         }
         this.§ m§.§>N§(this.§4A§,this.§[X§);
         this.mClip.x = this.§ m§.x;
         this.mClip.y = this.§ m§.y;
         this.mClip.scaleX = this.§ m§.scaleX;
         this.mClip.scaleY = this.§ m§.scaleY;
         if(this.§ W§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§&!%§,this.§-!I§);
         }
      }
      
      private function §`Y§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§4A§ = _loc2_;
            this.§[X§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§4A§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§4A§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§[X§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§[X§ = _loc3_;
            }
         }
         this.§&!%§ = this.§4A§;
         this.§-!I§ = this.§[X§;
      }
      
      private function §#K§(param1:XML) : void
      {
         this.§!!c§ = param1.@alignH;
         this.§>t§ = param1.@alignV;
         this.§#p§ = param1.@scaleH;
         this.§ !=§ = param1.@scaleV;
         this.§?%§ = param1.@scaleFunction;
         this.§0!C§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§72§(_loc2_);
         this.§1q§(_loc3_);
      }
      
      private function §1q§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§]J§ = true;
            }
         }
      }
      
      private function §72§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§ W§ = true;
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
         this.§ m§ = null;
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
         this.§=]§ = param1;
         this.mClip.visible = this.§=]§ && this.§@!M§;
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
         this.§@!M§ = param1;
         this.mClip.visible = this.§=]§ && this.§@!M§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§3!Z§)
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
      
      public function getParentView() : §"$§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§ m§)
         {
            this.§ m§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§ m§)
         {
            this.§ m§.y = this.mClip.y;
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
         return this.§4A§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§[X§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§4A§ = param1;
         this.§&y§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§[X§ = param1;
         this.§&y§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§]J§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§]J§ = param1;
      }
   }
}
