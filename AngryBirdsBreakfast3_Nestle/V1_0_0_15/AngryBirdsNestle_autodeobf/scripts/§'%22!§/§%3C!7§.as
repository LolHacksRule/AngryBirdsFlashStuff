package §'"!§
{
   import §!""§.§]H§;
   import §1`§.§9%§;
   import §24§.;
   import §2u§.§,6§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §<!7§ extends §+§
   {
       
      
      public var mParentContainer:§,6§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §8t§:Boolean = false;
      
      public var §!"4§:Boolean = true;
      
      public var §7!!§:Boolean = false;
      
      public var §4![§:Boolean = false;
      
      protected var §'!9§:§5Z§;
      
      private var §]=§:Boolean = false;
      
      protected var §5!+§:Boolean = false;
      
      private var §^!J§:Number;
      
      private var §+=§:Number;
      
      private var §&!i§:Number;
      
      private var §3!W§:Number;
      
      private var §-!=§:String;
      
      private var §;^§:String;
      
      private var §&H§:String;
      
      private var §^!R§:String;
      
      private var §-!J§:String;
      
      private var §]"6§:String;
      
      private var §"!I§:Boolean = true;
      
      public function §<!7§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§,6§ = param2;
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
            cls = §=!V§.§?!O§(this.mName);
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
               §#7§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§7!!§ = true;
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
            tmp = this.getParentView().§%1§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§7!!§)
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
            this.§4![§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§"!I§ = false;
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
         this.§5!E§(data);
         this.§%s§(data);
      }
      
      private function §`j§() : void
      {
         if(this.§"!I§)
         {
            if(!this.§'!9§)
            {
               this.§'!9§ = new §5Z§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§&!i§,this.§3!W§,this.§-!=§,this.§;^§,this.§&H§,this.§^!R§,this.§]"6§,this.§-!J§);
            }
            this.§'!9§.§"!$§(this.§^!J§,this.§+=§);
            this.mClip.x = this.§'!9§.x;
            this.mClip.y = this.§'!9§.y;
            this.mClip.scaleX = this.§'!9§.scaleX;
            this.mClip.scaleY = this.§'!9§.scaleY;
         }
         if(this.§]=§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§&!i§,this.§3!W§);
         }
      }
      
      private function §5!E§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§^!J§ = _loc2_;
            this.§+=§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§^!J§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§^!J§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§+=§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§+=§ = _loc3_;
            }
         }
         this.§&!i§ = this.§^!J§;
         this.§3!W§ = this.§+=§;
      }
      
      private function §%s§(param1:XML) : void
      {
         this.§-!=§ = param1.@alignH;
         this.§;^§ = param1.@alignV;
         this.§&H§ = param1.@scaleH;
         this.§^!R§ = param1.@scaleV;
         this.§-!J§ = param1.@scaleFunction;
         this.§]"6§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§<k§(_loc2_);
         this.§=S§(_loc3_);
      }
      
      private function §=S§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§5!+§ = true;
            }
         }
      }
      
      private function §<k§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§]=§ = true;
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
         this.§'!9§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         var _loc3_:§]H§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§!"4§ = param1;
         this.mClip.visible = this.§!"4§ && this.§8t§;
         if(this.visible)
         {
            §8!c§();
         }
         else
         {
            §?<§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§8t§ = param1;
         this.mClip.visible = this.§!"4§ && this.§8t§;
         if(this.visible)
         {
            §8!c§();
         }
         else
         {
            §?<§();
         }
         if(this.§4![§)
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
      
      public function getParentView() : §9%§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§'!9§)
         {
            this.§'!9§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§'!9§)
         {
            this.§'!9§.y = this.mClip.y;
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
         return this.§^!J§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§+=§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§^!J§ = param1;
         this.§`j§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§+=§ = param1;
         this.§`j§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§5!+§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§5!+§ = param1;
      }
   }
}
