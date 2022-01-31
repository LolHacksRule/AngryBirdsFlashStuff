package §,!Q§
{
   import §!"'§.§0"Z§;
   import §#,§.§]$+§;
   import §%!-§.§5!z§;
   import §1#v§.§;!Y§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §8#=§ extends §6"n§
   {
       
      
      public var mParentContainer:§]$+§;
      
      public var mClip:MovieClip;
      
      protected var §!I§:String;
      
      private var §=Z§:String;
      
      public var §;o§:Boolean = false;
      
      public var §<"E§:Boolean = true;
      
      public var §2#?§:Boolean = false;
      
      public var §4$=§:Boolean = false;
      
      protected var §##f§:§>##§;
      
      private var §-!$§:Boolean = false;
      
      protected var §2"6§:Boolean = false;
      
      private var §[z§:Number;
      
      private var §`#9§:Number;
      
      private var §""K§:Number;
      
      private var §3$!§:Number;
      
      private var §@#b§:String;
      
      private var §]"E§:String;
      
      private var §!#G§:String;
      
      private var §=+§:String;
      
      private var §`"K§:String;
      
      private var §="[§:String;
      
      private var §8!w§:Boolean = true;
      
      public function §8#=§(param1:XML, param2:§]$+§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§]$+§ = param2;
         var clip:MovieClip = param3;
         this.mParentContainer = parentContainer;
         this.§!I§ = data.@name;
         this.§=Z§ = this.§!I§.toUpperCase();
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
            cls = §6$A§.§1!m§(this.name);
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
               §;!Y§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§2#?§ = true;
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
            tmp = this.getParentView().§7#x§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§2#?§)
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
            this.§4$=§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§8!w§ = false;
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
         this.§&#§(data);
         this.§4!;§(data);
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function get upperCaseName() : String
      {
         return this.§=Z§;
      }
      
      private function §-!J§() : void
      {
         if(this.§8!w§)
         {
            if(!this.§##f§)
            {
               this.§##f§ = new §>##§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§""K§,this.§3$!§,this.§@#b§,this.§]"E§,this.§!#G§,this.§=+§,this.§="[§,this.§`"K§);
            }
            this.§##f§.§!+§(this.§[z§,this.§`#9§);
            this.mClip.x = this.§##f§.x;
            this.mClip.y = this.§##f§.y;
            this.mClip.scaleX = this.§##f§.scaleX;
            this.mClip.scaleY = this.§##f§.scaleY;
         }
         if(this.§-!$§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§""K§,this.§3$!§);
         }
      }
      
      private function §&#§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§[z§ = _loc2_;
            this.§`#9§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§[z§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§[z§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§`#9§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§`#9§ = _loc3_;
            }
         }
         this.§""K§ = this.§[z§;
         this.§3$!§ = this.§`#9§;
      }
      
      private function §4!;§(param1:XML) : void
      {
         this.§@#b§ = param1.@alignH;
         this.§]"E§ = param1.@alignV;
         this.§!#G§ = param1.@scaleH;
         this.§=+§ = param1.@scaleV;
         this.§`"K§ = param1.@scaleFunction;
         this.§="[§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§7!b§(_loc2_);
         this.§3!c§(_loc3_);
      }
      
      private function §3!c§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§2"6§ = true;
            }
         }
      }
      
      private function §7!b§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§-!$§ = true;
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
         this.§##f§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §0"Z§
      {
         var _loc3_:§0"Z§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§<"E§ = param1;
         this.mClip.visible = this.§<"E§ && this.§;o§;
         if(this.visible)
         {
            §4!B§();
         }
         else
         {
            §1#@§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§;o§ = param1;
         this.mClip.visible = this.§<"E§ && this.§;o§;
         if(this.visible)
         {
            §4!B§();
         }
         else
         {
            §1#@§();
         }
         if(this.§4$=§)
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
      
      public function getParentView() : §5!z§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§##f§)
         {
            this.§##f§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§##f§)
         {
            this.§##f§.y = this.mClip.y;
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
         if(this.§##f§)
         {
            this.§##f§.scaleX = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mClip.scaleX;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.mClip.scaleY = param1;
         if(this.§##f§)
         {
            this.§##f§.scaleY = param1;
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
         return this.§[z§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§`#9§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§[z§ = param1;
         this.§-!J§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§`#9§ = param1;
         this.§-!J§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§2"6§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§2"6§ = param1;
      }
   }
}
