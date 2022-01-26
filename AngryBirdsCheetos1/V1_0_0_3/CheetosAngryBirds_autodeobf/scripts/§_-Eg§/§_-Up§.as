package §_-Eg§
{
   import §_-16§.§_-MF§;
   import §_-16§.§_-VR§;
   import §_-2B§.§_-wA§;
   import §_-r6§.§_-Oy§;
   import §_-xL§.§_-1-§;
   import flash.display.MovieClip;
   
   public class §_-Up§ extends §_-MF§
   {
       
      
      public var §_-ol§:§_-1-§;
      
      public var §_-3P§:Array;
      
      public var §_-5J§:Boolean = false;
      
      public function §_-Up§(param1:XML, param2:§_-Up§, param3:§_-1-§, param4:MovieClip = null)
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
            this.§_-ol§ = param3;
            if(!param4)
            {
               _loc12_ = §_-wA§.§_-Mh§(mName);
               mClip = new _loc12_();
               this.§_-ol§.mMovieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§_-3P§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-3P§[this.§_-3P§.length] = new §_-Up§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-3P§[this.§_-3P§.length] = new §_-y2§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-3P§[this.§_-3P§.length] = new §_-hf§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-3P§[this.§_-3P§.length] = new §_-MT§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-3P§[this.§_-3P§.length] = new §_-AG§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-3P§[this.§_-3P§.length] = new §_-RK§(_loc10_,this);
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§_-3P§[this.§_-3P§.length] = new §_-gm§(_loc11_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-jo§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-jo§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-jo§(§_-jw§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-jo§(§_-Gu§,param1.@MouseOut);
         }
      }
      
      public function §_-Pw§(param1:§_-MF§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§_-MF§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-MF§) : void
      {
         if(this.§_-3P§.indexOf(param1) < 0)
         {
            this.§_-3P§[this.§_-3P§.length] = param1;
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§_-c8§);
            param1.setVisibility(this.§_-tk§ && param1.§_-tk§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§_-MF§) : void
      {
         var _loc2_:int = this.§_-3P§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§_-3P§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-VR§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-ol§)
         {
            this.§_-ol§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-3P§.length)
         {
            if(this.§_-3P§[_loc2_] is §_-MF§)
            {
               (this.§_-3P§[_loc2_] as §_-MF§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-3P§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-3P§.length)
            {
               if(this.§_-3P§[_loc1_] is §_-MF§)
               {
                  (this.§_-3P§[_loc1_] as §_-MF§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-3P§ = null;
         if(this.§_-ol§)
         {
            this.§_-ol§.mMovieClip.removeChild(mClip);
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
         if(this.§_-3P§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-3P§.length)
            {
               if(this.§_-3P§[_loc2_] is §_-MF§)
               {
                  (this.§_-3P§[_loc2_] as §_-MF§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-km§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-MF§)
            {
               (_loc3_ as §_-MF§).setVisibility(param2);
            }
            else
            {
               §_-Oy§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-MF§
      {
         var _loc3_:§_-MF§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-3P§.length)
         {
            if(this.§_-3P§[_loc2_] is §_-MF§)
            {
               if((this.§_-3P§[_loc2_] as §_-MF§).mName.toUpperCase() == param1)
               {
                  return this.§_-3P§[_loc2_] as §_-MF§;
               }
               if(this.§_-3P§[_loc2_] is §_-Up§)
               {
                  _loc3_ = (this.§_-3P§[_loc2_] as §_-Up§).getItemByName(param1);
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
      
      override public function getParentView() : §_-1-§
      {
         if(this.§_-ol§)
         {
            return this.§_-ol§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-3P§.length)
         {
            if(this.§_-3P§[_loc2_] is §_-MF§)
            {
               (this.§_-3P§[_loc2_] as §_-MF§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-3P§.length)
         {
            if(this.§_-3P§[_loc2_] is §_-MF§)
            {
               (this.§_-3P§[_loc2_] as §_-MF§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
