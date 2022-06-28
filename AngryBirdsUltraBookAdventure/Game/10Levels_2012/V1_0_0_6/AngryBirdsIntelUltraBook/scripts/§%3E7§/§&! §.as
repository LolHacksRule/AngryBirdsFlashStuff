package §>7§
{
   import §"x§.§-8§;
   import §1!E§.§#?§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&! § extends §,!c§
   {
       
      
      public var mParentContainer:§#?§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §=F§:Boolean = false;
      
      public var §8!N§:Boolean = true;
      
      public var §>`§:Boolean = false;
      
      public var §4§:Boolean = false;
      
      private var §8!a§:§>p§;
      
      private var §,!_§:Boolean = false;
      
      protected var §3x§:Boolean = false;
      
      private var §"!V§:Number;
      
      private var §-!e§:Number;
      
      private var §>!1§:Number;
      
      private var §1!w§:Number;
      
      private var §7R§:String;
      
      private var §5!Q§:String;
      
      private var §`!u§:String;
      
      private var §#F§:String;
      
      private var §7`§:String;
      
      private var §@!M§:String;
      
      public function §&! §(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§#?§ = param2;
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
            cls = §`!t§.§=J§(this.mName);
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
               §-8§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§>`§ = true;
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
            tmp = this.getParentView().§,1§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§>`§)
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
            this.§4§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§>!h§(data);
         this.§"m§(data);
      }
      
      private function §`F§() : void
      {
         if(!this.§8!a§)
         {
            this.§8!a§ = new §>p§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§>!1§,this.§1!w§,this.§7R§,this.§5!Q§,this.§`!u§,this.§#F§,this.§@!M§,this.§7`§);
         }
         this.§8!a§.§+_§(this.§"!V§,this.§-!e§);
         this.mClip.x = this.§8!a§.x;
         this.mClip.y = this.§8!a§.y;
         this.mClip.scaleX = this.§8!a§.scaleX;
         this.mClip.scaleY = this.§8!a§.scaleY;
         if(this.§,!_§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§>!1§,this.§1!w§);
         }
      }
      
      private function §>!h§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§"!V§ = _loc2_;
            this.§-!e§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§"!V§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§"!V§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§-!e§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§-!e§ = _loc3_;
            }
         }
         this.§>!1§ = this.§"!V§;
         this.§1!w§ = this.§-!e§;
      }
      
      private function §"m§(param1:XML) : void
      {
         this.§7R§ = param1.@alignH;
         this.§5!Q§ = param1.@alignV;
         this.§`!u§ = param1.@scaleH;
         this.§#F§ = param1.@scaleV;
         this.§7`§ = param1.@scaleFunction;
         this.§@!M§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§#!N§(_loc2_);
         this.§=!i§(_loc3_);
      }
      
      private function §=!i§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§3x§ = true;
            }
         }
      }
      
      private function §#!N§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§,!_§ = true;
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
         this.§8!a§ = null;
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
         this.§8!N§ = param1;
         this.mClip.visible = this.§8!N§ && this.§=F§;
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
         this.§=F§ = param1;
         this.mClip.visible = this.§8!N§ && this.§=F§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§4§)
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
      
      public function getParentView() : §4`§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§8!a§)
         {
            this.§8!a§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§8!a§)
         {
            this.§8!a§.y = this.mClip.y;
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
         return this.§"!V§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§-!e§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§"!V§ = param1;
         this.§`F§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§-!e§ = param1;
         this.§`F§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§3x§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§3x§ = param1;
      }
   }
}
