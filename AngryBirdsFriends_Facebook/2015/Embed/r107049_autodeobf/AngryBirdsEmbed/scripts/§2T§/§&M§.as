package §2T§
{
   import §7J§.§07§;
   import §7J§.§<!?§;
   import §?H§.§+!B§;
   import §@!;§.§!!=§;
   import com.rovio.assets.§5R§;
   import flash.display.*;
   
   public class §&M§ extends §07§
   {
       
      
      public var §,Y§:§+!B§;
      
      public var §]§:Vector.<§07§>;
      
      public var §',§:Boolean = false;
      
      public function §&M§(param1:XML, param2:§&M§, param3:§+!B§, param4:MovieClip = null)
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
            this.§,Y§ = param3;
            if(!param4)
            {
               _loc12_ = §5R§.§6+§(mName);
               mClip = new _loc12_();
               this.§,Y§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§]§ = new Vector.<§07§>();
         for each(_loc5_ in param1.Container)
         {
            this.§]§.push(new §&M§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§]§.push(new §#!'§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§]§.push(new §2H§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§]§.push(new §5@§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§]§.push(new §[l§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§]§.push(new §+!I§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§]§.push(new §>!@§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §4j§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §4j§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §4j§(§`U§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §4j§(§-!G§,param1.@MouseOut);
         }
      }
      
      public function §4m§(param1:§07§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §7!,§(param1:§07§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §,!A§(param1:§07§) : void
      {
         if(this.§]§.indexOf(param1) < 0)
         {
            this.§]§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§'n§);
            param1.setVisibility(this.§%r§ && param1.§%r§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §%!N§(param1:§07§) : void
      {
         var _loc2_:int = this.§]§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§]§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§<!?§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§,Y§)
         {
            this.§,Y§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§07§ = null;
         for each(_loc2_ in this.§]§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§]§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§]§.length)
            {
               this.§]§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§]§ = null;
         if(this.§,Y§)
         {
            this.§,Y§.movieClip.removeChild(mClip);
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
         var _loc2_:§07§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§]§ != null)
         {
            for each(_loc2_ in this.§]§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function § =§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §07§)
            {
               (_loc3_ as §07§).setVisibility(param2);
            }
            else
            {
               §!!=§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §07§
      {
         var _loc2_:§07§ = null;
         var _loc3_:§07§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§]§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §&M§)
            {
               _loc3_ = (_loc2_ as §&M§).getItemByName(param1);
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
      
      override public function getParentView() : §+!B§
      {
         if(this.§,Y§)
         {
            return this.§,Y§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§07§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§]§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§07§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§]§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
