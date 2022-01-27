package §6B§
{
   import §+=§.§?!Q§;
   import §+k§.§0"4§;
   import §,!7§.§5!k§;
   import §6!C§.§6E§;
   import com.rovio.assets.§>!;§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&9§ extends §?"2§
   {
       
      
      public var mParentContainer:§5!k§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §!"&§:Boolean = false;
      
      public var §<!m§:Boolean = true;
      
      public var §%!a§:Boolean = false;
      
      public var §["4§:Boolean = false;
      
      protected var §`!_§:§=E§;
      
      private var §9]§:Boolean = false;
      
      protected var §`"B§:Boolean = false;
      
      private var §@!,§:Number;
      
      private var § $§:Number;
      
      private var §"!F§:Number;
      
      private var §;o§:Number;
      
      private var §%"G§:String;
      
      private var §?!+§:String;
      
      private var §>h§:String;
      
      private var §!!O§:String;
      
      private var §0"%§:String;
      
      private var §7!X§:String;
      
      private var §"!J§:Boolean = true;
      
      public function §&9§(param1:XML, param2:§5!k§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§5!k§ = param2;
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
            cls = §>!;§.§+!u§(this.mName);
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
               §6E§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§%!a§ = true;
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
            tmp = this.getParentView().§[d§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§%!a§)
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
            this.§["4§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§"!J§ = false;
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
         this.§]"C§(data);
         this.§5!4§(data);
      }
      
      private function §^!n§() : void
      {
         if(this.§"!J§)
         {
            if(!this.§`!_§)
            {
               this.§`!_§ = new §=E§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§"!F§,this.§;o§,this.§%"G§,this.§?!+§,this.§>h§,this.§!!O§,this.§7!X§,this.§0"%§);
            }
            this.§`!_§.§ z§(this.§@!,§,this.§ $§);
            this.mClip.x = this.§`!_§.x;
            this.mClip.y = this.§`!_§.y;
            this.mClip.scaleX = this.§`!_§.scaleX;
            this.mClip.scaleY = this.§`!_§.scaleY;
         }
         if(this.§9]§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§"!F§,this.§;o§);
         }
      }
      
      private function §]"C§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§@!,§ = _loc2_;
            this.§ $§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§@!,§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§@!,§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§ $§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§ $§ = _loc3_;
            }
         }
         this.§"!F§ = this.§@!,§;
         this.§;o§ = this.§ $§;
      }
      
      private function §5!4§(param1:XML) : void
      {
         this.§%"G§ = param1.@alignH;
         this.§?!+§ = param1.@alignV;
         this.§>h§ = param1.@scaleH;
         this.§!!O§ = param1.@scaleV;
         this.§0"%§ = param1.@scaleFunction;
         this.§7!X§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§'q§(_loc2_);
         this.§]!%§(_loc3_);
      }
      
      private function §]!%§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§`"B§ = true;
            }
         }
      }
      
      private function §'q§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§9]§ = true;
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
         while(this.mClip.numChildren > 0)
         {
            this.mClip.removeChildAt(0);
         }
         this.mClip = null;
         this.§`!_§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!Q§
      {
         var _loc3_:§?!Q§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§<!m§ = param1;
         this.mClip.visible = this.§<!m§ && this.§!"&§;
         if(this.visible)
         {
            §&3§();
         }
         else
         {
            §7L§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§!"&§ = param1;
         this.mClip.visible = this.§<!m§ && this.§!"&§;
         if(this.visible)
         {
            §&3§();
         }
         else
         {
            §7L§();
         }
         if(this.§["4§)
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
      }
      
      public function getParentView() : §0"4§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§`!_§)
         {
            this.§`!_§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§`!_§)
         {
            this.§`!_§.y = this.mClip.y;
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
         return this.§@!,§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§ $§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§@!,§ = param1;
         this.§^!n§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§ $§ = param1;
         this.§^!n§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§`"B§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§`"B§ = param1;
      }
   }
}
