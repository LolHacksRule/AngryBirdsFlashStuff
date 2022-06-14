package §4!e§
{
   import §#^§.§7!A§;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §6o§.§+!k§;
   import com.rovio.assets.§8B§;
   import flash.display.*;
   
   public class §08§ extends §7'§
   {
       
      
      public var §4"&§:§7!A§;
      
      public var §&!Z§:Vector.<§7'§>;
      
      public var §]+§:Boolean = false;
      
      public function §08§(param1:XML, param2:§08§, param3:§7!A§, param4:MovieClip = null)
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
            this.§4"&§ = param3;
            if(!param4)
            {
               _loc12_ = §8B§.§6"C§(mName);
               mClip = new _loc12_();
               this.§4"&§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§&!Z§ = new Vector.<§7'§>();
         for each(_loc5_ in param1.Container)
         {
            this.§&!Z§.push(new §08§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§&!Z§.push(new §5!a§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§&!Z§.push(new §^!D§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§&!Z§.push(new §-"E§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§&!Z§.push(new §7"-§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§&!Z§.push(new §`'§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§&!Z§.push(new §<"#§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §@!L§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §@!L§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §@!L§(§'!f§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §@!L§(§`!k§,param1.@MouseOut);
         }
      }
      
      public function §6! §(param1:§7'§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §`e§(param1:§7'§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(param1:§7'§) : void
      {
         if(this.§&!Z§.indexOf(param1) < 0)
         {
            this.§&!Z§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§+L§);
            param1.setVisibility(this.§5!d§ && param1.§5!d§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §="2§(param1:§7'§) : void
      {
         var _loc2_:int = this.§&!Z§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§&!Z§.splice(_loc2_,1);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§'M§) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.§4"&§)
         {
            this.§4"&§.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§7'§ = null;
         for each(_loc2_ in this.§&!Z§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§&!Z§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§&!Z§.length)
            {
               this.§&!Z§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§&!Z§ = null;
         if(this.§4"&§)
         {
            this.§4"&§.movieClip.removeChild(mClip);
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
         var _loc2_:§7'§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§&!Z§ != null)
         {
            for each(_loc2_ in this.§&!Z§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §&"A§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §7'§)
            {
               (_loc3_ as §7'§).setVisibility(param2);
            }
            else
            {
               §+!k§.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §7'§
      {
         var _loc2_:§7'§ = null;
         var _loc3_:§7'§ = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§&!Z§)
         {
            if(_loc2_.mName.toUpperCase() == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §08§)
            {
               _loc3_ = (_loc2_ as §08§).getItemByName(param1);
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
      
      override public function getParentView() : §7!A§
      {
         if(this.§4"&§)
         {
            return this.§4"&§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§7'§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§&!Z§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§7'§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§&!Z§)
         {
            _loc2_.viewHeight = param1;
         }
      }
   }
}
