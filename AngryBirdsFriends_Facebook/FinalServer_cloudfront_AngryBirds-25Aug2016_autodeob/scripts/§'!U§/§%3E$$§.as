package §'!U§
{
   import §!x§.§4"d§;
   import §3!T§.§3">§;
   import §6"r§.§0"<§;
   import §<!O§.§'k§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §>$$§ extends §0!?§
   {
       
      
      public var mParentContainer:§0"<§;
      
      public var mClip:MovieClip;
      
      protected var §2!4§:String;
      
      private var §6v§:String;
      
      public var §5!U§:Boolean = false;
      
      public var §null §:Boolean = true;
      
      public var §[#7§:Boolean = false;
      
      public var §2!`§:Boolean = false;
      
      protected var §&$'§:§4!]§;
      
      private var §,!t§:Boolean = false;
      
      protected var §%";§:Boolean = false;
      
      private var §1#u§:Number;
      
      private var §1V§:Number;
      
      private var §6"`§:Number;
      
      private var §=#K§:Number;
      
      private var §;!b§:String;
      
      private var §29§:String;
      
      private var § "D§:String;
      
      private var §'j§:String;
      
      private var §7#7§:String;
      
      private var §`!U§:String;
      
      private var §[!e§:Boolean = true;
      
      public function §>$$§(param1:XML, param2:§0"<§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§0"<§ = param2;
         var clip:MovieClip = param3;
         this.mParentContainer = parentContainer;
         this.§2!4§ = data.@name;
         this.§6v§ = this.§2!4§.toUpperCase();
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
            cls = §@`§.§4!i§(this.name);
            this.mClip = new cls();
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(this.mParentContainer)
         {
            this.mClip = this.mParentContainer.mClip.getChildByName(this.name) as MovieClip;
            if(this.mClip == null)
            {
               error = "Asset instance not found!! [" + this.name + "] parent: [" + this.mParentContainer.name + "]";
               §4"d§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§[#7§ = true;
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
            tmp = this.getParentView().§2#D§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§[#7§)
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
            this.§2!`§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§[!e§ = false;
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
         this.§="B§(data);
         this.§1!§(data);
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function get upperCaseName() : String
      {
         return this.§6v§;
      }
      
      private function §8"P§() : void
      {
         if(this.§[!e§)
         {
            if(!this.§&$'§)
            {
               this.§&$'§ = new §4!]§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§6"`§,this.§=#K§,this.§;!b§,this.§29§,this.§ "D§,this.§'j§,this.§`!U§,this.§7#7§);
            }
            this.§&$'§.§="6§(this.§1#u§,this.§1V§);
            this.mClip.x = this.§&$'§.x;
            this.mClip.y = this.§&$'§.y;
            this.mClip.scaleX = this.§&$'§.scaleX;
            this.mClip.scaleY = this.§&$'§.scaleY;
         }
         if(this.§,!t§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§6"`§,this.§=#K§);
         }
      }
      
      private function §="B§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§1#u§ = _loc2_;
            this.§1V§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§1#u§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§1#u§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§1V§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§1V§ = _loc3_;
            }
         }
         this.§6"`§ = this.§1#u§;
         this.§=#K§ = this.§1V§;
      }
      
      private function §1!§(param1:XML) : void
      {
         this.§;!b§ = param1.@alignH;
         this.§29§ = param1.@alignV;
         this.§ "D§ = param1.@scaleH;
         this.§'j§ = param1.@scaleV;
         this.§7#7§ = param1.@scaleFunction;
         this.§`!U§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§ !H§(_loc2_);
         this.§&$6§(_loc3_);
      }
      
      private function §&$6§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§%";§ = true;
            }
         }
      }
      
      private function § !H§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§,!t§ = true;
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
         this.mClip.stop();
         while(this.mClip.numChildren > 0)
         {
            this.mClip.removeChildAt(0);
         }
         this.mClip = null;
         this.§&$'§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3">§
      {
         var _loc3_:§3">§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§null § = param1;
         this.mClip.visible = this.§null § && this.§5!U§;
         if(this.visible)
         {
            §"!+§();
         }
         else
         {
            §"#]§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§5!U§ = param1;
         this.mClip.visible = this.§null § && this.§5!U§;
         if(this.visible)
         {
            §"!+§();
         }
         else
         {
            §"#]§();
         }
         if(this.§2!`§)
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
      
      public function getParentView() : §'k§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§&$'§)
         {
            this.§&$'§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§&$'§)
         {
            this.§&$'§.y = this.mClip.y;
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
      
      public function set scaleX(param1:Number) : void
      {
         this.mClip.scaleX = param1;
         if(this.§&$'§)
         {
            this.§&$'§.scaleX = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mClip.scaleX;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.mClip.scaleY = param1;
         if(this.§&$'§)
         {
            this.§&$'§.scaleY = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.mClip.scaleY;
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
         return this.§1#u§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§1V§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§1#u§ = param1;
         this.§8"P§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§1V§ = param1;
         this.§8"P§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§%";§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§%";§ = param1;
      }
   }
}
