package §;n§
{
   import §#M§.§^0§;
   import §-B§.§?!j§;
   import §[x§.§%3§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&G§ extends §^!;§
   {
       
      
      public var mParentContainer:§?!j§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §'"J§:Boolean = false;
      
      public var §3!Y§:Boolean = true;
      
      public var §`i§:Boolean = false;
      
      public var §^!v§:Boolean = false;
      
      private var §-!q§:§,!A§;
      
      private var §"9§:Boolean = false;
      
      protected var §;!E§:Boolean = false;
      
      private var §8!4§:Number;
      
      private var §`P§:Number;
      
      private var §&"@§:Number;
      
      private var §-!N§:Number;
      
      private var §`!V§:String;
      
      private var §#A§:String;
      
      private var §5s§:String;
      
      private var §]!E§:String;
      
      private var §[o§:String;
      
      private var §&6§:String;
      
      public function §&G§(param1:XML, param2:§?!j§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§?!j§ = param2;
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
            cls = §>"5§.§6s§(this.mName);
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
               §%3§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§`i§ = true;
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
            tmp = this.getParentView().§!M§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§`i§)
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
            this.§^!v§ = true;
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
         this.§ get§(data);
         this.§<!Y§(data);
      }
      
      private function §`!N§() : void
      {
         if(!this.§-!q§)
         {
            this.§-!q§ = new §,!A§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§&"@§,this.§-!N§,this.§`!V§,this.§#A§,this.§5s§,this.§]!E§,this.§&6§,this.§[o§);
         }
         this.§-!q§.§7,§(this.§8!4§,this.§`P§);
         this.mClip.x = this.§-!q§.x;
         this.mClip.y = this.§-!q§.y;
         this.mClip.scaleX = this.§-!q§.scaleX;
         this.mClip.scaleY = this.§-!q§.scaleY;
         if(this.§"9§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§&"@§,this.§-!N§);
         }
      }
      
      private function § get§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§8!4§ = _loc2_;
            this.§`P§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§8!4§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§8!4§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§`P§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§`P§ = _loc3_;
            }
         }
         this.§&"@§ = this.§8!4§;
         this.§-!N§ = this.§`P§;
      }
      
      private function §<!Y§(param1:XML) : void
      {
         this.§`!V§ = param1.@alignH;
         this.§#A§ = param1.@alignV;
         this.§5s§ = param1.@scaleH;
         this.§]!E§ = param1.@scaleV;
         this.§[o§ = param1.@scaleFunction;
         this.§&6§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§"8§(_loc2_);
         this.§[!J§(_loc3_);
      }
      
      private function §[!J§(param1:String) : void
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
      
      private function §"8§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§"9§ = true;
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
         this.§-!q§ = null;
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
         this.§3!Y§ = param1;
         this.mClip.visible = this.§3!Y§ && this.§'"J§;
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
         this.§'"J§ = param1;
         this.mClip.visible = this.§3!Y§ && this.§'"J§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§^!v§)
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
      
      public function getParentView() : §^0§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§-!q§)
         {
            this.§-!q§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§-!q§)
         {
            this.§-!q§.y = this.mClip.y;
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
         return this.§8!4§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§`P§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§8!4§ = param1;
         this.§`!N§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§`P§ = param1;
         this.§`!N§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§;!E§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§;!E§ = param1;
      }
   }
}
