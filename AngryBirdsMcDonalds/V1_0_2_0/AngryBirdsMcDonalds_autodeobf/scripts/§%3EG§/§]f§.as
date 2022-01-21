package §>G§
{
   import §"%§.§+!&§;
   import §"%§.§,!n§;
   import §7!d§.§'!5§;
   import §=<§.§1+§;
   import §@`§.§>!S§;
   import flash.display.*;
   
   public class §]f§ extends §+!&§
   {
       
      
      public var §=!D§:§>!S§;
      
      public var §17§:Vector.<§+!&§>;
      
      public var §9e§:Boolean = false;
      
      public function §]f§(param1:XML, param2:§]f§, param3:§>!S§, param4:MovieClip = null)
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
            this.§=!D§ = param3;
            if(!param4)
            {
               _loc12_ = §'!5§.§-!P§(mName);
               mClip = new _loc12_();
               this.§=!D§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§17§ = new Vector.<§+!&§>();
         for each(_loc5_ in param1.Container)
         {
            this.§17§.push(new §]f§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§17§.push(new §>U§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§17§.push(new §0Q§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§17§.push(new §]!W§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§17§.push(new §[f§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§17§.push(new §6!o§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§17§.push(new §&!k§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §58§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §58§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §58§(§-!X§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §58§(§;!Y§,param1.@MouseOut);
         }
      }
      
      public function §8!J§(param1:§+!&§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§+!&§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§+!&§) : void
      {
         if(this.§17§.indexOf(param1) < 0)
         {
            this.§17§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§@!`§);
            param1.setVisibility(this.§>W§ && param1.§>W§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§+!&§) : void
      {
         var _loc2_:int = this.§17§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§17§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§,!n§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§=!D§)
         {
            this.§=!D§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§+!&§ = null;
         for each(_loc2_ in this.§17§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§17§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§17§.length)
            {
               this.§17§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§17§ = null;
         if(this.§=!D§)
         {
            this.§=!D§.movieClip.removeChild(mClip);
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
         var _loc2_:§+!&§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§17§ != null)
         {
            for each(_loc2_ in this.§17§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §=u§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §+!&§)
            {
               (_loc3_ as §+!&§).setVisibility(param2);
            }
            else
            {
               §1+§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §+!&§
      {
         var _loc2_:§+!&§ = null;
         var _loc3_:§+!&§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§17§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §]f§)
            {
               _loc3_ = (_loc2_ as §]f§).getItemByName(param1);
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
      
      override public function getParentView() : §>!S§
      {
         if(this.§=!D§)
         {
            return this.§=!D§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§+!&§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§17§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§+!&§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§17§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
