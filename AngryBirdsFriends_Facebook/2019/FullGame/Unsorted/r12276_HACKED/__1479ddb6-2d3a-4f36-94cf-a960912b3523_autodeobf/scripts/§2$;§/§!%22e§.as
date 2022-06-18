package §2$;§
{
   import §#"3§.§4!h§;
   import §<8§.§6!1§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §=X§.§3§;
   import §[#A§.§+#<§;
   import com.rovio.assets.§=@§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §!"e§ extends §;"k§
   {
       
      
      public var § #Z§:§+#<§;
      
      public var §#z§:Vector.<§6!1§>;
      
      public var §2#h§:Boolean = false;
      
      public function §!"e§(param1:XML, param2:§!"e§, param3:§+#<§, param4:MovieClip = null)
      {
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         if(param3)
         {
            this.§ #Z§ = param3;
            if(!param4)
            {
               _loc12_ = §=@§.§9!x§(param1.@name);
               mClip = new _loc12_();
               this.§ #Z§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§#z§ = new Vector.<§6!1§>();
         for each(_loc5_ in param1.Container)
         {
            this.§#z§.push(§6"$§.§<z§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§#z§.push(§6"$§.§4>§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§#z§.push(§6"$§.§8E§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§#z§.push(§6"$§.§"#3§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§#z§.push(§6"$§.§=$$§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§#z§.push(§6"$§.§5"R§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§#z§.push(§6"$§.§6"§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §!#=§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §!#=§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §!#=§(§="?§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §!#=§(§7[§,param1.@MouseOut);
         }
      }
      
      public function §>#c§(param1:§6!1§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §'""§(param1:§6!1§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §'$9§(param1:§6!1§) : void
      {
         if(this.§#z§.indexOf(param1) < 0)
         {
            this.§#z§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§&f§);
            param1.setVisibility(this.§?!v§ && param1.§?!v§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §6+§(param1:§6!1§) : void
      {
         var _loc2_:int = this.§#z§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§#z§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3#6§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§8!g§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§ #Z§)
         {
            this.§ #Z§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§6!1§ = null;
         for each(_loc2_ in this.§#z§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§#z§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§#z§.length)
            {
               this.§#z§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§#z§ = null;
         if(this.§ #Z§)
         {
            this.§ #Z§.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      public function §4t§() : void
      {
         var _loc1_:int = 0;
         if(this.§#z§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§#z§.length)
            {
               this.§#z§[_loc1_].clear();
               _loc1_++;
            }
            this.§#z§ = new Vector.<§6!1§>();
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         this.onParentVisibilityChange(param1);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:§6!1§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§#z§ != null)
         {
            for each(_loc2_ in this.§#z§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §3X§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(upperCaseName == param1.toUpperCase())
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §6!1§)
            {
               (_loc3_ as §6!1§).setVisibility(param2);
            }
            else
            {
               §4!h§.log("WARNING: UIContainer(" + name + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §6!1§
      {
         return this.§`$4§(param1.toUpperCase());
      }
      
      protected function §`$4§(param1:String) : §6!1§
      {
         var _loc2_:§6!1§ = null;
         var _loc3_:§6!1§ = null;
         if(upperCaseName == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§#z§)
         {
            if(_loc2_.upperCaseName == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §!"e§)
            {
               _loc3_ = (_loc2_ as §!"e§).getItemByName(param1);
               if(_loc3_ != null)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         mClip.mouseEnabled = param1;
         if(param2)
         {
            mClip.mouseChildren = param1;
         }
      }
      
      override public function getParentView() : §+#<§
      {
         if(this.§ #Z§)
         {
            return this.§ #Z§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§6!1§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§#z§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§6!1§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§#z§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §-$5§)
         {
            (_loc3_ as §-$5§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
