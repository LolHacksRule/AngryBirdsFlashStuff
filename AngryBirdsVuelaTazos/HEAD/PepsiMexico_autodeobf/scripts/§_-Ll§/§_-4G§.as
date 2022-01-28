package §_-Ll§
{
   import §_-7V§.§_-C§;
   import §_-7V§.§_-Gs§;
   import §_-9k§.§_-X7§;
   import §_-Qn§.§_-bo§;
   import §_-gM§.§_-yj§;
   import flash.display.MovieClip;
   
   public class §_-4G§ extends §_-C§
   {
       
      
      public var §_-E3§:§_-bo§;
      
      public var §_-dD§:Array;
      
      public var §_-Fd§:Boolean = false;
      
      public function §_-4G§(param1:XML, param2:§_-4G§, param3:§_-bo§, param4:MovieClip = null)
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
            this.§_-E3§ = param3;
            if(!param4)
            {
               _loc11_ = §_-X7§.§_-IA§(mName);
               mClip = new _loc11_();
               this.§_-E3§.mMovieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§_-dD§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§_-dD§[this.§_-dD§.length] = new §_-4G§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§_-dD§[this.§_-dD§.length] = new §_-fZ§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§_-dD§[this.§_-dD§.length] = new §_-FU§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§_-dD§[this.§_-dD§.length] = new §_-JL§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§_-dD§[this.§_-dD§.length] = new §_-iE§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§_-dD§[this.§_-dD§.length] = new §_-CD§(_loc10_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §_-7S§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §_-7S§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §_-7S§(§_-V4§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §_-7S§(§_-ya§,param1.@MouseOut);
         }
      }
      
      public function §_-hL§(param1:§_-C§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§_-C§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§_-C§) : void
      {
         if(this.§_-dD§.indexOf(param1) < 0)
         {
            this.§_-dD§[this.§_-dD§.length] = param1;
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§_-yh§);
            param1.setVisibility(this.§_-Kc§ && param1.§_-Kc§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§_-C§) : void
      {
         var _loc2_:int = this.§_-dD§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§_-dD§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-Gs§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§_-E3§)
         {
            this.§_-E3§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-dD§.length)
         {
            if(this.§_-dD§[_loc2_] is §_-C§)
            {
               (this.§_-dD§[_loc2_] as §_-C§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§_-dD§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§_-dD§.length)
            {
               if(this.§_-dD§[_loc1_] is §_-C§)
               {
                  (this.§_-dD§[_loc1_] as §_-C§).clear();
               }
               _loc1_++;
            }
         }
         this.§_-dD§ = null;
         if(this.§_-E3§)
         {
            this.§_-E3§.mMovieClip.removeChild(mClip);
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
         if(this.§_-dD§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§_-dD§.length)
            {
               if(this.§_-dD§[_loc2_] is §_-C§)
               {
                  (this.§_-dD§[_loc2_] as §_-C§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-Y6§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §_-C§)
            {
               (_loc3_ as §_-C§).setVisibility(param2);
            }
            else
            {
               §_-yj§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §_-C§
      {
         var _loc3_:§_-C§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-dD§.length)
         {
            if(this.§_-dD§[_loc2_] is §_-C§)
            {
               if((this.§_-dD§[_loc2_] as §_-C§).mName.toUpperCase() == param1)
               {
                  return this.§_-dD§[_loc2_] as §_-C§;
               }
               if(this.§_-dD§[_loc2_] is §_-4G§)
               {
                  _loc3_ = (this.§_-dD§[_loc2_] as §_-4G§).getItemByName(param1);
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
      
      override public function getParentView() : §_-bo§
      {
         if(this.§_-E3§)
         {
            return this.§_-E3§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-dD§.length)
         {
            if(this.§_-dD§[_loc2_] is §_-C§)
            {
               (this.§_-dD§[_loc2_] as §_-C§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-dD§.length)
         {
            if(this.§_-dD§[_loc2_] is §_-C§)
            {
               (this.§_-dD§[_loc2_] as §_-C§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
