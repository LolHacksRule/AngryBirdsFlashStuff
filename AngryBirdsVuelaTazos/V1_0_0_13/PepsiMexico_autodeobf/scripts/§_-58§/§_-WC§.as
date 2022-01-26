package §_-58§
{
   import §_-1p§.§_-K9§;
   import §_-Ay§.§_-nw§;
   import §_-J-§.§_-9C§;
   import §_-J-§.§_-ZG§;
   import §_-ex§.§_-mR§;
   import flash.display.MovieClip;
   
   public class §_-WC§ extends §_-9C§
   {
       
      
      public var §_-Pz§:§_-K9§;
      
      public var §_-7u§:Array;
      
      public var §_-nJ§:Boolean = false;
      
      public function §_-WC§(param1:XML, param2:§_-WC§, param3:§_-K9§, param4:MovieClip = null)
      {
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:Class = null;
         this.mName = param1.@name;
         if(param3)
         {
            this.§_-Pz§ = param3;
            _loc11_ = §_-nw§.§_-Xm§(mName);
            mClip = new _loc11_();
            this.§_-Pz§.mMovieClip.addChild(mClip);
         }
         super(param1,param2,param4);
         this.§_-7u§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-7u§[this.§_-7u§.length] = new §_-WC§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-7u§[this.§_-7u§.length] = new §_-iR§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-7u§[this.§_-7u§.length] = new §_-8c§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-7u§[this.§_-7u§.length] = new §_-sg§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-7u§[this.§_-7u§.length] = new §_-Bu§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-7u§[this.§_-7u§.length] = new §_-tH§(_loc10_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-yv§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-yv§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-yv§(§_-ZE§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-yv§(§_-CK§,param1.@MouseOut);
         }
      }
      
      public function §_-y2§(param1:§_-9C§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§_-9C§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-9C§) : void
      {
         if(this.§_-7u§.indexOf(param1) < 0)
         {
            this.§_-7u§[this.§_-7u§.length] = param1;
            param1.setActiveStatus(this.§_-qf§);
            param1.setVisibility(this.§_-S7§ && param1.§_-S7§);
         }
      }
      
      public function removeComponent(param1:§_-9C§) : void
      {
         var _loc2_:int = this.§_-7u§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§_-7u§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-ZG§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-Pz§)
         {
            this.§_-Pz§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-7u§.length)
         {
            if(this.§_-7u§[_loc2_] is §_-9C§)
            {
               (this.§_-7u§[_loc2_] as §_-9C§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-7u§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-7u§.length)
            {
               if(this.§_-7u§[_loc1_] is §_-9C§)
               {
                  (this.§_-7u§[_loc1_] as §_-9C§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-7u§ = null;
         if(this.§_-Pz§)
         {
            this.§_-Pz§.mMovieClip.removeChild(mClip);
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
         var _loc2_:int = 0;
         super.onParentVisibilityChange(param1);
         if(this.§_-7u§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-7u§.length)
            {
               if(this.§_-7u§[_loc2_] is §_-9C§)
               {
                  (this.§_-7u§[_loc2_] as §_-9C§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-LQ§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-9C§)
            {
               (_loc3_ as §_-9C§).setVisibility(param2);
            }
            else
            {
               §_-mR§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-9C§
      {
         var _loc3_:§_-9C§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-7u§.length)
         {
            if(this.§_-7u§[_loc2_] is §_-9C§)
            {
               if((this.§_-7u§[_loc2_] as §_-9C§).mName.toUpperCase() == param1)
               {
                  return this.§_-7u§[_loc2_] as §_-9C§;
               }
               if(this.§_-7u§[_loc2_] is §_-WC§)
               {
                  _loc3_ = (this.§_-7u§[_loc2_] as §_-WC§).getItemByName(param1);
                  if(_loc3_ != null)
                  {
                     return _loc3_;
                  }
               }
            }
            _loc2_++;
         }
         return null;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         mClip.mouseEnabled = param1;
      }
      
      override public function getParentView() : §_-K9§
      {
         if(this.§_-Pz§)
         {
            return this.§_-Pz§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-7u§.length)
         {
            if(this.§_-7u§[_loc2_] is §_-9C§)
            {
               (this.§_-7u§[_loc2_] as §_-9C§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-7u§.length)
         {
            if(this.§_-7u§[_loc2_] is §_-9C§)
            {
               (this.§_-7u§[_loc2_] as §_-9C§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
