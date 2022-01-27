package §4!t§
{
   import §!i§.§1s§;
   import §""<§.§#N§;
   import §+w§.§,!@§;
   import §<!#§.§""§;
   import com.rovio.assets.§2!3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §?i§ extends §95§
   {
       
      
      public var mParentContainer:§1s§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §6!g§:Boolean = false;
      
      public var §1"G§:Boolean = true;
      
      public var §%!n§:Boolean = false;
      
      public var §3q§:Boolean = false;
      
      protected var §#"E§:§[F§;
      
      private var §?!H§:Boolean = false;
      
      protected var §5!#§:Boolean = false;
      
      private var §9!&§:Number;
      
      private var § !+§:Number;
      
      private var §,_§:Number;
      
      private var §#$§:Number;
      
      private var §<!K§:String;
      
      private var §%!v§:String;
      
      private var §]&§:String;
      
      private var §6"#§:String;
      
      private var §!"$§:String;
      
      private var §^!y§:String;
      
      private var §>J§:Boolean = true;
      
      public function §?i§(param1:XML, param2:§1s§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§1s§ = param2;
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
            cls = §2!3§.dynamic(this.mName);
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
               §#N§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§%!n§ = true;
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
            tmp = this.getParentView().§ !r§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§%!n§)
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
            this.§3q§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§>J§ = false;
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
         this.§?7§(data);
         this.§8[§(data);
      }
      
      private function §@"§() : void
      {
         if(this.§>J§)
         {
            if(!this.§#"E§)
            {
               this.§#"E§ = new §[F§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§,_§,this.§#$§,this.§<!K§,this.§%!v§,this.§]&§,this.§6"#§,this.§^!y§,this.§!"$§);
            }
            this.§#"E§.§'"§(this.§9!&§,this.§ !+§);
            this.mClip.x = this.§#"E§.x;
            this.mClip.y = this.§#"E§.y;
            this.mClip.scaleX = this.§#"E§.scaleX;
            this.mClip.scaleY = this.§#"E§.scaleY;
         }
         if(this.§?!H§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§,_§,this.§#$§);
         }
      }
      
      private function §?7§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§9!&§ = _loc2_;
            this.§ !+§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§9!&§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§9!&§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§ !+§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§ !+§ = _loc3_;
            }
         }
         this.§,_§ = this.§9!&§;
         this.§#$§ = this.§ !+§;
      }
      
      private function §8[§(param1:XML) : void
      {
         this.§<!K§ = param1.@alignH;
         this.§%!v§ = param1.@alignV;
         this.§]&§ = param1.@scaleH;
         this.§6"#§ = param1.@scaleV;
         this.§!"$§ = param1.@scaleFunction;
         this.§^!y§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§&!]§(_loc2_);
         this.§%!,§(_loc3_);
      }
      
      private function §%!,§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§5!#§ = true;
            }
         }
      }
      
      private function §&!]§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§?!H§ = true;
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
         this.§#"E§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §""§
      {
         var _loc3_:§""§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§1"G§ = param1;
         this.mClip.visible = this.§1"G§ && this.§6!g§;
         if(this.visible)
         {
            §%">§();
         }
         else
         {
            §-9§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§6!g§ = param1;
         this.mClip.visible = this.§1"G§ && this.§6!g§;
         if(this.visible)
         {
            §%">§();
         }
         else
         {
            §-9§();
         }
         if(this.§3q§)
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
      
      public function getParentView() : §,!@§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§#"E§)
         {
            this.§#"E§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§#"E§)
         {
            this.§#"E§.y = this.mClip.y;
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
         return this.§9!&§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§ !+§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§9!&§ = param1;
         this.§@"§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§ !+§ = param1;
         this.§@"§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§5!#§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§5!#§ = param1;
      }
   }
}
