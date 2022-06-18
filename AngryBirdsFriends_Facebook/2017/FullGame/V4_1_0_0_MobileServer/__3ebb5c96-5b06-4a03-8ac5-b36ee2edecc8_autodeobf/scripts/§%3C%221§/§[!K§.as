package §<"1§
{
   import §%#A§.§]!_§;
   import §8#D§.§#E§;
   import §<"p§.§?!T§;
   import §<o§.§3h§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §[!K§ extends §'"S§
   {
       
      
      public var mParentContainer:§]!_§;
      
      public var mClip:MovieClip;
      
      protected var §;!p§:String;
      
      private var § #?§:String;
      
      public var §!!9§:Boolean = false;
      
      public var §%#;§:Boolean = true;
      
      public var §!`§:Boolean = false;
      
      public var §9Q§:Boolean = false;
      
      protected var §9!]§:§2![§;
      
      private var §,!M§:Boolean = false;
      
      protected var §?!G§:Boolean = false;
      
      private var §0?§:Number;
      
      private var §,#k§:Number;
      
      private var §+$>§:Number;
      
      private var §^#x§:Number;
      
      private var §?"T§:String;
      
      private var §!$<§:String;
      
      private var §8!6§:String;
      
      private var §8"E§:String;
      
      private var §98§:String;
      
      private var §4X§:String;
      
      private var §7i§:Boolean = true;
      
      public function §[!K§(param1:XML, param2:§]!_§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§]!_§ = param2;
         var clip:MovieClip = param3;
         this.mParentContainer = parentContainer;
         this.§;!p§ = data.@name;
         this.§ #?§ = this.§;!p§.toUpperCase();
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
            cls = §+$#§.§["`§(this.name);
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
               §?!T§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§!`§ = true;
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
            tmp = this.getParentView().§>#W§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§!`§)
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
            this.§9Q§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§7i§ = false;
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
         this.§1l§(data);
         this.§%!j§(data);
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      public function get upperCaseName() : String
      {
         return this.§ #?§;
      }
      
      private function §6"u§() : void
      {
         if(this.§7i§)
         {
            if(!this.§9!]§)
            {
               this.§9!]§ = new §2![§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§+$>§,this.§^#x§,this.§?"T§,this.§!$<§,this.§8!6§,this.§8"E§,this.§4X§,this.§98§);
            }
            this.§9!]§.§["2§(this.§0?§,this.§,#k§);
            this.mClip.x = this.§9!]§.x;
            this.mClip.y = this.§9!]§.y;
            this.mClip.scaleX = this.§9!]§.scaleX;
            this.mClip.scaleY = this.§9!]§.scaleY;
         }
         if(this.§,!M§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§+$>§,this.§^#x§);
         }
      }
      
      private function §1l§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§0?§ = _loc2_;
            this.§,#k§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§0?§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§0?§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§,#k§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§,#k§ = _loc3_;
            }
         }
         this.§+$>§ = this.§0?§;
         this.§^#x§ = this.§,#k§;
      }
      
      private function §%!j§(param1:XML) : void
      {
         this.§?"T§ = param1.@alignH;
         this.§!$<§ = param1.@alignV;
         this.§8!6§ = param1.@scaleH;
         this.§8"E§ = param1.@scaleV;
         this.§98§ = param1.@scaleFunction;
         this.§4X§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§#Y§(_loc2_);
         this.§&#A§(_loc3_);
      }
      
      private function §&#A§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§?!G§ = true;
            }
         }
      }
      
      private function §#Y§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§,!M§ = true;
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
         this.§9!]§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3h§
      {
         var _loc3_:§3h§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§%#;§ = param1;
         this.mClip.visible = this.§%#;§ && this.§!!9§;
         if(this.visible)
         {
            §@!m§();
         }
         else
         {
            §"!O§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§!!9§ = param1;
         this.mClip.visible = this.§%#;§ && this.§!!9§;
         if(this.visible)
         {
            §@!m§();
         }
         else
         {
            §"!O§();
         }
         if(this.§9Q§)
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
      
      public function getParentView() : §#E§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§9!]§)
         {
            this.§9!]§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§9!]§)
         {
            this.§9!]§.y = this.mClip.y;
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
         if(this.§9!]§)
         {
            this.§9!]§.scaleX = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mClip.scaleX;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.mClip.scaleY = param1;
         if(this.§9!]§)
         {
            this.§9!]§.scaleY = param1;
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
         return this.§0?§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§,#k§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§0?§ = param1;
         this.§6"u§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§,#k§ = param1;
         this.§6"u§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§?!G§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§?!G§ = param1;
      }
   }
}
