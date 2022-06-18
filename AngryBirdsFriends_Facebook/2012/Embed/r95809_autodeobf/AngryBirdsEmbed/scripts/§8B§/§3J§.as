package §8B§
{
   import §2x§.§'!@§;
   import §5Y§.§"!4§;
   import §[V§.§=!'§;
   import com.rovio.assets.§0v§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §3J§ extends §6!9§
   {
       
      
      public var mParentContainer:§=!'§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §,4§:Boolean = false;
      
      public var §'!H§:Boolean = true;
      
      public var §<c§:Boolean = false;
      
      public var §7!A§:Boolean = false;
      
      private var §;X§:§1!%§;
      
      private var §@?§:Boolean = false;
      
      protected var §&@§:Boolean = false;
      
      private var §#&§:Number;
      
      private var § !#§:Number;
      
      private var §"P§:Number;
      
      private var §7s§:Number;
      
      private var §3r§:String;
      
      private var §=!2§:String;
      
      private var §<F§:String;
      
      private var §00§:String;
      
      private var §"!C§:String;
      
      private var §9q§:String;
      
      public function §3J§(param1:XML, param2:§=!'§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§=!'§ = param2;
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
            cls = §0v§.§#w§(this.mName);
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
               §'!@§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§<c§ = true;
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
            tmp = this.getParentView().§"A§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§<c§)
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
            this.§7!A§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§=!5§(data);
         this.§break§(data);
      }
      
      private function §,w§() : void
      {
         if(!this.§;X§)
         {
            this.§;X§ = new §1!%§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§"P§,this.§7s§,this.§3r§,this.§=!2§,this.§<F§,this.§00§,this.§9q§,this.§"!C§);
         }
         this.§;X§.§=e§(this.§#&§,this.§ !#§);
         this.mClip.x = this.§;X§.x;
         this.mClip.y = this.§;X§.y;
         this.mClip.scaleX = this.§;X§.scaleX;
         this.mClip.scaleY = this.§;X§.scaleY;
         if(this.§@?§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§"P§,this.§7s§);
         }
      }
      
      private function §=!5§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§#&§ = _loc2_;
            this.§ !#§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§#&§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§#&§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§ !#§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§ !#§ = _loc3_;
            }
         }
         this.§"P§ = this.§#&§;
         this.§7s§ = this.§ !#§;
      }
      
      private function §break§(param1:XML) : void
      {
         this.§3r§ = param1.@alignH;
         this.§=!2§ = param1.@alignV;
         this.§<F§ = param1.@scaleH;
         this.§00§ = param1.@scaleV;
         this.§"!C§ = param1.@scaleFunction;
         this.§9q§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§=s§(_loc2_);
         this.§5!E§(_loc3_);
      }
      
      private function §5!E§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§&@§ = true;
            }
         }
      }
      
      private function §=s§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§@?§ = true;
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
         this.§;X§ = null;
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
         this.§'!H§ = param1;
         this.mClip.visible = this.§'!H§ && this.§,4§;
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
         this.§,4§ = param1;
         this.mClip.visible = this.§'!H§ && this.§,4§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§7!A§)
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
      
      public function getParentView() : §"!4§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§;X§)
         {
            this.§;X§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§;X§)
         {
            this.§;X§.y = this.mClip.y;
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
         return this.§#&§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§ !#§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§#&§ = param1;
         this.§,w§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§ !#§ = param1;
         this.§,w§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
