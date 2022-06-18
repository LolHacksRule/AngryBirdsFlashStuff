package §+n§
{
   import §-p§.§&2§;
   import §3'§.§8I§;
   import §[R§.§5h§;
   import com.rovio.assets.§53§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&+§ extends §^!%§
   {
       
      
      public var mParentContainer:§8I§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §;M§:Boolean = false;
      
      public var §,^§:Boolean = true;
      
      public var §66§:Boolean = false;
      
      public var §'l§:Boolean = false;
      
      private var §!@§:§[=§;
      
      private var §<#§:Boolean = false;
      
      protected var §;#§:Boolean = false;
      
      private var §!"§:Number;
      
      private var §6!E§:Number;
      
      private var §5!$§:Number;
      
      private var § !B§:Number;
      
      private var §3!1§:String;
      
      private var §3X§:String;
      
      private var §@b§:String;
      
      private var §=Q§:String;
      
      private var §?L§:String;
      
      private var §`x§:String;
      
      public function §&+§(param1:XML, param2:§8I§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§8I§ = param2;
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
            cls = §53§.§[N§(this.mName);
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
               §&2§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§66§ = true;
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
            tmp = this.getParentView().§?x§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§66§)
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
            this.§'l§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§1z§(data);
         this.§]!5§(data);
      }
      
      private function §%Y§() : void
      {
         if(!this.§!@§)
         {
            this.§!@§ = new §[=§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§5!$§,this.§ !B§,this.§3!1§,this.§3X§,this.§@b§,this.§=Q§,this.§`x§,this.§?L§);
         }
         this.§!@§.§&!>§(this.§!"§,this.§6!E§);
         this.mClip.x = this.§!@§.x;
         this.mClip.y = this.§!@§.y;
         this.mClip.scaleX = this.§!@§.scaleX;
         this.mClip.scaleY = this.§!@§.scaleY;
         if(this.§<#§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§5!$§,this.§ !B§);
         }
      }
      
      private function §1z§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§!"§ = _loc2_;
            this.§6!E§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§!"§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§!"§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§6!E§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§6!E§ = _loc3_;
            }
         }
         this.§5!$§ = this.§!"§;
         this.§ !B§ = this.§6!E§;
      }
      
      private function §]!5§(param1:XML) : void
      {
         this.§3!1§ = param1.@alignH;
         this.§3X§ = param1.@alignV;
         this.§@b§ = param1.@scaleH;
         this.§=Q§ = param1.@scaleV;
         this.§?L§ = param1.@scaleFunction;
         this.§`x§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§1;§(_loc2_);
         this.§8r§(_loc3_);
      }
      
      private function §8r§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§;#§ = true;
            }
         }
      }
      
      private function §1;§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§<#§ = true;
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
         this.§!@§ = null;
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
         this.§,^§ = param1;
         this.mClip.visible = this.§,^§ && this.§;M§;
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
         this.§;M§ = param1;
         this.mClip.visible = this.§,^§ && this.§;M§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§'l§)
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
      
      public function getParentView() : §5h§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§!@§)
         {
            this.§!@§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§!@§)
         {
            this.§!@§.y = this.mClip.y;
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
         return this.§!"§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§6!E§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§!"§ = param1;
         this.§%Y§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§6!E§ = param1;
         this.§%Y§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§;#§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§;#§ = param1;
      }
   }
}
