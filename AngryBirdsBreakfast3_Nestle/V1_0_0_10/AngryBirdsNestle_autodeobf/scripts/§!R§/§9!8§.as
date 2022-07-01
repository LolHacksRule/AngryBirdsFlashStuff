package §!R§
{
   import §&!I§.§9!C§;
   import §+!2§.§0!%§;
   import §4Y§.§%n§;
   import §8!$§.§?p§;
   import com.rovio.assets.§1!C§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §9!8§ extends §#!L§
   {
       
      
      public var mParentContainer:§%n§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §3g§:Boolean = false;
      
      public var §+!J§:Boolean = true;
      
      public var §60§:Boolean = false;
      
      public var §="#§:Boolean = false;
      
      protected var §5W§:§@C§;
      
      private var §&!b§:Boolean = false;
      
      protected var §0!@§:Boolean = false;
      
      private var §;!j§:Number;
      
      private var §#u§:Number;
      
      private var §4![§:Number;
      
      private var §,!Y§:Number;
      
      private var §=s§:String;
      
      private var §-!l§:String;
      
      private var §>"5§:String;
      
      private var § +§:String;
      
      private var §83§:String;
      
      private var §3"§:String;
      
      private var §;"%§:Boolean = true;
      
      public function §9!8§(param1:XML, param2:§%n§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§%n§ = param2;
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
            cls = §1!C§.§"!&§(this.mName);
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
               §?p§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§60§ = true;
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
            tmp = this.getParentView().§`!-§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§60§)
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
            this.§="#§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§;"%§ = false;
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
         this.§#!=§(data);
         this.§!!w§(data);
      }
      
      private function §2#§() : void
      {
         if(this.§;"%§)
         {
            if(!this.§5W§)
            {
               this.§5W§ = new §@C§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§4![§,this.§,!Y§,this.§=s§,this.§-!l§,this.§>"5§,this.§ +§,this.§3"§,this.§83§);
            }
            this.§5W§.§%!&§(this.§;!j§,this.§#u§);
            this.mClip.x = this.§5W§.x;
            this.mClip.y = this.§5W§.y;
            this.mClip.scaleX = this.§5W§.scaleX;
            this.mClip.scaleY = this.§5W§.scaleY;
         }
         if(this.§&!b§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§4![§,this.§,!Y§);
         }
      }
      
      private function §#!=§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§;!j§ = _loc2_;
            this.§#u§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§;!j§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§;!j§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§#u§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§#u§ = _loc3_;
            }
         }
         this.§4![§ = this.§;!j§;
         this.§,!Y§ = this.§#u§;
      }
      
      private function §!!w§(param1:XML) : void
      {
         this.§=s§ = param1.@alignH;
         this.§-!l§ = param1.@alignV;
         this.§>"5§ = param1.@scaleH;
         this.§ +§ = param1.@scaleV;
         this.§83§ = param1.@scaleFunction;
         this.§3"§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§9!&§(_loc2_);
         this.§;Z§(_loc3_);
      }
      
      private function §;Z§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§0!@§ = true;
            }
         }
      }
      
      private function §9!&§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§&!b§ = true;
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
         this.§5W§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §9!C§
      {
         var _loc3_:§9!C§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§+!J§ = param1;
         this.mClip.visible = this.§+!J§ && this.§3g§;
         if(this.visible)
         {
            §<!@§();
         }
         else
         {
            §7>§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§3g§ = param1;
         this.mClip.visible = this.§+!J§ && this.§3g§;
         if(this.visible)
         {
            §<!@§();
         }
         else
         {
            §7>§();
         }
         if(this.§="#§)
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
      
      public function getParentView() : §0!%§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§5W§)
         {
            this.§5W§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§5W§)
         {
            this.§5W§.y = this.mClip.y;
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
         return this.§;!j§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§#u§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§;!j§ = param1;
         this.§2#§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§#u§ = param1;
         this.§2#§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§0!@§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§0!@§ = param1;
      }
   }
}
