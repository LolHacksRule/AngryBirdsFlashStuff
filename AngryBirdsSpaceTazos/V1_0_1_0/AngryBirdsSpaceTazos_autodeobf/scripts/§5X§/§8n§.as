package §5X§
{
   import §0N§.§2!@§;
   import §77§.§ ",§;
   import §<W§.§]"+§;
   import §^=§.§1"F§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §8n§ extends §+!#§
   {
       
      
      public var mParentContainer:§ ",§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §-7§:Boolean = false;
      
      public var §?G§:Boolean = true;
      
      public var §3A§:Boolean = false;
      
      public var §7!K§:Boolean = false;
      
      protected var §3!M§:§&!H§;
      
      private var §>H§:Boolean = false;
      
      protected var §-O§:Boolean = false;
      
      private var § !%§:Number;
      
      private var §=D§:Number;
      
      private var §!"D§:Number;
      
      private var §5!j§:Number;
      
      private var §]7§:String;
      
      private var §;!H§:String;
      
      private var §4v§:String;
      
      private var §[2§:String;
      
      private var §try§:String;
      
      private var §!=§:String;
      
      private var §`!1§:Boolean = true;
      
      public function §8n§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§ ",§ = param2;
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
            cls = § !h§.§["3§(this.mName);
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
               §2!@§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§3A§ = true;
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
            tmp = this.getParentView().§ W§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§3A§)
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
            this.§7!K§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§`!1§ = false;
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
         this.§3o§(data);
         this.§9!p§(data);
      }
      
      private function §@O§() : void
      {
         if(this.§`!1§)
         {
            if(!this.§3!M§)
            {
               this.§3!M§ = new §&!H§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§!"D§,this.§5!j§,this.§]7§,this.§;!H§,this.§4v§,this.§[2§,this.§!=§,this.§try§);
            }
            this.§3!M§.§'-§(this.§ !%§,this.§=D§);
            this.mClip.x = this.§3!M§.x;
            this.mClip.y = this.§3!M§.y;
            this.mClip.scaleX = this.§3!M§.scaleX;
            this.mClip.scaleY = this.§3!M§.scaleY;
         }
         if(this.§>H§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§!"D§,this.§5!j§);
         }
      }
      
      private function §3o§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§ !%§ = _loc2_;
            this.§=D§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§ !%§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§ !%§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§=D§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§=D§ = _loc3_;
            }
         }
         this.§!"D§ = this.§ !%§;
         this.§5!j§ = this.§=D§;
      }
      
      private function §9!p§(param1:XML) : void
      {
         this.§]7§ = param1.@alignH;
         this.§;!H§ = param1.@alignV;
         this.§4v§ = param1.@scaleH;
         this.§[2§ = param1.@scaleV;
         this.§try§ = param1.@scaleFunction;
         this.§!=§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§+!n§(_loc2_);
         this.§2k§(_loc3_);
      }
      
      private function §2k§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§-O§ = true;
            }
         }
      }
      
      private function §+!n§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§>H§ = true;
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
         this.§3!M§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         var _loc3_:§]"+§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§?G§ = param1;
         this.mClip.visible = this.§?G§ && this.§-7§;
         if(this.visible)
         {
            §#!#§();
         }
         else
         {
            §'I§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§-7§ = param1;
         this.mClip.visible = this.§?G§ && this.§-7§;
         if(this.visible)
         {
            §#!#§();
         }
         else
         {
            §'I§();
         }
         if(this.§7!K§)
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
      }
      
      public function getParentView() : §1"F§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§3!M§)
         {
            this.§3!M§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§3!M§)
         {
            this.§3!M§.y = this.mClip.y;
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
         return this.§ !%§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§=D§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§ !%§ = param1;
         this.§@O§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§=D§ = param1;
         this.§@O§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§-O§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§-O§ = param1;
      }
   }
}
