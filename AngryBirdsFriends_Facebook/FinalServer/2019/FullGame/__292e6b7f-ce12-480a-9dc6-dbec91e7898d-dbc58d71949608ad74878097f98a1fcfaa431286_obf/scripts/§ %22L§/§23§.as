package § "L§
{
   import §";§.§%"X§;
   import §6"p§.§^"t§;
   import §^"3§.§ #&§;
   import §^"3§.§^"C§;
   import §^"3§.§`$4§;
   import §`§.§%#m§;
   import com.rovio.assets.§[a§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §23§ extends § #&§
   {
       
      
      public var §74§:§%"X§;
      
      public var §2p§:Vector.<§^"C§>;
      
      public var §+Y§:Boolean = false;
      
      public function §23§(param1:XML, param2:§23§, param3:§%"X§, param4:MovieClip = null)
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
            this.§74§ = param3;
            if(!param4)
            {
               _loc12_ = §[a§.§8#k§(param1.@name);
               mClip = new _loc12_();
               this.§74§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§2p§ = new Vector.<§^"C§>();
         for each(_loc5_ in param1.Container)
         {
            this.§2p§.push(§,p§.§-H§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§2p§.push(§,p§.§6!9§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§2p§.push(§,p§.§<!1§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§2p§.push(§,p§.§^I§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§2p§.push(§,p§.§-!M§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§2p§.push(§,p§.§9"p§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§2p§.push(§,p§.§`#§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §+"6§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §+"6§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §+"6§(§4$5§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §+"6§(§@"`§,param1.@MouseOut);
         }
      }
      
      public function §1T§(param1:§^"C§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §;$<§(param1:§^"C§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §+#;§(param1:§^"C§) : void
      {
         if(this.§2p§.indexOf(param1) < 0)
         {
            this.§2p§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§'-§);
            param1.setVisibility(this.§0#Z§ && param1.§0#Z§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §?,§(param1:§^"C§) : void
      {
         var _loc2_:int = this.§2p§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§2p§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%#m§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§`$4§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§74§)
         {
            this.§74§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§^"C§ = null;
         for each(_loc2_ in this.§2p§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§2p§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§2p§.length)
            {
               this.§2p§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§2p§ = null;
         if(this.§74§)
         {
            this.§74§.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      public function §&"_§() : void
      {
         var _loc1_:int = 0;
         if(this.§2p§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§2p§.length)
            {
               this.§2p§[_loc1_].clear();
               _loc1_++;
            }
            this.§2p§ = new Vector.<§^"C§>();
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         this.onParentVisibilityChange(param1);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:§^"C§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§2p§ != null)
         {
            for each(_loc2_ in this.§2p§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §`"O§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(upperCaseName == param1.toUpperCase())
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §^"C§)
            {
               (_loc3_ as §^"C§).setVisibility(param2);
            }
            else
            {
               §^"t§.log("WARNING: UIContainer(" + name + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §^"C§
      {
         return this.§!"u§(param1.toUpperCase());
      }
      
      protected function §!"u§(param1:String) : §^"C§
      {
         var _loc2_:§^"C§ = null;
         var _loc3_:§^"C§ = null;
         if(upperCaseName == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§2p§)
         {
            if(_loc2_.upperCaseName == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §23§)
            {
               _loc3_ = (_loc2_ as §23§).getItemByName(param1);
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
      
      override public function getParentView() : §%"X§
      {
         if(this.§74§)
         {
            return this.§74§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§^"C§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§2p§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§^"C§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§2p§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §7`§)
         {
            (_loc3_ as §7`§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
