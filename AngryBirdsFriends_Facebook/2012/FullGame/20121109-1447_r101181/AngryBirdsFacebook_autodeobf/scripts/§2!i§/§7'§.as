package §2!i§
{
   import §#^§.§7!A§;
   import §4!e§.§08§;
   import §6o§.§+!k§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §7'§ extends §'M§
   {
       
      
      public var mParentContainer:§08§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §+L§:Boolean = false;
      
      public var §5!d§:Boolean = true;
      
      public var §[>§:Boolean = false;
      
      public var §6"6§:Boolean = false;
      
      private var §6!J§:§&"+§;
      
      private var §8"%§:Boolean = false;
      
      protected var §,7§:Boolean = false;
      
      private var §+"D§:Number;
      
      private var §[8§:Number;
      
      private var §!!8§:Number;
      
      private var §"!S§:Number;
      
      private var §1!c§:String;
      
      private var § x§:String;
      
      private var §%!I§:String;
      
      private var §@`§:String;
      
      private var §8!D§:String;
      
      private var §-M§:String;
      
      public function §7'§(param1:XML, param2:§08§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§08§ = param2;
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
            cls = §8B§.§6"C§(this.mName);
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
               §+!k§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§[>§ = true;
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
            tmp = this.getParentView().§&""§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§[>§)
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
            this.§6"6§ = true;
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
         this.§5!Y§(data);
         this.§9[§(data);
      }
      
      private function §6"%§() : void
      {
         if(!this.§6!J§)
         {
            this.§6!J§ = new §&"+§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§!!8§,this.§"!S§,this.§1!c§,this.§ x§,this.§%!I§,this.§@`§,this.§-M§,this.§8!D§);
         }
         this.§6!J§.§8!A§(this.§+"D§,this.§[8§);
         this.mClip.x = this.§6!J§.x;
         this.mClip.y = this.§6!J§.y;
         this.mClip.scaleX = this.§6!J§.scaleX;
         this.mClip.scaleY = this.§6!J§.scaleY;
         if(this.§8"%§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§!!8§,this.§"!S§);
         }
      }
      
      private function §5!Y§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§+"D§ = _loc2_;
            this.§[8§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§+"D§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§+"D§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§[8§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§[8§ = _loc3_;
            }
         }
         this.§!!8§ = this.§+"D§;
         this.§"!S§ = this.§[8§;
      }
      
      private function §9[§(param1:XML) : void
      {
         this.§1!c§ = param1.@alignH;
         this.§ x§ = param1.@alignV;
         this.§%!I§ = param1.@scaleH;
         this.§@`§ = param1.@scaleV;
         this.§8!D§ = param1.@scaleFunction;
         this.§-M§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§5"%§(_loc2_);
         this.§2!T§(_loc3_);
      }
      
      private function §2!T§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§,7§ = true;
            }
         }
      }
      
      private function §5"%§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§8"%§ = true;
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
         this.§6!J§ = null;
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
         this.§5!d§ = param1;
         this.mClip.visible = this.§5!d§ && this.§+L§;
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
         this.§+L§ = param1;
         this.mClip.visible = this.§5!d§ && this.§+L§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§6"6§)
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
      
      public function getParentView() : §7!A§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§6!J§)
         {
            this.§6!J§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§6!J§)
         {
            this.§6!J§.y = this.mClip.y;
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
         return this.§+"D§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§[8§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§+"D§ = param1;
         this.§6"%§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§[8§ = param1;
         this.§6"%§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§,7§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§,7§ = param1;
      }
   }
}
