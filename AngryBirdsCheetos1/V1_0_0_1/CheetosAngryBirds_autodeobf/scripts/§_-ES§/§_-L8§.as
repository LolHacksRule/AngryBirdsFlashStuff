package §_-ES§
{
   import §_-3-§.§_-ki§;
   import §_-9J§.§_-mr§;
   import §_-9J§.§_-xD§;
   import §_-U0§.§_-tF§;
   import §_-q6§.§_-ZW§;
   import flash.display.MovieClip;
   
   public class §_-L8§ extends §_-mr§
   {
       
      
      public var §_-EC§:§_-ZW§;
      
      public var §_-l0§:Array;
      
      public var §_-KO§:Boolean = false;
      
      public function §_-L8§(param1:XML, param2:§_-L8§, param3:§_-ZW§, param4:MovieClip = null)
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
            this.§_-EC§ = param3;
            if(!param4)
            {
               _loc12_ = §_-ki§.§_-pB§(mName);
               mClip = new _loc12_();
               this.§_-EC§.mMovieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§_-l0§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-l0§[this.§_-l0§.length] = new §_-L8§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-l0§[this.§_-l0§.length] = new §_-GJ§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-l0§[this.§_-l0§.length] = new §_-Ng§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-l0§[this.§_-l0§.length] = new §_-To§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-l0§[this.§_-l0§.length] = new §_-ue§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-l0§[this.§_-l0§.length] = new §_-KD§(_loc10_,this);
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§_-l0§[this.§_-l0§.length] = new §_-u7§(_loc11_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-xm§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-xm§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-xm§(§_-QP§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-xm§(§_-md§,param1.@MouseOut);
         }
      }
      
      public function §_-W0§(param1:§_-mr§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §_-fB§(param1:§_-mr§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-mr§) : void
      {
         if(this.§_-l0§.indexOf(param1) < 0)
         {
            this.§_-l0§[this.§_-l0§.length] = param1;
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§_-rE§);
            param1.setVisibility(this.§_-jT§ && param1.§_-jT§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§_-mr§) : void
      {
         var _loc2_:int = this.§_-l0§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§_-l0§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-xD§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-EC§)
         {
            this.§_-EC§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-l0§.length)
         {
            if(this.§_-l0§[_loc2_] is §_-mr§)
            {
               (this.§_-l0§[_loc2_] as §_-mr§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-l0§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-l0§.length)
            {
               if(this.§_-l0§[_loc1_] is §_-mr§)
               {
                  (this.§_-l0§[_loc1_] as §_-mr§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-l0§ = null;
         if(this.§_-EC§)
         {
            this.§_-EC§.mMovieClip.removeChild(mClip);
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
         if(this.§_-l0§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-l0§.length)
            {
               if(this.§_-l0§[_loc2_] is §_-mr§)
               {
                  (this.§_-l0§[_loc2_] as §_-mr§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-t7§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-mr§)
            {
               (_loc3_ as §_-mr§).setVisibility(param2);
            }
            else
            {
               §_-tF§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-mr§
      {
         var _loc3_:§_-mr§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-l0§.length)
         {
            if(this.§_-l0§[_loc2_] is §_-mr§)
            {
               if((this.§_-l0§[_loc2_] as §_-mr§).mName.toUpperCase() == param1)
               {
                  return this.§_-l0§[_loc2_] as §_-mr§;
               }
               if(this.§_-l0§[_loc2_] is §_-L8§)
               {
                  _loc3_ = (this.§_-l0§[_loc2_] as §_-L8§).getItemByName(param1);
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
      
      override public function getParentView() : §_-ZW§
      {
         if(this.§_-EC§)
         {
            return this.§_-EC§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-l0§.length)
         {
            if(this.§_-l0§[_loc2_] is §_-mr§)
            {
               (this.§_-l0§[_loc2_] as §_-mr§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-l0§.length)
         {
            if(this.§_-l0§[_loc2_] is §_-mr§)
            {
               (this.§_-l0§[_loc2_] as §_-mr§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
