package §!^§
{
   import §-!'§.§in §;
   import §3v§.§1a§;
   import §^s§.§&"§;
   import com.rovio.assets.§''§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class § >§ extends §"%§
   {
       
      
      public var mParentContainer:§in §;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §?a§:Boolean = false;
      
      public var §-I§:Boolean = true;
      
      public var §?!2§:Boolean = false;
      
      public var §@4§:Boolean = false;
      
      private var §'W§:§-Q§;
      
      private var §-_§:Boolean = false;
      
      protected var §?=§:Boolean = false;
      
      private var §++§:Number;
      
      private var §5!A§:Number;
      
      private var §6!<§:Number;
      
      private var §"_§:Number;
      
      private var §;s§:String;
      
      private var §-Y§:String;
      
      private var §3z§:String;
      
      private var §[G§:String;
      
      private var §[,§:String;
      
      private var §>c§:String;
      
      public function § >§(param1:XML, param2:§in §, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§in § = param2;
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
            cls = §''§.§-C§(this.mName);
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
               §1a§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§?!2§ = true;
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
            tmp = this.getParentView().§`w§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§?!2§)
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
            this.§@4§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§&8§(data);
         this.§`!1§(data);
      }
      
      private function § !<§() : void
      {
         if(!this.§'W§)
         {
            this.§'W§ = new §-Q§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§6!<§,this.§"_§,this.§;s§,this.§-Y§,this.§3z§,this.§[G§,this.§>c§,this.§[,§);
         }
         this.§'W§.§=!F§(this.§++§,this.§5!A§);
         this.mClip.x = this.§'W§.x;
         this.mClip.y = this.§'W§.y;
         this.mClip.scaleX = this.§'W§.scaleX;
         this.mClip.scaleY = this.§'W§.scaleY;
         if(this.§-_§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§6!<§,this.§"_§);
         }
      }
      
      private function §&8§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§++§ = _loc2_;
            this.§5!A§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§++§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§++§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§5!A§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§5!A§ = _loc3_;
            }
         }
         this.§6!<§ = this.§++§;
         this.§"_§ = this.§5!A§;
      }
      
      private function §`!1§(param1:XML) : void
      {
         this.§;s§ = param1.@alignH;
         this.§-Y§ = param1.@alignV;
         this.§3z§ = param1.@scaleH;
         this.§[G§ = param1.@scaleV;
         this.§[,§ = param1.@scaleFunction;
         this.§>c§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§0H§(_loc2_);
         this.§9R§(_loc3_);
      }
      
      private function §9R§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§?=§ = true;
            }
         }
      }
      
      private function §0H§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§-_§ = true;
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
         this.§'W§ = null;
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
         this.§-I§ = param1;
         this.mClip.visible = this.§-I§ && this.§?a§;
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
         this.§?a§ = param1;
         this.mClip.visible = this.§-I§ && this.§?a§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§@4§)
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
      
      public function getParentView() : §&"§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§'W§)
         {
            this.§'W§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§'W§)
         {
            this.§'W§.y = this.mClip.y;
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
         return this.§++§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§5!A§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§++§ = param1;
         this.§ !<§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§5!A§ = param1;
         this.§ !<§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
