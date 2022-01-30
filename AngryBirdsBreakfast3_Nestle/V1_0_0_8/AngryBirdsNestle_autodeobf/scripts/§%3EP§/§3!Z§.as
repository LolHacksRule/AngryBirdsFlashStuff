package §>P§
{
   import §5<§.§58§;
   import §;"+§.§^!i§;
   import §;4§.§]!%§;
   import §<" §.§]!g§;
   import com.rovio.assets.§2"&§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §3!Z§ extends §,3§
   {
       
      
      public var mParentContainer:§^!i§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §[!D§:Boolean = false;
      
      public var §2!a§:Boolean = true;
      
      public var §6!G§:Boolean = false;
      
      public var §4R§:Boolean = false;
      
      protected var §72§:§@!F§;
      
      private var §>!G§:Boolean = false;
      
      protected var §7"6§:Boolean = false;
      
      private var §'"+§:Number;
      
      private var §,!T§:Number;
      
      private var §+!0§:Number;
      
      private var §<!g§:Number;
      
      private var §""-§:String;
      
      private var §0U§:String;
      
      private var §=+§:String;
      
      private var §4!j§:String;
      
      private var §0" §:String;
      
      private var § !Q§:String;
      
      private var §^_§:Boolean = true;
      
      public function §3!Z§(param1:XML, param2:§^!i§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§^!i§ = param2;
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
            cls = §2"&§.§<$§(this.mName);
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
               §]!%§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§6!G§ = true;
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
            tmp = this.getParentView().§`!A§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§6!G§)
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
            this.§4R§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§^_§ = false;
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
         this.§@!K§(data);
         this.§^!%§(data);
      }
      
      private function §"3§() : void
      {
         if(this.§^_§)
         {
            if(!this.§72§)
            {
               this.§72§ = new §@!F§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§+!0§,this.§<!g§,this.§""-§,this.§0U§,this.§=+§,this.§4!j§,this.§ !Q§,this.§0" §);
            }
            this.§72§.§#>§(this.§'"+§,this.§,!T§);
            this.mClip.x = this.§72§.x;
            this.mClip.y = this.§72§.y;
            this.mClip.scaleX = this.§72§.scaleX;
            this.mClip.scaleY = this.§72§.scaleY;
         }
         if(this.§>!G§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§+!0§,this.§<!g§);
         }
      }
      
      private function §@!K§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§'"+§ = _loc2_;
            this.§,!T§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§'"+§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§'"+§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§,!T§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§,!T§ = _loc3_;
            }
         }
         this.§+!0§ = this.§'"+§;
         this.§<!g§ = this.§,!T§;
      }
      
      private function §^!%§(param1:XML) : void
      {
         this.§""-§ = param1.@alignH;
         this.§0U§ = param1.@alignV;
         this.§=+§ = param1.@scaleH;
         this.§4!j§ = param1.@scaleV;
         this.§0" § = param1.@scaleFunction;
         this.§ !Q§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§7!p§(_loc2_);
         this.§=k§(_loc3_);
      }
      
      private function §=k§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§7"6§ = true;
            }
         }
      }
      
      private function §7!p§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§>!G§ = true;
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
         this.§72§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]!g§
      {
         var _loc3_:§]!g§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§2!a§ = param1;
         this.mClip.visible = this.§2!a§ && this.§[!D§;
         if(this.visible)
         {
            §+"1§();
         }
         else
         {
            §#!#§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§[!D§ = param1;
         this.mClip.visible = this.§2!a§ && this.§[!D§;
         if(this.visible)
         {
            §+"1§();
         }
         else
         {
            §#!#§();
         }
         if(this.§4R§)
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
      
      public function getParentView() : §58§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§72§)
         {
            this.§72§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§72§)
         {
            this.§72§.y = this.mClip.y;
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
         return this.§'"+§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§,!T§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§'"+§ = param1;
         this.§"3§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§,!T§ = param1;
         this.§"3§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§7"6§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§7"6§ = param1;
      }
   }
}
