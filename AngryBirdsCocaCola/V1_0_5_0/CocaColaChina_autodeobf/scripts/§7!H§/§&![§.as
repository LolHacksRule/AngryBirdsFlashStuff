package §7!H§
{
   import § !K§.§'h§;
   import §%3§.§7b§;
   import §8!<§.§2W§;
   import §<!!§.§-"§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&![§ extends §12§
   {
       
      
      public var mParentContainer:§2W§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §`![§:Boolean = false;
      
      public var §1>§:Boolean = true;
      
      public var §1q§:Boolean = false;
      
      public var §"V§:Boolean = false;
      
      private var §`!H§:§]!§;
      
      private var §7§:Boolean = false;
      
      protected var §+M§:Boolean = false;
      
      private var §+!D§:Number;
      
      private var §5!P§:Number;
      
      private var §8h§:Number;
      
      private var §6R§:Number;
      
      private var §[3§:String;
      
      private var §6P§:String;
      
      private var §=F§:String;
      
      private var §#S§:String;
      
      private var static:String;
      
      private var §2Z§:String;
      
      public function §&![§(param1:XML, param2:§2W§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§2W§ = param2;
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
            cls = §'h§.§`E§(this.mName);
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
               §-"§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§1q§ = true;
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
            tmp = this.getParentView().§^!C§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§1q§)
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
            this.§"V§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§,t§(data);
         this.§7K§(data);
      }
      
      private function §]!^§() : void
      {
         if(!this.§`!H§)
         {
            this.§`!H§ = new §]!§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§8h§,this.§6R§,this.§[3§,this.§6P§,this.§=F§,this.§#S§,this.§2Z§,this.static);
         }
         this.§`!H§.§ x§(this.§+!D§,this.§5!P§);
         this.mClip.x = this.§`!H§.x;
         this.mClip.y = this.§`!H§.y;
         this.mClip.scaleX = this.§`!H§.scaleX;
         this.mClip.scaleY = this.§`!H§.scaleY;
         if(this.§7§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§8h§,this.§6R§);
         }
      }
      
      private function §,t§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§+!D§ = _loc2_;
            this.§5!P§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§+!D§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§+!D§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§5!P§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§5!P§ = _loc3_;
            }
         }
         this.§8h§ = this.§+!D§;
         this.§6R§ = this.§5!P§;
      }
      
      private function §7K§(param1:XML) : void
      {
         this.§[3§ = param1.@alignH;
         this.§6P§ = param1.@alignV;
         this.§=F§ = param1.@scaleH;
         this.§#S§ = param1.@scaleV;
         this.static = param1.@scaleFunction;
         this.§2Z§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§;S§(_loc2_);
         this.§<n§(_loc3_);
      }
      
      private function §<n§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§+M§ = true;
            }
         }
      }
      
      private function §;S§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§7§ = true;
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
         this.§`!H§ = null;
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
         this.§1>§ = param1;
         this.mClip.visible = this.§1>§ && this.§`![§;
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
         this.§`![§ = param1;
         this.mClip.visible = this.§1>§ && this.§`![§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§"V§)
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
      
      public function getParentView() : §7b§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§`!H§)
         {
            this.§`!H§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§`!H§)
         {
            this.§`!H§.y = this.mClip.y;
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
         return this.§+!D§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§5!P§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§+!D§ = param1;
         this.§]!^§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§5!P§ = param1;
         this.§]!^§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
