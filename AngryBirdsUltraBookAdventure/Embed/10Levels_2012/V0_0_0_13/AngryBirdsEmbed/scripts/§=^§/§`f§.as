package §=^§
{
   import §0!<§.§#y§;
   import §1;§.§!!1§;
   import §@s§.§'!0§;
   import §@s§.§3!?§;
   import com.rovio.assets.§,u§;
   import flash.display.*;
   
   public class §`f§ extends §3!?§
   {
       
      
      public var §5`§:§!!1§;
      
      public var §2x§:Vector.<§3!?§>;
      
      public var §%!I§:Boolean = false;
      
      public function §`f§(param1:XML, param2:§`f§, param3:§!!1§, param4:MovieClip = null)
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
            this.§5`§ = param3;
            if(!param4)
            {
               _loc12_ = §,u§.§'[§(mName);
               mClip = new _loc12_();
               this.§5`§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§2x§ = new Vector.<§3!?§>();
         for each(_loc5_ in param1.Container)
         {
            this.§2x§.push(new §`f§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§2x§.push(new §"M§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§2x§.push(new §]P§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§2x§.push(new § p§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§2x§.push(new §[!B§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§2x§.push(new §;%§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§2x§.push(new §<,§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            § [§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            § [§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            § [§(§3]§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            § [§(§#H§,param1.@MouseOut);
         }
      }
      
      public function §>B§(param1:§3!?§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §4H§(param1:§3!?§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §?b§(param1:§3!?§) : void
      {
         if(this.§2x§.indexOf(param1) < 0)
         {
            this.§2x§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§9l§);
            param1.setVisibility(this.§const§ && param1.§const§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function § '§(param1:§3!?§) : void
      {
         var _loc2_:int = this.§2x§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§2x§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§'!0§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§5`§)
         {
            this.§5`§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§3!?§ = null;
         for each(_loc2_ in this.§2x§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§2x§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§2x§.length)
            {
               this.§2x§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§2x§ = null;
         if(this.§5`§)
         {
            this.§5`§.movieClip.removeChild(mClip);
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
         var _loc2_:§3!?§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§2x§ != null)
         {
            for each(_loc2_ in this.§2x§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §`Y§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §3!?§)
            {
               (_loc3_ as §3!?§).setVisibility(param2);
            }
            else
            {
               §#y§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §3!?§
      {
         var _loc2_:§3!?§ = null;
         var _loc3_:§3!?§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§2x§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §`f§)
            {
               _loc3_ = (_loc2_ as §`f§).getItemByName(param1);
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
      
      override public function getParentView() : §!!1§
      {
         if(this.§5`§)
         {
            return this.§5`§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§3!?§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§2x§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§3!?§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§2x§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
