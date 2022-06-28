package §9Y§
{
   import §2h§.§'!^§;
   import §?!7§.§8;§;
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §9j§ extends §6!8§
   {
       
      
      public var mParentContainer:§8;§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §2c§:Boolean = false;
      
      public var §&!g§:Boolean = true;
      
      public var §`!V§:Boolean = false;
      
      public var §@!T§:Boolean = false;
      
      private var §2o§:§7!T§;
      
      private var §!m§:Boolean = false;
      
      protected var §&&§:Boolean = false;
      
      private var § !6§:Number;
      
      private var §0!j§:Number;
      
      private var §9I§:Number;
      
      private var §1I§:Number;
      
      private var §@b§:String;
      
      private var §3!%§:String;
      
      private var §=B§:String;
      
      private var §=!H§:String;
      
      private var §@!!§:String;
      
      private var §5w§:String;
      
      public function §9j§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§8;§ = param2;
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
            cls = §%!G§.§^!B§(this.mName);
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
               §!>§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§`!V§ = true;
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
            tmp = this.getParentView().§"!#§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§`!V§)
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
            this.§@!T§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§5!e§(data);
         this.§6!>§(data);
      }
      
      private function §[x§() : void
      {
         if(!this.§2o§)
         {
            this.§2o§ = new §7!T§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§9I§,this.§1I§,this.§@b§,this.§3!%§,this.§=B§,this.§=!H§,this.§5w§,this.§@!!§);
         }
         this.§2o§.§'!0§(this.§ !6§,this.§0!j§);
         this.mClip.x = this.§2o§.x;
         this.mClip.y = this.§2o§.y;
         this.mClip.scaleX = this.§2o§.scaleX;
         this.mClip.scaleY = this.§2o§.scaleY;
         if(this.§!m§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§9I§,this.§1I§);
         }
      }
      
      private function §5!e§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§ !6§ = _loc2_;
            this.§0!j§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§ !6§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§ !6§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§0!j§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§0!j§ = _loc3_;
            }
         }
         this.§9I§ = this.§ !6§;
         this.§1I§ = this.§0!j§;
      }
      
      private function §6!>§(param1:XML) : void
      {
         this.§@b§ = param1.@alignH;
         this.§3!%§ = param1.@alignV;
         this.§=B§ = param1.@scaleH;
         this.§=!H§ = param1.@scaleV;
         this.§@!!§ = param1.@scaleFunction;
         this.§5w§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§9!§(_loc2_);
         this.§,K§(_loc3_);
      }
      
      private function §,K§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§&&§ = true;
            }
         }
      }
      
      private function §9!§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§!m§ = true;
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
         this.§2o§ = null;
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
         this.§&!g§ = param1;
         this.mClip.visible = this.§&!g§ && this.§2c§;
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
         this.§2c§ = param1;
         this.mClip.visible = this.§&!g§ && this.§2c§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§@!T§)
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
      
      public function getParentView() : §'!^§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§2o§)
         {
            this.§2o§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§2o§)
         {
            this.§2o§.y = this.mClip.y;
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
         return this.§ !6§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§0!j§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§ !6§ = param1;
         this.§[x§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§0!j§ = param1;
         this.§[x§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§&&§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§&&§ = param1;
      }
   }
}
