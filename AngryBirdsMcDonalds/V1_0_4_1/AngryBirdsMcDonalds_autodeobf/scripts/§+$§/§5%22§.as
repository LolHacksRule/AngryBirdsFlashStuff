package §+$§
{
   import §0i§.§4!%§;
   import §3<§.§-2§;
   import §<l§.§@0§;
   import §[h§.§ !&§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §5"§ extends §[!a§
   {
       
      
      public var mParentContainer:§ !&§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §<!Y§:Boolean = false;
      
      public var §&!<§:Boolean = true;
      
      public var §2!q§:Boolean = false;
      
      public var §6!§:Boolean = false;
      
      private var §,Y§:§;!K§;
      
      private var §1P§:Boolean = false;
      
      protected var §3o§:Boolean = false;
      
      private var §`e§:Number;
      
      private var §9!A§:Number;
      
      private var §default§:Number;
      
      private var §^!N§:Number;
      
      private var §9!I§:String;
      
      private var §&!n§:String;
      
      private var §@`§:String;
      
      private var §1!M§:String;
      
      private var §?b§:String;
      
      private var §+1§:String;
      
      public function §5"§(param1:XML, param2:§ !&§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§ !&§ = param2;
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
            cls = §@0§.§5+§(this.mName);
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
               §4!%§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§2!q§ = true;
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
            tmp = this.getParentView().§%!C§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§2!q§)
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
            this.§6!§ = true;
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
         this.§ Q§(data);
         this.§?!2§(data);
      }
      
      private function §;!<§() : void
      {
         if(!this.§,Y§)
         {
            this.§,Y§ = new §;!K§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§default§,this.§^!N§,this.§9!I§,this.§&!n§,this.§@`§,this.§1!M§,this.§+1§,this.§?b§);
         }
         this.§,Y§.§2!]§(this.§`e§,this.§9!A§);
         this.mClip.x = this.§,Y§.x;
         this.mClip.y = this.§,Y§.y;
         this.mClip.scaleX = this.§,Y§.scaleX;
         this.mClip.scaleY = this.§,Y§.scaleY;
         if(this.§1P§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§default§,this.§^!N§);
         }
      }
      
      private function § Q§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§`e§ = _loc2_;
            this.§9!A§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§`e§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§`e§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§9!A§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§9!A§ = _loc3_;
            }
         }
         this.§default§ = this.§`e§;
         this.§^!N§ = this.§9!A§;
      }
      
      private function §?!2§(param1:XML) : void
      {
         this.§9!I§ = param1.@alignH;
         this.§&!n§ = param1.@alignV;
         this.§@`§ = param1.@scaleH;
         this.§1!M§ = param1.@scaleV;
         this.§?b§ = param1.@scaleFunction;
         this.§+1§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§?+§(_loc2_);
         this.§,C§(_loc3_);
      }
      
      private function §,C§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§3o§ = true;
            }
         }
      }
      
      private function §?+§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§1P§ = true;
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
         this.§,Y§ = null;
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
         this.§&!<§ = param1;
         this.mClip.visible = this.§&!<§ && this.§<!Y§;
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
         this.§<!Y§ = param1;
         this.mClip.visible = this.§&!<§ && this.§<!Y§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§6!§)
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
      
      public function getParentView() : §-2§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§,Y§)
         {
            this.§,Y§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§,Y§)
         {
            this.§,Y§.y = this.mClip.y;
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
         return this.§`e§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§9!A§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§`e§ = param1;
         this.§;!<§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§9!A§ = param1;
         this.§;!<§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§3o§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§3o§ = param1;
      }
   }
}
