package §'!N§
{
   import §-!5§.§5s§;
   import §=8§.§'^§;
   import §]!O§.§+[§;
   import com.rovio.assets.§4D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §"f§ extends §%!E§
   {
       
      
      public var mParentContainer:§'^§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var §-Z§:Boolean = true;
      
      public var §&!,§:Boolean = false;
      
      public var §"B§:Boolean = false;
      
      private var §,q§:§9!2§;
      
      private var §&`§:Boolean = false;
      
      protected var §#6§:Boolean = false;
      
      private var §^b§:Number;
      
      private var §6d§:Number;
      
      private var §8E§:Number;
      
      private var §5q§:Number;
      
      private var §>!&§:String;
      
      private var §@s§:String;
      
      private var §5!+§:String;
      
      private var §#!L§:String;
      
      private var §3&§:String;
      
      private var §@7§:String;
      
      public function §"f§(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§'^§ = param2;
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
            cls = §4D§.§,!O§(this.mName);
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
               §5s§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§&!,§ = true;
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
            tmp = this.getParentView().§1!L§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§&!,§)
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
            this.§"B§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§'M§(data);
         this.§#!4§(data);
      }
      
      private function §4!"§() : void
      {
         if(!this.§,q§)
         {
            this.§,q§ = new §9!2§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§8E§,this.§5q§,this.§>!&§,this.§@s§,this.§5!+§,this.§#!L§,this.§@7§,this.§3&§);
         }
         this.§,q§.§^!=§(this.§^b§,this.§6d§);
         this.mClip.x = this.§,q§.x;
         this.mClip.y = this.§,q§.y;
         this.mClip.scaleX = this.§,q§.scaleX;
         this.mClip.scaleY = this.§,q§.scaleY;
         if(this.§&`§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§8E§,this.§5q§);
         }
      }
      
      private function §'M§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§^b§ = _loc2_;
            this.§6d§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§^b§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§^b§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§6d§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§6d§ = _loc3_;
            }
         }
         this.§8E§ = this.§^b§;
         this.§5q§ = this.§6d§;
      }
      
      private function §#!4§(param1:XML) : void
      {
         this.§>!&§ = param1.@alignH;
         this.§@s§ = param1.@alignV;
         this.§5!+§ = param1.@scaleH;
         this.§#!L§ = param1.@scaleV;
         this.§3&§ = param1.@scaleFunction;
         this.§@7§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§]h§(_loc2_);
         this.§'c§(_loc3_);
      }
      
      private function §'c§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§#6§ = true;
            }
         }
      }
      
      private function §]h§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§&`§ = true;
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
         this.§,q§ = null;
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
         this.§-Z§ = param1;
         this.mClip.visible = this.§-Z§ && this.mActive;
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
         this.mActive = param1;
         this.mClip.visible = this.§-Z§ && this.mActive;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§"B§)
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
      
      public function getParentView() : §+[§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§,q§)
         {
            this.§,q§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§,q§)
         {
            this.§,q§.y = this.mClip.y;
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
         return this.§^b§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§6d§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§^b§ = param1;
         this.§4!"§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§6d§ = param1;
         this.§4!"§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§#6§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§#6§ = param1;
      }
   }
}
