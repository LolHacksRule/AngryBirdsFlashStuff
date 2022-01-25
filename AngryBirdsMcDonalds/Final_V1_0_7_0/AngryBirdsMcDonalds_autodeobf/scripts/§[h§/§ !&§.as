package §[h§
{
   import §+$§.§5"§;
   import §+$§.§[!a§;
   import §0i§.§4!%§;
   import §3<§.§-2§;
   import §<l§.§@0§;
   import flash.display.*;
   
   public class § !&§ extends §5"§
   {
       
      
      public var §0!p§:§-2§;
      
      public var § k§:Vector.<§5"§>;
      
      public var §^Y§:Boolean = false;
      
      public function § !&§(param1:XML, param2:§ !&§, param3:§-2§, param4:MovieClip = null)
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
            this.§0!p§ = param3;
            if(!param4)
            {
               _loc12_ = §@0§.§5+§(mName);
               mClip = new _loc12_();
               this.§0!p§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§ k§ = new Vector.<§5"§>();
         for each(_loc5_ in param1.Container)
         {
            this.§ k§.push(new § !&§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§ k§.push(new §#<§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§ k§.push(new §49§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§ k§.push(new § set§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§ k§.push(new §]! §(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§ k§.push(new §5Q§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§ k§.push(new §8!]§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §8L§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §8L§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §8L§(§0!V§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §8L§(§0§,param1.@MouseOut);
         }
      }
      
      public function §`!b§(param1:§5"§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§5"§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§5"§) : void
      {
         if(this.§ k§.indexOf(param1) < 0)
         {
            this.§ k§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§<!Y§);
            param1.setVisibility(this.§&!<§ && param1.§&!<§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§5"§) : void
      {
         var _loc2_:int = this.§ k§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§ k§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§[!a§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§0!p§)
         {
            this.§0!p§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§5"§ = null;
         for each(_loc2_ in this.§ k§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§ k§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§ k§.length)
            {
               this.§ k§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§ k§ = null;
         if(this.§0!p§)
         {
            this.§0!p§.movieClip.removeChild(mClip);
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
         var _loc2_:§5"§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§ k§ != null)
         {
            for each(_loc2_ in this.§ k§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §get §(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §5"§)
            {
               (_loc3_ as §5"§).setVisibility(param2);
            }
            else
            {
               §4!%§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §5"§
      {
         var _loc2_:§5"§ = null;
         var _loc3_:§5"§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§ k§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is § !&§)
            {
               _loc3_ = (_loc2_ as § !&§).getItemByName(param1);
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
      
      override public function getParentView() : §-2§
      {
         if(this.§0!p§)
         {
            return this.§0!p§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§5"§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§ k§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§5"§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§ k§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
