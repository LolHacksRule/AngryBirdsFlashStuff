package §1!t§
{
   import §%i§.§0!Y§;
   import §+!c§.§;!=§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §!>§ extends §""B§
   {
       
      
      public var mParentContainer:§0!Y§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §@!Q§:Boolean = false;
      
      public var §!!V§:Boolean = true;
      
      public var §-!%§:Boolean = false;
      
      public var §3!k§:Boolean = false;
      
      private var § !S§:§`§;
      
      private var §]"G§:Boolean = false;
      
      protected var §63§:Boolean = false;
      
      private var §,!&§:Number;
      
      private var §+!i§:Number;
      
      private var §2!V§:Number;
      
      private var §["<§:Number;
      
      private var §^!b§:String;
      
      private var §'!j§:String;
      
      private var §0!w§:String;
      
      private var §]"O§:String;
      
      private var §[4§:String;
      
      private var §^"Z§:String;
      
      public function §!>§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§0!Y§ = param2;
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
            cls = §?q§.§ q§(this.mName);
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
               §;!=§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§-!%§ = true;
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
            tmp = this.getParentView().§!B§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§-!%§)
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
            this.§3!k§ = true;
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
         this.§%"T§(data);
         this.§%"8§(data);
      }
      
      private function §7""§() : void
      {
         if(!this.§ !S§)
         {
            this.§ !S§ = new §`§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§2!V§,this.§["<§,this.§^!b§,this.§'!j§,this.§0!w§,this.§]"O§,this.§^"Z§,this.§[4§);
         }
         this.§ !S§.§,!_§(this.§,!&§,this.§+!i§);
         this.mClip.x = this.§ !S§.x;
         this.mClip.y = this.§ !S§.y;
         this.mClip.scaleX = this.§ !S§.scaleX;
         this.mClip.scaleY = this.§ !S§.scaleY;
         if(this.§]"G§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§2!V§,this.§["<§);
         }
      }
      
      private function §%"T§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§,!&§ = _loc2_;
            this.§+!i§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§,!&§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§,!&§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§+!i§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§+!i§ = _loc3_;
            }
         }
         this.§2!V§ = this.§,!&§;
         this.§["<§ = this.§+!i§;
      }
      
      private function §%"8§(param1:XML) : void
      {
         this.§^!b§ = param1.@alignH;
         this.§'!j§ = param1.@alignV;
         this.§0!w§ = param1.@scaleH;
         this.§]"O§ = param1.@scaleV;
         this.§[4§ = param1.@scaleFunction;
         this.§^"Z§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§!!e§(_loc2_);
         this.§2x§(_loc3_);
      }
      
      private function §2x§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§63§ = true;
            }
         }
      }
      
      private function §!!e§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§]"G§ = true;
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
         this.§ !S§ = null;
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
         this.§!!V§ = param1;
         this.mClip.visible = this.§!!V§ && this.§@!Q§;
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
         this.§@!Q§ = param1;
         this.mClip.visible = this.§!!V§ && this.§@!Q§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§3!k§)
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
      
      public function getParentView() : §`_§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§ !S§)
         {
            this.§ !S§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§ !S§)
         {
            this.§ !S§.y = this.mClip.y;
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
         return this.§,!&§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§+!i§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§,!&§ = param1;
         this.§7""§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§+!i§ = param1;
         this.§7""§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§63§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§63§ = param1;
      }
   }
}
