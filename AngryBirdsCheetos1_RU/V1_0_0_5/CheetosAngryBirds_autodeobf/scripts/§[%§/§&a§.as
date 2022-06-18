package §[%§
{
   import §!4§.§=!Z§;
   import §'Y§.§;J§;
   import §<s§.§'k§;
   import §<s§.§]@§;
   import §[-§.§#!,§;
   import flash.display.*;
   
   public class §&a§ extends §'k§
   {
       
      
      public var §-F§:§;J§;
      
      public var §-8§:Vector.<§'k§>;
      
      public var §#]§:Boolean = false;
      
      public function §&a§(param1:XML, param2:§&a§, param3:§;J§, param4:MovieClip = null)
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
            this.§-F§ = param3;
            if(!param4)
            {
               _loc12_ = §#!,§.§-<§(mName);
               mClip = new _loc12_();
               this.§-F§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§-8§ = new Vector.<§'k§>();
         for each(_loc5_ in param1.Container)
         {
            this.§-8§.push(new §&a§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§-8§.push(new §+![§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§-8§.push(new §6!§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§-8§.push(new §<@§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§-8§.push(new §=!M§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§-8§.push(new §2l§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§-8§.push(new §-!M§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §0!T§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §0!T§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §0!T§(§<o§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §0!T§(§#3§,param1.@MouseOut);
         }
      }
      
      public function §29§(param1:§'k§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§'k§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§'k§) : void
      {
         if(this.§-8§.indexOf(param1) < 0)
         {
            this.§-8§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§7!G§);
            param1.setVisibility(this.§ !+§ && param1.§ !+§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§'k§) : void
      {
         var _loc2_:int = this.§-8§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§-8§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§]@§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§-F§)
         {
            this.§-F§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§'k§ = null;
         for each(_loc2_ in this.§-8§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§-8§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§-8§.length)
            {
               this.§-8§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§-8§ = null;
         if(this.§-F§)
         {
            this.§-F§.movieClip.removeChild(mClip);
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
         var _loc2_:§'k§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§-8§ != null)
         {
            for each(_loc2_ in this.§-8§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §?!3§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §'k§)
            {
               (_loc3_ as §'k§).setVisibility(param2);
            }
            else
            {
               §=!Z§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §'k§
      {
         var _loc2_:§'k§ = null;
         var _loc3_:§'k§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§-8§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §&a§)
            {
               _loc3_ = (_loc2_ as §&a§).getItemByName(param1);
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
      
      override public function getParentView() : §;J§
      {
         if(this.§-F§)
         {
            return this.§-F§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§'k§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§-8§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§'k§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§-8§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
