package §_-of§
{
   import §_-8J§.§_-8s§;
   import §_-RG§.§_-HT§;
   import §_-Ys§.§_-7o§;
   import §_-Ys§.§_-o-§;
   import §_-vA§.§_-XO§;
   import flash.display.MovieClip;
   
   public class §_-H4§ extends §_-7o§
   {
       
      
      public var §_-B6§:§_-8s§;
      
      public var §_-X5§:Array;
      
      public var §_-5I§:Boolean = false;
      
      public function §_-H4§(param1:XML, param2:§_-H4§, param3:§_-8s§, param4:MovieClip = null)
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
            this.§_-B6§ = param3;
            _loc11_ = §_-XO§.§_-O3§(mName);
            mClip = new _loc11_();
            this.§_-B6§.mMovieClip.addChild(mClip);
         }
         super(param1,param2,param4);
         this.§_-X5§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-X5§[this.§_-X5§.length] = new §_-H4§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-X5§[this.§_-X5§.length] = new §_-Ci§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-X5§[this.§_-X5§.length] = new §_-Yk§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-X5§[this.§_-X5§.length] = new §_-rt§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-X5§[this.§_-X5§.length] = new §_-3Q§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-X5§[this.§_-X5§.length] = new §_-Sa§(_loc10_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-1W§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-1W§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-1W§(§_-GB§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-1W§(§_-UA§,param1.@MouseOut);
         }
      }
      
      public function §_-gp§(param1:§_-7o§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§_-7o§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-7o§) : void
      {
         if(this.§_-X5§.indexOf(param1) < 0)
         {
            this.§_-X5§[this.§_-X5§.length] = param1;
            param1.setActiveStatus(this.§_-dA§);
            param1.setVisibility(this.§_-s4§ && param1.§_-s4§);
         }
      }
      
      public function removeComponent(param1:§_-7o§) : void
      {
         var _loc2_:int = this.§_-X5§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§_-X5§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-o-§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-B6§)
         {
            this.§_-B6§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-X5§.length)
         {
            if(this.§_-X5§[_loc2_] is §_-7o§)
            {
               (this.§_-X5§[_loc2_] as §_-7o§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-X5§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-X5§.length)
            {
               if(this.§_-X5§[_loc1_] is §_-7o§)
               {
                  (this.§_-X5§[_loc1_] as §_-7o§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-X5§ = null;
         if(this.§_-B6§)
         {
            this.§_-B6§.mMovieClip.removeChild(mClip);
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
         if(this.§_-X5§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-X5§.length)
            {
               if(this.§_-X5§[_loc2_] is §_-7o§)
               {
                  (this.§_-X5§[_loc2_] as §_-7o§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-0B§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-7o§)
            {
               (_loc3_ as §_-7o§).setVisibility(param2);
            }
            else
            {
               §_-HT§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-7o§
      {
         var _loc3_:§_-7o§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-X5§.length)
         {
            if(this.§_-X5§[_loc2_] is §_-7o§)
            {
               if((this.§_-X5§[_loc2_] as §_-7o§).mName.toUpperCase() == param1)
               {
                  return this.§_-X5§[_loc2_] as §_-7o§;
               }
               if(this.§_-X5§[_loc2_] is §_-H4§)
               {
                  _loc3_ = (this.§_-X5§[_loc2_] as §_-H4§).getItemByName(param1);
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
      
      override public function getParentView() : §_-8s§
      {
         if(this.§_-B6§)
         {
            return this.§_-B6§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-X5§.length)
         {
            if(this.§_-X5§[_loc2_] is §_-7o§)
            {
               (this.§_-X5§[_loc2_] as §_-7o§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-X5§.length)
         {
            if(this.§_-X5§[_loc2_] is §_-7o§)
            {
               (this.§_-X5§[_loc2_] as §_-7o§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
