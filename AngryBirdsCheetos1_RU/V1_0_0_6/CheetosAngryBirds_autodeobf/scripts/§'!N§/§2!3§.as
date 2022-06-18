package §'!N§
{
   import §'D§.§8e§;
   import §;!K§.§+!4§;
   import §;[§.§>!^§;
   import §]0§.§%%§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §2!3§ extends §9!O§
   {
       
      
      public var mParentContainer:§>!^§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §#'§:Boolean = false;
      
      public var §2p§:Boolean = true;
      
      public var §>!%§:Boolean = false;
      
      public var §5,§:Boolean = false;
      
      private var §?G§:§9$§;
      
      private var §9!S§:Boolean = false;
      
      protected var §3!H§:Boolean = false;
      
      private var §#b§:Number;
      
      private var §%h§:Number;
      
      private var §?T§:Number;
      
      private var §1!0§:Number;
      
      private var §6!T§:String;
      
      private var §,z§:String;
      
      private var §-'§:String;
      
      private var §,!=§:String;
      
      private var §]h§:String;
      
      private var §3W§:String;
      
      public function §2!3§(param1:XML, param2:§>!^§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§>!^§ = param2;
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
            cls = §%%§.§in §(this.mName);
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
               §8e§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§>!%§ = true;
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
            tmp = this.getParentView().§=!3§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§>!%§)
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
            this.§5,§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§?!F§(data);
         this.§package§(data);
      }
      
      private function §,p§() : void
      {
         if(!this.§?G§)
         {
            this.§?G§ = new §9$§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§?T§,this.§1!0§,this.§6!T§,this.§,z§,this.§-'§,this.§,!=§,this.§3W§,this.§]h§);
         }
         this.§?G§.§9!_§(this.§#b§,this.§%h§);
         this.mClip.x = this.§?G§.x;
         this.mClip.y = this.§?G§.y;
         this.mClip.scaleX = this.§?G§.scaleX;
         this.mClip.scaleY = this.§?G§.scaleY;
         if(this.§9!S§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§?T§,this.§1!0§);
         }
      }
      
      private function §?!F§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§#b§ = _loc2_;
            this.§%h§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§#b§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§#b§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§%h§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§%h§ = _loc3_;
            }
         }
         this.§?T§ = this.§#b§;
         this.§1!0§ = this.§%h§;
      }
      
      private function §package§(param1:XML) : void
      {
         this.§6!T§ = param1.@alignH;
         this.§,z§ = param1.@alignV;
         this.§-'§ = param1.@scaleH;
         this.§,!=§ = param1.@scaleV;
         this.§]h§ = param1.@scaleFunction;
         this.§3W§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§8k§(_loc2_);
         this.§!!^§(_loc3_);
      }
      
      private function §!!^§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§3!H§ = true;
            }
         }
      }
      
      private function §8k§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§9!S§ = true;
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
         this.§?G§ = null;
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
         this.§2p§ = param1;
         this.mClip.visible = this.§2p§ && this.§#'§;
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
         this.§#'§ = param1;
         this.mClip.visible = this.§2p§ && this.§#'§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§5,§)
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
      
      public function getParentView() : §+!4§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§?G§)
         {
            this.§?G§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§?G§)
         {
            this.§?G§.y = this.mClip.y;
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
         return this.§#b§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§%h§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§#b§ = param1;
         this.§,p§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§%h§ = param1;
         this.§,p§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§3!H§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§3!H§ = param1;
      }
   }
}
