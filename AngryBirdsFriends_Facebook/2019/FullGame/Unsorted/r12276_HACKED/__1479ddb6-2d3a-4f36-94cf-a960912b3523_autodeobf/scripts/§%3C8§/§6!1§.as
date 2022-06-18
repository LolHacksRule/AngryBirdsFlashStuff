package §<8§
{
   import §#"3§.§4!h§;
   import §2$;§.§!"e§;
   import §=X§.§3§;
   import §[#A§.§+#<§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §6!1§ extends §8!g§
   {
       
      
      public var mParentContainer:§!"e§;
      
      public var mClip:MovieClip;
      
      protected var §-#3§:String;
      
      private var §5#v§:String;
      
      public var §&f§:Boolean = false;
      
      public var §?!v§:Boolean = true;
      
      public var §<2§:Boolean = false;
      
      public var §[$B§:Boolean = false;
      
      protected var §^#k§:§'#E§;
      
      private var §<"§:Boolean = false;
      
      protected var §^"u§:Boolean = false;
      
      private var §;%§:Number;
      
      private var §]"D§:Number;
      
      private var §'#H§:Number;
      
      private var §&?§:Number;
      
      private var §4y§:String;
      
      private var §0#1§:String;
      
      private var §`"8§:String;
      
      private var §+#V§:String;
      
      private var §=!;§:String;
      
      private var §,"=§:String;
      
      private var § "m§:Boolean = true;
      
      public function §6!1§(param1:XML, param2:§!"e§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§!"e§ = param2;
         var clip:MovieClip = param3;
         this.mParentContainer = parentContainer;
         this.§-#3§ = data.@name;
         this.§5#v§ = this.§-#3§.toUpperCase();
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
            cls = §=@§.§9!x§(this.name);
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
               §4!h§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§<2§ = true;
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
            tmp = this.getParentView().§8![§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§<2§)
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
            this.§[$B§ = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.§ "m§ = false;
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
         this.§`"o§(data);
         this.§@"n§(data);
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function get upperCaseName() : String
      {
         return this.§5#v§;
      }
      
      private function §>"§() : void
      {
         if(this.§ "m§)
         {
            if(!this.§^#k§)
            {
               this.§^#k§ = new §'#E§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§'#H§,this.§&?§,this.§4y§,this.§0#1§,this.§`"8§,this.§+#V§,this.§,"=§,this.§=!;§);
            }
            this.§^#k§.§5"d§(this.§;%§,this.§]"D§);
            this.mClip.x = this.§^#k§.x;
            this.mClip.y = this.§^#k§.y;
            this.mClip.scaleX = this.§^#k§.scaleX;
            this.mClip.scaleY = this.§^#k§.scaleY;
         }
         if(this.§<"§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§'#H§,this.§&?§);
         }
      }
      
      private function §`"o§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§;%§ = _loc2_;
            this.§]"D§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§;%§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§;%§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§]"D§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§]"D§ = _loc3_;
            }
         }
         this.§'#H§ = this.§;%§;
         this.§&?§ = this.§]"D§;
      }
      
      private function §@"n§(param1:XML) : void
      {
         this.§4y§ = param1.@alignH;
         this.§0#1§ = param1.@alignV;
         this.§`"8§ = param1.@scaleH;
         this.§+#V§ = param1.@scaleV;
         this.§=!;§ = param1.@scaleFunction;
         this.§,"=§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§1q§(_loc2_);
         this.§%!B§(_loc3_);
      }
      
      private function §%!B§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§^"u§ = true;
            }
         }
      }
      
      private function §1q§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§<"§ = true;
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
         this.§^#k§ = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3#6§
      {
         var _loc3_:§3#6§ = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§?!v§ = param1;
         this.mClip.visible = this.§?!v§ && this.§&f§;
         if(this.visible)
         {
            §0$7§();
         }
         else
         {
            §2"K§();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.§&f§ = param1;
         this.mClip.visible = this.§?!v§ && this.§&f§;
         if(this.visible)
         {
            §0$7§();
         }
         else
         {
            §2"K§();
         }
         if(this.§[$B§)
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
      
      public function getParentView() : §+#<§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§^#k§)
         {
            this.§^#k§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§^#k§)
         {
            this.§^#k§.y = this.mClip.y;
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
         if(this.§^#k§)
         {
            this.§^#k§.scaleX = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mClip.scaleX;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.mClip.scaleY = param1;
         if(this.§^#k§)
         {
            this.§^#k§.scaleY = param1;
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
         return this.§;%§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§]"D§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§;%§ = param1;
         this.§>"§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§]"D§ = param1;
         this.§>"§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§^"u§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§^"u§ = param1;
      }
   }
}
