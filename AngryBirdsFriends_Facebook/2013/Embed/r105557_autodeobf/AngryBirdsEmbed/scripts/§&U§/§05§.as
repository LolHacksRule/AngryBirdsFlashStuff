package §&U§
{
   import §"!K§.§,U§;
   import §1t§.§@B§;
   import §1t§.§`!B§;
   import §?!8§.§2>§;
   import com.rovio.assets.§&%§;
   import flash.display.*;
   
   public class §05§ extends §@B§
   {
       
      
      public var §49§:§,U§;
      
      public var §"6§:Vector.<§@B§>;
      
      public var §^!C§:Boolean = false;
      
      public function §05§(param1:XML, param2:§05§, param3:§,U§, param4:MovieClip = null)
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
            this.§49§ = param3;
            if(!param4)
            {
               _loc12_ = §&%§.§<7§(mName);
               mClip = new _loc12_();
               this.§49§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§"6§ = new Vector.<§@B§>();
         for each(_loc5_ in param1.Container)
         {
            this.§"6§.push(new §05§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§"6§.push(new §`%§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§"6§.push(new §^!@§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§"6§.push(new § 3§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§"6§.push(new §!X§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§"6§.push(new §0!5§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§"6§.push(new §[M§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §+m§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §+m§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §+m§(§0!>§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §+m§(§8!9§,param1.@MouseOut);
         }
      }
      
      public function §9e§(param1:§@B§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §8!$§(param1:§@B§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §8!@§(param1:§@B§) : void
      {
         if(this.§"6§.indexOf(param1) < 0)
         {
            this.§"6§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§;2§);
            param1.setVisibility(this.§0[§ && param1.§0[§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §5k§(param1:§@B§) : void
      {
         var _loc2_:int = this.§"6§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§"6§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§`!B§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§49§)
         {
            this.§49§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§@B§ = null;
         for each(_loc2_ in this.§"6§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§"6§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§"6§.length)
            {
               this.§"6§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§"6§ = null;
         if(this.§49§)
         {
            this.§49§.movieClip.removeChild(mClip);
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
         var _loc2_:§@B§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§"6§ != null)
         {
            for each(_loc2_ in this.§"6§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §8!7§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §@B§)
            {
               (_loc3_ as §@B§).setVisibility(param2);
            }
            else
            {
               §2>§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §@B§
      {
         var _loc2_:§@B§ = null;
         var _loc3_:§@B§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§"6§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §05§)
            {
               _loc3_ = (_loc2_ as §05§).getItemByName(param1);
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
      
      override public function getParentView() : §,U§
      {
         if(this.§49§)
         {
            return this.§49§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§@B§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§"6§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§@B§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§"6§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
