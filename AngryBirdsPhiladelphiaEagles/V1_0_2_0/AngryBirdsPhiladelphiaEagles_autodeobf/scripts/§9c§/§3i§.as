package §9c§
{
   import §2S§.§<!K§;
   import §=!H§.§9V§;
   import §@V§.§`!5§;
   import com.rovio.assets.§<x§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §3i§ extends §,x§
   {
       
      
      public var mParentContainer:§9V§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var §!U§:Boolean = true;
      
      public var §8Z§:Boolean = false;
      
      public var §-L§:Boolean = false;
      
      private var §%L§:§@7§;
      
      private var §5d§:Boolean = false;
      
      protected var §2L§:Boolean = false;
      
      private var §@C§:Number;
      
      private var §&!B§:Number;
      
      private var §7-§:Number;
      
      private var §=x§:Number;
      
      private var §,Z§:String;
      
      private var §47§:String;
      
      private var §^!P§:String;
      
      private var §^Q§:String;
      
      private var §#o§:String;
      
      private var §#_§:String;
      
      public function §3i§(param1:XML, param2:§9V§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§9V§ = param2;
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
            cls = §<x§.§,! §(this.mName);
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
               §`!5§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§8Z§ = true;
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
            tmp = this.getParentView().§-Z§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§8Z§)
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
            this.§-L§ = true;
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
         this.§3o§(data);
         this.§^!#§(data);
      }
      
      private function §-5§() : void
      {
         if(!this.§%L§)
         {
            this.§%L§ = new §@7§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§7-§,this.§=x§,this.§,Z§,this.§47§,this.§^!P§,this.§^Q§,this.§#_§,this.§#o§);
         }
         this.§%L§.§?A§(this.§@C§,this.§&!B§);
         this.mClip.x = this.§%L§.x;
         this.mClip.y = this.§%L§.y;
         this.mClip.scaleX = this.§%L§.scaleX;
         this.mClip.scaleY = this.§%L§.scaleY;
         if(this.§5d§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§7-§,this.§=x§);
         }
      }
      
      private function §3o§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§@C§ = _loc2_;
            this.§&!B§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§@C§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§@C§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§&!B§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§&!B§ = _loc3_;
            }
         }
         this.§7-§ = this.§@C§;
         this.§=x§ = this.§&!B§;
      }
      
      private function §^!#§(param1:XML) : void
      {
         this.§,Z§ = param1.@alignH;
         this.§47§ = param1.@alignV;
         this.§^!P§ = param1.@scaleH;
         this.§^Q§ = param1.@scaleV;
         this.§#o§ = param1.@scaleFunction;
         this.§#_§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§5>§(_loc2_);
         this.§-!6§(_loc3_);
      }
      
      private function §-!6§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§2L§ = true;
            }
         }
      }
      
      private function §5>§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§5d§ = true;
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
         this.§%L§ = null;
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
         this.§!U§ = param1;
         this.mClip.visible = this.§!U§ && this.mActive;
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
         this.mClip.visible = this.§!U§ && this.mActive;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§-L§)
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
      
      public function getParentView() : §<!K§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§%L§)
         {
            this.§%L§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§%L§)
         {
            this.§%L§.y = this.mClip.y;
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
         return this.§@C§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§&!B§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§@C§ = param1;
         this.§-5§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§&!B§ = param1;
         this.§-5§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§2L§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§2L§ = param1;
      }
   }
}
