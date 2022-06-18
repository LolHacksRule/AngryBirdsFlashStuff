package §7'§
{
   import §7!P§.§-3§;
   import §8v§.§#Z§;
   import §?>§.§ !V§;
   import §^q§.§8,§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class § ?§ extends §-!6§
   {
       
      
      public var mParentContainer:§ !V§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §9C§:Boolean = false;
      
      public var §8!B§:Boolean = true;
      
      public var §^+§:Boolean = false;
      
      public var §-!X§:Boolean = false;
      
      private var §5!'§:§1!H§;
      
      private var §5n§:Boolean = false;
      
      protected var §2!?§:Boolean = false;
      
      private var §%!=§:Number;
      
      private var §!!Y§:Number;
      
      private var §9!"§:Number;
      
      private var §1B§:Number;
      
      private var §7!$§:String;
      
      private var §3#§:String;
      
      private var §@V§:String;
      
      private var §@i§:String;
      
      private var §8!;§:String;
      
      private var §%!Q§:String;
      
      public function § ?§(param1:XML, param2:§ !V§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§ !V§ = param2;
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
            cls = §8,§.§8X§(this.mName);
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
               §-3§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§^+§ = true;
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
            tmp = this.getParentView().§]!Y§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§^+§)
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
            this.§-!X§ = true;
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
         this.§2d§(data);
         this.§"j§(data);
      }
      
      private function §>!^§() : void
      {
         if(!this.§5!'§)
         {
            this.§5!'§ = new §1!H§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§9!"§,this.§1B§,this.§7!$§,this.§3#§,this.§@V§,this.§@i§,this.§%!Q§,this.§8!;§);
         }
         this.§5!'§.§&s§(this.§%!=§,this.§!!Y§);
         this.mClip.x = this.§5!'§.x;
         this.mClip.y = this.§5!'§.y;
         this.mClip.scaleX = this.§5!'§.scaleX;
         this.mClip.scaleY = this.§5!'§.scaleY;
         if(this.§5n§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§9!"§,this.§1B§);
         }
      }
      
      private function §2d§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§%!=§ = _loc2_;
            this.§!!Y§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§%!=§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§%!=§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§!!Y§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§!!Y§ = _loc3_;
            }
         }
         this.§9!"§ = this.§%!=§;
         this.§1B§ = this.§!!Y§;
      }
      
      private function §"j§(param1:XML) : void
      {
         this.§7!$§ = param1.@alignH;
         this.§3#§ = param1.@alignV;
         this.§@V§ = param1.@scaleH;
         this.§@i§ = param1.@scaleV;
         this.§8!;§ = param1.@scaleFunction;
         this.§%!Q§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§`T§(_loc2_);
         this.§8I§(_loc3_);
      }
      
      private function §8I§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§2!?§ = true;
            }
         }
      }
      
      private function §`T§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§5n§ = true;
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
         this.§5!'§ = null;
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
         this.§8!B§ = param1;
         this.mClip.visible = this.§8!B§ && this.§9C§;
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
         this.§9C§ = param1;
         this.mClip.visible = this.§8!B§ && this.§9C§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§-!X§)
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
      
      public function getParentView() : §#Z§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§5!'§)
         {
            this.§5!'§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§5!'§)
         {
            this.§5!'§.y = this.mClip.y;
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
         return this.§%!=§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§!!Y§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§%!=§ = param1;
         this.§>!^§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§!!Y§ = param1;
         this.§>!^§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§2!?§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§2!?§ = param1;
      }
   }
}
