package §@#§
{
   import §"I§.§=!U§;
   import §02§.§`%§;
   import §?!4§.§^!S§;
   import §[!b§.§'!R§;
   import §[!b§.§2!O§;
   import §[!b§.§]"-§;
   import com.rovio.assets.§&!2§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §9!'§ extends §]"-§
   {
       
      
      public var §=!S§:§`%§;
      
      public var §3H§:Vector.<§2!O§>;
      
      public var §>f§:Boolean = false;
      
      public function §9!'§(param1:XML, param2:§9!'§, param3:§`%§, param4:MovieClip = null)
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
            this.§=!S§ = param3;
            if(!param4)
            {
               _loc12_ = §&!2§.§0!O§(mName);
               mClip = new _loc12_();
               this.§=!S§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§3H§ = new Vector.<§2!O§>();
         for each(_loc5_ in param1.Container)
         {
            this.§3H§.push(new §9!'§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§3H§.push(new §;B§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§3H§.push(new §4!O§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§3H§.push(new §>L§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§3H§.push(new §5!"§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§3H§.push(new § @§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§3H§.push(new §]"§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §1!@§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §1!@§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §1!@§(§9y§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §1!@§(§3!W§,param1.@MouseOut);
         }
      }
      
      public function §"!f§(param1:§2!O§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§2!O§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §8!F§(param1:§2!O§) : void
      {
         if(this.§3H§.indexOf(param1) < 0)
         {
            this.§3H§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§'J§);
            param1.setVisibility(this.§<n§ && param1.§<n§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §]w§(param1:§2!O§) : void
      {
         var _loc2_:int = this.§3H§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§3H§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §^!S§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§'!R§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§=!S§)
         {
            this.§=!S§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§2!O§ = null;
         for each(_loc2_ in this.§3H§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§3H§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§3H§.length)
            {
               this.§3H§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§3H§ = null;
         if(this.§=!S§)
         {
            this.§=!S§.movieClip.removeChild(mClip);
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
         var _loc2_:§2!O§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§3H§ != null)
         {
            for each(_loc2_ in this.§3H§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §0b§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §2!O§)
            {
               (_loc3_ as §2!O§).setVisibility(param2);
            }
            else
            {
               §=!U§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §2!O§
      {
         var _loc2_:§2!O§ = null;
         var _loc3_:§2!O§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§3H§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §9!'§)
            {
               _loc3_ = (_loc2_ as §9!'§).getItemByName(param1);
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
      
      override public function getParentView() : §`%§
      {
         if(this.§=!S§)
         {
            return this.§=!S§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§2!O§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§3H§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§2!O§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§3H§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>L§)
         {
            (_loc3_ as §>L§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
