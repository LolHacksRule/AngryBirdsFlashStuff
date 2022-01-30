package §&<§
{
   import §0!$§.§#!-§;
   import §8,§.§8!h§;
   import §[!F§.§3j§;
   import §^!`§.§-"5§;
   import com.rovio.assets.§<U§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §2!q§ extends §^!#§
   {
       
      
      public var mParentContainer:§3j§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var § !3§:Boolean = false;
      
      public var §1p§:Boolean = true;
      
      public var §2!X§:Boolean = false;
      
      public var §+R§:Boolean = false;
      
      protected var §,$§:§@U§;
      
      private var §!>§:Boolean = false;
      
      protected var §!x§:Boolean = false;
      
      private var §;!;§:Number;
      
      private var §36§:Number;
      
      private var §^m§:Number;
      
      private var §]!<§:Number;
      
      private var §-!E§:String;
      
      private var §?F§:String;
      
      private var §7!o§:String;
      
      private var §&s§:String;
      
      private var § !2§:String;
      
      private var § !0§:String;
      
      private var §6'§:Boolean = true;
      
      public function §2!q§(param1:XML, param2:§3j§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§3j§ = param2;
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
            cls = §<U§.§5"0§(this.mName);
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
               §#!-§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§2!X§ = true;
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
            tmp = this.getParentView().§"!C§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§2!X§)
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
            this.§+R§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§6'§ = false;
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
         this.§?!T§(data);
         this.§5"1§(data);
      }
      
      private function §7x§() : void
      {
         if(this.§6'§)
         {
            if(!this.§,$§)
            {
               this.§,$§ = new §@U§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§^m§,this.§]!<§,this.§-!E§,this.§?F§,this.§7!o§,this.§&s§,this.§ !0§,this.§ !2§);
            }
            this.§,$§.§?+§(this.§;!;§,this.§36§);
            this.mClip.x = this.§,$§.x;
            this.mClip.y = this.§,$§.y;
            this.mClip.scaleX = this.§,$§.scaleX;
            this.mClip.scaleY = this.§,$§.scaleY;
         }
         if(this.§!>§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§^m§,this.§]!<§);
         }
      }
      
      private function §?!T§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§;!;§ = _loc2_;
            this.§36§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§;!;§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§;!;§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§36§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§36§ = _loc3_;
            }
         }
         this.§^m§ = this.§;!;§;
         this.§]!<§ = this.§36§;
      }
      
      private function §5"1§(param1:XML) : void
      {
         this.§-!E§ = param1.@alignH;
         this.§?F§ = param1.@alignV;
         this.§7!o§ = param1.@scaleH;
         this.§&s§ = param1.@scaleV;
         this.§ !2§ = param1.@scaleFunction;
         this.§ !0§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§3!#§(_loc2_);
         this.§+c§(_loc3_);
      }
      
      private function §+c§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§!x§ = true;
            }
         }
      }
      
      private function §3!#§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§!>§ = true;
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
         this.§,$§ = null;
         this.§,$§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8!h§
      {
         var _loc3_:§8!h§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§1p§ = param1;
         this.mClip.visible = this.§1p§ && this.§ !3§;
         if(this.visible)
         {
            §2!i§();
         }
         else
         {
            §?!_§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§ !3§ = param1;
         this.mClip.visible = this.§1p§ && this.§ !3§;
         if(this.visible)
         {
            §2!i§();
         }
         else
         {
            §?!_§();
         }
         if(this.§+R§)
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
      
      public function getParentView() : §-"5§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§,$§)
         {
            this.§,$§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§,$§)
         {
            this.§,$§.y = this.mClip.y;
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
         return this.§;!;§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§36§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§;!;§ = param1;
         this.§7x§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§36§ = param1;
         this.§7x§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§!x§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§!x§ = param1;
      }
   }
}
