package §var§
{
   import §#!&§.§59§;
   import §%!$§.§[Z§;
   import §7!X§.§7g§;
   import §7S§.§3t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §;!&§ extends §+!^§
   {
       
      
      public var mParentContainer:§59§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §2X§:Boolean = false;
      
      public var §<u§:Boolean = true;
      
      public var §0§:Boolean = false;
      
      public var §^v§:Boolean = false;
      
      private var §'$§:§<!%§;
      
      private var §#a§:Boolean = false;
      
      protected var §6!I§:Boolean = false;
      
      private var §]%§:Number;
      
      private var §>h§:Number;
      
      private var § !I§:Number;
      
      private var §'!H§:Number;
      
      private var §7!M§:String;
      
      private var §[0§:String;
      
      private var §2`§:String;
      
      private var §!!J§:String;
      
      private var §=!?§:String;
      
      private var §!D§:String;
      
      public function §;!&§(param1:XML, param2:§59§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§59§ = param2;
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
            cls = §3t§.§#v§(this.mName);
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
               §[Z§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§0§ = true;
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
            tmp = this.getParentView().§<!E§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§0§)
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
            this.§^v§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§2;§(data);
         this.§`L§(data);
      }
      
      private function §+j§() : void
      {
         if(!this.§'$§)
         {
            this.§'$§ = new §<!%§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§ !I§,this.§'!H§,this.§7!M§,this.§[0§,this.§2`§,this.§!!J§,this.§!D§,this.§=!?§);
         }
         this.§'$§.§+r§(this.§]%§,this.§>h§);
         this.mClip.x = this.§'$§.x;
         this.mClip.y = this.§'$§.y;
         this.mClip.scaleX = this.§'$§.scaleX;
         this.mClip.scaleY = this.§'$§.scaleY;
         if(this.§#a§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§ !I§,this.§'!H§);
         }
      }
      
      private function §2;§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§]%§ = _loc2_;
            this.§>h§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§]%§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§]%§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§>h§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§>h§ = _loc3_;
            }
         }
         this.§ !I§ = this.§]%§;
         this.§'!H§ = this.§>h§;
      }
      
      private function §`L§(param1:XML) : void
      {
         this.§7!M§ = param1.@alignH;
         this.§[0§ = param1.@alignV;
         this.§2`§ = param1.@scaleH;
         this.§!!J§ = param1.@scaleV;
         this.§=!?§ = param1.@scaleFunction;
         this.§!D§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§[<§(_loc2_);
         this.§!Q§(_loc3_);
      }
      
      private function §!Q§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§6!I§ = true;
            }
         }
      }
      
      private function §[<§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§#a§ = true;
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
         this.§'$§ = null;
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
         this.§<u§ = param1;
         this.mClip.visible = this.§<u§ && this.§2X§;
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
         this.§2X§ = param1;
         this.mClip.visible = this.§<u§ && this.§2X§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§^v§)
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
      
      public function getParentView() : §7g§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§'$§)
         {
            this.§'$§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§'$§)
         {
            this.§'$§.y = this.mClip.y;
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
         return this.§]%§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§>h§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§]%§ = param1;
         this.§+j§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§>h§ = param1;
         this.§+j§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§6!I§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§6!I§ = param1;
      }
   }
}
