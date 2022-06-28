package §0!#§
{
   import §%4§.§4!=§;
   import §-!D§.§4!,§;
   import §3a§.§7!+§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'!,§ extends §-P§
   {
       
      
      public var mParentContainer:§4!=§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §`!L§:Boolean = false;
      
      public var §"a§:Boolean = true;
      
      public var §]!0§:Boolean = false;
      
      public var §0-§:Boolean = false;
      
      private var §"!9§:§"F§;
      
      private var §?G§:Boolean = false;
      
      protected var §4%§:Boolean = false;
      
      private var §5n§:Number;
      
      private var §@!$§:Number;
      
      private var §7!H§:Number;
      
      private var §'z§:Number;
      
      private var §[O§:String;
      
      private var §<k§:String;
      
      private var §7!A§:String;
      
      private var §8f§:String;
      
      private var §-?§:String;
      
      private var §9§:String;
      
      public function §'!,§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§4!=§ = param2;
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
            cls = §]!>§.§8!@§(this.mName);
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
               §7!+§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§]!0§ = true;
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
            tmp = this.getParentView().§>W§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§]!0§)
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
            this.§0-§ = true;
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
         this.§+!5§(data);
         this.§`!,§(data);
      }
      
      private function §!!#§() : void
      {
         if(!this.§"!9§)
         {
            this.§"!9§ = new §"F§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§7!H§,this.§'z§,this.§[O§,this.§<k§,this.§7!A§,this.§8f§,this.§9§,this.§-?§);
         }
         this.§"!9§.§7!'§(this.§5n§,this.§@!$§);
         this.mClip.x = this.§"!9§.x;
         this.mClip.y = this.§"!9§.y;
         this.mClip.scaleX = this.§"!9§.scaleX;
         this.mClip.scaleY = this.§"!9§.scaleY;
         if(this.§?G§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§7!H§,this.§'z§);
         }
      }
      
      private function §+!5§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§5n§ = _loc2_;
            this.§@!$§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§5n§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§5n§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§@!$§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§@!$§ = _loc3_;
            }
         }
         this.§7!H§ = this.§5n§;
         this.§'z§ = this.§@!$§;
      }
      
      private function §`!,§(param1:XML) : void
      {
         this.§[O§ = param1.@alignH;
         this.§<k§ = param1.@alignV;
         this.§7!A§ = param1.@scaleH;
         this.§8f§ = param1.@scaleV;
         this.§-?§ = param1.@scaleFunction;
         this.§9§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§9L§(_loc2_);
         this.§%B§(_loc3_);
      }
      
      private function §%B§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§4%§ = true;
            }
         }
      }
      
      private function §9L§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§?G§ = true;
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
         this.§"!9§ = null;
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
         this.§"a§ = param1;
         this.mClip.visible = this.§"a§ && this.§`!L§;
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
         this.§`!L§ = param1;
         this.mClip.visible = this.§"a§ && this.§`!L§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§0-§)
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
      
      public function getParentView() : §4!,§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§"!9§)
         {
            this.§"!9§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§"!9§)
         {
            this.§"!9§.y = this.mClip.y;
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
         return this.§5n§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§@!$§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§5n§ = param1;
         this.§!!#§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§@!$§ = param1;
         this.§!!#§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§4%§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§4%§ = param1;
      }
   }
}
