package §;"+§
{
   import §5<§.§58§;
   import §;4§.§]!%§;
   import §<" §.§]!g§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import §>P§.§3!Z§;
   import com.rovio.assets.§2"&§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §^!i§ extends §-U§
   {
       
      
      public var §<A§:§58§;
      
      public var §[3§:Vector.<§3!Z§>;
      
      public var §<h§:Boolean = false;
      
      public function §^!i§(param1:XML, param2:§^!i§, param3:§58§, param4:MovieClip = null)
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
            this.§<A§ = param3;
            if(!param4)
            {
               _loc12_ = §2"&§.§<$§(mName);
               mClip = new _loc12_();
               this.§<A§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§[3§ = new Vector.<§3!Z§>();
         for each(_loc5_ in param1.Container)
         {
            this.§[3§.push(new §^!i§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§[3§.push(new §'L§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§[3§.push(new §9!M§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§[3§.push(new §"!I§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§[3§.push(new §0?§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§[3§.push(new §#!'§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§[3§.push(new §>!D§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §[!"§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §[!"§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §[!"§(§%"+§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §[!"§(§-!^§,param1.@MouseOut);
         }
      }
      
      public function §-!a§(param1:§3!Z§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§3!Z§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §7!g§(param1:§3!Z§) : void
      {
         if(this.§[3§.indexOf(param1) < 0)
         {
            this.§[3§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§[!D§);
            param1.setVisibility(this.§2!a§ && param1.§2!a§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §"'§(param1:§3!Z§) : void
      {
         var _loc2_:int = this.§[3§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§[3§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]!g§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§,3§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§<A§)
         {
            this.§<A§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§3!Z§ = null;
         for each(_loc2_ in this.§[3§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§[3§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§[3§.length)
            {
               this.§[3§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§[3§ = null;
         if(this.§<A§)
         {
            this.§<A§.movieClip.removeChild(mClip);
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
         var _loc2_:§3!Z§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§[3§ != null)
         {
            for each(_loc2_ in this.§[3§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §2",§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §3!Z§)
            {
               (_loc3_ as §3!Z§).setVisibility(param2);
            }
            else
            {
               §]!%§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §3!Z§
      {
         var _loc2_:§3!Z§ = null;
         var _loc3_:§3!Z§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§[3§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §^!i§)
            {
               _loc3_ = (_loc2_ as §^!i§).getItemByName(param1);
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
      
      override public function getParentView() : §58§
      {
         if(this.§<A§)
         {
            return this.§<A§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§3!Z§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§[3§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§3!Z§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§[3§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §"!I§)
         {
            (_loc3_ as §"!I§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
