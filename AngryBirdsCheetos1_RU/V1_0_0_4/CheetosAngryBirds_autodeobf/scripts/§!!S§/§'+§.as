package §!!S§
{
   import §3!M§.§7^§;
   import §@y§.§"!X§;
   import §^!&§.§;C§;
   import §`B§.§-Z§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §'+§ extends §^P§
   {
       
      
      public var mParentContainer:§7^§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §[!<§:Boolean = false;
      
      public var §2z§:Boolean = true;
      
      public var §`=§:Boolean = false;
      
      public var §3e§:Boolean = false;
      
      private var §8!L§:§4q§;
      
      private var §4[§:Boolean = false;
      
      protected var § 7§:Boolean = false;
      
      private var §!?§:Number;
      
      private var §7!J§:Number;
      
      private var §#<§:Number;
      
      private var §"C§:Number;
      
      private var §&!W§:String;
      
      private var §?L§:String;
      
      private var §^_§:String;
      
      private var §&!M§:String;
      
      private var §`!B§:String;
      
      private var §<F§:String;
      
      public function §'+§(param1:XML, param2:§7^§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§7^§ = param2;
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
            cls = §"!X§.§1!0§(this.mName);
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
               §;C§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§`=§ = true;
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
            tmp = this.getParentView().§1A§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§`=§)
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
            this.§3e§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§2!<§(data);
         this.§8Z§(data);
      }
      
      private function §-l§() : void
      {
         if(!this.§8!L§)
         {
            this.§8!L§ = new §4q§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§#<§,this.§"C§,this.§&!W§,this.§?L§,this.§^_§,this.§&!M§,this.§<F§,this.§`!B§);
         }
         this.§8!L§.§9,§(this.§!?§,this.§7!J§);
         this.mClip.x = this.§8!L§.x;
         this.mClip.y = this.§8!L§.y;
         this.mClip.scaleX = this.§8!L§.scaleX;
         this.mClip.scaleY = this.§8!L§.scaleY;
         if(this.§4[§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§#<§,this.§"C§);
         }
      }
      
      private function §2!<§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§!?§ = _loc2_;
            this.§7!J§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§!?§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§!?§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§7!J§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§7!J§ = _loc3_;
            }
         }
         this.§#<§ = this.§!?§;
         this.§"C§ = this.§7!J§;
      }
      
      private function §8Z§(param1:XML) : void
      {
         this.§&!W§ = param1.@alignH;
         this.§?L§ = param1.@alignV;
         this.§^_§ = param1.@scaleH;
         this.§&!M§ = param1.@scaleV;
         this.§`!B§ = param1.@scaleFunction;
         this.§<F§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§]W§(_loc2_);
         this.§!!>§(_loc3_);
      }
      
      private function §!!>§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§ 7§ = true;
            }
         }
      }
      
      private function §]W§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§4[§ = true;
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
         this.§8!L§ = null;
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
         this.§2z§ = param1;
         this.mClip.visible = this.§2z§ && this.§[!<§;
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
         this.§[!<§ = param1;
         this.mClip.visible = this.§2z§ && this.§[!<§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§3e§)
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
      
      public function getParentView() : §-Z§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§8!L§)
         {
            this.§8!L§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§8!L§)
         {
            this.§8!L§.y = this.mClip.y;
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
         return this.§!?§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§7!J§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§!?§ = param1;
         this.§-l§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§7!J§ = param1;
         this.§-l§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§ 7§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§ 7§ = param1;
      }
   }
}
