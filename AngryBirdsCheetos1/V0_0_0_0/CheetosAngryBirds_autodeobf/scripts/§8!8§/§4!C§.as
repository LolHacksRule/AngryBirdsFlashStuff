package §8!8§
{
   import §+?§.§,!N§;
   import §0v§.§-'§;
   import §@,§.§4h§;
   import §@R§.§']§;
   import §@R§.§]^§;
   import flash.display.MovieClip;
   
   public class §4!C§ extends §']§
   {
       
      
      public var §;!;§:§,!N§;
      
      public var §@k§:Array;
      
      public var §@!8§:Boolean = false;
      
      public function §4!C§(param1:XML, param2:§4!C§, param3:§,!N§, param4:MovieClip = null)
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
            this.§;!;§ = param3;
            if(!param4)
            {
               _loc12_ = §-'§.§]`§(mName);
               mClip = new _loc12_();
               this.§;!;§.mMovieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§@k§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§@k§[this.§@k§.length] = new §4!C§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§@k§[this.§@k§.length] = new §<!C§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§@k§[this.§@k§.length] = new §+!M§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§@k§[this.§@k§.length] = new §1!-§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§@k§[this.§@k§.length] = new §&Q§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§@k§[this.§@k§.length] = new §#_§(_loc10_,this);
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§@k§[this.§@k§.length] = new §,!!§(_loc11_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §?^§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §?^§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §?^§(§'8§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §?^§(§@!$§,param1.@MouseOut);
         }
      }
      
      public function §&!1§(param1:§']§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§']§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§']§) : void
      {
         if(this.§@k§.indexOf(param1) < 0)
         {
            this.§@k§[this.§@k§.length] = param1;
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§4!>§);
            param1.setVisibility(this.§+F§ && param1.§+F§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§']§) : void
      {
         var _loc2_:int = this.§@k§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§@k§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§]^§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§;!;§)
         {
            this.§;!;§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@k§.length)
         {
            if(this.§@k§[_loc2_] is §']§)
            {
               (this.§@k§[_loc2_] as §']§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§@k§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§@k§.length)
            {
               if(this.§@k§[_loc1_] is §']§)
               {
                  (this.§@k§[_loc1_] as §']§).clear();
               }
               _loc1_++;
            }
         }
         this.§@k§ = null;
         if(this.§;!;§)
         {
            this.§;!;§.mMovieClip.removeChild(mClip);
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
         if(this.§@k§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§@k§.length)
            {
               if(this.§@k§[_loc2_] is §']§)
               {
                  (this.§@k§[_loc2_] as §']§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §1!D§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §']§)
            {
               (_loc3_ as §']§).setVisibility(param2);
            }
            else
            {
               §4h§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §']§
      {
         var _loc3_:§']§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§@k§.length)
         {
            if(this.§@k§[_loc2_] is §']§)
            {
               if((this.§@k§[_loc2_] as §']§).mName.toUpperCase() == param1)
               {
                  return this.§@k§[_loc2_] as §']§;
               }
               if(this.§@k§[_loc2_] is §4!C§)
               {
                  _loc3_ = (this.§@k§[_loc2_] as §4!C§).getItemByName(param1);
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
      
      override public function getParentView() : §,!N§
      {
         if(this.§;!;§)
         {
            return this.§;!;§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@k§.length)
         {
            if(this.§@k§[_loc2_] is §']§)
            {
               (this.§@k§[_loc2_] as §']§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@k§.length)
         {
            if(this.§@k§[_loc2_] is §']§)
            {
               (this.§@k§[_loc2_] as §']§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
