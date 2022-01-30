package §3!!§
{
   import §=!7§.§1!7§;
   import §>!L§.§?!d§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §@f§.§7h§;
   import §[" §.§1"1§;
   import com.rovio.assets.§^1§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §5" § extends §4d§
   {
       
      
      public var §2!`§:§1"1§;
      
      public var § q§:Vector.<§7h§>;
      
      public var §5!1§:Boolean = false;
      
      public function §5" §(param1:XML, param2:§5" §, param3:§1"1§, param4:MovieClip = null)
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
            this.§2!`§ = param3;
            if(!param4)
            {
               _loc12_ = §^1§.§+!I§(mName);
               mClip = new _loc12_();
               this.§2!`§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§ q§ = new Vector.<§7h§>();
         for each(_loc5_ in param1.Container)
         {
            this.§ q§.push(new §5" §(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§ q§.push(new §'E§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§ q§.push(new §?v§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§ q§.push(new native(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§ q§.push(new §+!F§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§ q§.push(new §3!g§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§ q§.push(new §?!C§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §8y§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §8y§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §8y§(§ !@§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §8y§(§<![§,param1.@MouseOut);
         }
      }
      
      public function §,!9§(param1:§7h§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§7h§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §,W§(param1:§7h§) : void
      {
         if(this.§ q§.indexOf(param1) < 0)
         {
            this.§ q§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§&h§);
            param1.setVisibility(this.§'!M§ && param1.§'!M§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §2h§(param1:§7h§) : void
      {
         var _loc2_:int = this.§ q§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§ q§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!d§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§&!"§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§2!`§)
         {
            this.§2!`§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§7h§ = null;
         for each(_loc2_ in this.§ q§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§ q§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§ q§.length)
            {
               this.§ q§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§ q§ = null;
         if(this.§2!`§)
         {
            this.§2!`§.movieClip.removeChild(mClip);
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
         var _loc2_:§7h§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§ q§ != null)
         {
            for each(_loc2_ in this.§ q§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §!i§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §7h§)
            {
               (_loc3_ as §7h§).setVisibility(param2);
            }
            else
            {
               §1!7§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §7h§
      {
         var _loc2_:§7h§ = null;
         var _loc3_:§7h§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§ q§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §5" §)
            {
               _loc3_ = (_loc2_ as §5" §).getItemByName(param1);
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
      
      override public function getParentView() : §1"1§
      {
         if(this.§2!`§)
         {
            return this.§2!`§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§7h§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§ q§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§7h§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§ q§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is native)
         {
            (_loc3_ as native).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
