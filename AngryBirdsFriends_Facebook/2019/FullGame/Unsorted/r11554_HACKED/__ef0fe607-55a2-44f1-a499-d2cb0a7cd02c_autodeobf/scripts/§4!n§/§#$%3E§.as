package §4!n§
{
   import §%#v§.§?!F§;
   import §5!$§.§<c§;
   import §5"G§.§8"`§;
   import §9#K§.§=#f§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §#$>§ extends §'!,§
   {
       
      
      public var mParentContainer:§<c§;
      
      public var mClip:MovieClip;
      
      protected var §-!O§:String;
      
      private var §'#p§:String;
      
      public var §;#c§:Boolean = false;
      
      public var §0"<§:Boolean = true;
      
      public var §`#Y§:Boolean = false;
      
      public var §4!#§:Boolean = false;
      
      protected var §]!-§:§>!O§;
      
      private var § !R§:Boolean = false;
      
      protected var §8,§:Boolean = false;
      
      private var §="G§:Number;
      
      private var §7!@§:Number;
      
      private var §!!r§:Number;
      
      private var §1#J§:Number;
      
      private var §'V§:String;
      
      private var § ,§:String;
      
      private var §3#J§:String;
      
      private var §>#z§:String;
      
      private var §9"N§:String;
      
      private var §>R§:String;
      
      private var §@#N§:Boolean = true;
      
      public function §#$>§(param1:XML, param2:§<c§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§<c§ = param2;
         var clip:MovieClip = param3;
         this.mParentContainer = parentContainer;
         this.§-!O§ = data.@name;
         this.§'#p§ = this.§-!O§.toUpperCase();
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
            cls = §2"O§.§`>§(this.name);
            this.mClip = new cls();
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(this.mParentContainer)
         {
            this.mClip = this.mParentContainer.mClip.getChildByName(this.name) as MovieClip;
            if(this.mClip == null)
            {
               error = "Asset instance not found!! [" + this.name + "] parent: [" + this.mParentContainer.name + "]";
               §=#f§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§`#Y§ = true;
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
            tmp = this.getParentView().§-"r§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§`#Y§)
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
            this.§4!#§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§@#N§ = false;
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
         this.§7#Z§(data);
         this.§9#M§(data);
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function get upperCaseName() : String
      {
         return this.§'#p§;
      }
      
      private function §5!s§() : void
      {
         if(this.§@#N§)
         {
            if(!this.§]!-§)
            {
               this.§]!-§ = new §>!O§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§!!r§,this.§1#J§,this.§'V§,this.§ ,§,this.§3#J§,this.§>#z§,this.§>R§,this.§9"N§);
            }
            this.§]!-§.§""F§(this.§="G§,this.§7!@§);
            this.mClip.x = this.§]!-§.x;
            this.mClip.y = this.§]!-§.y;
            this.mClip.scaleX = this.§]!-§.scaleX;
            this.mClip.scaleY = this.§]!-§.scaleY;
         }
         if(this.§ !R§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§!!r§,this.§1#J§);
         }
      }
      
      private function §7#Z§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§="G§ = _loc2_;
            this.§7!@§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§="G§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§="G§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§7!@§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§7!@§ = _loc3_;
            }
         }
         this.§!!r§ = this.§="G§;
         this.§1#J§ = this.§7!@§;
      }
      
      private function §9#M§(param1:XML) : void
      {
         this.§'V§ = param1.@alignH;
         this.§ ,§ = param1.@alignV;
         this.§3#J§ = param1.@scaleH;
         this.§>#z§ = param1.@scaleV;
         this.§9"N§ = param1.@scaleFunction;
         this.§>R§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§3#%§(_loc2_);
         this.§?$'§(_loc3_);
      }
      
      private function §?$'§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§8,§ = true;
            }
         }
      }
      
      private function §3#%§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§ !R§ = true;
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
         if(this.mParentContainer && this.mClip.parent == this.mParentContainer.mClip)
         {
            this.mParentContainer.mClip.removeChild(this.mClip);
         }
         this.mClip.stop();
         while(this.mClip.numChildren > 0)
         {
            this.mClip.removeChildAt(0);
         }
         this.mClip = null;
         this.§]!-§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"`§
      {
         var _loc3_:§8"`§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§0"<§ = param1;
         this.mClip.visible = this.§0"<§ && this.§;#c§;
         if(this.visible)
         {
            §7#_§();
         }
         else
         {
            §7P§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§;#c§ = param1;
         this.mClip.visible = this.§0"<§ && this.§;#c§;
         if(this.visible)
         {
            §7#_§();
         }
         else
         {
            §7P§();
         }
         if(this.§4!#§)
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
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         if(this.mClip.mouseEnabled != param1)
         {
            this.mClip.mouseEnabled = param1;
            if(param2)
            {
               this.mClip.mouseChildren = param1;
            }
         }
      }
      
      public function getParentView() : §?!F§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§]!-§)
         {
            this.§]!-§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§]!-§)
         {
            this.§]!-§.y = this.mClip.y;
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
      
      public function set scaleX(param1:Number) : void
      {
         this.mClip.scaleX = param1;
         if(this.§]!-§)
         {
            this.§]!-§.scaleX = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mClip.scaleX;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.mClip.scaleY = param1;
         if(this.§]!-§)
         {
            this.§]!-§.scaleY = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.mClip.scaleY;
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
         return this.§="G§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§7!@§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§="G§ = param1;
         this.§5!s§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§7!@§ = param1;
         this.§5!s§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§8,§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§8,§ = param1;
      }
   }
}
