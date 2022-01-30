package §<8§
{
   import §0!d§.§7!a§;
   import §4!t§.§=p§;
   import §9!G§.§]!e§;
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'X§ extends §7!n§
   {
       
      
      public var mParentContainer:§7!a§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §7!§:Boolean = false;
      
      public var §>!L§:Boolean = true;
      
      public var § ! §:Boolean = false;
      
      public var §0!g§:Boolean = false;
      
      private var §8"3§:§-f§;
      
      private var §?Z§:Boolean = false;
      
      protected var §+![§:Boolean = false;
      
      private var §!"+§:Number;
      
      private var §'!p§:Number;
      
      private var §0"3§:Number;
      
      private var §-!,§:Number;
      
      private var §6&§:String;
      
      private var §<!H§:String;
      
      private var §1!G§:String;
      
      private var §6!!§:String;
      
      private var §'$§:String;
      
      private var §9d§:String;
      
      public function §'X§(param1:XML, param2:§7!a§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§7!a§ = param2;
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
            cls = §5!+§.§,]§(this.mName);
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
               §]!e§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§ ! § = true;
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
            tmp = this.getParentView().§^![§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§ ! §)
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
            this.§0!g§ = true;
            this.mClip.stop();
         }
         var targetSprite:Sprite = this.mClip;
         if(this.mClip.MouseHitArea)
         {
            this.mClip.MouseHitArea.alpha = 0;
            targetSprite = this.mClip.MouseHitArea;
         }
         super(targetSprite);
         this.readInitialVisibility(data);
         this.§34§(data);
         this.§4=§(data);
      }
      
      private function §=!^§() : void
      {
         if(!this.§8"3§)
         {
            this.§8"3§ = new §-f§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§0"3§,this.§-!,§,this.§6&§,this.§<!H§,this.§1!G§,this.§6!!§,this.§9d§,this.§'$§);
         }
         this.§8"3§.§]!K§(this.§!"+§,this.§'!p§);
         this.mClip.x = this.§8"3§.x;
         this.mClip.y = this.§8"3§.y;
         this.mClip.scaleX = this.§8"3§.scaleX;
         this.mClip.scaleY = this.§8"3§.scaleY;
         if(this.§?Z§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§0"3§,this.§-!,§);
         }
      }
      
      private function §34§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§!"+§ = _loc2_;
            this.§'!p§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§!"+§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§!"+§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§'!p§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§'!p§ = _loc3_;
            }
         }
         this.§0"3§ = this.§!"+§;
         this.§-!,§ = this.§'!p§;
      }
      
      private function §4=§(param1:XML) : void
      {
         this.§6&§ = param1.@alignH;
         this.§<!H§ = param1.@alignV;
         this.§1!G§ = param1.@scaleH;
         this.§6!!§ = param1.@scaleV;
         this.§'$§ = param1.@scaleFunction;
         this.§9d§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§ n§(_loc2_);
         this.§]<§(_loc3_);
      }
      
      private function §]<§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§+![§ = true;
            }
         }
      }
      
      private function § n§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§?Z§ = true;
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
         this.§8"3§ = null;
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
         this.§>!L§ = param1;
         this.mClip.visible = this.§>!L§ && this.§7!§;
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
         this.§7!§ = param1;
         this.mClip.visible = this.§>!L§ && this.§7!§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§0!g§)
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
      
      public function getParentView() : §=p§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§8"3§)
         {
            this.§8"3§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§8"3§)
         {
            this.§8"3§.y = this.mClip.y;
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
         return this.§!"+§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§'!p§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§!"+§ = param1;
         this.§=!^§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§'!p§ = param1;
         this.§=!^§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§+![§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§+![§ = param1;
      }
   }
}
