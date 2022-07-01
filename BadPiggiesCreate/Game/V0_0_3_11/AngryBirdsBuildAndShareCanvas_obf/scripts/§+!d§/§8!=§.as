package §+!d§
{
   import §;!A§.§;!u§;
   import §;"$§.§`5§;
   import §;X§.§ do§;
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §8!=§ extends §6=§
   {
       
      
      public var mParentContainer:§;!u§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var override:Boolean = false;
      
      public var §<!&§:Boolean = true;
      
      public var §&;§:Boolean = false;
      
      public var §]g§:Boolean = false;
      
      private var §;!L§:§-!L§;
      
      private var §>"§:Boolean = false;
      
      protected var §"!^§:Boolean = false;
      
      private var §#!B§:Number;
      
      private var §5!v§:Number;
      
      private var §1i§:Number;
      
      private var §2!K§:Number;
      
      private var §%"0§:String;
      
      private var §6!4§:String;
      
      private var §%!T§:String;
      
      private var §>%§:String;
      
      private var §+!7§:String;
      
      private var §,[§:String;
      
      public function §8!=§(param1:XML, param2:§;!u§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§;!u§ = param2;
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
            cls = §]!S§.§?! §(this.mName);
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
               § do§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§&;§ = true;
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
            tmp = this.getParentView().§'"%§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§&;§)
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
            this.§]g§ = true;
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
         this.§[,§(data);
         this.§`9§(data);
      }
      
      private function § !$§() : void
      {
         if(!this.§;!L§)
         {
            this.§;!L§ = new §-!L§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§1i§,this.§2!K§,this.§%"0§,this.§6!4§,this.§%!T§,this.§>%§,this.§,[§,this.§+!7§);
         }
         this.§;!L§.§^!Z§(this.§#!B§,this.§5!v§);
         this.mClip.x = this.§;!L§.x;
         this.mClip.y = this.§;!L§.y;
         this.mClip.scaleX = this.§;!L§.scaleX;
         this.mClip.scaleY = this.§;!L§.scaleY;
         if(this.§>"§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§1i§,this.§2!K§);
         }
      }
      
      private function §[,§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§#!B§ = _loc2_;
            this.§5!v§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§#!B§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§#!B§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§5!v§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§5!v§ = _loc3_;
            }
         }
         this.§1i§ = this.§#!B§;
         this.§2!K§ = this.§5!v§;
      }
      
      private function §`9§(param1:XML) : void
      {
         this.§%"0§ = param1.@alignH;
         this.§6!4§ = param1.@alignV;
         this.§%!T§ = param1.@scaleH;
         this.§>%§ = param1.@scaleV;
         this.§+!7§ = param1.@scaleFunction;
         this.§,[§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§3m§(_loc2_);
         this.§6!h§(_loc3_);
      }
      
      private function §6!h§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§"!^§ = true;
            }
         }
      }
      
      private function §3m§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§>"§ = true;
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
         this.§;!L§ = null;
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
         this.§<!&§ = param1;
         this.mClip.visible = this.§<!&§ && this.override;
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
         this.override = param1;
         this.mClip.visible = this.§<!&§ && this.override;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§]g§)
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
      
      public function getParentView() : §`5§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§;!L§)
         {
            this.§;!L§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§;!L§)
         {
            this.§;!L§.y = this.mClip.y;
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
         return this.§#!B§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§5!v§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§#!B§ = param1;
         this.§ !$§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§5!v§ = param1;
         this.§ !$§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§"!^§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§"!^§ = param1;
      }
   }
}
