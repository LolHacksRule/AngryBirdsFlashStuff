package §9!7§
{
   import §!D§.§ use§;
   import §4u§.§<!L§;
   import §?!V§.§ T§;
   import com.rovio.assets.§%"4§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §0!`§ extends §#p§
   {
       
      
      public var mParentContainer:§ use§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §=!T§:Boolean = false;
      
      public var §-s§:Boolean = true;
      
      public var §&!a§:Boolean = false;
      
      public var §6",§:Boolean = false;
      
      private var §3!j§:§`!o§;
      
      private var §+!h§:Boolean = false;
      
      protected var §>!c§:Boolean = false;
      
      private var §!!]§:Number;
      
      private var §8B§:Number;
      
      private var §%!7§:Number;
      
      private var §]"&§:Number;
      
      private var §?!c§:String;
      
      private var §3!C§:String;
      
      private var §;F§:String;
      
      private var §[x§:String;
      
      private var §1w§:String;
      
      private var §1!Q§:String;
      
      public function §0!`§(param1:XML, param2:§ use§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§ use§ = param2;
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
            cls = §%"4§.§>!v§(this.mName);
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
               §<!L§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§&!a§ = true;
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
            tmp = this.getParentView().§="+§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§&!a§)
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
            this.§6",§ = true;
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
         this.§3i§(data);
         this.§;! §(data);
      }
      
      private function §8x§() : void
      {
         if(!this.§3!j§)
         {
            this.§3!j§ = new §`!o§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§%!7§,this.§]"&§,this.§?!c§,this.§3!C§,this.§;F§,this.§[x§,this.§1!Q§,this.§1w§);
         }
         this.§3!j§.§@! §(this.§!!]§,this.§8B§);
         this.mClip.x = this.§3!j§.x;
         this.mClip.y = this.§3!j§.y;
         this.mClip.scaleX = this.§3!j§.scaleX;
         this.mClip.scaleY = this.§3!j§.scaleY;
         if(this.§+!h§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§%!7§,this.§]"&§);
         }
      }
      
      private function §3i§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§!!]§ = _loc2_;
            this.§8B§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§!!]§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§!!]§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§8B§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§8B§ = _loc3_;
            }
         }
         this.§%!7§ = this.§!!]§;
         this.§]"&§ = this.§8B§;
      }
      
      private function §;! §(param1:XML) : void
      {
         this.§?!c§ = param1.@alignH;
         this.§3!C§ = param1.@alignV;
         this.§;F§ = param1.@scaleH;
         this.§[x§ = param1.@scaleV;
         this.§1w§ = param1.@scaleFunction;
         this.§1!Q§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§<6§(_loc2_);
         this.§4!i§(_loc3_);
      }
      
      private function §4!i§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§>!c§ = true;
            }
         }
      }
      
      private function §<6§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§+!h§ = true;
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
         this.§3!j§ = null;
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
         this.§-s§ = param1;
         this.mClip.visible = this.§-s§ && this.§=!T§;
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
         this.§=!T§ = param1;
         this.mClip.visible = this.§-s§ && this.§=!T§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§6",§)
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
      
      public function getParentView() : § T§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§3!j§)
         {
            this.§3!j§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§3!j§)
         {
            this.§3!j§.y = this.mClip.y;
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
         return this.§!!]§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§8B§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§!!]§ = param1;
         this.§8x§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§8B§ = param1;
         this.§8x§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§>!c§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§>!c§ = param1;
      }
   }
}
