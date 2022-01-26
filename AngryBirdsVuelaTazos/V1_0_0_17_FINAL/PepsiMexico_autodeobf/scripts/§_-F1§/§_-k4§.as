package §_-F1§
{
   import §_-0S§.§_-z1§;
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-Tk§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-54§;
   import flash.display.MovieClip;
   
   public class §_-k4§ extends §_-Tk§
   {
       
      
      public var §_-N2§:§_-ru§;
      
      public var §_-yZ§:Array;
      
      public var §_-Q4§:Boolean = false;
      
      public function §_-k4§(param1:XML, param2:§_-k4§, param3:§_-ru§, param4:MovieClip = null)
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
            this.§_-N2§ = param3;
            _loc11_ = §_-z1§.§_-tn§(mName);
            mClip = new _loc11_();
            this.§_-N2§.mMovieClip.addChild(mClip);
         }
         super(param1,param2,param4);
         this.§_-yZ§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-yZ§[this.§_-yZ§.length] = new §_-k4§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-yZ§[this.§_-yZ§.length] = new §_-mr§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-yZ§[this.§_-yZ§.length] = new §_-qp§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-yZ§[this.§_-yZ§.length] = new §_-V1§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-yZ§[this.§_-yZ§.length] = new §_-lq§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-yZ§[this.§_-yZ§.length] = new §_-Nk§(_loc10_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-q3§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-q3§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-q3§(§_-Ek§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-q3§(§_-6q§,param1.@MouseOut);
         }
      }
      
      public function §_-gu§(param1:§_-Tk§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§_-Tk§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-Tk§) : void
      {
         if(this.§_-yZ§.indexOf(param1) < 0)
         {
            this.§_-yZ§[this.§_-yZ§.length] = param1;
            param1.setActiveStatus(this.§_-ZW§);
            param1.setVisibility(this.§_-DE§ && param1.§_-DE§);
         }
      }
      
      public function removeComponent(param1:§_-Tk§) : void
      {
         var _loc2_:int = this.§_-yZ§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§_-yZ§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-7P§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-N2§)
         {
            this.§_-N2§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-yZ§.length)
         {
            if(this.§_-yZ§[_loc2_] is §_-Tk§)
            {
               (this.§_-yZ§[_loc2_] as §_-Tk§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-yZ§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-yZ§.length)
            {
               if(this.§_-yZ§[_loc1_] is §_-Tk§)
               {
                  (this.§_-yZ§[_loc1_] as §_-Tk§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-yZ§ = null;
         if(this.§_-N2§)
         {
            this.§_-N2§.mMovieClip.removeChild(mClip);
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
         if(this.§_-yZ§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-yZ§.length)
            {
               if(this.§_-yZ§[_loc2_] is §_-Tk§)
               {
                  (this.§_-yZ§[_loc2_] as §_-Tk§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-hr§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-Tk§)
            {
               (_loc3_ as §_-Tk§).setVisibility(param2);
            }
            else
            {
               §_-54§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-Tk§
      {
         var _loc3_:§_-Tk§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-yZ§.length)
         {
            if(this.§_-yZ§[_loc2_] is §_-Tk§)
            {
               if((this.§_-yZ§[_loc2_] as §_-Tk§).mName.toUpperCase() == param1)
               {
                  return this.§_-yZ§[_loc2_] as §_-Tk§;
               }
               if(this.§_-yZ§[_loc2_] is §_-k4§)
               {
                  _loc3_ = (this.§_-yZ§[_loc2_] as §_-k4§).getItemByName(param1);
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
      
      override public function getParentView() : §_-ru§
      {
         if(this.§_-N2§)
         {
            return this.§_-N2§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-yZ§.length)
         {
            if(this.§_-yZ§[_loc2_] is §_-Tk§)
            {
               (this.§_-yZ§[_loc2_] as §_-Tk§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-yZ§.length)
         {
            if(this.§_-yZ§[_loc2_] is §_-Tk§)
            {
               (this.§_-yZ§[_loc2_] as §_-Tk§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
