package §6v§
{
   import §"U§.§[Q§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §var § extends §`M§
   {
       
      
      public var mParentContainer:§[Q§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var §9'§:Boolean = true;
      
      public var §!!K§:Boolean = false;
      
      public var §&B§:Boolean = false;
      
      private var §7!Q§:§0R§;
      
      private var §`!N§:Boolean = false;
      
      protected var §;R§:Boolean = false;
      
      private var §[2§:Number;
      
      private var §-$§:Number;
      
      private var §'!§:Number;
      
      private var §#!@§:Number;
      
      private var §<s§:String;
      
      private var §]a§:String;
      
      private var §!l§:String;
      
      private var §8H§:String;
      
      private var §?_§:String;
      
      private var §!!#§:String;
      
      public function §var §(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§[Q§ = param2;
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
            cls = §[!D§.§8!N§(this.mName);
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
               § L§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§!!K§ = true;
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
            tmp = this.getParentView().§2!3§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§!!K§)
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
            this.§&B§ = true;
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
         this.§-!5§(data);
         this.§#R§(data);
      }
      
      private function §"!H§() : void
      {
         if(!this.§7!Q§)
         {
            this.§7!Q§ = new §0R§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§'!§,this.§#!@§,this.§<s§,this.§]a§,this.§!l§,this.§8H§,this.§!!#§,this.§?_§);
         }
         this.§7!Q§.§ q§(this.§[2§,this.§-$§);
         this.mClip.x = this.§7!Q§.x;
         this.mClip.y = this.§7!Q§.y;
         this.mClip.scaleX = this.§7!Q§.scaleX;
         this.mClip.scaleY = this.§7!Q§.scaleY;
         if(this.§`!N§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§'!§,this.§#!@§);
         }
      }
      
      private function §-!5§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§[2§ = _loc2_;
            this.§-$§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§[2§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§[2§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§-$§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§-$§ = _loc3_;
            }
         }
         this.§'!§ = this.§[2§;
         this.§#!@§ = this.§-$§;
      }
      
      private function §#R§(param1:XML) : void
      {
         this.§<s§ = param1.@alignH;
         this.§]a§ = param1.@alignV;
         this.§!l§ = param1.@scaleH;
         this.§8H§ = param1.@scaleV;
         this.§?_§ = param1.@scaleFunction;
         this.§!!#§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§<k§(_loc2_);
         this.§try §(_loc3_);
      }
      
      private function §try §(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§;R§ = true;
            }
         }
      }
      
      private function §<k§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§`!N§ = true;
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
         this.§7!Q§ = null;
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
         this.§9'§ = param1;
         this.mClip.visible = this.§9'§ && this.mActive;
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
         this.mActive = param1;
         this.mClip.visible = this.§9'§ && this.mActive;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§&B§)
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
      
      public function getParentView() : §`o§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§7!Q§)
         {
            this.§7!Q§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§7!Q§)
         {
            this.§7!Q§.y = this.mClip.y;
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
         return this.§[2§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§-$§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§[2§ = param1;
         this.§"!H§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§-$§ = param1;
         this.§"!H§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§;R§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§;R§ = param1;
      }
   }
}
