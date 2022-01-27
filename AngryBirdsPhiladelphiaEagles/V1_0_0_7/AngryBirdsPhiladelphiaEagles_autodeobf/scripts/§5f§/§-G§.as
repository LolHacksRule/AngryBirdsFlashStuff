package §5f§
{
   import §!6§.§3!5§;
   import §5!<§.§@]§;
   import §=u§.§>v§;
   import com.rovio.assets.§@h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §-G§ extends §]_§
   {
       
      
      public var mParentContainer:§>v§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var §2!-§:Boolean = true;
      
      public var §6=§:Boolean = false;
      
      public var §3E§:Boolean = false;
      
      private var §46§:§"C§;
      
      private var §`!"§:Boolean = false;
      
      protected var §&l§:Boolean = false;
      
      private var §+!M§:Number;
      
      private var §9,§:Number;
      
      private var §1V§:Number;
      
      private var §get §:Number;
      
      private var §^!L§:String;
      
      private var §?!0§:String;
      
      private var §0I§:String;
      
      private var final:String;
      
      private var §1I§:String;
      
      private var §,n§:String;
      
      public function §-G§(param1:XML, param2:§>v§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§>v§ = param2;
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
            cls = §@h§.§[@§(this.mName);
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
               §3!5§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§6=§ = true;
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
            tmp = this.getParentView().§`!=§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§6=§)
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
            this.§3E§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§;!O§(data);
         this.§2O§(data);
      }
      
      private function §2^§() : void
      {
         if(!this.§46§)
         {
            this.§46§ = new §"C§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§1V§,this.§get §,this.§^!L§,this.§?!0§,this.§0I§,this.final,this.§,n§,this.§1I§);
         }
         this.§46§.§0!?§(this.§+!M§,this.§9,§);
         this.mClip.x = this.§46§.x;
         this.mClip.y = this.§46§.y;
         this.mClip.scaleX = this.§46§.scaleX;
         this.mClip.scaleY = this.§46§.scaleY;
         if(this.§`!"§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§1V§,this.§get §);
         }
      }
      
      private function §;!O§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§+!M§ = _loc2_;
            this.§9,§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§+!M§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§+!M§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§9,§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§9,§ = _loc3_;
            }
         }
         this.§1V§ = this.§+!M§;
         this.§get § = this.§9,§;
      }
      
      private function §2O§(param1:XML) : void
      {
         this.§^!L§ = param1.@alignH;
         this.§?!0§ = param1.@alignV;
         this.§0I§ = param1.@scaleH;
         this.final = param1.@scaleV;
         this.§1I§ = param1.@scaleFunction;
         this.§,n§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§ !M§(_loc2_);
         this.§84§(_loc3_);
      }
      
      private function §84§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§&l§ = true;
            }
         }
      }
      
      private function § !M§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§`!"§ = true;
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
         this.§46§ = null;
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
         this.§2!-§ = param1;
         this.mClip.visible = this.§2!-§ && this.mActive;
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
         this.mActive = param1;
         this.mClip.visible = this.§2!-§ && this.mActive;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§3E§)
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
      
      public function getParentView() : §@]§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§46§)
         {
            this.§46§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§46§)
         {
            this.§46§.y = this.mClip.y;
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
         return this.§+!M§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§9,§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§+!M§ = param1;
         this.§2^§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§9,§ = param1;
         this.§2^§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§&l§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§&l§ = param1;
      }
   }
}
