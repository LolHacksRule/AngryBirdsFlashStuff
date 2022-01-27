package §=Z§
{
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §8!h§.§[Z§;
   import §9"`§.§-"H§;
   import §=!4§.§8"U§;
   import §[!H§.§4Z§;
   import com.rovio.assets.§%!Z§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §@!8§ extends §%"z§
   {
       
      
      public var §5"2§:§4Z§;
      
      public var §true §:Vector.<§[Z§>;
      
      public var §6m§:Boolean = false;
      
      public function §@!8§(param1:XML, param2:§@!8§, param3:§4Z§, param4:MovieClip = null)
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
            this.§5"2§ = param3;
            if(!param4)
            {
               _loc12_ = §%!Z§.§;",§(mName);
               mClip = new _loc12_();
               this.§5"2§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§true § = new Vector.<§[Z§>();
         for each(_loc5_ in param1.Container)
         {
            this.§true §.push(new §@!8§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§true §.push(new §'"i§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§true §.push(new §;g§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§true §.push(new §0%§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§true §.push(new §9!c§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§true §.push(new §^"3§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§true §.push(new §5"&§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §="B§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §="B§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §="B§(§7!j§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §="B§(§?"N§,param1.@MouseOut);
         }
      }
      
      public function §^#-§(param1:§[Z§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §9!S§(param1:§[Z§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §,,§(param1:§[Z§) : void
      {
         if(this.§true §.indexOf(param1) < 0)
         {
            this.§true §.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§["1§);
            param1.setVisibility(this.§="=§ && param1.§="=§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §-"6§(param1:§[Z§) : void
      {
         var _loc2_:int = this.§true §.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§true §.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"U§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§-V§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§5"2§)
         {
            this.§5"2§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§[Z§ = null;
         for each(_loc2_ in this.§true §)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§true §)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§true §.length)
            {
               this.§true §[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§true § = null;
         if(this.§5"2§)
         {
            this.§5"2§.movieClip.removeChild(mClip);
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
         var _loc2_:§[Z§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§true § != null)
         {
            for each(_loc2_ in this.§true §)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §&P§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §[Z§)
            {
               (_loc3_ as §[Z§).setVisibility(param2);
            }
            else
            {
               §-"H§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §[Z§
      {
         var _loc2_:§[Z§ = null;
         var _loc3_:§[Z§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§true §)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §@!8§)
            {
               _loc3_ = (_loc2_ as §@!8§).getItemByName(param1);
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
      
      override public function getParentView() : §4Z§
      {
         if(this.§5"2§)
         {
            return this.§5"2§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§[Z§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§true §)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§[Z§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§true §)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §0%§)
         {
            (_loc3_ as §0%§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
