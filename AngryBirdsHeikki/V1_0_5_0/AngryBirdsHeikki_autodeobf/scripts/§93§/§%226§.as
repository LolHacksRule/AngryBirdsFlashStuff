package §93§
{
   import § !Y§.§if§;
   import §1!K§.§>!<§;
   import §=!c§.§=>§;
   import §@u§.§]!-§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §"6§ extends §^!H§
   {
       
      
      public var mParentContainer:§=>§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §6T§:Boolean = false;
      
      public var §7F§:Boolean = true;
      
      public var §"C§:Boolean = false;
      
      public var §[!J§:Boolean = false;
      
      private var §7!Z§:§ !Q§;
      
      private var §@!Z§:Boolean = false;
      
      protected var §%y§:Boolean = false;
      
      private var §&;§:Number;
      
      private var § r§:Number;
      
      private var §!!5§:Number;
      
      private var §"!A§:Number;
      
      private var §;T§:String;
      
      private var §8!W§:String;
      
      private var §+%§:String;
      
      private var §&!'§:String;
      
      private var §9r§:String;
      
      private var §9!@§:String;
      
      public function §"6§(param1:XML, param2:§=>§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§=>§ = param2;
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
            cls = §]!-§.§=!M§(this.mName);
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
               §>!<§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§"C§ = true;
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
            tmp = this.getParentView().§0!W§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§"C§)
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
            this.§[!J§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§?!a§(data);
         this.§<V§(data);
      }
      
      private function §&[§() : void
      {
         if(!this.§7!Z§)
         {
            this.§7!Z§ = new § !Q§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§!!5§,this.§"!A§,this.§;T§,this.§8!W§,this.§+%§,this.§&!'§,this.§9!@§,this.§9r§);
         }
         this.§7!Z§.§7P§(this.§&;§,this.§ r§);
         this.mClip.x = this.§7!Z§.x;
         this.mClip.y = this.§7!Z§.y;
         this.mClip.scaleX = this.§7!Z§.scaleX;
         this.mClip.scaleY = this.§7!Z§.scaleY;
         if(this.§@!Z§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§!!5§,this.§"!A§);
         }
      }
      
      private function §?!a§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§&;§ = _loc2_;
            this.§ r§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§&;§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§&;§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§ r§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§ r§ = _loc3_;
            }
         }
         this.§!!5§ = this.§&;§;
         this.§"!A§ = this.§ r§;
      }
      
      private function §<V§(param1:XML) : void
      {
         this.§;T§ = param1.@alignH;
         this.§8!W§ = param1.@alignV;
         this.§+%§ = param1.@scaleH;
         this.§&!'§ = param1.@scaleV;
         this.§9r§ = param1.@scaleFunction;
         this.§9!@§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§7<§(_loc2_);
         this.§9D§(_loc3_);
      }
      
      private function §9D§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§%y§ = true;
            }
         }
      }
      
      private function §7<§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§@!Z§ = true;
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
         this.§7!Z§ = null;
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
         this.§7F§ = param1;
         this.mClip.visible = this.§7F§ && this.§6T§;
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
         this.§6T§ = param1;
         this.mClip.visible = this.§7F§ && this.§6T§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§[!J§)
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
      
      public function getParentView() : §if§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§7!Z§)
         {
            this.§7!Z§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§7!Z§)
         {
            this.§7!Z§.y = this.mClip.y;
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
         return this.§&;§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§ r§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§&;§ = param1;
         this.§&[§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§ r§ = param1;
         this.§&[§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§%y§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§%y§ = param1;
      }
   }
}
