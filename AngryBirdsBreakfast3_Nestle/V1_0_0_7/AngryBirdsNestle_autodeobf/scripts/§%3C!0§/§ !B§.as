package §<!0§
{
   import § !Q§.§"D§;
   import §"V§.§]j§;
   import §>P§.§]"4§;
   import §^6§.§;!j§;
   import com.rovio.assets.§[O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class § !B§ extends §'!%§
   {
       
      
      public var mParentContainer:§]"4§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §"!h§:Boolean = false;
      
      public var §<!Q§:Boolean = true;
      
      public var §4!a§:Boolean = false;
      
      public var §`j§:Boolean = false;
      
      protected var §7!a§:§&!u§;
      
      private var §5Y§:Boolean = false;
      
      protected var §[!T§:Boolean = false;
      
      private var §-!k§:Number;
      
      private var §]v§:Number;
      
      private var §5f§:Number;
      
      private var §`"'§:Number;
      
      private var §#""§:String;
      
      private var §+!R§:String;
      
      private var §#S§:String;
      
      private var §`!"§:String;
      
      private var §-V§:String;
      
      private var §2!8§:String;
      
      private var §]!,§:Boolean = true;
      
      public function § !B§(param1:XML, param2:§]"4§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§]"4§ = param2;
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
            cls = §[O§.§1s§(this.mName);
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
               §"D§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§4!a§ = true;
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
            tmp = this.getParentView().§0k§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§4!a§)
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
            this.§`j§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§]!,§ = false;
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
         this.§+P§(data);
         this.§6!P§(data);
      }
      
      private function §,!L§() : void
      {
         if(this.§]!,§)
         {
            if(!this.§7!a§)
            {
               this.§7!a§ = new §&!u§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§5f§,this.§`"'§,this.§#""§,this.§+!R§,this.§#S§,this.§`!"§,this.§2!8§,this.§-V§);
            }
            this.§7!a§.§?B§(this.§-!k§,this.§]v§);
            this.mClip.x = this.§7!a§.x;
            this.mClip.y = this.§7!a§.y;
            this.mClip.scaleX = this.§7!a§.scaleX;
            this.mClip.scaleY = this.§7!a§.scaleY;
         }
         if(this.§5Y§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§5f§,this.§`"'§);
         }
      }
      
      private function §+P§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§-!k§ = _loc2_;
            this.§]v§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§-!k§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§-!k§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§]v§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§]v§ = _loc3_;
            }
         }
         this.§5f§ = this.§-!k§;
         this.§`"'§ = this.§]v§;
      }
      
      private function §6!P§(param1:XML) : void
      {
         this.§#""§ = param1.@alignH;
         this.§+!R§ = param1.@alignV;
         this.§#S§ = param1.@scaleH;
         this.§`!"§ = param1.@scaleV;
         this.§-V§ = param1.@scaleFunction;
         this.§2!8§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§],§(_loc2_);
         this.§4§(_loc3_);
      }
      
      private function §4§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§[!T§ = true;
            }
         }
      }
      
      private function §],§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§5Y§ = true;
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
         this.§7!a§ = null;
         this.§7!a§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]j§
      {
         var _loc3_:§]j§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§<!Q§ = param1;
         this.mClip.visible = this.§<!Q§ && this.§"!h§;
         if(this.visible)
         {
            §6s§();
         }
         else
         {
            §;!§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§"!h§ = param1;
         this.mClip.visible = this.§<!Q§ && this.§"!h§;
         if(this.visible)
         {
            §6s§();
         }
         else
         {
            §;!§();
         }
         if(this.§`j§)
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
      
      public function getParentView() : §;!j§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§7!a§)
         {
            this.§7!a§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§7!a§)
         {
            this.§7!a§.y = this.mClip.y;
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
         return this.§-!k§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§]v§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§-!k§ = param1;
         this.§,!L§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§]v§ = param1;
         this.§,!L§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§[!T§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§[!T§ = param1;
      }
   }
}
