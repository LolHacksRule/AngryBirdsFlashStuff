package §4##§
{
   import §""d§.§,m§;
   import §#!k§.§4!4§;
   import §0"I§.§5!s§;
   import §^!`§.§6"!§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §5!9§ extends §7!B§
   {
       
      
      public var mParentContainer:§,m§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §@"r§:Boolean = false;
      
      public var §+"x§:Boolean = true;
      
      public var §;"s§:Boolean = false;
      
      public var §0"P§:Boolean = false;
      
      protected var §+#5§:§"!=§;
      
      private var §&!r§:Boolean = false;
      
      protected var §2!F§:Boolean = false;
      
      private var §<"z§:Number;
      
      private var §5#0§:Number;
      
      private var §&!w§:Number;
      
      private var §4B§:Number;
      
      private var §?S§:String;
      
      private var § "P§:String;
      
      private var § "L§:String;
      
      private var §6";§:String;
      
      private var §""u§:String;
      
      private var §-"J§:String;
      
      private var §@!C§:Boolean = true;
      
      public function §5!9§(param1:XML, param2:§,m§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§,m§ = param2;
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
            cls = §5"]§.§4!K§(this.mName);
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
               §5!s§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§;"s§ = true;
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
            tmp = this.getParentView().§'9§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§;"s§)
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
            this.§0"P§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§@!C§ = false;
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
         this.§!_§(data);
         this.§!!a§(data);
      }
      
      private function §="w§() : void
      {
         if(this.§@!C§)
         {
            if(!this.§+#5§)
            {
               this.§+#5§ = new §"!=§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§&!w§,this.§4B§,this.§?S§,this.§ "P§,this.§ "L§,this.§6";§,this.§-"J§,this.§""u§);
            }
            this.§+#5§.§]c§(this.§<"z§,this.§5#0§);
            this.mClip.x = this.§+#5§.x;
            this.mClip.y = this.§+#5§.y;
            this.mClip.scaleX = this.§+#5§.scaleX;
            this.mClip.scaleY = this.§+#5§.scaleY;
         }
         if(this.§&!r§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§&!w§,this.§4B§);
         }
      }
      
      private function §!_§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§<"z§ = _loc2_;
            this.§5#0§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§<"z§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§<"z§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§5#0§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§5#0§ = _loc3_;
            }
         }
         this.§&!w§ = this.§<"z§;
         this.§4B§ = this.§5#0§;
      }
      
      private function §!!a§(param1:XML) : void
      {
         this.§?S§ = param1.@alignH;
         this.§ "P§ = param1.@alignV;
         this.§ "L§ = param1.@scaleH;
         this.§6";§ = param1.@scaleV;
         this.§""u§ = param1.@scaleFunction;
         this.§-"J§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§'!t§(_loc2_);
         this.§#!]§(_loc3_);
      }
      
      private function §#!]§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§2!F§ = true;
            }
         }
      }
      
      private function §'!t§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§&!r§ = true;
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
         while(this.mClip.numChildren > 0)
         {
            this.mClip.removeChildAt(0);
         }
         this.mClip = null;
         this.§+#5§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §4!4§
      {
         var _loc3_:§4!4§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§+"x§ = param1;
         this.mClip.visible = this.§+"x§ && this.§@"r§;
         if(this.visible)
         {
            §4X§();
         }
         else
         {
            §"!Z§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§@"r§ = param1;
         this.mClip.visible = this.§+"x§ && this.§@"r§;
         if(this.visible)
         {
            §4X§();
         }
         else
         {
            §"!Z§();
         }
         if(this.§0"P§)
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
      
      public function getParentView() : §6"!§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§+#5§)
         {
            this.§+#5§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§+#5§)
         {
            this.§+#5§.y = this.mClip.y;
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
         return this.§<"z§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§5#0§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§<"z§ = param1;
         this.§="w§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§5#0§ = param1;
         this.§="w§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§2!F§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§2!F§ = param1;
      }
   }
}
