package §""d§
{
   import §#!k§.§4!4§;
   import §0"I§.§5!s§;
   import §4##§.§5!9§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §^!`§.§6"!§;
   import com.rovio.assets.§5"]§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §,m§ extends §7!Y§
   {
       
      
      public var §]"Y§:§6"!§;
      
      public var §+!C§:Vector.<§5!9§>;
      
      public var §;!v§:Boolean = false;
      
      public function §,m§(param1:XML, param2:§,m§, param3:§6"!§, param4:MovieClip = null)
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
            this.§]"Y§ = param3;
            if(!param4)
            {
               _loc12_ = §5"]§.§4!K§(mName);
               mClip = new _loc12_();
               this.§]"Y§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§+!C§ = new Vector.<§5!9§>();
         for each(_loc5_ in param1.Container)
         {
            this.§+!C§.push(new §,m§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§+!C§.push(new §>"x§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§+!C§.push(new §2"8§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§+!C§.push(new §+">§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§+!C§.push(new §<`§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§+!C§.push(new §39§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§+!C§.push(new §%#1§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §#"]§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §#"]§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §#"]§(§>"S§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §#"]§(§-"7§,param1.@MouseOut);
         }
      }
      
      public function §%!,§(param1:§5!9§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §3!o§(param1:§5!9§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §&!8§(param1:§5!9§) : void
      {
         if(this.§+!C§.indexOf(param1) < 0)
         {
            this.§+!C§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§@"r§);
            param1.setVisibility(this.§+"x§ && param1.§+"x§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §1!z§(param1:§5!9§) : void
      {
         var _loc2_:int = this.§+!C§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§+!C§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §4!4§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§7!B§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§]"Y§)
         {
            this.§]"Y§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§5!9§ = null;
         for each(_loc2_ in this.§+!C§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§+!C§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§+!C§.length)
            {
               this.§+!C§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§+!C§ = null;
         if(this.§]"Y§)
         {
            this.§]"Y§.movieClip.removeChild(mClip);
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
         var _loc2_:§5!9§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§+!C§ != null)
         {
            for each(_loc2_ in this.§+!C§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §-!e§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §5!9§)
            {
               (_loc3_ as §5!9§).setVisibility(param2);
            }
            else
            {
               §5!s§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §5!9§
      {
         var _loc2_:§5!9§ = null;
         var _loc3_:§5!9§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§+!C§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §,m§)
            {
               _loc3_ = (_loc2_ as §,m§).getItemByName(param1);
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
      
      override public function getParentView() : §6"!§
      {
         if(this.§]"Y§)
         {
            return this.§]"Y§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§5!9§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§+!C§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§5!9§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§+!C§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §+">§)
         {
            (_loc3_ as §+">§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
