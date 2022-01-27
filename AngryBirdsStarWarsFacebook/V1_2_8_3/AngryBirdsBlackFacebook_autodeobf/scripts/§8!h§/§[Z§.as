package §8!h§
{
   import §9"`§.§-"H§;
   import §=!4§.§8"U§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §[Z§ extends §-V§
   {
       
      
      public var mParentContainer:§@!8§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §["1§:Boolean = false;
      
      public var §="=§:Boolean = true;
      
      public var §%[§:Boolean = false;
      
      public var §7!e§:Boolean = false;
      
      protected var §""e§:§;<§;
      
      private var §5L§:Boolean = false;
      
      protected var §@!a§:Boolean = false;
      
      private var §5"[§:Number;
      
      private var §%"8§:Number;
      
      private var §+!%§:Number;
      
      private var §5"F§:Number;
      
      private var §#a§:String;
      
      private var §4E§:String;
      
      private var §!!"§:String;
      
      private var §%!j§:String;
      
      private var §3"i§:String;
      
      private var §'"G§:String;
      
      private var §=@§:Boolean = true;
      
      public function §[Z§(param1:XML, param2:§@!8§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§@!8§ = param2;
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
            cls = §%!Z§.§;",§(this.mName);
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
               §-"H§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§%[§ = true;
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
            tmp = this.getParentView().§?"5§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§%[§)
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
            this.§7!e§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§=@§ = false;
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
         this.§"!T§(data);
         this.§8!B§(data);
      }
      
      private function §4!]§() : void
      {
         if(this.§=@§)
         {
            if(!this.§""e§)
            {
               this.§""e§ = new §;<§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§+!%§,this.§5"F§,this.§#a§,this.§4E§,this.§!!"§,this.§%!j§,this.§'"G§,this.§3"i§);
            }
            this.§""e§.§&!0§(this.§5"[§,this.§%"8§);
            this.mClip.x = this.§""e§.x;
            this.mClip.y = this.§""e§.y;
            this.mClip.scaleX = this.§""e§.scaleX;
            this.mClip.scaleY = this.§""e§.scaleY;
         }
         if(this.§5L§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§+!%§,this.§5"F§);
         }
      }
      
      private function §"!T§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§5"[§ = _loc2_;
            this.§%"8§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§5"[§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§5"[§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§%"8§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§%"8§ = _loc3_;
            }
         }
         this.§+!%§ = this.§5"[§;
         this.§5"F§ = this.§%"8§;
      }
      
      private function §8!B§(param1:XML) : void
      {
         this.§#a§ = param1.@alignH;
         this.§4E§ = param1.@alignV;
         this.§!!"§ = param1.@scaleH;
         this.§%!j§ = param1.@scaleV;
         this.§3"i§ = param1.@scaleFunction;
         this.§'"G§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§"#'§(_loc2_);
         this.§9!D§(_loc3_);
      }
      
      private function §9!D§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§@!a§ = true;
            }
         }
      }
      
      private function §"#'§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§5L§ = true;
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
         this.§""e§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"U§
      {
         var _loc3_:§8"U§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§="=§ = param1;
         this.mClip.visible = this.§="=§ && this.§["1§;
         if(this.visible)
         {
            §[!-§();
         }
         else
         {
            §,!M§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§["1§ = param1;
         this.mClip.visible = this.§="=§ && this.§["1§;
         if(this.visible)
         {
            §[!-§();
         }
         else
         {
            §,!M§();
         }
         if(this.§7!e§)
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
      
      public function getParentView() : §4Z§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§""e§)
         {
            this.§""e§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§""e§)
         {
            this.§""e§.y = this.mClip.y;
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
         return this.§5"[§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§%"8§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§5"[§ = param1;
         this.§4!]§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§%"8§ = param1;
         this.§4!]§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§@!a§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§@!a§ = param1;
      }
   }
}
