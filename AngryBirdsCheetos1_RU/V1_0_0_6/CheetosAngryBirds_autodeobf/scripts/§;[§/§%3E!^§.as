package §;[§
{
   import §'!N§.§2!3§;
   import §'!N§.§9!O§;
   import §'D§.§8e§;
   import §;!K§.§+!4§;
   import §]0§.§%%§;
   import flash.display.*;
   
   public class §>!^§ extends §2!3§
   {
       
      
      public var §70§:§+!4§;
      
      public var §[!Y§:Vector.<§2!3§>;
      
      public var §6O§:Boolean = false;
      
      public function §>!^§(param1:XML, param2:§>!^§, param3:§+!4§, param4:MovieClip = null)
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
            this.§70§ = param3;
            if(!param4)
            {
               _loc12_ = §%%§.§in §(mName);
               mClip = new _loc12_();
               this.§70§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§[!Y§ = new Vector.<§2!3§>();
         for each(_loc5_ in param1.Container)
         {
            this.§[!Y§.push(new §>!^§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§[!Y§.push(new §]T§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§[!Y§.push(new §7!F§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§[!Y§.push(new §'z§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§[!Y§.push(new §]O§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§[!Y§.push(new §`![§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§[!Y§.push(new §0![§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §=!`§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §=!`§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §=!`§(§0!>§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §=!`§(§5V§,param1.@MouseOut);
         }
      }
      
      public function §>g§(param1:§2!3§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§2!3§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§2!3§) : void
      {
         if(this.§[!Y§.indexOf(param1) < 0)
         {
            this.§[!Y§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§#'§);
            param1.setVisibility(this.§2p§ && param1.§2p§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§2!3§) : void
      {
         var _loc2_:int = this.§[!Y§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§[!Y§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§9!O§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§70§)
         {
            this.§70§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§2!3§ = null;
         for each(_loc2_ in this.§[!Y§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§[!Y§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§[!Y§.length)
            {
               this.§[!Y§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§[!Y§ = null;
         if(this.§70§)
         {
            this.§70§.movieClip.removeChild(mClip);
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
         var _loc2_:§2!3§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§[!Y§ != null)
         {
            for each(_loc2_ in this.§[!Y§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §,b§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §2!3§)
            {
               (_loc3_ as §2!3§).setVisibility(param2);
            }
            else
            {
               §8e§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §2!3§
      {
         var _loc2_:§2!3§ = null;
         var _loc3_:§2!3§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§[!Y§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §>!^§)
            {
               _loc3_ = (_loc2_ as §>!^§).getItemByName(param1);
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
      
      override public function getParentView() : §+!4§
      {
         if(this.§70§)
         {
            return this.§70§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§2!3§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§[!Y§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§2!3§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§[!Y§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
