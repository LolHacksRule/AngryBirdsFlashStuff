package §7]§
{
   import §'!G§.§1C§;
   import §'P§.§`;§;
   import §="§.§@5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'T§ extends §;T§
   {
       
      
      public var mParentContainer:§`;§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §'[§:Boolean = false;
      
      public var §7!A§:Boolean = true;
      
      public var §?!?§:Boolean = false;
      
      public var §@!a§:Boolean = false;
      
      private var §4+§:§0T§;
      
      private var §`'§:Boolean = false;
      
      protected var §+N§:Boolean = false;
      
      private var §[&§:Number;
      
      private var §4!5§:Number;
      
      private var §3I§:Number;
      
      private var §<^§:Number;
      
      private var §#B§:String;
      
      private var §^!$§:String;
      
      private var §06§:String;
      
      private var §-!5§:String;
      
      private var § W§:String;
      
      private var §7!3§:String;
      
      public function §'T§(param1:XML, param2:§`;§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§`;§ = param2;
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
            cls = §@5§.§>! §(this.mName);
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
               §1C§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§?!?§ = true;
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
            tmp = this.getParentView().§!!L§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§?!?§)
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
            this.§@!a§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§-!N§(data);
         this.§>!R§(data);
      }
      
      private function §#!K§() : void
      {
         if(!this.§4+§)
         {
            this.§4+§ = new §0T§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§3I§,this.§<^§,this.§#B§,this.§^!$§,this.§06§,this.§-!5§,this.§7!3§,this.§ W§);
         }
         this.§4+§.§7h§(this.§[&§,this.§4!5§);
         this.mClip.x = this.§4+§.x;
         this.mClip.y = this.§4+§.y;
         this.mClip.scaleX = this.§4+§.scaleX;
         this.mClip.scaleY = this.§4+§.scaleY;
         if(this.§`'§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§3I§,this.§<^§);
         }
      }
      
      private function §-!N§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§[&§ = _loc2_;
            this.§4!5§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§[&§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§[&§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§4!5§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§4!5§ = _loc3_;
            }
         }
         this.§3I§ = this.§[&§;
         this.§<^§ = this.§4!5§;
      }
      
      private function §>!R§(param1:XML) : void
      {
         this.§#B§ = param1.@alignH;
         this.§^!$§ = param1.@alignV;
         this.§06§ = param1.@scaleH;
         this.§-!5§ = param1.@scaleV;
         this.§ W§ = param1.@scaleFunction;
         this.§7!3§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§[L§(_loc2_);
         this.§'r§(_loc3_);
      }
      
      private function §'r§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§+N§ = true;
            }
         }
      }
      
      private function §[L§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§`'§ = true;
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
         this.§4+§ = null;
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
         this.§7!A§ = param1;
         this.mClip.visible = this.§7!A§ && this.§'[§;
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
         this.§'[§ = param1;
         this.mClip.visible = this.§7!A§ && this.§'[§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§@!a§)
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
      
      public function getParentView() : §^R§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§4+§)
         {
            this.§4+§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§4+§)
         {
            this.§4+§.y = this.mClip.y;
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
         return this.§[&§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§4!5§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§[&§ = param1;
         this.§#!K§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§4!5§ = param1;
         this.§#!K§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
