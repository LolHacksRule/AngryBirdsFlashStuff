package §`!0§
{
   import §0w§.§0#§;
   import §4C§.§1!=§;
   import §>K§.§9X§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §4Y§ extends §"?§
   {
       
      
      public var mParentContainer:§1!=§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §>U§:Boolean = false;
      
      public var §2!-§:Boolean = true;
      
      public var §&I§:Boolean = false;
      
      public var §?=§:Boolean = false;
      
      private var §6T§:§2+§;
      
      private var §?!G§:Boolean = false;
      
      protected var get:Boolean = false;
      
      private var §`i§:Number;
      
      private var §!j§:Number;
      
      private var §8!D§:Number;
      
      private var §%I§:Number;
      
      private var §3!B§:String;
      
      private var §-Q§:String;
      
      private var §]P§:String;
      
      private var §-=§:String;
      
      private var §3!@§:String;
      
      private var §[6§:String;
      
      public function §4Y§(param1:XML, param2:§1!=§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§1!=§ = param2;
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
            cls = §!Q§.§^!H§(this.mName);
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
               §9X§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§&I§ = true;
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
            tmp = this.getParentView().§&g§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§&I§)
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
            this.§?=§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§+c§(data);
         this.§&!=§(data);
      }
      
      private function §with§() : void
      {
         if(!this.§6T§)
         {
            this.§6T§ = new §2+§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§8!D§,this.§%I§,this.§3!B§,this.§-Q§,this.§]P§,this.§-=§,this.§[6§,this.§3!@§);
         }
         this.§6T§.§3!3§(this.§`i§,this.§!j§);
         this.mClip.x = this.§6T§.x;
         this.mClip.y = this.§6T§.y;
         this.mClip.scaleX = this.§6T§.scaleX;
         this.mClip.scaleY = this.§6T§.scaleY;
         if(this.§?!G§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§8!D§,this.§%I§);
         }
      }
      
      private function §+c§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§`i§ = _loc2_;
            this.§!j§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§`i§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§`i§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§!j§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§!j§ = _loc3_;
            }
         }
         this.§8!D§ = this.§`i§;
         this.§%I§ = this.§!j§;
      }
      
      private function §&!=§(param1:XML) : void
      {
         this.§3!B§ = param1.@alignH;
         this.§-Q§ = param1.@alignV;
         this.§]P§ = param1.@scaleH;
         this.§-=§ = param1.@scaleV;
         this.§3!@§ = param1.@scaleFunction;
         this.§[6§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§]&§(_loc2_);
         this.§5=§(_loc3_);
      }
      
      private function §5=§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.get = true;
            }
         }
      }
      
      private function §]&§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§?!G§ = true;
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
         this.§6T§ = null;
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
         this.§2!-§ = param1;
         this.mClip.visible = this.§2!-§ && this.§>U§;
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
         this.§>U§ = param1;
         this.mClip.visible = this.§2!-§ && this.§>U§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§?=§)
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
      
      public function getParentView() : §0#§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§6T§)
         {
            this.§6T§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§6T§)
         {
            this.§6T§.y = this.mClip.y;
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
         return this.§`i§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§!j§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§`i§ = param1;
         this.§with§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§!j§ = param1;
         this.§with§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.get;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.get = param1;
      }
   }
}
