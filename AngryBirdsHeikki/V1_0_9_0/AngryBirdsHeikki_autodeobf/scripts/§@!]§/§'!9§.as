package §@!]§
{
   import §"!S§.§<s§;
   import §#Q§.§8Y§;
   import §0i§.§]_§;
   import §1Q§.§'!`§;
   import §1Q§.§6'§;
   import flash.display.*;
   
   public class §'!9§ extends §6'§
   {
       
      
      public var §!!§:§8Y§;
      
      public var §'t§:Vector.<§6'§>;
      
      public var §6!A§:Boolean = false;
      
      public function §'!9§(param1:XML, param2:§'!9§, param3:§8Y§, param4:MovieClip = null)
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
            this.§!!§ = param3;
            if(!param4)
            {
               _loc12_ = §<s§.§0b§(mName);
               mClip = new _loc12_();
               this.§!!§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§'t§ = new Vector.<§6'§>();
         for each(_loc5_ in param1.Container)
         {
            this.§'t§.push(new §'!9§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§'t§.push(new §?u§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§'t§.push(new §&!!§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§'t§.push(new §%!S§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§'t§.push(new §%k§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§'t§.push(new §"[§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§'t§.push(new §!!N§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §1!W§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §1!W§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §1!W§(§[Y§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §1!W§(§ !Y§,param1.@MouseOut);
         }
      }
      
      public function §for §(param1:§6'§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§6'§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§6'§) : void
      {
         if(this.§'t§.indexOf(param1) < 0)
         {
            this.§'t§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§[![§);
            param1.setVisibility(this.§?!a§ && param1.§?!a§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§6'§) : void
      {
         var _loc2_:int = this.§'t§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§'t§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§'!`§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§!!§)
         {
            this.§!!§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§6'§ = null;
         for each(_loc2_ in this.§'t§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§'t§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§'t§.length)
            {
               this.§'t§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§'t§ = null;
         if(this.§!!§)
         {
            this.§!!§.movieClip.removeChild(mClip);
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
         var _loc2_:§6'§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§'t§ != null)
         {
            for each(_loc2_ in this.§'t§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §1Z§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §6'§)
            {
               (_loc3_ as §6'§).setVisibility(param2);
            }
            else
            {
               §]_§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §6'§
      {
         var _loc2_:§6'§ = null;
         var _loc3_:§6'§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§'t§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §'!9§)
            {
               _loc3_ = (_loc2_ as §'!9§).getItemByName(param1);
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
      
      override public function getParentView() : §8Y§
      {
         if(this.§!!§)
         {
            return this.§!!§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§6'§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§'t§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§6'§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§'t§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
