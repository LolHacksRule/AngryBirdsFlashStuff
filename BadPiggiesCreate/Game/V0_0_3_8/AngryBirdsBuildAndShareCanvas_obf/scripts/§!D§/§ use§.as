package §!D§
{
   import §4u§.§<!L§;
   import §9!7§.§#p§;
   import §9!7§.§0!`§;
   import §?!V§.§ T§;
   import com.rovio.assets.§%"4§;
   import flash.display.*;
   
   public class § use§ extends §0!`§
   {
       
      
      public var §&!^§:§ T§;
      
      public var §%`§:Vector.<§0!`§>;
      
      public var §2!8§:Boolean = false;
      
      public function § use§(param1:XML, param2:§ use§, param3:§ T§, param4:MovieClip = null)
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
            this.§&!^§ = param3;
            if(!param4)
            {
               _loc12_ = §%"4§.§>!v§(mName);
               mClip = new _loc12_();
               this.§&!^§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§%`§ = new Vector.<§0!`§>();
         for each(_loc5_ in param1.Container)
         {
            this.§%`§.push(new § use§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§%`§.push(new §2!b§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§%`§.push(new §3!6§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§%`§.push(new §%c§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§%`§.push(new §<!5§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§%`§.push(new §+! §(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§%`§.push(new §@!M§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §?!q§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §?!q§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §?!q§(§@q§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §?!q§(§6U§,param1.@MouseOut);
         }
      }
      
      public function §!"3§(param1:§0!`§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §1n§(param1:§0!`§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §">§(param1:§0!`§) : void
      {
         if(this.§%`§.indexOf(param1) < 0)
         {
            this.§%`§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§=!T§);
            param1.setVisibility(this.§-s§ && param1.§-s§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §90§(param1:§0!`§) : void
      {
         var _loc2_:int = this.§%`§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§%`§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§#p§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§&!^§)
         {
            this.§&!^§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§0!`§ = null;
         for each(_loc2_ in this.§%`§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§%`§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§%`§.length)
            {
               this.§%`§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§%`§ = null;
         if(this.§&!^§)
         {
            this.§&!^§.movieClip.removeChild(mClip);
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
         var _loc2_:§0!`§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§%`§ != null)
         {
            for each(_loc2_ in this.§%`§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §8I§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §0!`§)
            {
               (_loc3_ as §0!`§).setVisibility(param2);
            }
            else
            {
               §<!L§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §0!`§
      {
         var _loc2_:§0!`§ = null;
         var _loc3_:§0!`§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§%`§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is § use§)
            {
               _loc3_ = (_loc2_ as § use§).getItemByName(param1);
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
      
      override public function getParentView() : § T§
      {
         if(this.§&!^§)
         {
            return this.§&!^§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§0!`§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§%`§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§0!`§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§%`§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
