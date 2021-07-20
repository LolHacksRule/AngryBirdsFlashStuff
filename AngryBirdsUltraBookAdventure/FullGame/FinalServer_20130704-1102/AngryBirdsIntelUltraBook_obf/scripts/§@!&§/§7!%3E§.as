package §@!&§
{
   import §1!B§.§<m§;
   import §2y§.§^! §;
   import §>f§.§&!G§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §7!>§ extends §'!o§
   {
       
      
      public var mParentContainer:§^! §;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §7!#§:Boolean = false;
      
      public var §0a§:Boolean = true;
      
      public var §3!V§:Boolean = false;
      
      public var §@t§:Boolean = false;
      
      private var §[!0§:§^H§;
      
      private var §`!K§:Boolean = false;
      
      protected var §-D§:Boolean = false;
      
      private var §3o§:Number;
      
      private var §6>§:Number;
      
      private var §,!X§:Number;
      
      private var §+!p§:Number;
      
      private var §3!=§:String;
      
      private var § !6§:String;
      
      private var §&!7§:String;
      
      private var §3U§:String;
      
      private var §?R§:String;
      
      private var §3!Z§:String;
      
      public function §7!>§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§^! § = param2;
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
            cls = §,!j§.§!!N§(this.mName);
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
               §<m§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§3!V§ = true;
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
            tmp = this.getParentView().§!!s§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§3!V§)
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
            this.§@t§ = true;
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
         this.§@!K§(data);
         this.§^!K§(data);
      }
      
      private function §`!g§() : void
      {
         if(!this.§[!0§)
         {
            this.§[!0§ = new §^H§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§,!X§,this.§+!p§,this.§3!=§,this.§ !6§,this.§&!7§,this.§3U§,this.§3!Z§,this.§?R§);
         }
         this.§[!0§.§3!&§(this.§3o§,this.§6>§);
         this.mClip.x = this.§[!0§.x;
         this.mClip.y = this.§[!0§.y;
         this.mClip.scaleX = this.§[!0§.scaleX;
         this.mClip.scaleY = this.§[!0§.scaleY;
         if(this.§`!K§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§,!X§,this.§+!p§);
         }
      }
      
      private function §@!K§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§3o§ = _loc2_;
            this.§6>§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§3o§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§3o§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§6>§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§6>§ = _loc3_;
            }
         }
         this.§,!X§ = this.§3o§;
         this.§+!p§ = this.§6>§;
      }
      
      private function §^!K§(param1:XML) : void
      {
         this.§3!=§ = param1.@alignH;
         this.§ !6§ = param1.@alignV;
         this.§&!7§ = param1.@scaleH;
         this.§3U§ = param1.@scaleV;
         this.§?R§ = param1.@scaleFunction;
         this.§3!Z§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§6!i§(_loc2_);
         this.§!!p§(_loc3_);
      }
      
      private function §!!p§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§-D§ = true;
            }
         }
      }
      
      private function §6!i§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§`!K§ = true;
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
         this.§[!0§ = null;
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
         this.§0a§ = param1;
         this.mClip.visible = this.§0a§ && this.§7!#§;
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
         this.§7!#§ = param1;
         this.mClip.visible = this.§0a§ && this.§7!#§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§@t§)
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
      
      public function getParentView() : §&!G§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§[!0§)
         {
            this.§[!0§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§[!0§)
         {
            this.§[!0§.y = this.mClip.y;
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
         return this.§3o§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§6>§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§3o§ = param1;
         this.§`!g§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§6>§ = param1;
         this.§`!g§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§-D§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§-D§ = param1;
      }
   }
}
