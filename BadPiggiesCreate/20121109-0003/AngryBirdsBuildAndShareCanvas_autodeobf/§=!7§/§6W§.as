package §=!7§
{
   import §&!<§.§>!V§;
   import §6]§.§,"0§;
   import §@y§.§0"4§;
   import §@y§.§0=§;
   import com.rovio.assets.§69§;
   import flash.display.*;
   
   public class §6W§ extends §0"4§
   {
       
      
      public var §;C§:§>!V§;
      
      public var §[z§:Vector.<§0"4§>;
      
      public var §1<§:Boolean = false;
      
      public function §6W§(param1:XML, param2:§6W§, param3:§>!V§, param4:MovieClip = null)
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
            this.§;C§ = param3;
            if(!param4)
            {
               _loc12_ = §69§.§ 0§(mName);
               mClip = new _loc12_();
               this.§;C§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§[z§ = new Vector.<§0"4§>();
         for each(_loc5_ in param1.Container)
         {
            this.§[z§.push(new §6W§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§[z§.push(new §3!b§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§[z§.push(new §9"8§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§[z§.push(new §!!]§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§[z§.push(new §@u§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§[z§.push(new §>!;§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§[z§.push(new §8q§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §7"'§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §7"'§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §7"'§(§2!-§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §7"'§(§6!;§,param1.@MouseOut);
         }
      }
      
      public function §`!§(param1:§0"4§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §2";§(param1:§0"4§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §#i§(param1:§0"4§) : void
      {
         if(this.§[z§.indexOf(param1) < 0)
         {
            this.§[z§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§3!+§);
            param1.setVisibility(this.§'">§ && param1.§'">§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§0"4§) : void
      {
         var _loc2_:int = this.§[z§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§[z§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§0=§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§;C§)
         {
            this.§;C§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§0"4§ = null;
         for each(_loc2_ in this.§[z§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§[z§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§[z§.length)
            {
               this.§[z§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§[z§ = null;
         if(this.§;C§)
         {
            this.§;C§.movieClip.removeChild(mClip);
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
         var _loc2_:§0"4§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§[z§ != null)
         {
            for each(_loc2_ in this.§[z§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §9"$§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §0"4§)
            {
               (_loc3_ as §0"4§).setVisibility(param2);
            }
            else
            {
               §,"0§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §0"4§
      {
         var _loc2_:§0"4§ = null;
         var _loc3_:§0"4§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§[z§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §6W§)
            {
               _loc3_ = (_loc2_ as §6W§).getItemByName(param1);
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
      
      override public function getParentView() : §>!V§
      {
         if(this.§;C§)
         {
            return this.§;C§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§0"4§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§[z§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§0"4§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§[z§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
