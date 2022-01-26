package §_-E-§
{
   import §_-PK§.§_-Jb§;
   import §_-PK§.§_-ZR§;
   import §_-Ux§.§_-2E§;
   import §_-ec§.§_-GK§;
   import §_-ot§.§_-o6§;
   import flash.display.MovieClip;
   
   public class §_-hw§ extends §_-ZR§
   {
       
      
      public var §_-by§:§_-2E§;
      
      public var §_-Oe§:Array;
      
      public var §_-Zn§:Boolean = false;
      
      public function §_-hw§(param1:XML, param2:§_-hw§, param3:§_-2E§, param4:MovieClip = null)
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
            this.§_-by§ = param3;
            _loc11_ = §_-GK§.§_-dR§(mName);
            mClip = new _loc11_();
            this.§_-by§.mMovieClip.addChild(mClip);
         }
         super(param1,param2,param4);
         this.§_-Oe§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-Oe§[this.§_-Oe§.length] = new §_-hw§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-Oe§[this.§_-Oe§.length] = new §_-IM§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-Oe§[this.§_-Oe§.length] = new §_-Fy§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-Oe§[this.§_-Oe§.length] = new §_-mm§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-Oe§[this.§_-Oe§.length] = new §_-RT§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-Oe§[this.§_-Oe§.length] = new §_-Yh§(_loc10_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-Lw§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-Lw§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-Lw§(§_-jr§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-Lw§(§_-07§,param1.@MouseOut);
         }
      }
      
      public function §_-TC§(param1:§_-ZR§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§_-ZR§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-ZR§) : void
      {
         if(this.§_-Oe§.indexOf(param1) < 0)
         {
            this.§_-Oe§[this.§_-Oe§.length] = param1;
            param1.setActiveStatus(this.§_-TY§);
            param1.setVisibility(this.§_-F4§ && param1.§_-F4§);
         }
      }
      
      public function removeComponent(param1:§_-ZR§) : void
      {
         var _loc2_:int = this.§_-Oe§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§_-Oe§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-Jb§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-by§)
         {
            this.§_-by§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Oe§.length)
         {
            if(this.§_-Oe§[_loc2_] is §_-ZR§)
            {
               (this.§_-Oe§[_loc2_] as §_-ZR§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-Oe§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-Oe§.length)
            {
               if(this.§_-Oe§[_loc1_] is §_-ZR§)
               {
                  (this.§_-Oe§[_loc1_] as §_-ZR§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-Oe§ = null;
         if(this.§_-by§)
         {
            this.§_-by§.mMovieClip.removeChild(mClip);
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
         if(this.§_-Oe§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-Oe§.length)
            {
               if(this.§_-Oe§[_loc2_] is §_-ZR§)
               {
                  (this.§_-Oe§[_loc2_] as §_-ZR§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-VF§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-ZR§)
            {
               (_loc3_ as §_-ZR§).setVisibility(param2);
            }
            else
            {
               §_-o6§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-ZR§
      {
         var _loc3_:§_-ZR§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Oe§.length)
         {
            if(this.§_-Oe§[_loc2_] is §_-ZR§)
            {
               if((this.§_-Oe§[_loc2_] as §_-ZR§).mName.toUpperCase() == param1)
               {
                  return this.§_-Oe§[_loc2_] as §_-ZR§;
               }
               if(this.§_-Oe§[_loc2_] is §_-hw§)
               {
                  _loc3_ = (this.§_-Oe§[_loc2_] as §_-hw§).getItemByName(param1);
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
      
      override public function getParentView() : §_-2E§
      {
         if(this.§_-by§)
         {
            return this.§_-by§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Oe§.length)
         {
            if(this.§_-Oe§[_loc2_] is §_-ZR§)
            {
               (this.§_-Oe§[_loc2_] as §_-ZR§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Oe§.length)
         {
            if(this.§_-Oe§[_loc2_] is §_-ZR§)
            {
               (this.§_-Oe§[_loc2_] as §_-ZR§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
