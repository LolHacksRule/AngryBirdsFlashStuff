package §=8§
{
   import §'!N§.§"f§;
   import §'!N§.§%!E§;
   import §-!5§.§5s§;
   import §]!O§.§+[§;
   import com.rovio.assets.§4D§;
   import flash.display.*;
   
   public class §'^§ extends §"f§
   {
       
      
      public var §?E§:§+[§;
      
      public var §4C§:Vector.<§"f§>;
      
      public var §%!0§:Boolean = false;
      
      public function §'^§(param1:XML, param2:§'^§, param3:§+[§, param4:MovieClip = null)
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
            this.§?E§ = param3;
            if(!param4)
            {
               _loc12_ = §4D§.§,!O§(mName);
               mClip = new _loc12_();
               this.§?E§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§4C§ = new Vector.<§"f§>();
         for each(_loc5_ in param1.Container)
         {
            this.§4C§.push(new §'^§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§4C§.push(new §%y§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§4C§.push(new dynamic(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§4C§.push(new §&H§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§4C§.push(new §,!%§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§4C§.push(new §&>§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§4C§.push(new §-l§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §#D§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §#D§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §#D§(§6!I§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §#D§(§+]§,param1.@MouseOut);
         }
      }
      
      public function §2!<§(param1:§"f§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §4f§(param1:§"f§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§"f§) : void
      {
         if(this.§4C§.indexOf(param1) < 0)
         {
            this.§4C§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.mActive);
            param1.setVisibility(this.§-Z§ && param1.§-Z§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function § !<§(param1:§"f§) : void
      {
         var _loc2_:int = this.§4C§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§4C§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§%!E§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§?E§)
         {
            this.§?E§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§"f§ = null;
         for each(_loc2_ in this.§4C§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§4C§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§4C§.length)
            {
               this.§4C§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§4C§ = null;
         if(this.§?E§)
         {
            this.§?E§.movieClip.removeChild(mClip);
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
         var _loc2_:§"f§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§4C§ != null)
         {
            for each(_loc2_ in this.§4C§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §3Y§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §"f§)
            {
               (_loc3_ as §"f§).setVisibility(param2);
            }
            else
            {
               §5s§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §"f§
      {
         var _loc2_:§"f§ = null;
         var _loc3_:§"f§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§4C§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §'^§)
            {
               _loc3_ = (_loc2_ as §'^§).getItemByName(param1);
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
      
      override public function getParentView() : §+[§
      {
         if(this.§?E§)
         {
            return this.§?E§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§"f§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§4C§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§"f§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§4C§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
