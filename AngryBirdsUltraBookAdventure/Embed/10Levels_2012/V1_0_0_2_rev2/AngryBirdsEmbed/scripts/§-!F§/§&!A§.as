package §-!F§
{
   import §+!"§.§5!<§;
   import §<!G§.§^3§;
   import §class§.§3C§;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&!A§ extends §^h§
   {
       
      
      public var mParentContainer:§3C§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §6V§:Boolean = false;
      
      public var §#!#§:Boolean = true;
      
      public var §3>§:Boolean = false;
      
      public var §@^§:Boolean = false;
      
      private var §'`§:§9L§;
      
      private var §+3§:Boolean = false;
      
      protected var §8!2§:Boolean = false;
      
      private var §4!7§:Number;
      
      private var §'O§:Number;
      
      private var §[l§:Number;
      
      private var §<L§:Number;
      
      private var §"!"§:String;
      
      private var §@!2§:String;
      
      private var §;L§:String;
      
      private var §"G§:String;
      
      private var §`3§:String;
      
      private var §1!9§:String;
      
      public function §&!A§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§3C§ = param2;
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
            cls = §'!H§.§&!G§(this.mName);
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
               §5!<§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§3>§ = true;
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
            tmp = this.getParentView().§4E§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§3>§)
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
            this.§@^§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§'!<§(data);
         this.§9&§(data);
      }
      
      private function §->§() : void
      {
         if(!this.§'`§)
         {
            this.§'`§ = new §9L§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§[l§,this.§<L§,this.§"!"§,this.§@!2§,this.§;L§,this.§"G§,this.§1!9§,this.§`3§);
         }
         this.§'`§.§4h§(this.§4!7§,this.§'O§);
         this.mClip.x = this.§'`§.x;
         this.mClip.y = this.§'`§.y;
         this.mClip.scaleX = this.§'`§.scaleX;
         this.mClip.scaleY = this.§'`§.scaleY;
         if(this.§+3§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§[l§,this.§<L§);
         }
      }
      
      private function §'!<§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§4!7§ = _loc2_;
            this.§'O§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§4!7§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§4!7§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§'O§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§'O§ = _loc3_;
            }
         }
         this.§[l§ = this.§4!7§;
         this.§<L§ = this.§'O§;
      }
      
      private function §9&§(param1:XML) : void
      {
         this.§"!"§ = param1.@alignH;
         this.§@!2§ = param1.@alignV;
         this.§;L§ = param1.@scaleH;
         this.§"G§ = param1.@scaleV;
         this.§`3§ = param1.@scaleFunction;
         this.§1!9§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§1,§(_loc2_);
         this.§?!6§(_loc3_);
      }
      
      private function §?!6§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§8!2§ = true;
            }
         }
      }
      
      private function §1,§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§+3§ = true;
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
         this.§'`§ = null;
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
         this.§#!#§ = param1;
         this.mClip.visible = this.§#!#§ && this.§6V§;
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
         this.§6V§ = param1;
         this.mClip.visible = this.§#!#§ && this.§6V§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§@^§)
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
      
      public function getParentView() : §^3§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§'`§)
         {
            this.§'`§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§'`§)
         {
            this.§'`§.y = this.mClip.y;
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
         return this.§4!7§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§'O§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§4!7§ = param1;
         this.§->§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§'O§ = param1;
         this.§->§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§8!2§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§8!2§ = param1;
      }
   }
}
