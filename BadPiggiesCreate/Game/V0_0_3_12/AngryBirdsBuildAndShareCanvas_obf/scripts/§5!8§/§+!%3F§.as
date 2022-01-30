package §5!8§
{
   import §"p§.§@8§;
   import §@">§.§%!u§;
   import §^x§.§3!r§;
   import §^x§.§<!w§;
   import com.rovio.assets.§!"'§;
   import flash.display.*;
   
   public class §+!?§ extends §3!r§
   {
       
      
      public var §<"7§:§%!u§;
      
      public var §@"9§:Vector.<§3!r§>;
      
      public var §+!S§:Boolean = false;
      
      public function §+!?§(param1:XML, param2:§+!?§, param3:§%!u§, param4:MovieClip = null)
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
            this.§<"7§ = param3;
            if(!param4)
            {
               _loc12_ = §!"'§.§%!Q§(mName);
               mClip = new _loc12_();
               this.§<"7§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§@"9§ = new Vector.<§3!r§>();
         for each(_loc5_ in param1.Container)
         {
            this.§@"9§.push(new §+!?§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§@"9§.push(new §-!+§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§@"9§.push(new §;!Z§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§@"9§.push(new §6m§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§@"9§.push(new §;!P§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§@"9§.push(new §`""§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§@"9§.push(new §1!Y§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §^T§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §^T§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §^T§(§^!H§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §^T§(§^!K§,param1.@MouseOut);
         }
      }
      
      public function §7!T§(param1:§3!r§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §`"6§(param1:§3!r§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §`!Y§(param1:§3!r§) : void
      {
         if(this.§@"9§.indexOf(param1) < 0)
         {
            this.§@"9§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§0"&§);
            param1.setVisibility(this.§;!c§ && param1.§;!c§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§3!r§) : void
      {
         var _loc2_:int = this.§@"9§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§@"9§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§<!w§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§<"7§)
         {
            this.§<"7§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§3!r§ = null;
         for each(_loc2_ in this.§@"9§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§@"9§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§@"9§.length)
            {
               this.§@"9§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§@"9§ = null;
         if(this.§<"7§)
         {
            this.§<"7§.movieClip.removeChild(mClip);
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
         var _loc2_:§3!r§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§@"9§ != null)
         {
            for each(_loc2_ in this.§@"9§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §,!X§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §3!r§)
            {
               (_loc3_ as §3!r§).setVisibility(param2);
            }
            else
            {
               §@8§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §3!r§
      {
         var _loc2_:§3!r§ = null;
         var _loc3_:§3!r§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§@"9§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §+!?§)
            {
               _loc3_ = (_loc2_ as §+!?§).getItemByName(param1);
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
      
      override public function getParentView() : §%!u§
      {
         if(this.§<"7§)
         {
            return this.§<"7§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§3!r§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§@"9§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§3!r§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§@"9§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
