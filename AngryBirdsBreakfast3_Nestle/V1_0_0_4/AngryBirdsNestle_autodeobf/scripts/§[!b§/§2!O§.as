package §[!b§
{
   import §"I§.§=!U§;
   import §02§.§`%§;
   import §?!4§.§^!S§;
   import §@#§.§9!'§;
   import com.rovio.assets.§&!2§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §2!O§ extends §'!R§
   {
       
      
      public var mParentContainer:§9!'§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §'J§:Boolean = false;
      
      public var §<n§:Boolean = true;
      
      public var §1F§:Boolean = false;
      
      public var §`'§:Boolean = false;
      
      protected var §2f§:§7!^§;
      
      private var §9c§:Boolean = false;
      
      protected var §]!m§:Boolean = false;
      
      private var §!5§:Number;
      
      private var §!&§:Number;
      
      private var §5"&§:Number;
      
      private var §5!'§:Number;
      
      private var §?R§:String;
      
      private var §5!F§:String;
      
      private var §`!4§:String;
      
      private var §'!X§:String;
      
      private var §<!W§:String;
      
      private var §`!y§:String;
      
      private var §-Q§:Boolean = true;
      
      public function §2!O§(param1:XML, param2:§9!'§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§9!'§ = param2;
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
            cls = §&!2§.§0!O§(this.mName);
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
               §=!U§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§1F§ = true;
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
            tmp = this.getParentView().§%!9§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§1F§)
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
            this.§`'§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§-Q§ = false;
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
         this.§@"&§(data);
         this.§;W§(data);
      }
      
      private function § !T§() : void
      {
         if(this.§-Q§)
         {
            if(!this.§2f§)
            {
               this.§2f§ = new §7!^§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§5"&§,this.§5!'§,this.§?R§,this.§5!F§,this.§`!4§,this.§'!X§,this.§`!y§,this.§<!W§);
            }
            this.§2f§.§&Q§(this.§!5§,this.§!&§);
            this.mClip.x = this.§2f§.x;
            this.mClip.y = this.§2f§.y;
            this.mClip.scaleX = this.§2f§.scaleX;
            this.mClip.scaleY = this.§2f§.scaleY;
         }
         if(this.§9c§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§5"&§,this.§5!'§);
         }
      }
      
      private function §@"&§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§!5§ = _loc2_;
            this.§!&§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§!5§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§!5§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§!&§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§!&§ = _loc3_;
            }
         }
         this.§5"&§ = this.§!5§;
         this.§5!'§ = this.§!&§;
      }
      
      private function §;W§(param1:XML) : void
      {
         this.§?R§ = param1.@alignH;
         this.§5!F§ = param1.@alignV;
         this.§`!4§ = param1.@scaleH;
         this.§'!X§ = param1.@scaleV;
         this.§<!W§ = param1.@scaleFunction;
         this.§`!y§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§ =§(_loc2_);
         this.§8!N§(_loc3_);
      }
      
      private function §8!N§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§]!m§ = true;
            }
         }
      }
      
      private function § =§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§9c§ = true;
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
         this.§2f§ = null;
         this.§2f§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §^!S§
      {
         var _loc3_:§^!S§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§<n§ = param1;
         this.mClip.visible = this.§<n§ && this.§'J§;
         if(this.visible)
         {
            §!!W§();
         }
         else
         {
            §&"1§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§'J§ = param1;
         this.mClip.visible = this.§<n§ && this.§'J§;
         if(this.visible)
         {
            §!!W§();
         }
         else
         {
            §&"1§();
         }
         if(this.§`'§)
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
      
      public function getParentView() : §`%§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§2f§)
         {
            this.§2f§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§2f§)
         {
            this.§2f§.y = this.mClip.y;
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
         return this.§!5§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§!&§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§!5§ = param1;
         this.§ !T§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§!&§ = param1;
         this.§ !T§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§]!m§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§]!m§ = param1;
      }
   }
}
