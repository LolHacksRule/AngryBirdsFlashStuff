package §4C§
{
   import §0w§.§0#§;
   import §>K§.§9X§;
   import §`!0§.§"?§;
   import §`!0§.§4Y§;
   import com.rovio.assets.§!Q§;
   import flash.display.*;
   
   public class §1!=§ extends §4Y§
   {
       
      
      public var § in§:§0#§;
      
      public var §@_§:Vector.<§4Y§>;
      
      public var §[U§:Boolean = false;
      
      public function §1!=§(param1:XML, param2:§1!=§, param3:§0#§, param4:MovieClip = null)
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
            this.§ in§ = param3;
            if(!param4)
            {
               _loc12_ = §!Q§.§^!H§(mName);
               mClip = new _loc12_();
               this.§ in§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§@_§ = new Vector.<§4Y§>();
         for each(_loc5_ in param1.Container)
         {
            this.§@_§.push(new §1!=§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§@_§.push(new §->§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§@_§.push(new §6<§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§@_§.push(new §<k§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§@_§.push(new §"m§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§@_§.push(new §'!D§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§@_§.push(new §3!"§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §1?§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §1?§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §1?§(§;!4§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §1?§(§#x§,param1.@MouseOut);
         }
      }
      
      public function §`;§(param1:§4Y§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §2!7§(param1:§4Y§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §^!I§(param1:§4Y§) : void
      {
         if(this.§@_§.indexOf(param1) < 0)
         {
            this.§@_§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§>U§);
            param1.setVisibility(this.§2!-§ && param1.§2!-§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §9K§(param1:§4Y§) : void
      {
         var _loc2_:int = this.§@_§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§@_§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§"?§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§ in§)
         {
            this.§ in§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§4Y§ = null;
         for each(_loc2_ in this.§@_§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§@_§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§@_§.length)
            {
               this.§@_§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§@_§ = null;
         if(this.§ in§)
         {
            this.§ in§.movieClip.removeChild(mClip);
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
         var _loc2_:§4Y§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§@_§ != null)
         {
            for each(_loc2_ in this.§@_§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §`X§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §4Y§)
            {
               (_loc3_ as §4Y§).setVisibility(param2);
            }
            else
            {
               §9X§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §4Y§
      {
         var _loc2_:§4Y§ = null;
         var _loc3_:§4Y§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§@_§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §1!=§)
            {
               _loc3_ = (_loc2_ as §1!=§).getItemByName(param1);
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
      
      override public function getParentView() : §0#§
      {
         if(this.§ in§)
         {
            return this.§ in§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§4Y§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§@_§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§4Y§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§@_§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
