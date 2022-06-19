package §_-ab§
{
   import §_-A§.§_-Hw§;
   import §_-A§.§_-KQ§;
   import §_-Eq§.§_-q§;
   import §_-aA§.§_-I0§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   
   public class §_-IP§ extends §_-Hw§
   {
       
      
      public var §_-wA§:§_-S6§;
      
      public var §_-uU§:Array;
      
      public var §_-2M§:Boolean = false;
      
      public function §_-IP§(param1:XML, param2:§_-IP§, param3:§_-S6§, param4:MovieClip = null)
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
            this.§_-wA§ = param3;
            if(!param4)
            {
               _loc12_ = §_-q§.§_-Ti§(mName);
               mClip = new _loc12_();
               this.§_-wA§.mMovieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§_-uU§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-uU§[this.§_-uU§.length] = new §_-IP§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-uU§[this.§_-uU§.length] = new §_-EN§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-uU§[this.§_-uU§.length] = new §_-q4§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-uU§[this.§_-uU§.length] = new §_-5q§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-uU§[this.§_-uU§.length] = new §_-1E§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-uU§[this.§_-uU§.length] = new §_-EI§(_loc10_,this);
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§_-uU§[this.§_-uU§.length] = new §_-Rj§(_loc11_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-vq§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-vq§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-vq§(§_-M7§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-vq§(§_-xl§,param1.@MouseOut);
         }
      }
      
      public function §_-90§(param1:§_-Hw§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §_-pS§(param1:§_-Hw§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-Hw§) : void
      {
         if(this.§_-uU§.indexOf(param1) < 0)
         {
            this.§_-uU§[this.§_-uU§.length] = param1;
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§_-00L§);
            param1.setVisibility(this.§_-5i§ && param1.§_-5i§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§_-Hw§) : void
      {
         var _loc2_:int = this.§_-uU§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§_-uU§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-KQ§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-wA§)
         {
            this.§_-wA§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-uU§.length)
         {
            if(this.§_-uU§[_loc2_] is §_-Hw§)
            {
               (this.§_-uU§[_loc2_] as §_-Hw§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-uU§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-uU§.length)
            {
               if(this.§_-uU§[_loc1_] is §_-Hw§)
               {
                  (this.§_-uU§[_loc1_] as §_-Hw§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-uU§ = null;
         if(this.§_-wA§)
         {
            this.§_-wA§.mMovieClip.removeChild(mClip);
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
         if(this.§_-uU§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-uU§.length)
            {
               if(this.§_-uU§[_loc2_] is §_-Hw§)
               {
                  (this.§_-uU§[_loc2_] as §_-Hw§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-aM§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-Hw§)
            {
               (_loc3_ as §_-Hw§).setVisibility(param2);
            }
            else
            {
               §_-I0§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-Hw§
      {
         var _loc3_:§_-Hw§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-uU§.length)
         {
            if(this.§_-uU§[_loc2_] is §_-Hw§)
            {
               if((this.§_-uU§[_loc2_] as §_-Hw§).mName.toUpperCase() == param1)
               {
                  return this.§_-uU§[_loc2_] as §_-Hw§;
               }
               if(this.§_-uU§[_loc2_] is §_-IP§)
               {
                  _loc3_ = (this.§_-uU§[_loc2_] as §_-IP§).getItemByName(param1);
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
      
      override public function getParentView() : §_-S6§
      {
         if(this.§_-wA§)
         {
            return this.§_-wA§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-uU§.length)
         {
            if(this.§_-uU§[_loc2_] is §_-Hw§)
            {
               (this.§_-uU§[_loc2_] as §_-Hw§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-uU§.length)
         {
            if(this.§_-uU§[_loc2_] is §_-Hw§)
            {
               (this.§_-uU§[_loc2_] as §_-Hw§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
