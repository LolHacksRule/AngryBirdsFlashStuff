package §#!&§
{
   import §%!$§.§[Z§;
   import §7!X§.§7g§;
   import §7S§.§3t§;
   import flash.display.*;
   import §var§.§+!^§;
   import §var§.§;!&§;
   
   public class §59§ extends §;!&§
   {
       
      
      public var §@1§:§7g§;
      
      public var §0l§:Vector.<§;!&§>;
      
      public var §6!T§:Boolean = false;
      
      public function §59§(param1:XML, param2:§59§, param3:§7g§, param4:MovieClip = null)
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
            this.§@1§ = param3;
            if(!param4)
            {
               _loc12_ = §3t§.§#v§(mName);
               mClip = new _loc12_();
               this.§@1§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§0l§ = new Vector.<§;!&§>();
         for each(_loc5_ in param1.Container)
         {
            this.§0l§.push(new §59§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§0l§.push(new §2l§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§0l§.push(new §#O§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§0l§.push(new §1![§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§0l§.push(new §48§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§0l§.push(new §0!`§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§0l§.push(new §#V§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §?!N§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §?!N§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §?!N§(§@M§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §?!N§(§%%§,param1.@MouseOut);
         }
      }
      
      public function §+!+§(param1:§;!&§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§;!&§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§;!&§) : void
      {
         if(this.§0l§.indexOf(param1) < 0)
         {
            this.§0l§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§2X§);
            param1.setVisibility(this.§<u§ && param1.§<u§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§;!&§) : void
      {
         var _loc2_:int = this.§0l§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§0l§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§+!^§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§@1§)
         {
            this.§@1§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§;!&§ = null;
         for each(_loc2_ in this.§0l§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§0l§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§0l§.length)
            {
               this.§0l§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§0l§ = null;
         if(this.§@1§)
         {
            this.§@1§.movieClip.removeChild(mClip);
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
         var _loc2_:§;!&§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§0l§ != null)
         {
            for each(_loc2_ in this.§0l§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §#P§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §;!&§)
            {
               (_loc3_ as §;!&§).setVisibility(param2);
            }
            else
            {
               §[Z§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §;!&§
      {
         var _loc2_:§;!&§ = null;
         var _loc3_:§;!&§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§0l§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §59§)
            {
               _loc3_ = (_loc2_ as §59§).getItemByName(param1);
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
      
      override public function getParentView() : §7g§
      {
         if(this.§@1§)
         {
            return this.§@1§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§;!&§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§0l§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§;!&§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§0l§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
