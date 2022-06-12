package §@y§
{
   import §&!<§.§>!V§;
   import §6]§.§,"0§;
   import §=!7§.§6W§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §0"4§ extends §0=§
   {
       
      
      public var mParentContainer:§6W§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §3!+§:Boolean = false;
      
      public var §'">§:Boolean = true;
      
      public var §2"§:Boolean = false;
      
      public var §2!M§:Boolean = false;
      
      private var §;!L§:§>!@§;
      
      private var §6!!§:Boolean = false;
      
      protected var §&!%§:Boolean = false;
      
      private var §3]§:Number;
      
      private var §5!6§:Number;
      
      private var §4;§:Number;
      
      private var §8?§:Number;
      
      private var §"!d§:String;
      
      private var §,1§:String;
      
      private var §1!M§:String;
      
      private var §&!w§:String;
      
      private var §=8§:String;
      
      private var §6!h§:String;
      
      public function §0"4§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§6W§ = param2;
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
            cls = §69§.§ 0§(this.mName);
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
               §,"0§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§2"§ = true;
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
            tmp = this.getParentView().§^s§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§2"§)
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
            this.§2!M§ = true;
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
         this.§"G§(data);
         this.§@!q§(data);
      }
      
      private function §4"§() : void
      {
         if(!this.§;!L§)
         {
            this.§;!L§ = new §>!@§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§4;§,this.§8?§,this.§"!d§,this.§,1§,this.§1!M§,this.§&!w§,this.§6!h§,this.§=8§);
         }
         this.§;!L§.§8!p§(this.§3]§,this.§5!6§);
         this.mClip.x = this.§;!L§.x;
         this.mClip.y = this.§;!L§.y;
         this.mClip.scaleX = this.§;!L§.scaleX;
         this.mClip.scaleY = this.§;!L§.scaleY;
         if(this.§6!!§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§4;§,this.§8?§);
         }
      }
      
      private function §"G§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§3]§ = _loc2_;
            this.§5!6§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§3]§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§3]§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§5!6§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§5!6§ = _loc3_;
            }
         }
         this.§4;§ = this.§3]§;
         this.§8?§ = this.§5!6§;
      }
      
      private function §@!q§(param1:XML) : void
      {
         this.§"!d§ = param1.@alignH;
         this.§,1§ = param1.@alignV;
         this.§1!M§ = param1.@scaleH;
         this.§&!w§ = param1.@scaleV;
         this.§=8§ = param1.@scaleFunction;
         this.§6!h§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§<"$§(_loc2_);
         this.§3"3§(_loc3_);
      }
      
      private function §3"3§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§&!%§ = true;
            }
         }
      }
      
      private function §<"$§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§6!!§ = true;
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
         this.§'">§ = param1;
         this.mClip.visible = this.§'">§ && this.§3!+§;
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
         this.§3!+§ = param1;
         this.mClip.visible = this.§'">§ && this.§3!+§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§2!M§)
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
      
      public function getParentView() : §>!V§
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
         return this.§3]§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§5!6§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§3]§ = param1;
         this.§4"§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§5!6§ = param1;
         this.§4"§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§&!%§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§&!%§ = param1;
      }
   }
}
