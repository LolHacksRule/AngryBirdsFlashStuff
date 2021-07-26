package §#,§
{
   import §!"'§.§0"Z§;
   import §%!-§.§5!z§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,!Q§.§8#=§;
   import §1#v§.§;!Y§;
   import com.rovio.assets.§6$A§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §]$+§ extends §+!2§
   {
       
      
      public var §2"X§:§5!z§;
      
      public var §!$"§:Vector.<§8#=§>;
      
      public var §4$-§:Boolean = false;
      
      public function §]$+§(param1:XML, param2:§]$+§, param3:§5!z§, param4:MovieClip = null)
      {
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         if(param3)
         {
            this.§2"X§ = param3;
            if(!param4)
            {
               _loc12_ = §6$A§.§1!m§(param1.@name);
               mClip = new _loc12_();
               this.§2"X§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§!$"§ = new Vector.<§8#=§>();
         for each(_loc5_ in param1.Container)
         {
            this.§!$"§.push(§ "o§.§>!<§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§!$"§.push(§ "o§.§+!H§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§!$"§.push(§ "o§.§=$'§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§!$"§.push(§ "o§.§4#i§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§!$"§.push(§ "o§.§,g§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§!$"§.push(§ "o§.§'#G§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§!$"§.push(§ "o§.§`"g§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §1r§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §1r§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §1r§(§0!5§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §1r§(§<!$§,param1.@MouseOut);
         }
      }
      
      public function §9#;§(param1:§8#=§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §?!m§(param1:§8#=§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §'!S§(param1:§8#=§) : void
      {
         if(this.§!$"§.indexOf(param1) < 0)
         {
            this.§!$"§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§;o§);
            param1.setVisibility(this.§<"E§ && param1.§<"E§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §7"r§(param1:§8#=§) : void
      {
         var _loc2_:int = this.§!$"§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§!$"§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §0"Z§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§6"n§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§2"X§)
         {
            this.§2"X§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§8#=§ = null;
         for each(_loc2_ in this.§!$"§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§!$"§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§!$"§.length)
            {
               this.§!$"§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§!$"§ = null;
         if(this.§2"X§)
         {
            this.§2"X§.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      public function §7!d§() : void
      {
         var _loc1_:int = 0;
         if(this.§!$"§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§!$"§.length)
            {
               this.§!$"§[_loc1_].clear();
               _loc1_++;
            }
            this.§!$"§ = new Vector.<§8#=§>();
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         this.onParentVisibilityChange(param1);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:§8#=§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§!$"§ != null)
         {
            for each(_loc2_ in this.§!$"§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §3!§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(upperCaseName == param1.toUpperCase())
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §8#=§)
            {
               (_loc3_ as §8#=§).setVisibility(param2);
            }
            else
            {
               §;!Y§.log("WARNING: UIContainer(" + name + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §8#=§
      {
         return this.§`! §(param1.toUpperCase());
      }
      
      protected function §`! §(param1:String) : §8#=§
      {
         var _loc2_:§8#=§ = null;
         var _loc3_:§8#=§ = null;
         if(upperCaseName == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§!$"§)
         {
            if(_loc2_.upperCaseName == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §]$+§)
            {
               _loc3_ = (_loc2_ as §]$+§).getItemByName(param1);
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
      
      override public function getParentView() : §5!z§
      {
         if(this.§2"X§)
         {
            return this.§2"X§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§8#=§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§!$"§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§8#=§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§!$"§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §`"$§)
         {
            (_loc3_ as §`"$§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
