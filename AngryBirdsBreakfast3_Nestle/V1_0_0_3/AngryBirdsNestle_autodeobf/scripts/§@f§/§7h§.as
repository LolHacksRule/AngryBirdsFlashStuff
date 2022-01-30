package §@f§
{
   import §3!!§.§5" §;
   import §=!7§.§1!7§;
   import §>!L§.§?!d§;
   import §[" §.§1"1§;
   import com.rovio.assets.§^1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §7h§ extends §&!"§
   {
       
      
      public var mParentContainer:§5" §;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §&h§:Boolean = false;
      
      public var §'!M§:Boolean = true;
      
      public var §1!K§:Boolean = false;
      
      public var §!!S§:Boolean = false;
      
      protected var §'!b§:§['§;
      
      private var §10§:Boolean = false;
      
      protected var §8f§:Boolean = false;
      
      private var §=!W§:Number;
      
      private var §,"2§:Number;
      
      private var §;@§:Number;
      
      private var §@l§:Number;
      
      private var §,;§:String;
      
      private var §4F§:String;
      
      private var §6i§:String;
      
      private var §+"4§:String;
      
      private var §1!q§:String;
      
      private var §9_§:String;
      
      private var §3"!§:Boolean = true;
      
      public function §7h§(param1:XML, param2:§5" §, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§5" § = param2;
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
            cls = §^1§.§+!I§(this.mName);
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
               §1!7§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§1!K§ = true;
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
            tmp = this.getParentView().§><§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§1!K§)
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
            this.§!!S§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§3"!§ = false;
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
         this.§;",§(data);
         this.§3a§(data);
      }
      
      private function §"`§() : void
      {
         if(this.§3"!§)
         {
            if(!this.§'!b§)
            {
               this.§'!b§ = new §['§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§;@§,this.§@l§,this.§,;§,this.§4F§,this.§6i§,this.§+"4§,this.§9_§,this.§1!q§);
            }
            this.§'!b§.§4h§(this.§=!W§,this.§,"2§);
            this.mClip.x = this.§'!b§.x;
            this.mClip.y = this.§'!b§.y;
            this.mClip.scaleX = this.§'!b§.scaleX;
            this.mClip.scaleY = this.§'!b§.scaleY;
         }
         if(this.§10§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§;@§,this.§@l§);
         }
      }
      
      private function §;",§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§=!W§ = _loc2_;
            this.§,"2§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§=!W§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§=!W§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§,"2§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§,"2§ = _loc3_;
            }
         }
         this.§;@§ = this.§=!W§;
         this.§@l§ = this.§,"2§;
      }
      
      private function §3a§(param1:XML) : void
      {
         this.§,;§ = param1.@alignH;
         this.§4F§ = param1.@alignV;
         this.§6i§ = param1.@scaleH;
         this.§+"4§ = param1.@scaleV;
         this.§1!q§ = param1.@scaleFunction;
         this.§9_§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§4H§(_loc2_);
         this.§!!_§(_loc3_);
      }
      
      private function §!!_§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§8f§ = true;
            }
         }
      }
      
      private function §4H§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§10§ = true;
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
         this.§'!b§ = null;
         this.§'!b§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!d§
      {
         var _loc3_:§?!d§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§'!M§ = param1;
         this.mClip.visible = this.§'!M§ && this.§&h§;
         if(this.visible)
         {
            §^!s§();
         }
         else
         {
            §`E§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§&h§ = param1;
         this.mClip.visible = this.§'!M§ && this.§&h§;
         if(this.visible)
         {
            §^!s§();
         }
         else
         {
            §`E§();
         }
         if(this.§!!S§)
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
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         if(this.mClip.mouseEnabled != param1)
         {
            this.mClip.mouseEnabled = param1;
            if(param2)
            {
               this.mClip.mouseChildren = param1;
            }
         }
      }
      
      public function getParentView() : §1"1§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§'!b§)
         {
            this.§'!b§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§'!b§)
         {
            this.§'!b§.y = this.mClip.y;
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
         return this.§=!W§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§,"2§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§=!W§ = param1;
         this.§"`§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§,"2§ = param1;
         this.§"`§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§8f§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§8f§ = param1;
      }
   }
}
