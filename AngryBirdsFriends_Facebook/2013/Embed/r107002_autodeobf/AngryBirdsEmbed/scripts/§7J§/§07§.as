package §7J§
{
   import §2T§.§&M§;
   import §?H§.§+!B§;
   import §@!;§.§!!=§;
   import com.rovio.assets.§5R§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §07§ extends §<!?§
   {
       
      
      public var mParentContainer:§&M§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §'n§:Boolean = false;
      
      public var §%r§:Boolean = true;
      
      public var §@5§:Boolean = false;
      
      public var § _§:Boolean = false;
      
      private var §`!&§:§=F§;
      
      private var § &§:Boolean = false;
      
      protected var §<b§:Boolean = false;
      
      private var §9C§:Number;
      
      private var §6X§:Number;
      
      private var §5F§:Number;
      
      private var §=$§:Number;
      
      private var §[!'§:String;
      
      private var §-!I§:String;
      
      private var §5'§:String;
      
      private var §0Z§:String;
      
      private var §'k§:String;
      
      private var §&`§:String;
      
      public function §07§(param1:XML, param2:§&M§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§&M§ = param2;
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
            cls = §5R§.§6+§(this.mName);
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
               §!!=§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§@5§ = true;
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
            tmp = this.getParentView().§@!?§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§@5§)
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
            this.§ _§ = true;
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
         this.§^h§(data);
         this.§`!-§(data);
      }
      
      private function §&B§() : void
      {
         if(!this.§`!&§)
         {
            this.§`!&§ = new §=F§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§5F§,this.§=$§,this.§[!'§,this.§-!I§,this.§5'§,this.§0Z§,this.§&`§,this.§'k§);
         }
         this.§`!&§.§+!G§(this.§9C§,this.§6X§);
         this.mClip.x = this.§`!&§.x;
         this.mClip.y = this.§`!&§.y;
         this.mClip.scaleX = this.§`!&§.scaleX;
         this.mClip.scaleY = this.§`!&§.scaleY;
         if(this.§ &§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§5F§,this.§=$§);
         }
      }
      
      private function §^h§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§9C§ = _loc2_;
            this.§6X§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§9C§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§9C§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§6X§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§6X§ = _loc3_;
            }
         }
         this.§5F§ = this.§9C§;
         this.§=$§ = this.§6X§;
      }
      
      private function §`!-§(param1:XML) : void
      {
         this.§[!'§ = param1.@alignH;
         this.§-!I§ = param1.@alignV;
         this.§5'§ = param1.@scaleH;
         this.§0Z§ = param1.@scaleV;
         this.§'k§ = param1.@scaleFunction;
         this.§&`§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§5!%§(_loc2_);
         this.§2!A§(_loc3_);
      }
      
      private function §2!A§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§<b§ = true;
            }
         }
      }
      
      private function §5!%§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§ &§ = true;
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
         this.§`!&§ = null;
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
         this.§%r§ = param1;
         this.mClip.visible = this.§%r§ && this.§'n§;
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
         this.§'n§ = param1;
         this.mClip.visible = this.§%r§ && this.§'n§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§ _§)
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
      
      public function getParentView() : §+!B§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§`!&§)
         {
            this.§`!&§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§`!&§)
         {
            this.§`!&§.y = this.mClip.y;
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
         return this.§9C§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§6X§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§9C§ = param1;
         this.§&B§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§6X§ = param1;
         this.§&B§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§<b§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§<b§ = param1;
      }
   }
}
