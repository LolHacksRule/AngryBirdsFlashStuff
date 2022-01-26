package §_-TW§
{
   import §_-QM§.§_-Ns§;
   import §_-ZG§.§_-Ne§;
   import §_-p7§.§_-WY§;
   import §_-xN§.§_-fA§;
   import §_-xN§.§_-pB§;
   import flash.display.MovieClip;
   
   public class §_-qq§ extends §_-fA§
   {
       
      
      public var §_-5S§:§_-Ns§;
      
      public var §_-rp§:Array;
      
      public var §_-E4§:Boolean = false;
      
      public function §_-qq§(param1:XML, param2:§_-qq§, param3:§_-Ns§, param4:MovieClip = null)
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
            this.§_-5S§ = param3;
            _loc11_ = §_-WY§.§_-fs§(mName);
            mClip = new _loc11_();
            this.§_-5S§.mMovieClip.addChild(mClip);
         }
         super(param1,param2,param4);
         this.§_-rp§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-rp§[this.§_-rp§.length] = new §_-qq§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-rp§[this.§_-rp§.length] = new §_-CI§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-rp§[this.§_-rp§.length] = new §_-r6§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-rp§[this.§_-rp§.length] = new §_-iD§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-rp§[this.§_-rp§.length] = new §_-2x§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-rp§[this.§_-rp§.length] = new §_-c3§(_loc10_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-sR§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-sR§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-sR§(§_-DH§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-sR§(§_-Yg§,param1.@MouseOut);
         }
      }
      
      public function §_-T-§(param1:§_-fA§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§_-fA§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-fA§) : void
      {
         if(this.§_-rp§.indexOf(param1) < 0)
         {
            this.§_-rp§[this.§_-rp§.length] = param1;
            param1.setActiveStatus(this.§_-Wx§);
            param1.setVisibility(this.§_-UE§ && param1.§_-UE§);
         }
      }
      
      public function removeComponent(param1:§_-fA§) : void
      {
         var _loc2_:int = this.§_-rp§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§_-rp§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-pB§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-5S§)
         {
            this.§_-5S§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-rp§.length)
         {
            if(this.§_-rp§[_loc2_] is §_-fA§)
            {
               (this.§_-rp§[_loc2_] as §_-fA§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-rp§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-rp§.length)
            {
               if(this.§_-rp§[_loc1_] is §_-fA§)
               {
                  (this.§_-rp§[_loc1_] as §_-fA§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-rp§ = null;
         if(this.§_-5S§)
         {
            this.§_-5S§.mMovieClip.removeChild(mClip);
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
         if(this.§_-rp§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-rp§.length)
            {
               if(this.§_-rp§[_loc2_] is §_-fA§)
               {
                  (this.§_-rp§[_loc2_] as §_-fA§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-ZC§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-fA§)
            {
               (_loc3_ as §_-fA§).setVisibility(param2);
            }
            else
            {
               §_-Ne§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-fA§
      {
         var _loc3_:§_-fA§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-rp§.length)
         {
            if(this.§_-rp§[_loc2_] is §_-fA§)
            {
               if((this.§_-rp§[_loc2_] as §_-fA§).mName.toUpperCase() == param1)
               {
                  return this.§_-rp§[_loc2_] as §_-fA§;
               }
               if(this.§_-rp§[_loc2_] is §_-qq§)
               {
                  _loc3_ = (this.§_-rp§[_loc2_] as §_-qq§).getItemByName(param1);
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
      
      override public function getParentView() : §_-Ns§
      {
         if(this.§_-5S§)
         {
            return this.§_-5S§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-rp§.length)
         {
            if(this.§_-rp§[_loc2_] is §_-fA§)
            {
               (this.§_-rp§[_loc2_] as §_-fA§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-rp§.length)
         {
            if(this.§_-rp§[_loc2_] is §_-fA§)
            {
               (this.§_-rp§[_loc2_] as §_-fA§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
