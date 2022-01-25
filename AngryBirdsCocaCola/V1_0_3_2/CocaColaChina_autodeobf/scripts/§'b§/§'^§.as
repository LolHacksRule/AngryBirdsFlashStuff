package §'b§
{
   import §-!9§.§3!5§;
   import §6!Q§.§7!7§;
   import §6l§.§#!Z§;
   import §6l§.§-a§;
   import §>!8§.§4!0§;
   import flash.display.*;
   
   public class §'^§ extends §-a§
   {
       
      
      public var §,q§:§4!0§;
      
      public var § C§:Vector.<§-a§>;
      
      public var §!t§:Boolean = false;
      
      public function §'^§(param1:XML, param2:§'^§, param3:§4!0§, param4:MovieClip = null)
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
            this.§,q§ = param3;
            if(!param4)
            {
               _loc12_ = §3!5§.§9g§(mName);
               mClip = new _loc12_();
               this.§,q§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§ C§ = new Vector.<§-a§>();
         for each(_loc5_ in param1.Container)
         {
            this.§ C§.push(new §'^§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§ C§.push(new §'!$§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§ C§.push(new §0!D§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§ C§.push(new §6!-§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§ C§.push(new §6!L§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§ C§.push(new §3I§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§ C§.push(new §0!2§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §^!F§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §^!F§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §^!F§(§!!=§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §^!F§(§'!;§,param1.@MouseOut);
         }
      }
      
      public function §5#§(param1:§-a§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§-a§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§-a§) : void
      {
         if(this.§ C§.indexOf(param1) < 0)
         {
            this.§ C§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§&3§);
            param1.setVisibility(this.§-N§ && param1.§-N§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§-a§) : void
      {
         var _loc2_:int = this.§ C§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§ C§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§#!Z§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§,q§)
         {
            this.§,q§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§-a§ = null;
         for each(_loc2_ in this.§ C§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§ C§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§ C§.length)
            {
               this.§ C§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§ C§ = null;
         if(this.§,q§)
         {
            this.§,q§.movieClip.removeChild(mClip);
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
         var _loc2_:§-a§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§ C§ != null)
         {
            for each(_loc2_ in this.§ C§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §!V§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §-a§)
            {
               (_loc3_ as §-a§).setVisibility(param2);
            }
            else
            {
               §7!7§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §-a§
      {
         var _loc2_:§-a§ = null;
         var _loc3_:§-a§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§ C§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §'^§)
            {
               _loc3_ = (_loc2_ as §'^§).getItemByName(param1);
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
      
      override public function getParentView() : §4!0§
      {
         if(this.§,q§)
         {
            return this.§,q§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§-a§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§ C§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§-a§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§ C§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
