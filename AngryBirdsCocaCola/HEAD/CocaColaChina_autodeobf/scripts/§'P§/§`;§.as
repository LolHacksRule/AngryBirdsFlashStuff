package §'P§
{
   import §'!G§.§1C§;
   import §7]§.§'T§;
   import §7]§.§;T§;
   import §="§.§@5§;
   import flash.display.*;
   
   public class §`;§ extends §'T§
   {
       
      
      public var §#!F§:§^R§;
      
      public var §1!M§:Vector.<§'T§>;
      
      public var § !N§:Boolean = false;
      
      public function §`;§(param1:XML, param2:§`;§, param3:§^R§, param4:MovieClip = null)
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
            this.§#!F§ = param3;
            if(!param4)
            {
               _loc12_ = §@5§.§>! §(mName);
               mClip = new _loc12_();
               this.§#!F§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§1!M§ = new Vector.<§'T§>();
         for each(_loc5_ in param1.Container)
         {
            this.§1!M§.push(new §`;§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§1!M§.push(new §]! §(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§1!M§.push(new §,!"§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§1!M§.push(new §5!_§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§1!M§.push(new §0R§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§1!M§.push(new §;M§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§1!M§.push(new §=!'§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §=!&§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §=!&§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §=!&§(§?R§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §=!&§(§&y§,param1.@MouseOut);
         }
      }
      
      public function §26§(param1:§'T§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§'T§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§'T§) : void
      {
         if(this.§1!M§.indexOf(param1) < 0)
         {
            this.§1!M§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§'[§);
            param1.setVisibility(this.§7!A§ && param1.§7!A§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§'T§) : void
      {
         var _loc2_:int = this.§1!M§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§1!M§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§;T§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§#!F§)
         {
            this.§#!F§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§'T§ = null;
         for each(_loc2_ in this.§1!M§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§1!M§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§1!M§.length)
            {
               this.§1!M§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§1!M§ = null;
         if(this.§#!F§)
         {
            this.§#!F§.movieClip.removeChild(mClip);
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
         var _loc2_:§'T§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§1!M§ != null)
         {
            for each(_loc2_ in this.§1!M§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §8>§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §'T§)
            {
               (_loc3_ as §'T§).setVisibility(param2);
            }
            else
            {
               §1C§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §'T§
      {
         var _loc2_:§'T§ = null;
         var _loc3_:§'T§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§1!M§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §`;§)
            {
               _loc3_ = (_loc2_ as §`;§).getItemByName(param1);
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
      
      override public function getParentView() : §^R§
      {
         if(this.§#!F§)
         {
            return this.§#!F§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§'T§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§1!M§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§'T§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§1!M§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
