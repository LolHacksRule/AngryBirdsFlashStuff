package §,!7§
{
   import §+=§.§?!Q§;
   import §+k§.§0"4§;
   import §6!C§.§6E§;
   import §6B§.§&9§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import com.rovio.assets.§>!;§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §5!k§ extends §5![§
   {
       
      
      public var §@!g§:§0"4§;
      
      public var §<!d§:Vector.<§&9§>;
      
      public var §%!,§:Boolean = false;
      
      public function §5!k§(param1:XML, param2:§5!k§, param3:§0"4§, param4:MovieClip = null)
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
            this.§@!g§ = param3;
            if(!param4)
            {
               _loc12_ = §>!;§.§+!u§(mName);
               mClip = new _loc12_();
               this.§@!g§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§<!d§ = new Vector.<§&9§>();
         for each(_loc5_ in param1.Container)
         {
            this.§<!d§.push(new §5!k§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§<!d§.push(new §]I§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§<!d§.push(new §%!J§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§<!d§.push(new §2a§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§<!d§.push(new §8,§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§<!d§.push(new §;k§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§<!d§.push(new §'"2§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §7!B§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §7!B§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §7!B§(§21§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §7!B§(§=!^§,param1.@MouseOut);
         }
      }
      
      public function §>H§(param1:§&9§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§&9§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §2t§(param1:§&9§) : void
      {
         if(this.§<!d§.indexOf(param1) < 0)
         {
            this.§<!d§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§!"&§);
            param1.setVisibility(this.§<!m§ && param1.§<!m§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §,!'§(param1:§&9§) : void
      {
         var _loc2_:int = this.§<!d§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§<!d§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!Q§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§?"2§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§@!g§)
         {
            this.§@!g§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§&9§ = null;
         for each(_loc2_ in this.§<!d§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§<!d§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§<!d§.length)
            {
               this.§<!d§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§<!d§ = null;
         if(this.§@!g§)
         {
            this.§@!g§.movieClip.removeChild(mClip);
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
         var _loc2_:§&9§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§<!d§ != null)
         {
            for each(_loc2_ in this.§<!d§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §@v§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §&9§)
            {
               (_loc3_ as §&9§).setVisibility(param2);
            }
            else
            {
               §6E§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §&9§
      {
         var _loc2_:§&9§ = null;
         var _loc3_:§&9§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§<!d§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §5!k§)
            {
               _loc3_ = (_loc2_ as §5!k§).getItemByName(param1);
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
      
      override public function getParentView() : §0"4§
      {
         if(this.§@!g§)
         {
            return this.§@!g§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§&9§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§<!d§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§&9§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§<!d§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §2a§)
         {
            (_loc3_ as §2a§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
