package §+D§
{
   import §5t§.Log;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §;"Y§.§]#X§;
   import §<w§.§6#'§;
   import com.rovio.assets.§5_§;
   import flash.display.*;
   import flash.events.Event;
   
   public class § #^§ extends §1"z§
   {
       
      
      public var §+"W§:§]#[§;
      
      public var §%"u§:Vector.<§]#X§>;
      
      public var §3"s§:Boolean = false;
      
      public function § #^§(param1:XML, param2:§ #^§, param3:§]#[§, param4:MovieClip = null)
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
            this.§+"W§ = param3;
            if(!param4)
            {
               _loc12_ = §5_§.§`"G§(mName);
               mClip = new _loc12_();
               this.§+"W§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§%"u§ = new Vector.<§]#X§>();
         for each(_loc5_ in param1.Container)
         {
            this.§%"u§.push(§"-§.§=#T§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§%"u§.push(§"-§.§,#H§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§%"u§.push(§"-§.§0!i§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§%"u§.push(§"-§.§5;§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§%"u§.push(§"-§.§`"'§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§%"u§.push(§"-§.§@!I§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§%"u§.push(§"-§.§6L§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            § #A§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            § #A§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            § #A§(§;#V§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            § #A§(§<!^§,param1.@MouseOut);
         }
      }
      
      public function §6#?§(param1:§]#X§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §"!-§(param1:§]#X§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §;S§(param1:§]#X§) : void
      {
         if(this.§%"u§.indexOf(param1) < 0)
         {
            this.§%"u§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§;"w§);
            param1.setVisibility(this.§9C§ && param1.§9C§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §#=§(param1:§]#X§) : void
      {
         var _loc2_:int = this.§%"u§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§%"u§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§&#X§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§+"W§)
         {
            this.§+"W§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§]#X§ = null;
         for each(_loc2_ in this.§%"u§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§%"u§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§%"u§.length)
            {
               this.§%"u§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§%"u§ = null;
         if(this.§+"W§)
         {
            this.§+"W§.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      public function §7N§() : void
      {
         var _loc1_:int = 0;
         if(this.§%"u§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§%"u§.length)
            {
               this.§%"u§[_loc1_].clear();
               _loc1_++;
            }
            this.§%"u§ = new Vector.<§]#X§>();
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         this.onParentVisibilityChange(param1);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:§]#X§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§%"u§ != null)
         {
            for each(_loc2_ in this.§%"u§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §'P§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §]#X§)
            {
               (_loc3_ as §]#X§).setVisibility(param2);
            }
            else
            {
               Log.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §]#X§
      {
         var _loc2_:§]#X§ = null;
         var _loc3_:§]#X§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§%"u§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is § #^§)
            {
               _loc3_ = (_loc2_ as § #^§).getItemByName(param1);
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
      
      override public function getParentView() : §]#[§
      {
         if(this.§+"W§)
         {
            return this.§+"W§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§]#X§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§%"u§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§]#X§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§%"u§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §6!D§)
         {
            (_loc3_ as §6!D§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
