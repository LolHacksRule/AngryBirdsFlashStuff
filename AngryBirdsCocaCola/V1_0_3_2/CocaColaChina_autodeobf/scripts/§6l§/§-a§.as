package §6l§
{
   import §'b§.§'^§;
   import §-!9§.§3!5§;
   import §6!Q§.§7!7§;
   import §>!8§.§4!0§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §-a§ extends §#!Z§
   {
       
      
      public var mParentContainer:§'^§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §&3§:Boolean = false;
      
      public var §-N§:Boolean = true;
      
      public var §<,§:Boolean = false;
      
      public var §-!J§:Boolean = false;
      
      private var §+z§:§2!V§;
      
      private var §4R§:Boolean = false;
      
      protected var §2m§:Boolean = false;
      
      private var §"h§:Number;
      
      private var §%c§:Number;
      
      private var §4J§:Number;
      
      private var §8'§:Number;
      
      private var §0!c§:String;
      
      private var §>§:String;
      
      private var §&!Q§:String;
      
      private var §5E§:String;
      
      private var §@§:String;
      
      private var §=u§:String;
      
      public function §-a§(param1:XML, param2:§'^§, param3:MovieClip = null)
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
            cls = §3!5§.§9g§(this.mName);
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
               §7!7§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§<,§ = true;
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
            tmp = this.getParentView().§2]§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§<,§)
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
            this.§-!J§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§,a§(data);
         this.§2H§(data);
      }
      
      private function §break§() : void
      {
         if(!this.§+z§)
         {
            this.§+z§ = new §2!V§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§4J§,this.§8'§,this.§0!c§,this.§>§,this.§&!Q§,this.§5E§,this.§=u§,this.§@§);
         }
         this.§+z§.§4[§(this.§"h§,this.§%c§);
         this.mClip.x = this.§+z§.x;
         this.mClip.y = this.§+z§.y;
         this.mClip.scaleX = this.§+z§.scaleX;
         this.mClip.scaleY = this.§+z§.scaleY;
         if(this.§4R§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§4J§,this.§8'§);
         }
      }
      
      private function §,a§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§"h§ = _loc2_;
            this.§%c§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§"h§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§"h§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§%c§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§%c§ = _loc3_;
            }
         }
         this.§4J§ = this.§"h§;
         this.§8'§ = this.§%c§;
      }
      
      private function §2H§(param1:XML) : void
      {
         this.§0!c§ = param1.@alignH;
         this.§>§ = param1.@alignV;
         this.§&!Q§ = param1.@scaleH;
         this.§5E§ = param1.@scaleV;
         this.§@§ = param1.@scaleFunction;
         this.§=u§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§=]§(_loc2_);
         this.§5!V§(_loc3_);
      }
      
      private function §5!V§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§2m§ = true;
            }
         }
      }
      
      private function §=]§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§4R§ = true;
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
         this.§+z§ = null;
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
         this.§-N§ = param1;
         this.mClip.visible = this.§-N§ && this.§&3§;
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
         this.§&3§ = param1;
         this.mClip.visible = this.§-N§ && this.§&3§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§-!J§)
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
      
      public function getParentView() : §4!0§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§+z§)
         {
            this.§+z§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§+z§)
         {
            this.§+z§.y = this.mClip.y;
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
         return this.§"h§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§%c§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§"h§ = param1;
         this.§break§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§%c§ = param1;
         this.§break§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
