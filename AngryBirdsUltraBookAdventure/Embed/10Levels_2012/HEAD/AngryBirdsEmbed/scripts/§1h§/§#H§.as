package §1h§
{
   import §1;§.§!!1§;
   import §2§.§0!<§;
   import §^@§.§2q§;
   import com.rovio.assets.§7!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §#H§ extends §@s§
   {
       
      
      public var mParentContainer:§2q§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §3!?§:Boolean = false;
      
      public var §9l§:Boolean = true;
      
      public var §const§:Boolean = false;
      
      public var §"!"§:Boolean = false;
      
      private var §,@§:§]$§;
      
      private var §<!%§:Boolean = false;
      
      protected var §89§:Boolean = false;
      
      private var §0J§:Number;
      
      private var §8w§:Number;
      
      private var §44§:Number;
      
      private var §20§:Number;
      
      private var §40§:String;
      
      private var § if§:String;
      
      private var §>Z§:String;
      
      private var §&!B§:String;
      
      private var §[I§:String;
      
      private var §7l§:String;
      
      public function §#H§(param1:XML, param2:§2q§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§2q§ = param2;
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
            cls = §7!D§.§?0§(this.mName);
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
               §0!<§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§const§ = true;
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
            tmp = this.getParentView().§<6§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§const§)
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
            this.§"!"§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§ Y§(data);
         this.§ !I§(data);
      }
      
      private function §6x§() : void
      {
         if(!this.§,@§)
         {
            this.§,@§ = new §]$§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§44§,this.§20§,this.§40§,this.§ if§,this.§>Z§,this.§&!B§,this.§7l§,this.§[I§);
         }
         this.§,@§.§5!!§(this.§0J§,this.§8w§);
         this.mClip.x = this.§,@§.x;
         this.mClip.y = this.§,@§.y;
         this.mClip.scaleX = this.§,@§.scaleX;
         this.mClip.scaleY = this.§,@§.scaleY;
         if(this.§<!%§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§44§,this.§20§);
         }
      }
      
      private function § Y§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§0J§ = _loc2_;
            this.§8w§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§0J§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§0J§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§8w§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§8w§ = _loc3_;
            }
         }
         this.§44§ = this.§0J§;
         this.§20§ = this.§8w§;
      }
      
      private function § !I§(param1:XML) : void
      {
         this.§40§ = param1.@alignH;
         this.§ if§ = param1.@alignV;
         this.§>Z§ = param1.@scaleH;
         this.§&!B§ = param1.@scaleV;
         this.§[I§ = param1.@scaleFunction;
         this.§7l§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§21§(_loc2_);
         this.§`L§(_loc3_);
      }
      
      private function §`L§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§89§ = true;
            }
         }
      }
      
      private function §21§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§<!%§ = true;
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
         this.§,@§ = null;
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
         this.§9l§ = param1;
         this.mClip.visible = this.§9l§ && this.§3!?§;
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
         this.§3!?§ = param1;
         this.mClip.visible = this.§9l§ && this.§3!?§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§"!"§)
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
      
      public function getParentView() : §!!1§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§,@§)
         {
            this.§,@§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§,@§)
         {
            this.§,@§.y = this.mClip.y;
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
         return this.§0J§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§8w§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§0J§ = param1;
         this.§6x§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§8w§ = param1;
         this.§6x§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§89§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§89§ = param1;
      }
   }
}
