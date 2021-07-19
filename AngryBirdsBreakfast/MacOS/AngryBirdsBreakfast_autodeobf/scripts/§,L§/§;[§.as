package §,L§
{
   import §-!;§.§>!B§;
   import §0"$§.§"!a§;
   import §7!§.§2W§;
   import com.rovio.assets.§<V§;
   import each.§!!'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §;[§ extends §6!W§
   {
       
      
      public var mParentContainer:§"!a§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §2t§:Boolean = false;
      
      public var §]"'§:Boolean = true;
      
      public var §1!_§:Boolean = false;
      
      public var §&q§:Boolean = false;
      
      protected var §+!>§:§3!K§;
      
      private var §,!!§:Boolean = false;
      
      protected var §^!D§:Boolean = false;
      
      private var §+q§:Number;
      
      private var §;>§:Number;
      
      private var §?!9§:Number;
      
      private var §,!i§:Number;
      
      private var §!!_§:String;
      
      private var §,"#§:String;
      
      private var §[_§:String;
      
      private var §;!X§:String;
      
      private var §^!g§:String;
      
      private var §&7§:String;
      
      private var §2E§:Boolean = true;
      
      public function §;[§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§"!a§ = param2;
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
            cls = §<V§.§"!,§(this.mName);
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
               §!!'§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§1!_§ = true;
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
            tmp = this.getParentView().§1!z§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§1!_§)
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
            this.§&q§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§2E§ = false;
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
         this.§]B§(data);
         this.§9!h§(data);
      }
      
      private function §"!E§() : void
      {
         if(this.§2E§)
         {
            if(!this.§+!>§)
            {
               this.§+!>§ = new §3!K§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§?!9§,this.§,!i§,this.§!!_§,this.§,"#§,this.§[_§,this.§;!X§,this.§&7§,this.§^!g§);
            }
            this.§+!>§.§3!l§(this.§+q§,this.§;>§);
            this.mClip.x = this.§+!>§.x;
            this.mClip.y = this.§+!>§.y;
            this.mClip.scaleX = this.§+!>§.scaleX;
            this.mClip.scaleY = this.§+!>§.scaleY;
         }
         if(this.§,!!§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§?!9§,this.§,!i§);
         }
      }
      
      private function §]B§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§+q§ = _loc2_;
            this.§;>§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§+q§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§+q§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§;>§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§;>§ = _loc3_;
            }
         }
         this.§?!9§ = this.§+q§;
         this.§,!i§ = this.§;>§;
      }
      
      private function §9!h§(param1:XML) : void
      {
         this.§!!_§ = param1.@alignH;
         this.§,"#§ = param1.@alignV;
         this.§[_§ = param1.@scaleH;
         this.§;!X§ = param1.@scaleV;
         this.§^!g§ = param1.@scaleFunction;
         this.§&7§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§!!R§(_loc2_);
         this.§1"!§(_loc3_);
      }
      
      private function §1"!§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§^!D§ = true;
            }
         }
      }
      
      private function §!!R§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§,!!§ = true;
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
         this.§+!>§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         var _loc3_:§>!B§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§]"'§ = param1;
         this.mClip.visible = this.§]"'§ && this.§2t§;
         if(this.visible)
         {
            §8l§();
         }
         else
         {
            §[!?§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§2t§ = param1;
         this.mClip.visible = this.§]"'§ && this.§2t§;
         if(this.visible)
         {
            §8l§();
         }
         else
         {
            §[!?§();
         }
         if(this.§&q§)
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
      
      public function getParentView() : §2W§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§+!>§)
         {
            this.§+!>§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§+!>§)
         {
            this.§+!>§.y = this.mClip.y;
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
         return this.§+q§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§;>§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§+q§ = param1;
         this.§"!E§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§;>§ = param1;
         this.§"!E§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§^!D§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§^!D§ = param1;
      }
   }
}
