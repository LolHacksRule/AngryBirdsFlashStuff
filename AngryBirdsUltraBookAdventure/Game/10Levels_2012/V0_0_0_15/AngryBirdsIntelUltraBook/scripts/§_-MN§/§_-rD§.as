package §_-MN§
{
   import §_-0BH§.§_-FK§;
   import §_-6C§.§_-gt§;
   import §_-Yl§.§_-5q§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-rD§ extends §_-wU§
   {
       
      
      public var mParentContainer:§_-gt§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §_-rE§:Boolean = false;
      
      public var §_-ej§:Boolean = true;
      
      public var §_-LJ§:Boolean = false;
      
      public var §_-0F8§:Boolean = false;
      
      private var §_-nv§:§_-0I§;
      
      private var §_-tn§:Boolean = false;
      
      protected var §_-pb§:Boolean = false;
      
      private var §_-AC§:Number;
      
      private var §_-bK§:Number;
      
      private var §_-I6§:Number;
      
      private var §_-to§:Number;
      
      private var §_-mb§:String;
      
      private var §_-01i§:String;
      
      private var §_-Zq§:String;
      
      private var §else §:String;
      
      private var §_-0BX§:String;
      
      private var §_-fu§:String;
      
      public function §_-rD§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:§_-gt§ = param2;
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
            cls = §_-Fc§.§_-YE§(this.mName);
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
               §_-FK§.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.§_-LJ§ = true;
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
            tmp = this.getParentView().§_-Zv§(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.§_-LJ§)
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
            this.§_-0F8§ = true;
            this.mClip.stop();
         }
         super(this.mClip);
         this.readInitialVisibility(data);
         this.§_-T9§(data);
         this.§_-0Ac§(data);
      }
      
      private function §_-08V§() : void
      {
         if(!this.§_-nv§)
         {
            this.§_-nv§ = new §_-0I§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§_-I6§,this.§_-to§,this.§_-mb§,this.§_-01i§,this.§_-Zq§,this.§else §,this.§_-fu§,this.§_-0BX§);
         }
         this.§_-nv§.§_-Vi§(this.§_-AC§,this.§_-bK§);
         this.mClip.x = this.§_-nv§.x;
         this.mClip.y = this.§_-nv§.y;
         this.mClip.scaleX = this.§_-nv§.scaleX;
         this.mClip.scaleY = this.§_-nv§.scaleY;
         if(this.§_-tn§)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.§_-I6§,this.§_-to§);
         }
      }
      
      private function §_-T9§(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.§_-AC§ = _loc2_;
            this.§_-bK§ = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.§_-AC§ = this.mParentContainer.viewWidth;
            }
            else
            {
               this.§_-AC§ = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.§_-bK§ = this.mParentContainer.viewHeight;
            }
            else
            {
               this.§_-bK§ = _loc3_;
            }
         }
         this.§_-I6§ = this.§_-AC§;
         this.§_-to§ = this.§_-bK§;
      }
      
      private function §_-0Ac§(param1:XML) : void
      {
         this.§_-mb§ = param1.@alignH;
         this.§_-01i§ = param1.@alignV;
         this.§_-Zq§ = param1.@scaleH;
         this.§else § = param1.@scaleV;
         this.§_-0BX§ = param1.@scaleFunction;
         this.§_-fu§ = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.§_-Q1§(_loc2_);
         this.§_-jt§(_loc3_);
      }
      
      private function §_-jt§(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.§_-pb§ = true;
            }
         }
      }
      
      private function §_-Q1§(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.§_-tn§ = true;
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
         this.§_-nv§ = null;
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
         this.§_-ej§ = param1;
         this.mClip.visible = this.§_-ej§ && this.§_-rE§;
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
         this.§_-rE§ = param1;
         this.mClip.visible = this.§_-ej§ && this.§_-rE§;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.§_-0F8§)
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
      
      public function getParentView() : §_-5q§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.§_-nv§)
         {
            this.§_-nv§.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.§_-nv§)
         {
            this.§_-nv§.y = this.mClip.y;
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
         return this.§_-AC§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§_-bK§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.§_-AC§ = param1;
         this.§_-08V§();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.§_-bK§ = param1;
         this.§_-08V§();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§_-pb§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.§_-pb§ = param1;
      }
   }
}
