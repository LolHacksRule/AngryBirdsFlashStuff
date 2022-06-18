package §1t§
{
   import §"!K§.§,U§;
   import §&U§.§05§;
   import §?!8§.§2>§;
   import com.rovio.assets.§&%§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §@B§ extends §`!B§
   {
       
      
      public var mParentContainer:§05§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §;2§:Boolean = false;
      
      public var §0[§:Boolean = true;
      
      public var §7J§:Boolean = false;
      
      public var §?6§:Boolean = false;
      
      private var §%!A§:§=8§;
      
      private var §-2§:Boolean = false;
      
      protected var §#b§:Boolean = false;
      
      private var §9n§:Number;
      
      private var §3!,§:Number;
      
      private var §`d§:Number;
      
      private var §%7§:Number;
      
      private var §1!M§:String;
      
      private var §!!0§:String;
      
      private var §%g§:String;
      
      private var §[8§:String;
      
      private var §,!&§:String;
      
      private var §>!'§:String;
      
      public function §@B§(param1:XML, param2:§05§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§05§ = param2;
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
            cls = §&%§.§<7§(this.mName);
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
               §2>§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§7J§ = true;
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
            tmp = this.getParentView().§8E§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§7J§)
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
            this.§?6§ = true;
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
         this.§5!$§(data);
         this.§00§(data);
      }
      
      private function §!!"§() : void
      {
         if(!this.§%!A§)
         {
            this.§%!A§ = new §=8§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§`d§,this.§%7§,this.§1!M§,this.§!!0§,this.§%g§,this.§[8§,this.§>!'§,this.§,!&§);
         }
         this.§%!A§.§@!'§(this.§9n§,this.§3!,§);
         this.mClip.x = this.§%!A§.x;
         this.mClip.y = this.§%!A§.y;
         this.mClip.scaleX = this.§%!A§.scaleX;
         this.mClip.scaleY = this.§%!A§.scaleY;
         if(this.§-2§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§`d§,this.§%7§);
         }
      }
      
      private function §5!$§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§9n§ = _loc2_;
            this.§3!,§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§9n§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§9n§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§3!,§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§3!,§ = _loc3_;
            }
         }
         this.§`d§ = this.§9n§;
         this.§%7§ = this.§3!,§;
      }
      
      private function §00§(param1:XML) : void
      {
         this.§1!M§ = param1.@alignH;
         this.§!!0§ = param1.@alignV;
         this.§%g§ = param1.@scaleH;
         this.§[8§ = param1.@scaleV;
         this.§,!&§ = param1.@scaleFunction;
         this.§>!'§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§;I§(_loc2_);
         this.§5U§(_loc3_);
      }
      
      private function §5U§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§#b§ = true;
            }
         }
      }
      
      private function §;I§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§-2§ = true;
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
         this.§%!A§ = null;
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
         this.§0[§ = param1;
         this.mClip.visible = this.§0[§ && this.§;2§;
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
         this.§;2§ = param1;
         this.mClip.visible = this.§0[§ && this.§;2§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§?6§)
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
      
      public function getParentView() : §,U§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§%!A§)
         {
            this.§%!A§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§%!A§)
         {
            this.§%!A§.y = this.mClip.y;
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
         return this.§9n§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§3!,§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§9n§ = param1;
         this.§!!"§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§3!,§ = param1;
         this.§!!"§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§#b§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§#b§ = param1;
      }
   }
}
