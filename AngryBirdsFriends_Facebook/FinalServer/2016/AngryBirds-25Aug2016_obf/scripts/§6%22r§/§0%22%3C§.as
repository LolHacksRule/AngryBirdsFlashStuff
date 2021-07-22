package §6"r§
{
   import §!x§.§4"d§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'!U§.§>$$§;
   import §3!T§.§3">§;
   import §<!O§.§'k§;
   import com.rovio.assets.§@`§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §0"<§ extends §4P§
   {
       
      
      public var §1]§:§'k§;
      
      public var §5&§:Vector.<§>$$§>;
      
      public var §<o§:Boolean = false;
      
      public function §0"<§(param1:XML, param2:§0"<§, param3:§'k§, param4:MovieClip = null)
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
            this.§1]§ = param3;
            if(!param4)
            {
               _loc12_ = §@`§.§4!i§(param1.@name);
               mClip = new _loc12_();
               this.§1]§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§5&§ = new Vector.<§>$$§>();
         for each(_loc5_ in param1.Container)
         {
            this.§5&§.push(§#j§.§const§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§5&§.push(§#j§.§]u§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§5&§.push(§#j§.§;J§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§5&§.push(§#j§.§^!6§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§5&§.push(§#j§.§!Y§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§5&§.push(§#j§.§>" §(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§5&§.push(§#j§.§[w§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §7!7§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §7!7§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §7!7§(§1"j§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §7!7§(§`!O§,param1.@MouseOut);
         }
      }
      
      public function §<!X§(param1:§>$$§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §3!n§(param1:§>$$§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §1#5§(param1:§>$$§) : void
      {
         if(this.§5&§.indexOf(param1) < 0)
         {
            this.§5&§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§5!U§);
            param1.setVisibility(this.§null § && param1.§null §);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §`s§(param1:§>$$§) : void
      {
         var _loc2_:int = this.§5&§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§5&§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3">§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§0!?§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§1]§)
         {
            this.§1]§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§>$$§ = null;
         for each(_loc2_ in this.§5&§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§5&§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§5&§.length)
            {
               this.§5&§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§5&§ = null;
         if(this.§1]§)
         {
            this.§1]§.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      public function §%$8§() : void
      {
         var _loc1_:int = 0;
         if(this.§5&§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§5&§.length)
            {
               this.§5&§[_loc1_].clear();
               _loc1_++;
            }
            this.§5&§ = new Vector.<§>$$§>();
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         this.onParentVisibilityChange(param1);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:§>$$§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§5&§ != null)
         {
            for each(_loc2_ in this.§5&§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §?!L§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(upperCaseName == param1.toUpperCase())
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §>$$§)
            {
               (_loc3_ as §>$$§).setVisibility(param2);
            }
            else
            {
               §4"d§.log("WARNING: UIContainer(" + name + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §>$$§
      {
         return this.§2'§(param1.toUpperCase());
      }
      
      protected function §2'§(param1:String) : §>$$§
      {
         var _loc2_:§>$$§ = null;
         var _loc3_:§>$$§ = null;
         if(upperCaseName == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§5&§)
         {
            if(_loc2_.upperCaseName == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §0"<§)
            {
               _loc3_ = (_loc2_ as §0"<§).getItemByName(param1);
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
      
      override public function getParentView() : §'k§
      {
         if(this.§1]§)
         {
            return this.§1]§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§>$$§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§5&§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§>$$§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§5&§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §]$!§)
         {
            (_loc3_ as §]$!§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
