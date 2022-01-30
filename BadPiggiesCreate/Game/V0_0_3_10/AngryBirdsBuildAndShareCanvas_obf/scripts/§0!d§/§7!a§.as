package §0!d§
{
   import §4!t§.§=p§;
   import §9!G§.§]!e§;
   import §<8§.§'X§;
   import §<8§.§7!n§;
   import com.rovio.assets.§5!+§;
   import flash.display.*;
   
   public class §7!a§ extends §'X§
   {
       
      
      public var §=!`§:§=p§;
      
      public var §`F§:Vector.<§'X§>;
      
      public var §%",§:Boolean = false;
      
      public function §7!a§(param1:XML, param2:§7!a§, param3:§=p§, param4:MovieClip = null)
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
            this.§=!`§ = param3;
            if(!param4)
            {
               _loc12_ = §5!+§.§,]§(mName);
               mClip = new _loc12_();
               this.§=!`§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§`F§ = new Vector.<§'X§>();
         for each(_loc5_ in param1.Container)
         {
            this.§`F§.push(new §7!a§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§`F§.push(new §+J§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§`F§.push(new §8!r§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§`F§.push(new §`G§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§`F§.push(new §%!9§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§`F§.push(new §>!4§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§`F§.push(new §'!_§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §"a§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §"a§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §"a§(§"!S§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §"a§(§-!r§,param1.@MouseOut);
         }
      }
      
      public function §=_§(param1:§'X§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §,b§(param1:§'X§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §2!%§(param1:§'X§) : void
      {
         if(this.§`F§.indexOf(param1) < 0)
         {
            this.§`F§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§7!§);
            param1.setVisibility(this.§>!L§ && param1.§>!L§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§'X§) : void
      {
         var _loc2_:int = this.§`F§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§`F§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§7!n§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§=!`§)
         {
            this.§=!`§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§'X§ = null;
         for each(_loc2_ in this.§`F§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§`F§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§`F§.length)
            {
               this.§`F§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§`F§ = null;
         if(this.§=!`§)
         {
            this.§=!`§.movieClip.removeChild(mClip);
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
         var _loc2_:§'X§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§`F§ != null)
         {
            for each(_loc2_ in this.§`F§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §`!F§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §'X§)
            {
               (_loc3_ as §'X§).setVisibility(param2);
            }
            else
            {
               §]!e§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §'X§
      {
         var _loc2_:§'X§ = null;
         var _loc3_:§'X§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§`F§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §7!a§)
            {
               _loc3_ = (_loc2_ as §7!a§).getItemByName(param1);
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
      
      override public function getParentView() : §=p§
      {
         if(this.§=!`§)
         {
            return this.§=!`§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§'X§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§`F§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§'X§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§`F§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
