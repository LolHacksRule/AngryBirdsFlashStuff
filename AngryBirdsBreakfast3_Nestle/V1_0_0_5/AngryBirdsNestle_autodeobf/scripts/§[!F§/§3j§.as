package §[!F§
{
   import §&<§.§2!q§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §0!$§.§#!-§;
   import §8,§.§8!h§;
   import §^!`§.§-"5§;
   import com.rovio.assets.§<U§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §3j§ extends §@j§
   {
       
      
      public var §'!=§:§-"5§;
      
      public var § !C§:Vector.<§2!q§>;
      
      public var §,!l§:Boolean = false;
      
      public function §3j§(param1:XML, param2:§3j§, param3:§-"5§, param4:MovieClip = null)
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
            this.§'!=§ = param3;
            if(!param4)
            {
               _loc12_ = §<U§.§5"0§(mName);
               mClip = new _loc12_();
               this.§'!=§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§ !C§ = new Vector.<§2!q§>();
         for each(_loc5_ in param1.Container)
         {
            this.§ !C§.push(new §3j§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§ !C§.push(new §2!;§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§ !C§.push(new §^!g§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§ !C§.push(new §1c§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§ !C§.push(new §>""§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§ !C§.push(new §,K§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§ !C§.push(new §,!A§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §0!0§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §0!0§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §0!0§(§^!2§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §0!0§(§+!b§,param1.@MouseOut);
         }
      }
      
      public function §%!`§(param1:§2!q§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§2!q§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §0J§(param1:§2!q§) : void
      {
         if(this.§ !C§.indexOf(param1) < 0)
         {
            this.§ !C§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§ !3§);
            param1.setVisibility(this.§1p§ && param1.§1p§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §`,§(param1:§2!q§) : void
      {
         var _loc2_:int = this.§ !C§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§ !C§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8!h§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§^!#§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§'!=§)
         {
            this.§'!=§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§2!q§ = null;
         for each(_loc2_ in this.§ !C§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§ !C§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§ !C§.length)
            {
               this.§ !C§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§ !C§ = null;
         if(this.§'!=§)
         {
            this.§'!=§.movieClip.removeChild(mClip);
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
         var _loc2_:§2!q§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§ !C§ != null)
         {
            for each(_loc2_ in this.§ !C§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §;!N§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §2!q§)
            {
               (_loc3_ as §2!q§).setVisibility(param2);
            }
            else
            {
               §#!-§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §2!q§
      {
         var _loc2_:§2!q§ = null;
         var _loc3_:§2!q§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§ !C§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §3j§)
            {
               _loc3_ = (_loc2_ as §3j§).getItemByName(param1);
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
      
      override public function getParentView() : §-"5§
      {
         if(this.§'!=§)
         {
            return this.§'!=§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§2!q§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§ !C§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§2!q§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§ !C§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §1c§)
         {
            (_loc3_ as §1c§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
