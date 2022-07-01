package §'p§
{
   import §'!A§.§-!2§;
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §=!M§.§9!P§;
   import com.rovio.assets.§>!]§;
   import flash.display.*;
   
   public class §`!T§ extends §-!2§
   {
       
      
      public var §'"3§:§'s§;
      
      public var §"!_§:Vector.<§-!2§>;
      
      public var §;!v§:Boolean = false;
      
      public function §`!T§(param1:XML, param2:§`!T§, param3:§'s§, param4:MovieClip = null)
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
            this.§'"3§ = param3;
            if(!param4)
            {
               _loc12_ = §>!]§.§1!8§(mName);
               mClip = new _loc12_();
               this.§'"3§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§"!_§ = new Vector.<§-!2§>();
         for each(_loc5_ in param1.Container)
         {
            this.§"!_§.push(new §`!T§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§"!_§.push(new §+!,§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§"!_§.push(new §="#§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§"!_§.push(new §`!<§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§"!_§.push(new §%+§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§"!_§.push(new §"S§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§"!_§.push(new §`!w§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            § "<§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            § "<§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            § "<§(§%x§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            § "<§(§2"3§,param1.@MouseOut);
         }
      }
      
      public function §0<§(param1:§-!2§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §!t§(param1:§-!2§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §;!R§(param1:§-!2§) : void
      {
         if(this.§"!_§.indexOf(param1) < 0)
         {
            this.§"!_§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§?C§);
            param1.setVisibility(this.§-j§ && param1.§-j§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§-!2§) : void
      {
         var _loc2_:int = this.§"!_§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§"!_§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§-!S§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§'"3§)
         {
            this.§'"3§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§-!2§ = null;
         for each(_loc2_ in this.§"!_§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§"!_§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§"!_§.length)
            {
               this.§"!_§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§"!_§ = null;
         if(this.§'"3§)
         {
            this.§'"3§.movieClip.removeChild(mClip);
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
         var _loc2_:§-!2§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§"!_§ != null)
         {
            for each(_loc2_ in this.§"!_§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function § F§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §-!2§)
            {
               (_loc3_ as §-!2§).setVisibility(param2);
            }
            else
            {
               §9!P§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §-!2§
      {
         var _loc2_:§-!2§ = null;
         var _loc3_:§-!2§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§"!_§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §`!T§)
            {
               _loc3_ = (_loc2_ as §`!T§).getItemByName(param1);
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
      
      override public function getParentView() : §'s§
      {
         if(this.§'"3§)
         {
            return this.§'"3§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§-!2§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§"!_§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§-!2§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§"!_§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
