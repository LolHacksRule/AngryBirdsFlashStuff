package §0u§
{
   import §4-§.§'J§;
   import §6!,§.§[H§;
   import §9H§.§@M§;
   import com.rovio.assets.§ 3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §^S§ extends §&]§
   {
       
      
      public var mParentContainer:§'J§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §`!C§:Boolean = false;
      
      public var §'N§:Boolean = true;
      
      public var §4Q§:Boolean = false;
      
      public var §59§:Boolean = false;
      
      private var §@§:§6x§;
      
      private var §7;§:Boolean = false;
      
      protected var §;!E§:Boolean = false;
      
      private var §=;§:Number;
      
      private var §8u§:Number;
      
      private var §[T§:Number;
      
      private var §0!A§:Number;
      
      private var §2!5§:String;
      
      private var §%Y§:String;
      
      private var §"3§:String;
      
      private var §``§:String;
      
      private var §`+§:String;
      
      private var §'8§:String;
      
      public function §^S§(param1:XML, param2:§'J§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§'J§ = param2;
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
            cls = § 3§.§+i§(this.mName);
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
               §@M§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§4Q§ = true;
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
            tmp = this.getParentView().§>7§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§4Q§)
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
            this.§59§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§@!+§(data);
         this.§3+§(data);
      }
      
      private function §=q§() : void
      {
         if(!this.§@§)
         {
            this.§@§ = new §6x§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§[T§,this.§0!A§,this.§2!5§,this.§%Y§,this.§"3§,this.§``§,this.§'8§,this.§`+§);
         }
         this.§@§.§&S§(this.§=;§,this.§8u§);
         this.mClip.x = this.§@§.x;
         this.mClip.y = this.§@§.y;
         this.mClip.scaleX = this.§@§.scaleX;
         this.mClip.scaleY = this.§@§.scaleY;
         if(this.§7;§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§[T§,this.§0!A§);
         }
      }
      
      private function §@!+§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§=;§ = _loc2_;
            this.§8u§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§=;§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§=;§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§8u§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§8u§ = _loc3_;
            }
         }
         this.§[T§ = this.§=;§;
         this.§0!A§ = this.§8u§;
      }
      
      private function §3+§(param1:XML) : void
      {
         this.§2!5§ = param1.@alignH;
         this.§%Y§ = param1.@alignV;
         this.§"3§ = param1.@scaleH;
         this.§``§ = param1.@scaleV;
         this.§`+§ = param1.@scaleFunction;
         this.§'8§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§=<§(_loc2_);
         this.§%`§(_loc3_);
      }
      
      private function §%`§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§;!E§ = true;
            }
         }
      }
      
      private function §=<§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§7;§ = true;
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
         this.§@§ = null;
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
         this.§'N§ = param1;
         this.mClip.visible = this.§'N§ && this.§`!C§;
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
         this.§`!C§ = param1;
         this.mClip.visible = this.§'N§ && this.§`!C§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§59§)
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
      
      public function getParentView() : §[H§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§@§)
         {
            this.§@§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§@§)
         {
            this.§@§.y = this.mClip.y;
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
         return this.§=;§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§8u§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§=;§ = param1;
         this.§=q§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§8u§ = param1;
         this.§=q§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
