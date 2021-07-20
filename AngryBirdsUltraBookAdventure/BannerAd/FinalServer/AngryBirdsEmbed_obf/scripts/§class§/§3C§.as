package §class§
{
   import §+!"§.§5!<§;
   import §-!F§.§&!A§;
   import §-!F§.§^h§;
   import §<!G§.§^3§;
   import com.rovio.assets.§'!H§;
   import flash.display.*;
   
   public class §3C§ extends §&!A§
   {
       
      
      public var §3S§:§^3§;
      
      public var §3! §:Vector.<§&!A§>;
      
      public var §8!;§:Boolean = false;
      
      public function §3C§(param1:XML, param2:§3C§, param3:§^3§, param4:MovieClip = null)
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
            this.§3S§ = param3;
            if(!param4)
            {
               _loc12_ = §'!H§.§&!G§(mName);
               mClip = new _loc12_();
               this.§3S§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§3! § = new Vector.<§&!A§>();
         for each(_loc5_ in param1.Container)
         {
            this.§3! §.push(new §3C§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§3! §.push(new §use §(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§3! §.push(new §?q§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§3! §.push(new §3D§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§3! §.push(new §`!6§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§3! §.push(new §0r§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§3! §.push(new §>[§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §7w§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §7w§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §7w§(§null§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §7w§(§@!'§,param1.@MouseOut);
         }
      }
      
      public function §5u§(param1:§&!A§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §#O§(param1:§&!A§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §5'§(param1:§&!A§) : void
      {
         if(this.§3! §.indexOf(param1) < 0)
         {
            this.§3! §.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§6V§);
            param1.setVisibility(this.§#!#§ && param1.§#!#§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §!E§(param1:§&!A§) : void
      {
         var _loc2_:int = this.§3! §.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§3! §.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§^h§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§3S§)
         {
            this.§3S§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§&!A§ = null;
         for each(_loc2_ in this.§3! §)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§3! §)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§3! §.length)
            {
               this.§3! §[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§3! § = null;
         if(this.§3S§)
         {
            this.§3S§.movieClip.removeChild(mClip);
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
         var _loc2_:§&!A§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§3! § != null)
         {
            for each(_loc2_ in this.§3! §)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §%!+§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §&!A§)
            {
               (_loc3_ as §&!A§).setVisibility(param2);
            }
            else
            {
               §5!<§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §&!A§
      {
         var _loc2_:§&!A§ = null;
         var _loc3_:§&!A§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§3! §)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §3C§)
            {
               _loc3_ = (_loc2_ as §3C§).getItemByName(param1);
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
      
      override public function getParentView() : §^3§
      {
         if(this.§3S§)
         {
            return this.§3S§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§&!A§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§3! §)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§&!A§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§3! §)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
