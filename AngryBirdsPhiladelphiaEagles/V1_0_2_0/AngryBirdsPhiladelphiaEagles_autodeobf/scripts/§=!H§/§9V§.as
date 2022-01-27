package §=!H§
{
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import §9c§.§3i§;
   import §@V§.§`!5§;
   import com.rovio.assets.§<x§;
   import flash.display.*;
   
   public class §9V§ extends §3i§
   {
       
      
      public var § R§:§<!K§;
      
      public var §=!L§:Vector.<§3i§>;
      
      public var §,n§:Boolean = false;
      
      public function §9V§(param1:XML, param2:§9V§, param3:§<!K§, param4:MovieClip = null)
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
            this.§ R§ = param3;
            if(!param4)
            {
               _loc12_ = §<x§.§,! §(mName);
               mClip = new _loc12_();
               this.§ R§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§=!L§ = new Vector.<§3i§>();
         for each(_loc5_ in param1.Container)
         {
            this.§=!L§.push(new §9V§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§=!L§.push(new §7w§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§=!L§.push(new §=<§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§=!L§.push(new §`S§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§=!L§.push(new §[R§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§=!L§.push(new §"L§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§=!L§.push(new §4]§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §4F§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §4F§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §4F§(§]!J§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §4F§(§#!I§,param1.@MouseOut);
         }
      }
      
      public function §%q§(param1:§3i§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §5!H§(param1:§3i§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§3i§) : void
      {
         if(this.§=!L§.indexOf(param1) < 0)
         {
            this.§=!L§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.mActive);
            param1.setVisibility(this.§!U§ && param1.§!U§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §false§(param1:§3i§) : void
      {
         var _loc2_:int = this.§=!L§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§=!L§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§,x§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§ R§)
         {
            this.§ R§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§3i§ = null;
         for each(_loc2_ in this.§=!L§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§=!L§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§=!L§.length)
            {
               this.§=!L§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§=!L§ = null;
         if(this.§ R§)
         {
            this.§ R§.movieClip.removeChild(mClip);
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
         var _loc2_:§3i§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§=!L§ != null)
         {
            for each(_loc2_ in this.§=!L§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §0!1§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §3i§)
            {
               (_loc3_ as §3i§).setVisibility(param2);
            }
            else
            {
               §`!5§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §3i§
      {
         var _loc2_:§3i§ = null;
         var _loc3_:§3i§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§=!L§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §9V§)
            {
               _loc3_ = (_loc2_ as §9V§).getItemByName(param1);
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
      
      override public function getParentView() : §<!K§
      {
         if(this.§ R§)
         {
            return this.§ R§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§3i§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§=!L§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§3i§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§=!L§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
