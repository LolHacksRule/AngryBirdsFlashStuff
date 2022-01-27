package §7!6§
{
   import §#R§.§%!S§;
   import §,!M§.§ !;§;
   import §="<§.§,"$§;
   import §`!w§.§^!$§;
   import com.rovio.assets.§1!h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §"!O§ extends §@Y§
   {
       
      
      public var mParentContainer:§,"$§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §;G§:Boolean = false;
      
      public var §!!i§:Boolean = true;
      
      public var §#!-§:Boolean = false;
      
      public var §9!R§:Boolean = false;
      
      protected var §@"$§:§<2§;
      
      private var §1s§:Boolean = false;
      
      protected var §-"'§:Boolean = false;
      
      private var §?m§:Number;
      
      private var §4"%§:Number;
      
      private var §+T§:Number;
      
      private var §`2§:Number;
      
      private var §<`§:String;
      
      private var §0!0§:String;
      
      private var §@![§:String;
      
      private var §]![§:String;
      
      private var §2"'§:String;
      
      private var §#"4§:String;
      
      private var §6m§:Boolean = true;
      
      public function §"!O§(param1:XML, param2:§,"$§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§,"$§ = param2;
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
            cls = §1!h§.§4!D§(this.mName);
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
               §^!$§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§#!-§ = true;
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
            if(parentContainer.§#!-§)
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
            this.§9!R§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§6m§ = false;
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
         this.§4!0§(data);
         this.§&"'§(data);
      }
      
      private function §#I§() : void
      {
         if(this.§6m§)
         {
            if(!this.§@"$§)
            {
               this.§@"$§ = new §<2§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§+T§,this.§`2§,this.§<`§,this.§0!0§,this.§@![§,this.§]![§,this.§#"4§,this.§2"'§);
            }
            this.§@"$§.§4!?§(this.§?m§,this.§4"%§);
            this.mClip.x = this.§@"$§.x;
            this.mClip.y = this.§@"$§.y;
            this.mClip.scaleX = this.§@"$§.scaleX;
            this.mClip.scaleY = this.§@"$§.scaleY;
         }
         if(this.§1s§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§+T§,this.§`2§);
         }
      }
      
      private function §4!0§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§?m§ = _loc2_;
            this.§4"%§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§?m§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§?m§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§4"%§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§4"%§ = _loc3_;
            }
         }
         this.§+T§ = this.§?m§;
         this.§`2§ = this.§4"%§;
      }
      
      private function §&"'§(param1:XML) : void
      {
         this.§<`§ = param1.@alignH;
         this.§0!0§ = param1.@alignV;
         this.§@![§ = param1.@scaleH;
         this.§]![§ = param1.@scaleV;
         this.§2"'§ = param1.@scaleFunction;
         this.§#"4§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§0";§(_loc2_);
         this.§^[§(_loc3_);
      }
      
      private function §^[§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§-"'§ = true;
            }
         }
      }
      
      private function §0";§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§1s§ = true;
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
         this.§@"$§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%!S§
      {
         var _loc3_:§%!S§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§!!i§ = param1;
         this.mClip.visible = this.§!!i§ && this.§;G§;
         if(this.visible)
         {
            §`!!§();
         }
         else
         {
            §=!B§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§;G§ = param1;
         this.mClip.visible = this.§!!i§ && this.§;G§;
         if(this.visible)
         {
            §`!!§();
         }
         else
         {
            §=!B§();
         }
         if(this.§9!R§)
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
      }
      
      public function getParentView() : § !;§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§@"$§)
         {
            this.§@"$§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§@"$§)
         {
            this.§@"$§.y = this.mClip.y;
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
         return this.§?m§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§4"%§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§?m§ = param1;
         this.§#I§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§4"%§ = param1;
         this.§#I§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§-"'§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§-"'§ = param1;
      }
   }
}
