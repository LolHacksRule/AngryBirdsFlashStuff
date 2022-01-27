package §;"Y§
{
   import §+D§.§ #^§;
   import §5t§.Log;
   import §7!$§.§]#[§;
   import §<w§.§6#'§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §]#X§ extends §&#X§
   {
       
      
      public var mParentContainer:§ #^§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §;"w§:Boolean = false;
      
      public var §9C§:Boolean = true;
      
      public var §'"z§:Boolean = false;
      
      public var §'!"§:Boolean = false;
      
      protected var §=#B§:§["I§;
      
      private var §48§:Boolean = false;
      
      protected var §["U§:Boolean = false;
      
      private var §+"p§:Number;
      
      private var §?!"§:Number;
      
      private var §1%§:Number;
      
      private var §9!?§:Number;
      
      private var § "[§:String;
      
      private var §>;§:String;
      
      private var § "I§:String;
      
      private var §5#§:String;
      
      private var §@?§:String;
      
      private var §>"t§:String;
      
      private var §`"v§:Boolean = true;
      
      public function §]#X§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§ #^§ = param2;
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
            cls = §5_§.§`"G§(this.mName);
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
               Log.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§'"z§ = true;
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
            tmp = this.getParentView().§8!e§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§'"z§)
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
            this.§'!"§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§`"v§ = false;
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
         this.§-6§(data);
         this.§&#J§(data);
      }
      
      private function §%"§() : void
      {
         if(this.§`"v§)
         {
            if(!this.§=#B§)
            {
               this.§=#B§ = new §["I§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§1%§,this.§9!?§,this.§ "[§,this.§>;§,this.§ "I§,this.§5#§,this.§>"t§,this.§@?§);
            }
            this.§=#B§.§^v§(this.§+"p§,this.§?!"§);
            this.mClip.x = this.§=#B§.x;
            this.mClip.y = this.§=#B§.y;
            this.mClip.scaleX = this.§=#B§.scaleX;
            this.mClip.scaleY = this.§=#B§.scaleY;
         }
         if(this.§48§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§1%§,this.§9!?§);
         }
      }
      
      private function §-6§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§+"p§ = _loc2_;
            this.§?!"§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§+"p§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§+"p§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§?!"§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§?!"§ = _loc3_;
            }
         }
         this.§1%§ = this.§+"p§;
         this.§9!?§ = this.§?!"§;
      }
      
      private function §&#J§(param1:XML) : void
      {
         this.§ "[§ = param1.@alignH;
         this.§>;§ = param1.@alignV;
         this.§ "I§ = param1.@scaleH;
         this.§5#§ = param1.@scaleV;
         this.§@?§ = param1.@scaleFunction;
         this.§>"t§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§extends§(_loc2_);
         this.§,!S§(_loc3_);
      }
      
      private function §,!S§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§["U§ = true;
            }
         }
      }
      
      private function §extends§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§48§ = true;
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
         this.§=#B§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         var _loc3_:§6#'§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§9C§ = param1;
         this.mClip.visible = this.§9C§ && this.§;"w§;
         if(this.visible)
         {
            §<P§();
         }
         else
         {
            §#0§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§;"w§ = param1;
         this.mClip.visible = this.§9C§ && this.§;"w§;
         if(this.visible)
         {
            §<P§();
         }
         else
         {
            §#0§();
         }
         if(this.§'!"§)
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
      
      public function getParentView() : §]#[§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§=#B§)
         {
            this.§=#B§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§=#B§)
         {
            this.§=#B§.y = this.mClip.y;
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
         if(this.§=#B§)
         {
            this.§=#B§.scaleX = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mClip.scaleX;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.mClip.scaleY = param1;
         if(this.§=#B§)
         {
            this.§=#B§.scaleY = param1;
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
         return this.§+"p§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§?!"§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§+"p§ = param1;
         this.§%"§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§?!"§ = param1;
         this.§%"§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§["U§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§["U§ = param1;
      }
   }
}
