package §5F§
{
   import §!t§.§;1§;
   import §"1§.§3'§;
   import §>!7§.§"Q§;
   import com.rovio.assets.§[G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §!!A§ extends §+!O§
   {
       
      
      public var mParentContainer:§;1§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var §^!5§:Boolean = true;
      
      public var §6w§:Boolean = false;
      
      public var §?[§:Boolean = false;
      
      private var §8c§:§']§;
      
      private var §!!D§:Boolean = false;
      
      protected var §8'§:Boolean = false;
      
      private var §0k§:Number;
      
      private var §#=§:Number;
      
      private var §[[§:Number;
      
      private var §5K§:Number;
      
      private var §-!-§:String;
      
      private var §;'§:String;
      
      private var §5T§:String;
      
      private var §#b§:String;
      
      private var §6,§:String;
      
      private var §8!D§:String;
      
      public function §!!A§(param1:XML, param2:§;1§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§;1§ = param2;
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
            cls = §[G§.§6u§(this.mName);
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
               §3'§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§6w§ = true;
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
            tmp = this.getParentView().§2!+§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§6w§)
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
            this.§?[§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§0!6§(data);
         this.§9!N§(data);
      }
      
      private function §=!!§() : void
      {
         if(!this.§8c§)
         {
            this.§8c§ = new §']§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§[[§,this.§5K§,this.§-!-§,this.§;'§,this.§5T§,this.§#b§,this.§8!D§,this.§6,§);
         }
         this.§8c§.§&x§(this.§0k§,this.§#=§);
         this.mClip.x = this.§8c§.x;
         this.mClip.y = this.§8c§.y;
         this.mClip.scaleX = this.§8c§.scaleX;
         this.mClip.scaleY = this.§8c§.scaleY;
         if(this.§!!D§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§[[§,this.§5K§);
         }
      }
      
      private function §0!6§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§0k§ = _loc2_;
            this.§#=§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§0k§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§0k§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§#=§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§#=§ = _loc3_;
            }
         }
         this.§[[§ = this.§0k§;
         this.§5K§ = this.§#=§;
      }
      
      private function §9!N§(param1:XML) : void
      {
         this.§-!-§ = param1.@alignH;
         this.§;'§ = param1.@alignV;
         this.§5T§ = param1.@scaleH;
         this.§#b§ = param1.@scaleV;
         this.§6,§ = param1.@scaleFunction;
         this.§8!D§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§=!-§(_loc2_);
         this.§,!§(_loc3_);
      }
      
      private function §,!§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§8'§ = true;
            }
         }
      }
      
      private function §=!-§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§!!D§ = true;
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
         this.§8c§ = null;
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
         this.§^!5§ = param1;
         this.mClip.visible = this.§^!5§ && this.mActive;
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
         this.mClip.visible = this.§^!5§ && this.mActive;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§?[§)
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
      
      public function getParentView() : §"Q§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§8c§)
         {
            this.§8c§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§8c§)
         {
            this.§8c§.y = this.mClip.y;
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
         return this.§0k§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§#=§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§0k§ = param1;
         this.§=!!§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§#=§ = param1;
         this.§=!!§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§8'§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§8'§ = param1;
      }
   }
}
