package §>M§
{
   import §'!D§.§08§;
   import §'!D§.§?!h§;
   import §7'§.§!y§;
   import §>P§.§5!§;
   import §>^§.§!6§;
   import flash.display.*;
   
   public class §<6§ extends §?!h§
   {
       
      
      public var §#i§:§5!§;
      
      public var §[!L§:Vector.<§?!h§>;
      
      public var §6P§:Boolean = false;
      
      public function §<6§(param1:XML, param2:§<6§, param3:§5!§, param4:MovieClip = null)
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
            this.§#i§ = param3;
            if(!param4)
            {
               _loc12_ = §!y§.§%!C§(mName);
               mClip = new _loc12_();
               this.§#i§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§[!L§ = new Vector.<§?!h§>();
         for each(_loc5_ in param1.Container)
         {
            this.§[!L§.push(new §<6§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§[!L§.push(new §]w§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§[!L§.push(new §^-§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§[!L§.push(new §'V§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§[!L§.push(new §-!P§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§[!L§.push(new §#!a§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§[!L§.push(new §%J§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §8!h§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §8!h§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §8!h§(§&x§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §8!h§(§;=§,param1.@MouseOut);
         }
      }
      
      public function §0&§(param1:§?!h§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§?!h§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§?!h§) : void
      {
         if(this.§[!L§.indexOf(param1) < 0)
         {
            this.§[!L§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§2A§);
            param1.setVisibility(this.§^!V§ && param1.§^!V§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§?!h§) : void
      {
         var _loc2_:int = this.§[!L§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§[!L§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§08§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§#i§)
         {
            this.§#i§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§?!h§ = null;
         for each(_loc2_ in this.§[!L§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§[!L§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§[!L§.length)
            {
               this.§[!L§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§[!L§ = null;
         if(this.§#i§)
         {
            this.§#i§.movieClip.removeChild(mClip);
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
         var _loc2_:§?!h§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§[!L§ != null)
         {
            for each(_loc2_ in this.§[!L§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §]!g§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §?!h§)
            {
               (_loc3_ as §?!h§).setVisibility(param2);
            }
            else
            {
               §!6§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §?!h§
      {
         var _loc2_:§?!h§ = null;
         var _loc3_:§?!h§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§[!L§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §<6§)
            {
               _loc3_ = (_loc2_ as §<6§).getItemByName(param1);
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
      
      override public function getParentView() : §5!§
      {
         if(this.§#i§)
         {
            return this.§#i§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§?!h§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§[!L§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§?!h§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§[!L§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
