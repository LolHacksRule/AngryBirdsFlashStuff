package §=R§
{
   import §1n§.§ C§;
   import §6z§.§[g§;
   import §`M§.§9!#§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&W§ extends §7!"§
   {
       
      
      public var mParentContainer:§9!#§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §@!"§:Boolean = false;
      
      public var §2]§:Boolean = true;
      
      public var §&!&§:Boolean = false;
      
      public var §@h§:Boolean = false;
      
      private var §-q§:§4x§;
      
      private var §62§:Boolean = false;
      
      protected var §"!E§:Boolean = false;
      
      private var §1z§:Number;
      
      private var §3C§:Number;
      
      private var §%W§:Number;
      
      private var §@C§:Number;
      
      private var §2!5§:String;
      
      private var §<!"§:String;
      
      private var §+!x§:String;
      
      private var §;S§:String;
      
      private var §'`§:String;
      
      private var §;o§:String;
      
      public function §&W§(param1:XML, param2:§9!#§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§9!#§ = param2;
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
            cls = §9!N§.§0!k§(this.mName);
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
               §[g§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§&!&§ = true;
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
            tmp = this.getParentView().§=!N§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§&!&§)
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
            this.§@h§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§,o§(data);
         this.§,z§(data);
      }
      
      private function §&#§() : void
      {
         if(!this.§-q§)
         {
            this.§-q§ = new §4x§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§%W§,this.§@C§,this.§2!5§,this.§<!"§,this.§+!x§,this.§;S§,this.§;o§,this.§'`§);
         }
         this.§-q§.§4^§(this.§1z§,this.§3C§);
         this.mClip.x = this.§-q§.x;
         this.mClip.y = this.§-q§.y;
         this.mClip.scaleX = this.§-q§.scaleX;
         this.mClip.scaleY = this.§-q§.scaleY;
         if(this.§62§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§%W§,this.§@C§);
         }
      }
      
      private function §,o§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§1z§ = _loc2_;
            this.§3C§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§1z§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§1z§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§3C§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§3C§ = _loc3_;
            }
         }
         this.§%W§ = this.§1z§;
         this.§@C§ = this.§3C§;
      }
      
      private function §,z§(param1:XML) : void
      {
         this.§2!5§ = param1.@alignH;
         this.§<!"§ = param1.@alignV;
         this.§+!x§ = param1.@scaleH;
         this.§;S§ = param1.@scaleV;
         this.§'`§ = param1.@scaleFunction;
         this.§;o§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§]!V§(_loc2_);
         this.§;1§(_loc3_);
      }
      
      private function §;1§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§"!E§ = true;
            }
         }
      }
      
      private function §]!V§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§62§ = true;
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
         this.§-q§ = null;
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
         this.§2]§ = param1;
         this.mClip.visible = this.§2]§ && this.§@!"§;
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
         this.§@!"§ = param1;
         this.mClip.visible = this.§2]§ && this.§@!"§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§@h§)
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
      
      public function getParentView() : § C§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§-q§)
         {
            this.§-q§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§-q§)
         {
            this.§-q§.y = this.mClip.y;
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
         return this.§1z§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§3C§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§1z§ = param1;
         this.§&#§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§3C§ = param1;
         this.§&#§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§"!E§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§"!E§ = param1;
      }
   }
}
