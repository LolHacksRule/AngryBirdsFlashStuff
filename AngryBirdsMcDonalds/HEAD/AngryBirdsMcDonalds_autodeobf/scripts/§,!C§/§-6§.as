package §,!C§
{
   import §'+§.§1u§;
   import §7p§.§%g§;
   import §;'§.§6d§;
   import §@-§.§-m§;
   import §@-§.§[y§;
   import flash.display.*;
   
   public class §-6§ extends §-m§
   {
       
      
      public var §7!C§:§%g§;
      
      public var §@!g§:Vector.<§-m§>;
      
      public var §4-§:Boolean = false;
      
      public function §-6§(param1:XML, param2:§-6§, param3:§%g§, param4:MovieClip = null)
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
            this.§7!C§ = param3;
            if(!param4)
            {
               _loc12_ = §6d§.§=!Y§(mName);
               mClip = new _loc12_();
               this.§7!C§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§@!g§ = new Vector.<§-m§>();
         for each(_loc5_ in param1.Container)
         {
            this.§@!g§.push(new §-6§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§@!g§.push(new §#!4§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§@!g§.push(new §?!C§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§@!g§.push(new §3!&§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§@!g§.push(new §!!]§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§@!g§.push(new §07§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§@!g§.push(new §return§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §=!N§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §=!N§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §=!N§(§?-§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §=!N§(§5O§,param1.@MouseOut);
         }
      }
      
      public function §"a§(param1:§-m§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§-m§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§-m§) : void
      {
         if(this.§@!g§.indexOf(param1) < 0)
         {
            this.§@!g§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§"]§);
            param1.setVisibility(this.§ u§ && param1.§ u§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§-m§) : void
      {
         var _loc2_:int = this.§@!g§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§@!g§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§[y§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§7!C§)
         {
            this.§7!C§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§-m§ = null;
         for each(_loc2_ in this.§@!g§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§@!g§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§@!g§.length)
            {
               this.§@!g§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§@!g§ = null;
         if(this.§7!C§)
         {
            this.§7!C§.movieClip.removeChild(mClip);
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
         var _loc2_:§-m§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§@!g§ != null)
         {
            for each(_loc2_ in this.§@!g§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §6m§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §-m§)
            {
               (_loc3_ as §-m§).setVisibility(param2);
            }
            else
            {
               §1u§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §-m§
      {
         var _loc2_:§-m§ = null;
         var _loc3_:§-m§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§@!g§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §-6§)
            {
               _loc3_ = (_loc2_ as §-6§).getItemByName(param1);
               if(_loc3_ != null)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         mClip.mouseEnabled = param1;
      }
      
      override public function getParentView() : §%g§
      {
         if(this.§7!C§)
         {
            return this.§7!C§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§-m§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§@!g§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§-m§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§@!g§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
