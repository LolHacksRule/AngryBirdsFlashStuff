package §]!&§
{
   import §%t§.§@!%§;
   import §<K§.§0e§;
   import §]!5§.§-!3§;
   import §]!5§.§1k§;
   import §]!Y§.§5W§;
   import flash.display.*;
   
   public class §]!K§ extends §1k§
   {
       
      
      public var § k§:§5W§;
      
      public var §0!R§:Vector.<§1k§>;
      
      public var §"!L§:Boolean = false;
      
      public function §]!K§(param1:XML, param2:§]!K§, param3:§5W§, param4:MovieClip = null)
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
            this.§ k§ = param3;
            if(!param4)
            {
               _loc12_ = §0e§.§#!!§(mName);
               mClip = new _loc12_();
               this.§ k§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§0!R§ = new Vector.<§1k§>();
         for each(_loc5_ in param1.Container)
         {
            this.§0!R§.push(new §]!K§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§0!R§.push(new §#S§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§0!R§.push(new §#?§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§0!R§.push(new §"!1§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§0!R§.push(new §0!Q§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§0!R§.push(new §=!2§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§0!R§.push(new §5§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §7!@§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §7!@§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §7!@§(§5A§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §7!@§(§8!L§,param1.@MouseOut);
         }
      }
      
      public function §+!!§(param1:§1k§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function setObjectToFront(param1:§1k§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§1k§) : void
      {
         if(this.§0!R§.indexOf(param1) < 0)
         {
            this.§0!R§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§;K§);
            param1.setVisibility(this.§#6§ && param1.§#6§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(param1:§1k§) : void
      {
         var _loc2_:int = this.§0!R§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§0!R§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§-!3§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§ k§)
         {
            this.§ k§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§1k§ = null;
         for each(_loc2_ in this.§0!R§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§0!R§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§0!R§.length)
            {
               this.§0!R§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§0!R§ = null;
         if(this.§ k§)
         {
            this.§ k§.movieClip.removeChild(mClip);
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
         var _loc2_:§1k§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§0!R§ != null)
         {
            for each(_loc2_ in this.§0!R§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §1-§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §1k§)
            {
               (_loc3_ as §1k§).setVisibility(param2);
            }
            else
            {
               §@!%§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §1k§
      {
         var _loc2_:§1k§ = null;
         var _loc3_:§1k§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§0!R§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §]!K§)
            {
               _loc3_ = (_loc2_ as §]!K§).getItemByName(param1);
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
      
      override public function getParentView() : §5W§
      {
         if(this.§ k§)
         {
            return this.§ k§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§1k§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§0!R§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§1k§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§0!R§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
