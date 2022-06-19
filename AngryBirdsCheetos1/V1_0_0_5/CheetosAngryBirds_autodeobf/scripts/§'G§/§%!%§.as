package §'G§
{
   import §&N§.§@,§;
   import §-0§.§^a§;
   import §-M§.§3!6§;
   import §-V§.§@!$§;
   import §-V§.§@R§;
   import flash.display.MovieClip;
   
   public class §%!%§ extends §@!$§
   {
       
      
      public var §4!C§:§3!6§;
      
      public var §%!&§:Array;
      
      public var §;!;§:Boolean = false;
      
      public function §%!%§(param1:XML, param2:§%!%§, param3:§3!6§, param4:MovieClip = null)
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
            this.§4!C§ = param3;
            if(!param4)
            {
               _loc12_ = §^a§.§;x§(mName);
               mClip = new _loc12_();
               this.§4!C§.mMovieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§%!&§ = new Array();
         for each(_loc5_ in param1.Container)
         {
            this.§%!&§[this.§%!&§.length] = new §%!%§(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§%!&§[this.§%!&§.length] = new §'!4§(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.§%!&§[this.§%!&§.length] = new §false§(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§%!&§[this.§%!&§.length] = new §1!D§(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§%!&§[this.§%!&§.length] = new §#!F§(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§%!&§[this.§%!&§.length] = new §6%§(_loc10_,this);
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§%!&§[this.§%!&§.length] = new §#_§(_loc11_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §=a§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §=a§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §=a§(§91§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §=a§(§'8§,param1.@MouseOut);
         }
      }
      
      public function §@!8§(param1:§@!$§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§@!$§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§@!$§) : void
      {
         if(this.§%!&§.indexOf(param1) < 0)
         {
            this.§%!&§[this.§%!&§.length] = param1;
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§']§);
            param1.setVisibility(this.§4!>§ && param1.§4!>§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§@!$§) : void
      {
         var _loc2_:int = this.§%!&§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§%!&§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§@R§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§4!C§)
         {
            this.§4!C§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!&§.length)
         {
            if(this.§%!&§[_loc2_] is §@!$§)
            {
               (this.§%!&§[_loc2_] as §@!$§).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§%!&§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§%!&§.length)
            {
               if(this.§%!&§[_loc1_] is §@!$§)
               {
                  (this.§%!&§[_loc1_] as §@!$§).clear();
               }
               _loc1_++;
            }
         }
         this.§%!&§ = null;
         if(this.§4!C§)
         {
            this.§4!C§.mMovieClip.removeChild(mClip);
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
         if(this.§%!&§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§%!&§.length)
            {
               if(this.§%!&§[_loc2_] is §@!$§)
               {
                  (this.§%!&§[_loc2_] as §@!$§).onParentVisibilityChange(param1);
               }
               _loc2_++;
            }
         }
      }
      
      public function §&!1§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §@!$§)
            {
               (_loc3_ as §@!$§).setVisibility(param2);
            }
            else
            {
               §@,§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §@!$§
      {
         var _loc3_:§@!$§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!&§.length)
         {
            if(this.§%!&§[_loc2_] is §@!$§)
            {
               if((this.§%!&§[_loc2_] as §@!$§).mName.toUpperCase() == param1)
               {
                  return this.§%!&§[_loc2_] as §@!$§;
               }
               if(this.§%!&§[_loc2_] is §%!%§)
               {
                  _loc3_ = (this.§%!&§[_loc2_] as §%!%§).getItemByName(param1);
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
      
      override public function getParentView() : §3!6§
      {
         if(this.§4!C§)
         {
            return this.§4!C§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!&§.length)
         {
            if(this.§%!&§[_loc2_] is §@!$§)
            {
               (this.§%!&§[_loc2_] as §@!$§).viewWidth = param1;
            }
            _loc2_++;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!&§.length)
         {
            if(this.§%!&§[_loc2_] is §@!$§)
            {
               (this.§%!&§[_loc2_] as §@!$§).viewHeight = param1;
            }
            _loc2_++;
         }
      }
   }
}
