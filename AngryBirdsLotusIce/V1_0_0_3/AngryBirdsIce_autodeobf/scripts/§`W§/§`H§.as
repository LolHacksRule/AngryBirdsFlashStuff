package §`W§
{
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §[v§.§&F§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §`H§ extends §-[§
   {
       
      
      public var mParentContainer:§&F§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §^[§:Boolean = false;
      
      public var §^!@§:Boolean = true;
      
      public var §0T§:Boolean = false;
      
      public var §<!9§:Boolean = false;
      
      private var §`t§:§1!@§;
      
      private var §'N§:Boolean = false;
      
      protected var §!8§:Boolean = false;
      
      private var §<j§:Number;
      
      private var §+Z§:Number;
      
      private var §7G§:Number;
      
      private var §0b§:Number;
      
      private var §&P§:String;
      
      private var §"S§:String;
      
      private var §![§:String;
      
      private var §4M§:String;
      
      private var §@!'§:String;
      
      private var §<!1§:String;
      
      public function §`H§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§&F§ = param2;
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
            cls = §>D§.§`C§(this.mName);
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
               §3f§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§0T§ = true;
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
            tmp = this.getParentView().§>P§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§0T§)
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
            this.§<!9§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§`U§(data);
         this.§%J§(data);
      }
      
      private function §[!4§() : void
      {
         if(!this.§`t§)
         {
            this.§`t§ = new §1!@§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§7G§,this.§0b§,this.§&P§,this.§"S§,this.§![§,this.§4M§,this.§<!1§,this.§@!'§);
         }
         this.§`t§.§]d§(this.§<j§,this.§+Z§);
         this.mClip.x = this.§`t§.x;
         this.mClip.y = this.§`t§.y;
         this.mClip.scaleX = this.§`t§.scaleX;
         this.mClip.scaleY = this.§`t§.scaleY;
         if(this.§'N§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§7G§,this.§0b§);
         }
      }
      
      private function §`U§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§<j§ = _loc2_;
            this.§+Z§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§<j§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§<j§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§+Z§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§+Z§ = _loc3_;
            }
         }
         this.§7G§ = this.§<j§;
         this.§0b§ = this.§+Z§;
      }
      
      private function §%J§(param1:XML) : void
      {
         this.§&P§ = param1.@alignH;
         this.§"S§ = param1.@alignV;
         this.§![§ = param1.@scaleH;
         this.§4M§ = param1.@scaleV;
         this.§@!'§ = param1.@scaleFunction;
         this.§<!1§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§#S§(_loc2_);
         this.§null §(_loc3_);
      }
      
      private function §null §(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§!8§ = true;
            }
         }
      }
      
      private function §#S§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§'N§ = true;
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
         this.§`t§ = null;
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
         this.§^!@§ = param1;
         this.mClip.visible = this.§^!@§ && this.§^[§;
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
         this.§^[§ = param1;
         this.mClip.visible = this.§^!@§ && this.§^[§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§<!9§)
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
      
      public function getParentView() : §#H§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§`t§)
         {
            this.§`t§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§`t§)
         {
            this.§`t§.y = this.mClip.y;
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
         return this.§<j§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§+Z§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§<j§ = param1;
         this.§[!4§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§+Z§ = param1;
         this.§[!4§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
