package §&!&§
{
   import §<!I§.§>"-§;
   import §<Z§.§7!!§;
   import §@!;§.§&F§;
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&"1§ extends §7!8§
   {
       
      
      public var mParentContainer:§>"-§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §]!L§:Boolean = false;
      
      public var §-!;§:Boolean = true;
      
      public var §=K§:Boolean = false;
      
      public var §5A§:Boolean = false;
      
      private var §#]§:§6!T§;
      
      private var §4!Q§:Boolean = false;
      
      protected var §]!z§:Boolean = false;
      
      private var §9!K§:Number;
      
      private var §@0§:Number;
      
      private var §[!m§:Number;
      
      private var §`""§:Number;
      
      private var §`!2§:String;
      
      private var §^!>§:String;
      
      private var §5!S§:String;
      
      private var §`c§:String;
      
      private var §8b§:String;
      
      private var §6e§:String;
      
      public function §&"1§(param1:XML, param2:§>"-§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§>"-§ = param2;
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
            cls = §8!q§.§2^§(this.mName);
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
               §&F§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§=K§ = true;
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
            tmp = this.getParentView().§;H§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§=K§)
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
            this.§5A§ = true;
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
         this.§]§(data);
         this.§+x§(data);
      }
      
      private function §!O§() : void
      {
         if(!this.§#]§)
         {
            this.§#]§ = new §6!T§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§[!m§,this.§`""§,this.§`!2§,this.§^!>§,this.§5!S§,this.§`c§,this.§6e§,this.§8b§);
         }
         this.§#]§.§9!l§(this.§9!K§,this.§@0§);
         this.mClip.x = this.§#]§.x;
         this.mClip.y = this.§#]§.y;
         this.mClip.scaleX = this.§#]§.scaleX;
         this.mClip.scaleY = this.§#]§.scaleY;
         if(this.§4!Q§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§[!m§,this.§`""§);
         }
      }
      
      private function §]§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§9!K§ = _loc2_;
            this.§@0§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§9!K§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§9!K§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§@0§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§@0§ = _loc3_;
            }
         }
         this.§[!m§ = this.§9!K§;
         this.§`""§ = this.§@0§;
      }
      
      private function §+x§(param1:XML) : void
      {
         this.§`!2§ = param1.@alignH;
         this.§^!>§ = param1.@alignV;
         this.§5!S§ = param1.@scaleH;
         this.§`c§ = param1.@scaleV;
         this.§8b§ = param1.@scaleFunction;
         this.§6e§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§8K§(_loc2_);
         this.§="6§(_loc3_);
      }
      
      private function §="6§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§]!z§ = true;
            }
         }
      }
      
      private function §8K§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§4!Q§ = true;
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
         this.§#]§ = null;
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
         this.§-!;§ = param1;
         this.mClip.visible = this.§-!;§ && this.§]!L§;
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
         this.§]!L§ = param1;
         this.mClip.visible = this.§-!;§ && this.§]!L§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§5A§)
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
      
      public function getParentView() : §7!!§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§#]§)
         {
            this.§#]§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§#]§)
         {
            this.§#]§.y = this.mClip.y;
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
         return this.§9!K§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§@0§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§9!K§ = param1;
         this.§!O§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§@0§ = param1;
         this.§!O§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§]!z§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§]!z§ = param1;
      }
   }
}
