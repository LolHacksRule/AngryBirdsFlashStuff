package §^"3§
{
   import § "L§.§23§;
   import §";§.§%"X§;
   import §6"p§.§^"t§;
   import §`§.§%#m§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §^"C§ extends §`$4§
   {
       
      
      public var mParentContainer:§23§;
      
      public var mClip:MovieClip;
      
      protected var §&$"§:String;
      
      private var §]#M§:String;
      
      public var §'-§:Boolean = false;
      
      public var §0#Z§:Boolean = true;
      
      public var §^#c§:Boolean = false;
      
      public var §!!-§:Boolean = false;
      
      protected var §0!Z§:§<I§;
      
      private var §4J§:Boolean = false;
      
      protected var §;#k§:Boolean = false;
      
      private var §6$'§:Number;
      
      private var §?"4§:Number;
      
      private var §1"@§:Number;
      
      private var §#0§:Number;
      
      private var §%$&§:String;
      
      private var §[!J§:String;
      
      private var §%"6§:String;
      
      private var §<"3§:String;
      
      private var §;"y§:String;
      
      private var §#"_§:String;
      
      private var §[!S§:Boolean = true;
      
      public function §^"C§(param1:XML, param2:§23§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§23§ = param2;
         var clip:MovieClip = param3;
         this.mParentContainer = parentContainer;
         this.§&$"§ = data.@name;
         this.§]#M§ = this.§&$"§.toUpperCase();
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
            cls = §[a§.§8#k§(this.name);
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
               §^"t§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§^#c§ = true;
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
            tmp = this.getParentView().§[!4§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§^#c§)
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
            this.§!!-§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§[!S§ = false;
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
         this.§;$6§(data);
         this.§%$?§(data);
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function get upperCaseName() : String
      {
         return this.§]#M§;
      }
      
      private function §;!B§() : void
      {
         if(this.§[!S§)
         {
            if(!this.§0!Z§)
            {
               this.§0!Z§ = new §<I§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§1"@§,this.§#0§,this.§%$&§,this.§[!J§,this.§%"6§,this.§<"3§,this.§#"_§,this.§;"y§);
            }
            this.§0!Z§.§0v§(this.§6$'§,this.§?"4§);
            this.mClip.x = this.§0!Z§.x;
            this.mClip.y = this.§0!Z§.y;
            this.mClip.scaleX = this.§0!Z§.scaleX;
            this.mClip.scaleY = this.§0!Z§.scaleY;
         }
         if(this.§4J§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§1"@§,this.§#0§);
         }
      }
      
      private function §;$6§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§6$'§ = _loc2_;
            this.§?"4§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§6$'§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§6$'§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§?"4§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§?"4§ = _loc3_;
            }
         }
         this.§1"@§ = this.§6$'§;
         this.§#0§ = this.§?"4§;
      }
      
      private function §%$?§(param1:XML) : void
      {
         this.§%$&§ = param1.@alignH;
         this.§[!J§ = param1.@alignV;
         this.§%"6§ = param1.@scaleH;
         this.§<"3§ = param1.@scaleV;
         this.§;"y§ = param1.@scaleFunction;
         this.§#"_§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§>"<§(_loc2_);
         this.§="W§(_loc3_);
      }
      
      private function §="W§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§;#k§ = true;
            }
         }
      }
      
      private function §>"<§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§4J§ = true;
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
         this.§0!Z§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%#m§
      {
         var _loc3_:§%#m§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§0#Z§ = param1;
         this.mClip.visible = this.§0#Z§ && this.§'-§;
         if(this.visible)
         {
            §-#X§();
         }
         else
         {
            §'#2§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§'-§ = param1;
         this.mClip.visible = this.§0#Z§ && this.§'-§;
         if(this.visible)
         {
            §-#X§();
         }
         else
         {
            §'#2§();
         }
         if(this.§!!-§)
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
      
      public function getParentView() : §%"X§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§0!Z§)
         {
            this.§0!Z§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§0!Z§)
         {
            this.§0!Z§.y = this.mClip.y;
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
         if(this.§0!Z§)
         {
            this.§0!Z§.scaleX = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mClip.scaleX;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.mClip.scaleY = param1;
         if(this.§0!Z§)
         {
            this.§0!Z§.scaleY = param1;
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
         return this.§6$'§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§?"4§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§6$'§ = param1;
         this.§;!B§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§?"4§ = param1;
         this.§;!B§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§;#k§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§;#k§ = param1;
      }
   }
}
