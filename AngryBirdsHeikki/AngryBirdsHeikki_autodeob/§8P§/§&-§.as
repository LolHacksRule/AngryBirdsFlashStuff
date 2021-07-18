package §8P§
{
   import §'!N§.§2O§;
   import §<u§.§]!Q§;
   import §@R§.§4,§;
   import §]!6§.§false§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&-§ extends §1A§
   {
       
      
      public var mParentContainer:§2O§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var § <§:Boolean = false;
      
      public var § !9§:Boolean = true;
      
      public var §'F§:Boolean = false;
      
      public var §3v§:Boolean = false;
      
      private var §^6§:§]P§;
      
      private var §+!R§:Boolean = false;
      
      protected var §;c§:Boolean = false;
      
      private var §%D§:Number;
      
      private var §0w§:Number;
      
      private var §0!P§:Number;
      
      private var §1!M§:Number;
      
      private var § each§:String;
      
      private var §>!G§:String;
      
      private var §"G§:String;
      
      private var §&!3§:String;
      
      private var §[N§:String;
      
      private var §#!K§:String;
      
      public function §&-§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§2O§ = param2;
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
            cls = §false§.§5#§(this.mName);
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
               §4,§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§'F§ = true;
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
            tmp = this.getParentView().§#!3§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§'F§)
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
            this.§3v§ = true;
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
         this.§7!4§(data);
         this.§&>§(data);
      }
      
      private function §1!U§() : void
      {
         if(!this.§^6§)
         {
            this.§^6§ = new §]P§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§0!P§,this.§1!M§,this.§ each§,this.§>!G§,this.§"G§,this.§&!3§,this.§#!K§,this.§[N§);
         }
         this.§^6§.§ y§(this.§%D§,this.§0w§);
         this.mClip.x = this.§^6§.x;
         this.mClip.y = this.§^6§.y;
         this.mClip.scaleX = this.§^6§.scaleX;
         this.mClip.scaleY = this.§^6§.scaleY;
         if(this.§+!R§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§0!P§,this.§1!M§);
         }
      }
      
      private function §7!4§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§%D§ = _loc2_;
            this.§0w§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§%D§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§%D§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§0w§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§0w§ = _loc3_;
            }
         }
         this.§0!P§ = this.§%D§;
         this.§1!M§ = this.§0w§;
      }
      
      private function §&>§(param1:XML) : void
      {
         this.§ each§ = param1.@alignH;
         this.§>!G§ = param1.@alignV;
         this.§"G§ = param1.@scaleH;
         this.§&!3§ = param1.@scaleV;
         this.§[N§ = param1.@scaleFunction;
         this.§#!K§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§@I§(_loc2_);
         this.§!!0§(_loc3_);
      }
      
      private function §!!0§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§;c§ = true;
            }
         }
      }
      
      private function §@I§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§+!R§ = true;
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
         this.§^6§ = null;
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
         this.§ !9§ = param1;
         this.mClip.visible = this.§ !9§ && this.§ <§;
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
         this.§ <§ = param1;
         this.mClip.visible = this.§ !9§ && this.§ <§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§3v§)
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
      
      public function getParentView() : §]!Q§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§^6§)
         {
            this.§^6§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§^6§)
         {
            this.§^6§.y = this.mClip.y;
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
         return this.§%D§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§0w§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§%D§ = param1;
         this.§1!U§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§0w§ = param1;
         this.§1!U§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§;c§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§;c§ = param1;
      }
   }
}
