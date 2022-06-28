package §_-6C§
{
   import §_-0BH§.§_-FK§;
   import §_-MN§.§_-rD§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.*;
   
   public class §_-gt§ extends §_-rD§
   {
       
      
      public var §_-hg§:§_-5q§;
      
      public var §_-057§:Vector.<§_-rD§>;
      
      public var §_-lQ§:Boolean = false;
      
      public function §_-gt§(param1:XML, param2:§_-gt§, param3:§_-5q§, param4:MovieClip = null)
      {
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         this.mName = param1.@name;
         if(param3)
         {
            this.§_-hg§ = param3;
            if(!param4)
            {
               _loc12_ = §_-Fc§.§_-YE§(mName);
               mClip = new _loc12_();
               this.§_-hg§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§_-057§ = new Vector.<§_-rD§>();
         for each(_loc5_ in param1.Container)
         {
            this.§_-057§.push(new §_-gt§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-057§.push(new §_-05d§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-057§.push(new §_-Mu§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-057§.push(new §_-0Eo§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-057§.push(new §_-k6§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-057§.push(new §_-SW§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§_-057§.push(new §_-wm§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-Ay§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-Ay§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-Ay§(§_-0-Q§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-Ay§(§_-09A§,param1.@MouseOut);
         }
      }
      
      public function §_-02i§(param1:§_-rD§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §_-ZW§(param1:§_-rD§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-rD§) : void
      {
         if(this.§_-057§.indexOf(param1) < 0)
         {
            this.§_-057§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§_-rE§);
            param1.setVisibility(this.§_-ej§ && param1.§_-ej§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §_-08X§(param1:§_-rD§) : void
      {
         var _loc2_:int = this.§_-057§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§_-057§.splice(_loc2_,1);
            mClip.removeChild(param1.mClip);
         }
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         if(!mClip)
         {
            return;
         }
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
         if(_loc2_ && _loc2_.toUpperCase() == "TRUE")
         {
            this.setEnabled(true);
         }
         else
         {
            this.setEnabled(false);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-wU§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-hg§)
         {
            this.§_-hg§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§_-rD§ = null;
         for each(_loc2_ in this.§_-057§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-057§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-057§.length)
            {
               this.§_-057§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§_-057§ = null;
         if(this.§_-hg§)
         {
            this.§_-hg§.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         this.onParentVisibilityChange(param1);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:§_-rD§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§_-057§ != null)
         {
            for each(_loc2_ in this.§_-057§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §_-dA§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-rD§)
            {
               (_loc3_ as §_-rD§).setVisibility(param2);
            }
            else
            {
               §_-FK§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-rD§
      {
         var _loc2_:§_-rD§ = null;
         var _loc3_:§_-rD§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§_-057§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §_-gt§)
            {
               _loc3_ = (_loc2_ as §_-gt§).getItemByName(param1);
               if(_loc3_ != null)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         mClip.mouseEnabled = param1;
      }
      
      override public function getParentView() : §_-5q§
      {
         if(this.§_-hg§)
         {
            return this.§_-hg§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§_-rD§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§_-057§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§_-rD§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§_-057§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
