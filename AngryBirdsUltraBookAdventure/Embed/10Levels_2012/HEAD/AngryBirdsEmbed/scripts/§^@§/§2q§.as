package §^@§
{
   import §1;§.§!!1§;
   import §1h§.§#H§;
   import §1h§.§@s§;
   import §2§.§0!<§;
   import com.rovio.assets.§7!D§;
   import flash.display.*;
   
   public class §2q§ extends §#H§
   {
       
      
      public var §`f§:§!!1§;
      
      public var §7!H§:Vector.<§#H§>;
      
      public var §5`§:Boolean = false;
      
      public function §2q§(param1:XML, param2:§2q§, param3:§!!1§, param4:MovieClip = null)
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
            this.§`f§ = param3;
            if(!param4)
            {
               _loc12_ = §7!D§.§?0§(mName);
               mClip = new _loc12_();
               this.§`f§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§7!H§ = new Vector.<§#H§>();
         for each(_loc5_ in param1.Container)
         {
            this.§7!H§.push(new §2q§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§7!H§.push(new §8L§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§7!H§.push(new §=^§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§7!H§.push(new §`Y§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§7!H§.push(new §!"§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§7!H§.push(new §'v§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§7!H§.push(new §;%§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §,E§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §,E§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §,E§(§;!1§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §,E§(§3]§,param1.@MouseOut);
         }
      }
      
      public function §%!I§(param1:§#H§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §>B§(param1:§#H§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §4H§(param1:§#H§) : void
      {
         if(this.§7!H§.indexOf(param1) < 0)
         {
            this.§7!H§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§3!?§);
            param1.setVisibility(this.§9l§ && param1.§9l§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §?b§(param1:§#H§) : void
      {
         var _loc2_:int = this.§7!H§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§7!H§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§@s§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§`f§)
         {
            this.§`f§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§#H§ = null;
         for each(_loc2_ in this.§7!H§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§7!H§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§7!H§.length)
            {
               this.§7!H§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§7!H§ = null;
         if(this.§`f§)
         {
            this.§`f§.movieClip.removeChild(mClip);
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
         var _loc2_:§#H§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§7!H§ != null)
         {
            for each(_loc2_ in this.§7!H§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function § '§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §#H§)
            {
               (_loc3_ as §#H§).setVisibility(param2);
            }
            else
            {
               §0!<§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §#H§
      {
         var _loc2_:§#H§ = null;
         var _loc3_:§#H§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§7!H§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §2q§)
            {
               _loc3_ = (_loc2_ as §2q§).getItemByName(param1);
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
      
      override public function getParentView() : §!!1§
      {
         if(this.§`f§)
         {
            return this.§`f§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§#H§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§7!H§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§#H§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§7!H§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
