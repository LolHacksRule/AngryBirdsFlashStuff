package §^r§
{
   import §"A§.§?3§;
   import §-!6§.§>I§;
   import §1q§.§-!+§;
   import §7f§.§?i§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class § ^§ extends §>`§
   {
       
      
      public var mParentContainer:§?i§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §"S§:Boolean = false;
      
      public var §9!;§:Boolean = true;
      
      public var §%!&§:Boolean = false;
      
      public var §0!!§:Boolean = false;
      
      private var §-v§:§`!S§;
      
      private var §=!W§:Boolean = false;
      
      protected var §3?§:Boolean = false;
      
      private var §,!R§:Number;
      
      private var §^!]§:Number;
      
      private var §0R§:Number;
      
      private var §]f§:Number;
      
      private var §;R§:String;
      
      private var §[j§:String;
      
      private var §?l§:String;
      
      private var §7!7§:String;
      
      private var §6§:String;
      
      private var §2e§:String;
      
      public function § ^§(param1:XML, param2:§?i§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§?i§ = param2;
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
            cls = §-!+§.§"x§(this.mName);
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
               §>I§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§%!&§ = true;
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
            tmp = this.getParentView().§7#§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§%!&§)
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
            this.§0!!§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§?J§(data);
         this.§1!B§(data);
      }
      
      private function §83§() : void
      {
         if(!this.§-v§)
         {
            this.§-v§ = new §`!S§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§0R§,this.§]f§,this.§;R§,this.§[j§,this.§?l§,this.§7!7§,this.§2e§,this.§6§);
         }
         this.§-v§.§!!9§(this.§,!R§,this.§^!]§);
         this.mClip.x = this.§-v§.x;
         this.mClip.y = this.§-v§.y;
         this.mClip.scaleX = this.§-v§.scaleX;
         this.mClip.scaleY = this.§-v§.scaleY;
         if(this.§=!W§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§0R§,this.§]f§);
         }
      }
      
      private function §?J§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§,!R§ = _loc2_;
            this.§^!]§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§,!R§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§,!R§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§^!]§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§^!]§ = _loc3_;
            }
         }
         this.§0R§ = this.§,!R§;
         this.§]f§ = this.§^!]§;
      }
      
      private function §1!B§(param1:XML) : void
      {
         this.§;R§ = param1.@alignH;
         this.§[j§ = param1.@alignV;
         this.§?l§ = param1.@scaleH;
         this.§7!7§ = param1.@scaleV;
         this.§6§ = param1.@scaleFunction;
         this.§2e§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§8S§(_loc2_);
         this.§`x§(_loc3_);
      }
      
      private function §`x§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§3?§ = true;
            }
         }
      }
      
      private function §8S§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§=!W§ = true;
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
         this.§-v§ = null;
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
         this.§9!;§ = param1;
         this.mClip.visible = this.§9!;§ && this.§"S§;
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
         this.§"S§ = param1;
         this.mClip.visible = this.§9!;§ && this.§"S§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§0!!§)
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
      
      public function getParentView() : §?3§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§-v§)
         {
            this.§-v§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§-v§)
         {
            this.§-v§.y = this.mClip.y;
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
         return this.§,!R§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§^!]§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§,!R§ = param1;
         this.§83§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§^!]§ = param1;
         this.§83§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§3?§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§3?§ = param1;
      }
   }
}
