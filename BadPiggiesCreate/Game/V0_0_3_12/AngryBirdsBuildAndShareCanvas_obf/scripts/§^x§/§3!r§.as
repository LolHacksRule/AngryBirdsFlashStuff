package §^x§
{
   import §"p§.§@8§;
   import §5!8§.§+!?§;
   import §@">§.§%!u§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §3!r§ extends §<!w§
   {
       
      
      public var mParentContainer:§+!?§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §0"&§:Boolean = false;
      
      public var §;!c§:Boolean = true;
      
      public var §<6§:Boolean = false;
      
      public var §=M§:Boolean = false;
      
      private var §9!<§:§ e§;
      
      private var §&D§:Boolean = false;
      
      protected var §;!%§:Boolean = false;
      
      private var §-!Q§:Number;
      
      private var §?!&§:Number;
      
      private var §%!M§:Number;
      
      private var §3!9§:Number;
      
      private var §4!P§:String;
      
      private var §&^§:String;
      
      private var §+!!§:String;
      
      private var §]C§:String;
      
      private var §1G§:String;
      
      private var §%!!§:String;
      
      public function §3!r§(param1:XML, param2:§+!?§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§+!?§ = param2;
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
            cls = §!"'§.§%!Q§(this.mName);
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
               §@8§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§<6§ = true;
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
            tmp = this.getParentView().§5!§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§<6§)
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
            this.§=M§ = true;
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
         this.§2! §(data);
         this.§[!B§(data);
      }
      
      private function §="7§() : void
      {
         if(!this.§9!<§)
         {
            this.§9!<§ = new § e§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§%!M§,this.§3!9§,this.§4!P§,this.§&^§,this.§+!!§,this.§]C§,this.§%!!§,this.§1G§);
         }
         this.§9!<§.§0!v§(this.§-!Q§,this.§?!&§);
         this.mClip.x = this.§9!<§.x;
         this.mClip.y = this.§9!<§.y;
         this.mClip.scaleX = this.§9!<§.scaleX;
         this.mClip.scaleY = this.§9!<§.scaleY;
         if(this.§&D§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§%!M§,this.§3!9§);
         }
      }
      
      private function §2! §(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§-!Q§ = _loc2_;
            this.§?!&§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§-!Q§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§-!Q§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§?!&§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§?!&§ = _loc3_;
            }
         }
         this.§%!M§ = this.§-!Q§;
         this.§3!9§ = this.§?!&§;
      }
      
      private function §[!B§(param1:XML) : void
      {
         this.§4!P§ = param1.@alignH;
         this.§&^§ = param1.@alignV;
         this.§+!!§ = param1.@scaleH;
         this.§]C§ = param1.@scaleV;
         this.§1G§ = param1.@scaleFunction;
         this.§%!!§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§&!!§(_loc2_);
         this.§"!9§(_loc3_);
      }
      
      private function §"!9§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§;!%§ = true;
            }
         }
      }
      
      private function §&!!§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§&D§ = true;
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
         this.§9!<§ = null;
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
         this.§;!c§ = param1;
         this.mClip.visible = this.§;!c§ && this.§0"&§;
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
         this.§0"&§ = param1;
         this.mClip.visible = this.§;!c§ && this.§0"&§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§=M§)
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
      
      public function getParentView() : §%!u§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§9!<§)
         {
            this.§9!<§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§9!<§)
         {
            this.§9!<§.y = this.mClip.y;
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
         return this.§-!Q§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§?!&§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§-!Q§ = param1;
         this.§="7§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§?!&§ = param1;
         this.§="7§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§;!%§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§;!%§ = param1;
      }
   }
}
