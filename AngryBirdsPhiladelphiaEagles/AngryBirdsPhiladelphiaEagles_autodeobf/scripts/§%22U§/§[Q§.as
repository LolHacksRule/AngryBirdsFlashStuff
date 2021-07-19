package §"U§
{
   import §6v§.§`M§;
   import §6v§.§var §;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import com.rovio.assets.§[!D§;
   import flash.display.*;
   
   public class §[Q§ extends §var §
   {
       
      
      public var §<!O§:§`o§;
      
      public var §`!O§:Vector.<§var §>;
      
      public var §82§:Boolean = false;
      
      public function §[Q§(param1:XML, param2:§[Q§, param3:§`o§, param4:MovieClip = null)
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
            this.§<!O§ = param3;
            if(!param4)
            {
               _loc12_ = §[!D§.§8!N§(mName);
               mClip = new _loc12_();
               this.§<!O§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§`!O§ = new Vector.<§var §>();
         for each(_loc5_ in param1.Container)
         {
            this.§`!O§.push(new §[Q§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§`!O§.push(new §"]§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§`!O§.push(new §^'§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§`!O§.push(new §@4§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§`!O§.push(new §!o§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§`!O§.push(new §36§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§`!O§.push(new §,l§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §9A§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §9A§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §9A§(§^! §,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §9A§(§&U§,param1.@MouseOut);
         }
      }
      
      public function §#!$§(param1:§var §) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §,!G§(param1:§var §) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§var §) : void
      {
         if(this.§`!O§.indexOf(param1) < 0)
         {
            this.§`!O§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.mActive);
            param1.setVisibility(this.§9'§ && param1.§9'§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §[1§(param1:§var §) : void
      {
         var _loc2_:int = this.§`!O§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§`!O§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§`M§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§<!O§)
         {
            this.§<!O§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§var § = null;
         for each(_loc2_ in this.§`!O§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§`!O§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§`!O§.length)
            {
               this.§`!O§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§`!O§ = null;
         if(this.§<!O§)
         {
            this.§<!O§.movieClip.removeChild(mClip);
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
         var _loc2_:§var § = null;
         super.onParentVisibilityChange(param1);
         if(this.§`!O§ != null)
         {
            for each(_loc2_ in this.§`!O§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §>V§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §var §)
            {
               (_loc3_ as §var §).setVisibility(param2);
            }
            else
            {
               § L§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §var §
      {
         var _loc2_:§var § = null;
         var _loc3_:§var § = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§`!O§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §[Q§)
            {
               _loc3_ = (_loc2_ as §[Q§).getItemByName(param1);
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
      
      override public function getParentView() : §`o§
      {
         if(this.§<!O§)
         {
            return this.§<!O§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§var § = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§`!O§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§var § = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§`!O§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
