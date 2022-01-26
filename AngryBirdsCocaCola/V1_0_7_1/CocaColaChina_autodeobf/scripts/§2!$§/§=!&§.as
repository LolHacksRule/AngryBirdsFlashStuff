package §2!$§
{
   import §!E§.§-!%§;
   import §%!G§.§ !G§;
   import §?@§.§"]§;
   import §^!L§.§@x§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §=!&§ extends §<!%§
   {
       
      
      public var mParentContainer:§-!%§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §3![§:Boolean = false;
      
      public var §"y§:Boolean = true;
      
      public var §?R§:Boolean = false;
      
      public var §&y§:Boolean = false;
      
      private var §'T§:§,8§;
      
      private var §'[§:Boolean = false;
      
      protected var §7!A§:Boolean = false;
      
      private var §?!?§:Number;
      
      private var §@!a§:Number;
      
      private var §4+§:Number;
      
      private var §`'§:Number;
      
      private var §+N§:String;
      
      private var §[&§:String;
      
      private var §4!5§:String;
      
      private var §3I§:String;
      
      private var §<^§:String;
      
      private var §#B§:String;
      
      public function §=!&§(param1:XML, param2:§-!%§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§-!%§ = param2;
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
            cls = §@x§.§="§(this.mName);
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
               §"]§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§?R§ = true;
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
            tmp = this.getParentView().§-!_§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§?R§)
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
            this.§&y§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§06§(data);
         this.§-!5§(data);
      }
      
      private function §^!$§() : void
      {
         if(!this.§'T§)
         {
            this.§'T§ = new §,8§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§4+§,this.§`'§,this.§+N§,this.§[&§,this.§4!5§,this.§3I§,this.§#B§,this.§<^§);
         }
         this.§'T§.§@!9§(this.§?!?§,this.§@!a§);
         this.mClip.x = this.§'T§.x;
         this.mClip.y = this.§'T§.y;
         this.mClip.scaleX = this.§'T§.scaleX;
         this.mClip.scaleY = this.§'T§.scaleY;
         if(this.§'[§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§4+§,this.§`'§);
         }
      }
      
      private function §06§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§?!?§ = _loc2_;
            this.§@!a§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§?!?§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§?!?§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§@!a§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§@!a§ = _loc3_;
            }
         }
         this.§4+§ = this.§?!?§;
         this.§`'§ = this.§@!a§;
      }
      
      private function §-!5§(param1:XML) : void
      {
         this.§+N§ = param1.@alignH;
         this.§[&§ = param1.@alignV;
         this.§4!5§ = param1.@scaleH;
         this.§3I§ = param1.@scaleV;
         this.§<^§ = param1.@scaleFunction;
         this.§#B§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§7!3§(_loc2_);
         this.§ W§(_loc3_);
      }
      
      private function § W§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§7!A§ = true;
            }
         }
      }
      
      private function §7!3§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§'[§ = true;
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
         this.§'T§ = null;
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
         this.§"y§ = param1;
         this.mClip.visible = this.§"y§ && this.§3![§;
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
         this.§3![§ = param1;
         this.mClip.visible = this.§"y§ && this.§3![§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§&y§)
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
      
      public function getParentView() : § !G§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§'T§)
         {
            this.§'T§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§'T§)
         {
            this.§'T§.y = this.mClip.y;
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
         return this.§?!?§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§@!a§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§?!?§ = param1;
         this.§^!$§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§@!a§ = param1;
         this.§^!$§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
