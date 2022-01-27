package §!t§
{
   import §"1§.§3'§;
   import §5F§.§!!A§;
   import §5F§.§+!O§;
   import §>!7§.§"Q§;
   import com.rovio.assets.§[G§;
   import flash.display.*;
   
   public class §;1§ extends §!!A§
   {
       
      
      public var §-!$§:§"Q§;
      
      public var §8A§:Vector.<§!!A§>;
      
      public var §4+§:Boolean = false;
      
      public function §;1§(param1:XML, param2:§;1§, param3:§"Q§, param4:MovieClip = null)
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
            this.§-!$§ = param3;
            if(!param4)
            {
               _loc12_ = §[G§.§6u§(mName);
               mClip = new _loc12_();
               this.§-!$§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§8A§ = new Vector.<§!!A§>();
         for each(_loc5_ in param1.Container)
         {
            this.§8A§.push(new §;1§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§8A§.push(new §@R§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§8A§.push(new §5b§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§8A§.push(new §>B§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§8A§.push(new §?g§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§8A§.push(new §;j§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§8A§.push(new §+!0§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §53§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §53§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §53§(§,j§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §53§(§1!#§,param1.@MouseOut);
         }
      }
      
      public function §]^§(param1:§!!A§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §+e§(param1:§!!A§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§!!A§) : void
      {
         if(this.§8A§.indexOf(param1) < 0)
         {
            this.§8A§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.mActive);
            param1.setVisibility(this.§^!5§ && param1.§^!5§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §]a§(param1:§!!A§) : void
      {
         var _loc2_:int = this.§8A§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§8A§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§+!O§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§-!$§)
         {
            this.§-!$§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§!!A§ = null;
         for each(_loc2_ in this.§8A§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§8A§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§8A§.length)
            {
               this.§8A§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§8A§ = null;
         if(this.§-!$§)
         {
            this.§-!$§.movieClip.removeChild(mClip);
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
         var _loc2_:§!!A§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§8A§ != null)
         {
            for each(_loc2_ in this.§8A§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §-U§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §!!A§)
            {
               (_loc3_ as §!!A§).setVisibility(param2);
            }
            else
            {
               §3'§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §!!A§
      {
         var _loc2_:§!!A§ = null;
         var _loc3_:§!!A§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§8A§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §;1§)
            {
               _loc3_ = (_loc2_ as §;1§).getItemByName(param1);
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
      
      override public function getParentView() : §"Q§
      {
         if(this.§-!$§)
         {
            return this.§-!$§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§!!A§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§8A§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§!!A§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§8A§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
