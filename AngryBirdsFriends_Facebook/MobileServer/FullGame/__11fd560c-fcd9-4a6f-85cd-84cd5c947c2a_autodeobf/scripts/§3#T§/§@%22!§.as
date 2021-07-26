package §3#T§
{
   import § %§.§0"8§;
   import §3"I§.§ E§;
   import §<h§.§[#K§;
   import §]!6§.§6Y§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §@"!§ extends §'#0§
   {
       
      
      public var mParentContainer:§[#K§;
      
      public var mClip:MovieClip;
      
      protected var §=q§:String;
      
      private var §0C§:String;
      
      public var §=!1§:Boolean = false;
      
      public var §+!9§:Boolean = true;
      
      public var § "d§:Boolean = false;
      
      public var §0!s§:Boolean = false;
      
      protected var §^"i§:§=!q§;
      
      private var §%"8§:Boolean = false;
      
      protected var §2#H§:Boolean = false;
      
      private var §!"T§:Number;
      
      private var §0F§:Number;
      
      private var §5!Q§:Number;
      
      private var §+8§:Number;
      
      private var §9#&§:String;
      
      private var §`"'§:String;
      
      private var §>!n§:String;
      
      private var §4"F§:String;
      
      private var §'$'§:String;
      
      private var §5!J§:String;
      
      private var § !O§:Boolean = true;
      
      public function §@"!§(param1:XML, param2:§[#K§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§[#K§ = param2;
         var clip:MovieClip = param3;
         this.mParentContainer = parentContainer;
         this.§=q§ = data.@name;
         this.§0C§ = this.§=q§.toUpperCase();
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
            cls = §!"f§.§##?§(this.name);
            this.mClip = new cls();
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(this.mParentContainer)
         {
            this.mClip = this.mParentContainer.mClip.getChildByName(this.name) as MovieClip;
            if(this.mClip == null)
            {
               error = "Asset instance not found!! [" + this.name + "] parent: [" + this.mParentContainer.name + "]";
               §6Y§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§ "d§ = true;
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
            tmp = this.getParentView().§9H§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§ "d§)
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
            this.§0!s§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§ !O§ = false;
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
         this.§&Y§(data);
         this.§1#%§(data);
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      public function get upperCaseName() : String
      {
         return this.§0C§;
      }
      
      private function §""@§() : void
      {
         if(this.§ !O§)
         {
            if(!this.§^"i§)
            {
               this.§^"i§ = new §=!q§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§5!Q§,this.§+8§,this.§9#&§,this.§`"'§,this.§>!n§,this.§4"F§,this.§5!J§,this.§'$'§);
            }
            this.§^"i§.§6#[§(this.§!"T§,this.§0F§);
            this.mClip.x = this.§^"i§.x;
            this.mClip.y = this.§^"i§.y;
            this.mClip.scaleX = this.§^"i§.scaleX;
            this.mClip.scaleY = this.§^"i§.scaleY;
         }
         if(this.§%"8§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§5!Q§,this.§+8§);
         }
      }
      
      private function §&Y§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§!"T§ = _loc2_;
            this.§0F§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§!"T§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§!"T§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§0F§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§0F§ = _loc3_;
            }
         }
         this.§5!Q§ = this.§!"T§;
         this.§+8§ = this.§0F§;
      }
      
      private function §1#%§(param1:XML) : void
      {
         this.§9#&§ = param1.@alignH;
         this.§`"'§ = param1.@alignV;
         this.§>!n§ = param1.@scaleH;
         this.§4"F§ = param1.@scaleV;
         this.§'$'§ = param1.@scaleFunction;
         this.§5!J§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§`!O§(_loc2_);
         this.§]#a§(_loc3_);
      }
      
      private function §]#a§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§2#H§ = true;
            }
         }
      }
      
      private function §`!O§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§%"8§ = true;
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
         this.mClip.stop();
         while(this.mClip.numChildren > 0)
         {
            this.mClip.removeChildAt(0);
         }
         this.mClip = null;
         this.§^"i§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : § E§
      {
         var _loc3_:§ E§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§+!9§ = param1;
         this.mClip.visible = this.§+!9§ && this.§=!1§;
         if(this.visible)
         {
            §2q§();
         }
         else
         {
            §,#v§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§=!1§ = param1;
         this.mClip.visible = this.§+!9§ && this.§=!1§;
         if(this.visible)
         {
            §2q§();
         }
         else
         {
            §,#v§();
         }
         if(this.§0!s§)
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
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         if(this.mClip.mouseEnabled != param1)
         {
            this.mClip.mouseEnabled = param1;
            if(param2)
            {
               this.mClip.mouseChildren = param1;
            }
         }
      }
      
      public function getParentView() : §0"8§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§^"i§)
         {
            this.§^"i§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§^"i§)
         {
            this.§^"i§.y = this.mClip.y;
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
      
      public function set scaleX(param1:Number) : void
      {
         this.mClip.scaleX = param1;
         if(this.§^"i§)
         {
            this.§^"i§.scaleX = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mClip.scaleX;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.mClip.scaleY = param1;
         if(this.§^"i§)
         {
            this.§^"i§.scaleY = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.mClip.scaleY;
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
         return this.§!"T§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§0F§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§!"T§ = param1;
         this.§""@§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§0F§ = param1;
         this.§""@§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§2#H§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§2#H§ = param1;
      }
   }
}
