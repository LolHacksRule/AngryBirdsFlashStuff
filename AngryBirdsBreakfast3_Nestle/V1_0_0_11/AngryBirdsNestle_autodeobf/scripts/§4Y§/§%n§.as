package §4Y§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §!R§.§9!8§;
   import §&!I§.§9!C§;
   import §+!2§.§0!%§;
   import §8!$§.§?p§;
   import com.rovio.assets.§1!C§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §%n§ extends §-!T§
   {
       
      
      public var §+d§:§0!%§;
      
      public var §@U§:Vector.<§9!8§>;
      
      public var §@z§:Boolean = false;
      
      public function §%n§(param1:XML, param2:§%n§, param3:§0!%§, param4:MovieClip = null)
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
            this.§+d§ = param3;
            if(!param4)
            {
               _loc12_ = §1!C§.§"!&§(mName);
               mClip = new _loc12_();
               this.§+d§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§@U§ = new Vector.<§9!8§>();
         for each(_loc5_ in param1.Container)
         {
            this.§@U§.push(new §%n§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§@U§.push(new §["4§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§@U§.push(new § `§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§@U§.push(new §&0§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§@U§.push(new §7`§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§@U§.push(new §>!S§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§@U§.push(new §+!R§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §0!U§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §0!U§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §0!U§(§<!>§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §0!U§(§!""§,param1.@MouseOut);
         }
      }
      
      public function §&!0§(param1:§9!8§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§9!8§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §]K§(param1:§9!8§) : void
      {
         if(this.§@U§.indexOf(param1) < 0)
         {
            this.§@U§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§3g§);
            param1.setVisibility(this.§+!J§ && param1.§+!J§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §^!C§(param1:§9!8§) : void
      {
         var _loc2_:int = this.§@U§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§@U§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §9!C§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§#!L§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§+d§)
         {
            this.§+d§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§9!8§ = null;
         for each(_loc2_ in this.§@U§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§@U§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§@U§.length)
            {
               this.§@U§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§@U§ = null;
         if(this.§+d§)
         {
            this.§+d§.movieClip.removeChild(mClip);
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
         var _loc2_:§9!8§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§@U§ != null)
         {
            for each(_loc2_ in this.§@U§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §2[§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §9!8§)
            {
               (_loc3_ as §9!8§).setVisibility(param2);
            }
            else
            {
               §?p§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §9!8§
      {
         var _loc2_:§9!8§ = null;
         var _loc3_:§9!8§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§@U§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §%n§)
            {
               _loc3_ = (_loc2_ as §%n§).getItemByName(param1);
               if(_loc3_ != null)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         mClip.mouseEnabled = param1;
         if(param2)
         {
            mClip.mouseChildren = param1;
         }
      }
      
      override public function getParentView() : §0!%§
      {
         if(this.§+d§)
         {
            return this.§+d§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§9!8§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§@U§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§9!8§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§@U§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §&0§)
         {
            (_loc3_ as §&0§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
