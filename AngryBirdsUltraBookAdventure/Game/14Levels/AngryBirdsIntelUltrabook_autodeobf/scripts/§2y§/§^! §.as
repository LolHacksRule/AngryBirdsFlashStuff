package §2y§
{
   import §1!B§.§<m§;
   import §>f§.§&!G§;
   import §@!&§.§'!o§;
   import §@!&§.§7!>§;
   import com.rovio.assets.§,!j§;
   import flash.display.*;
   
   public class §^! § extends §7!>§
   {
       
      
      public var §;8§:§&!G§;
      
      public var §&O§:Vector.<§7!>§>;
      
      public var §9y§:Boolean = false;
      
      public function §^! §(param1:XML, param2:§^! §, param3:§&!G§, param4:MovieClip = null)
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
            this.§;8§ = param3;
            if(!param4)
            {
               _loc12_ = §,!j§.§!!N§(mName);
               mClip = new _loc12_();
               this.§;8§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§&O§ = new Vector.<§7!>§>();
         for each(_loc5_ in param1.Container)
         {
            this.§&O§.push(new §^! §(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§&O§.push(new §<N§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§&O§.push(new §[!i§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§&O§.push(new §54§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§&O§.push(new §7!p§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§&O§.push(new §=!o§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§&O§.push(new §4!n§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §,9§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §,9§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §,9§(§4§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §,9§(§ M§,param1.@MouseOut);
         }
      }
      
      public function §8!x§(param1:§7!>§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §[!L§(param1:§7!>§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§7!>§) : void
      {
         if(this.§&O§.indexOf(param1) < 0)
         {
            this.§&O§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§7!#§);
            param1.setVisibility(this.§0a§ && param1.§0a§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §=!=§(param1:§7!>§) : void
      {
         var _loc2_:int = this.§&O§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§&O§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§'!o§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§;8§)
         {
            this.§;8§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§7!>§ = null;
         for each(_loc2_ in this.§&O§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§&O§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§&O§.length)
            {
               this.§&O§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§&O§ = null;
         if(this.§;8§)
         {
            this.§;8§.movieClip.removeChild(mClip);
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
         var _loc2_:§7!>§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§&O§ != null)
         {
            for each(_loc2_ in this.§&O§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §'!W§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §7!>§)
            {
               (_loc3_ as §7!>§).setVisibility(param2);
            }
            else
            {
               §<m§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §7!>§
      {
         var _loc2_:§7!>§ = null;
         var _loc3_:§7!>§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§&O§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §^! §)
            {
               _loc3_ = (_loc2_ as §^! §).getItemByName(param1);
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
      
      override public function getParentView() : §&!G§
      {
         if(this.§;8§)
         {
            return this.§;8§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§7!>§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§&O§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§7!>§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§&O§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
