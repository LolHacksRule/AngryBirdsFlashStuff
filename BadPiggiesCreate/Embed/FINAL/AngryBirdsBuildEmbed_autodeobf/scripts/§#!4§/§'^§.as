package §#!4§
{
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §"!E§.§[!s§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'^§ extends §+!S§
   {
       
      
      public var mParentContainer:§[!s§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §8W§:Boolean = false;
      
      public var §6!4§:Boolean = true;
      
      public var §%v§:Boolean = false;
      
      public var §@w§:Boolean = false;
      
      private var §9d§:§%§;
      
      private var §?+§:Boolean = false;
      
      protected var §-!c§:Boolean = false;
      
      private var §;b§:Number;
      
      private var §7!L§:Number;
      
      private var §=!M§:Number;
      
      private var §%7§:Number;
      
      private var §1b§:String;
      
      private var §"F§:String;
      
      private var §4L§:String;
      
      private var §5!q§:String;
      
      private var §2v§:String;
      
      private var § e§:String;
      
      public function §'^§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§[!s§ = param2;
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
            cls = §1F§.§"!_§(this.mName);
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
               §`![§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§%v§ = true;
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
            tmp = this.getParentView().§&!s§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§%v§)
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
            this.§@w§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§>!v§(data);
         this.§=e§(data);
      }
      
      private function §@!1§() : void
      {
         if(!this.§9d§)
         {
            this.§9d§ = new §%§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§=!M§,this.§%7§,this.§1b§,this.§"F§,this.§4L§,this.§5!q§,this.§ e§,this.§2v§);
         }
         this.§9d§.§^=§(this.§;b§,this.§7!L§);
         this.mClip.x = this.§9d§.x;
         this.mClip.y = this.§9d§.y;
         this.mClip.scaleX = this.§9d§.scaleX;
         this.mClip.scaleY = this.§9d§.scaleY;
         if(this.§?+§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§=!M§,this.§%7§);
         }
      }
      
      private function §>!v§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§;b§ = _loc2_;
            this.§7!L§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§;b§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§;b§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§7!L§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§7!L§ = _loc3_;
            }
         }
         this.§=!M§ = this.§;b§;
         this.§%7§ = this.§7!L§;
      }
      
      private function §=e§(param1:XML) : void
      {
         this.§1b§ = param1.@alignH;
         this.§"F§ = param1.@alignV;
         this.§4L§ = param1.@scaleH;
         this.§5!q§ = param1.@scaleV;
         this.§2v§ = param1.@scaleFunction;
         this.§ e§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§6!1§(_loc2_);
         this.§^!V§(_loc3_);
      }
      
      private function §^!V§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§-!c§ = true;
            }
         }
      }
      
      private function §6!1§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§?+§ = true;
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
         this.§9d§ = null;
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
         this.§6!4§ = param1;
         this.mClip.visible = this.§6!4§ && this.§8W§;
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
         this.§8W§ = param1;
         this.mClip.visible = this.§6!4§ && this.§8W§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§@w§)
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
      
      public function getParentView() : §2U§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§9d§)
         {
            this.§9d§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§9d§)
         {
            this.§9d§.y = this.mClip.y;
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
         return this.§;b§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§7!L§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§;b§ = param1;
         this.§@!1§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§7!L§ = param1;
         this.§@!1§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
