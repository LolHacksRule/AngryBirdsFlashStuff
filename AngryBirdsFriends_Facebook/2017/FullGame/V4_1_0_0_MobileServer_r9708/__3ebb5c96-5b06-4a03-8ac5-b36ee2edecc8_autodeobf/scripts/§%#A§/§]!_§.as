package §%#A§
{
   import §8#D§.§#E§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<"1§.§[!K§;
   import §<"p§.§?!T§;
   import §<o§.§3h§;
   import com.rovio.assets.§+$#§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §]!_§ extends §@!N§
   {
       
      
      public var §?#t§:§#E§;
      
      public var §+G§:Vector.<§[!K§>;
      
      public var §'#^§:Boolean = false;
      
      public function §]!_§(param1:XML, param2:§]!_§, param3:§#E§, param4:MovieClip = null)
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
            this.§?#t§ = param3;
            if(!param4)
            {
               _loc12_ = §+$#§.§["`§(param1.@name);
               mClip = new _loc12_();
               this.§?#t§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§+G§ = new Vector.<§[!K§>();
         for each(_loc5_ in param1.Container)
         {
            this.§+G§.push(§4"2§.§ !R§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§+G§.push(§4"2§.§30§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§+G§.push(§4"2§.§`"W§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§+G§.push(§4"2§.§ !P§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§+G§.push(§4"2§.§6#C§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§+G§.push(§4"2§.§?#b§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§+G§.push(§4"2§.§9"Q§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §<!t§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §<!t§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §<!t§(§1#+§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §<!t§(§+#"§,param1.@MouseOut);
         }
      }
      
      public function §`#P§(param1:§[!K§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §>#-§(param1:§[!K§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §%!t§(param1:§[!K§) : void
      {
         if(this.§+G§.indexOf(param1) < 0)
         {
            this.§+G§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§!!9§);
            param1.setVisibility(this.§%#;§ && param1.§%#;§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §#!N§(param1:§[!K§) : void
      {
         var _loc2_:int = this.§+G§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§+G§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3h§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§'"S§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§?#t§)
         {
            this.§?#t§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§[!K§ = null;
         for each(_loc2_ in this.§+G§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§+G§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§+G§.length)
            {
               this.§+G§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§+G§ = null;
         if(this.§?#t§)
         {
            this.§?#t§.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      public function §`+§() : void
      {
         var _loc1_:int = 0;
         if(this.§+G§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§+G§.length)
            {
               this.§+G§[_loc1_].clear();
               _loc1_++;
            }
            this.§+G§ = new Vector.<§[!K§>();
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         this.onParentVisibilityChange(param1);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:§[!K§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§+G§ != null)
         {
            for each(_loc2_ in this.§+G§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §?b§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(upperCaseName == param1.toUpperCase())
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §[!K§)
            {
               (_loc3_ as §[!K§).setVisibility(param2);
            }
            else
            {
               §?!T§.log("WARNING: UIContainer(" + name + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §[!K§
      {
         return this.§!E§(param1.toUpperCase());
      }
      
      protected function §!E§(param1:String) : §[!K§
      {
         var _loc2_:§[!K§ = null;
         var _loc3_:§[!K§ = null;
         if(upperCaseName == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§+G§)
         {
            if(_loc2_.upperCaseName == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §]!_§)
            {
               _loc3_ = (_loc2_ as §]!_§).getItemByName(param1);
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
      
      override public function getParentView() : §#E§
      {
         if(this.§?#t§)
         {
            return this.§?#t§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§[!K§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§+G§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§[!K§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§+G§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §^!4§)
         {
            (_loc3_ as §^!4§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
