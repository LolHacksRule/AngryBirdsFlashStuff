package §'!A§
{
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import §=!M§.§9!P§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §-!2§ extends §-!S§
   {
       
      
      public var mParentContainer:§`!T§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §?C§:Boolean = false;
      
      public var §-j§:Boolean = true;
      
      public var §%!%§:Boolean = false;
      
      public var §1!p§:Boolean = false;
      
      private var §%!5§:§]!b§;
      
      private var §+g§:Boolean = false;
      
      protected var §<!l§:Boolean = false;
      
      private var §4r§:Number;
      
      private var §+" §:Number;
      
      private var §+d§:Number;
      
      private var §5!§:Number;
      
      private var §%!!§:String;
      
      private var §;i§:String;
      
      private var §'!$§:String;
      
      private var §!!$§:String;
      
      private var §`!O§:String;
      
      private var §-"6§:String;
      
      public function §-!2§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§`!T§ = param2;
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
            cls = §>!]§.§1!8§(this.mName);
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
               §9!P§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§%!%§ = true;
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
            tmp = this.getParentView().§8"-§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§%!%§)
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
            this.§1!p§ = true;
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
         this.§>t§(data);
         this.§<!w§(data);
      }
      
      private function §;!c§() : void
      {
         if(!this.§%!5§)
         {
            this.§%!5§ = new §]!b§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§+d§,this.§5!§,this.§%!!§,this.§;i§,this.§'!$§,this.§!!$§,this.§-"6§,this.§`!O§);
         }
         this.§%!5§.§5[§(this.§4r§,this.§+" §);
         this.mClip.x = this.§%!5§.x;
         this.mClip.y = this.§%!5§.y;
         this.mClip.scaleX = this.§%!5§.scaleX;
         this.mClip.scaleY = this.§%!5§.scaleY;
         if(this.§+g§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§+d§,this.§5!§);
         }
      }
      
      private function §>t§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§4r§ = _loc2_;
            this.§+" § = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§4r§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§4r§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§+" § = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§+" § = _loc3_;
            }
         }
         this.§+d§ = this.§4r§;
         this.§5!§ = this.§+" §;
      }
      
      private function §<!w§(param1:XML) : void
      {
         this.§%!!§ = param1.@alignH;
         this.§;i§ = param1.@alignV;
         this.§'!$§ = param1.@scaleH;
         this.§!!$§ = param1.@scaleV;
         this.§`!O§ = param1.@scaleFunction;
         this.§-"6§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§&!G§(_loc2_);
         this.§"!-§(_loc3_);
      }
      
      private function §"!-§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§<!l§ = true;
            }
         }
      }
      
      private function §&!G§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§+g§ = true;
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
         this.§%!5§ = null;
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
         this.§-j§ = param1;
         this.mClip.visible = this.§-j§ && this.§?C§;
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
         this.§?C§ = param1;
         this.mClip.visible = this.§-j§ && this.§?C§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§1!p§)
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
      
      public function getParentView() : §'s§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§%!5§)
         {
            this.§%!5§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§%!5§)
         {
            this.§%!5§.y = this.mClip.y;
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
         return this.§4r§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§+" §;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§4r§ = param1;
         this.§;!c§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§+" § = param1;
         this.§;!c§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§<!l§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§<!l§ = param1;
      }
   }
}
