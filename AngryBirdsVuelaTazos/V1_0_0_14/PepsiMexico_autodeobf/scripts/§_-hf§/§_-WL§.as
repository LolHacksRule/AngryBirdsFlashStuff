package §_-hf§
{
   import §_-Eo§.§_-R4§;
   import §_-Jx§.§_-Ao§;
   import §_-Jx§.§_-dI§;
   import §_-W7§.§_-jT§;
   import §_-Yh§.§_-fA§;
   import flash.display.MovieClip;
   
   public class §_-WL§ extends §_-dI§
   {
       
      
      public var §_-wX§:§_-fA§;
      
      public var §_-pf§:Array;
      
      public var §_-If§:Boolean = false;
      
      public function §_-WL§(param1:XML, param2:§_-WL§, param3:§_-fA§, param4:MovieClip = null)
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
            this.§_-wX§ = param3;
            _loc11_ = §_-jT§.§_-kv§(mName);
            mClip = new _loc11_();
            this.§_-wX§.mMovieClip.addChild(mClip);
         }
         super(param1,param2,param4);
         this.§_-pf§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-pf§[this.§_-pf§.length] = new §_-WL§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-pf§[this.§_-pf§.length] = new §_-b-§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-pf§[this.§_-pf§.length] = new §_-6o§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-pf§[this.§_-pf§.length] = new §_-0J§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-pf§[this.§_-pf§.length] = new §_-Nx§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-pf§[this.§_-pf§.length] = new §_-3H§(_loc10_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-E2§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-E2§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-E2§(§_-Qy§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-E2§(§_-S8§,param1.@MouseOut);
         }
      }
      
      public function §_-eY§(param1:§_-dI§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§_-dI§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-dI§) : void
      {
         if(this.§_-pf§.indexOf(param1) < 0)
         {
            this.§_-pf§[this.§_-pf§.length] = param1;
            param1.setActiveStatus(this.§_-Yy§);
            param1.setVisibility(this.§_-F2§ && param1.§_-F2§);
         }
      }
      
      public function removeComponent(param1:§_-dI§) : void
      {
         var _loc2_:int = this.§_-pf§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§_-pf§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-Ao§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-wX§)
         {
            this.§_-wX§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-pf§.length)
         {
            if(this.§_-pf§[_loc2_] is §_-dI§)
            {
               (this.§_-pf§[_loc2_] as §_-dI§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-pf§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-pf§.length)
            {
               if(this.§_-pf§[_loc1_] is §_-dI§)
               {
                  (this.§_-pf§[_loc1_] as §_-dI§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-pf§ = null;
         if(this.§_-wX§)
         {
            this.§_-wX§.mMovieClip.removeChild(mClip);
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
         if(this.§_-pf§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-pf§.length)
            {
               if(this.§_-pf§[_loc2_] is §_-dI§)
               {
                  (this.§_-pf§[_loc2_] as §_-dI§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-lj§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-dI§)
            {
               (_loc3_ as §_-dI§).setVisibility(param2);
            }
            else
            {
               §_-R4§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-dI§
      {
         var _loc3_:§_-dI§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-pf§.length)
         {
            if(this.§_-pf§[_loc2_] is §_-dI§)
            {
               if((this.§_-pf§[_loc2_] as §_-dI§).mName.toUpperCase() == param1)
               {
                  return this.§_-pf§[_loc2_] as §_-dI§;
               }
               if(this.§_-pf§[_loc2_] is §_-WL§)
               {
                  _loc3_ = (this.§_-pf§[_loc2_] as §_-WL§).getItemByName(param1);
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
      
      override public function getParentView() : §_-fA§
      {
         if(this.§_-wX§)
         {
            return this.§_-wX§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-pf§.length)
         {
            if(this.§_-pf§[_loc2_] is §_-dI§)
            {
               (this.§_-pf§[_loc2_] as §_-dI§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-pf§.length)
         {
            if(this.§_-pf§[_loc2_] is §_-dI§)
            {
               (this.§_-pf§[_loc2_] as §_-dI§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
