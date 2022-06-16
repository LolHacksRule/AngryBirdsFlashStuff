package §<h§
{
   import § %§.§0"8§;
   import §3"I§.§ E§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §3#T§.§@"!§;
   import §]!6§.§6Y§;
   import com.rovio.assets.§!"f§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §[#K§ extends §,#[§
   {
       
      
      public var §[$@§:§0"8§;
      
      public var §6$!§:Vector.<§@"!§>;
      
      public var §+S§:Boolean = false;
      
      public function §[#K§(param1:XML, param2:§[#K§, param3:§0"8§, param4:MovieClip = null)
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
            this.§[$@§ = param3;
            if(!param4)
            {
               _loc12_ = §!"f§.§##?§(param1.@name);
               mClip = new _loc12_();
               this.§[$@§.movieClip.addChild(mClip);
            }
         }
         super(param1,param2,param4);
         this.§6$!§ = new Vector.<§@"!§>();
         for each(_loc5_ in param1.Container)
         {
            this.§6$!§.push(§<!a§.§=#,§(_loc5_,this,null));
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.§6$!§.push(§<!a§.§,$=§(_loc6_,this,null));
         }
         for each(_loc7_ in param1.Button)
         {
            this.§6$!§.push(§<!a§.§@#]§(_loc7_,this));
         }
         for each(_loc8_ in param1.TextField)
         {
            this.§6$!§.push(§<!a§.§+"]§(_loc8_,this));
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.§6$!§.push(§<!a§.§9B§(_loc9_,this));
         }
         for each(_loc10_ in param1.Popup)
         {
            this.§6$!§.push(§<!a§.§;#'§(_loc10_,this));
         }
         for each(_loc11_ in param1.Slider)
         {
            this.§6$!§.push(§<!a§.§#!p§(_loc11_,this));
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            §<!4§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            §<!4§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            §<!4§(§^$?§,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            §<!4§(§5x§,param1.@MouseOut);
         }
      }
      
      public function §#!d§(param1:§@"!§) : void
      {
         mClip.setChildIndex(param1.mClip,0);
      }
      
      public function §?#r§(param1:§@"!§) : void
      {
         mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
      }
      
      public function §'!z§(param1:§@"!§) : void
      {
         if(this.§6$!§.indexOf(param1) < 0)
         {
            this.§6$!§.push(param1);
            param1.mParentContainer = this;
            param1.setActiveStatus(this.§=!1§);
            param1.setVisibility(this.§+!9§ && param1.§+!9§);
            param1.viewWidth = viewWidth;
            param1.viewHeight = viewHeight;
         }
      }
      
      public function §&#5§(param1:§@"!§) : void
      {
         var _loc2_:int = this.§6$!§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.mParentContainer = null;
            this.§6$!§.splice(_loc2_,1);
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : § E§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§'#0§, param4:Event = null) : void
      {
         if(param4)
         {
            dispatchEvent(param4);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         else if(this.§[$@§)
         {
            this.§[$@§.listenerUIEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:§@"!§ = null;
         for each(_loc2_ in this.§6$!§)
         {
            _loc2_.setActiveStatus(param1);
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         if(this.§6$!§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§6$!§.length)
            {
               this.§6$!§[_loc1_].clear();
               _loc1_++;
            }
         }
         this.§6$!§ = null;
         if(this.§[$@§)
         {
            this.§[$@§.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      public function §%!G§() : void
      {
         var _loc1_:int = 0;
         if(this.§6$!§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§6$!§.length)
            {
               this.§6$!§[_loc1_].clear();
               _loc1_++;
            }
            this.§6$!§ = new Vector.<§@"!§>();
         }
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         this.onParentVisibilityChange(param1);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc2_:§@"!§ = null;
         super.onParentVisibilityChange(param1);
         if(this.§6$!§ != null)
         {
            for each(_loc2_ in this.§6$!§)
            {
               _loc2_.onParentVisibilityChange(param1);
            }
         }
      }
      
      public function §!!<§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(upperCaseName == param1.toUpperCase())
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is §@"!§)
            {
               (_loc3_ as §@"!§).setVisibility(param2);
            }
            else
            {
               §6Y§.log("WARNING: UIContainer(" + name + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : §@"!§
      {
         return this.§;"&§(param1.toUpperCase());
      }
      
      protected function §;"&§(param1:String) : §@"!§
      {
         var _loc2_:§@"!§ = null;
         var _loc3_:§@"!§ = null;
         if(upperCaseName == param1)
         {
            return this;
         }
         for each(_loc2_ in this.§6$!§)
         {
            if(_loc2_.upperCaseName == param1)
            {
               return _loc2_;
            }
            if(_loc2_ is §[#K§)
            {
               _loc3_ = (_loc2_ as §[#K§).getItemByName(param1);
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
      
      override public function getParentView() : §0"8§
      {
         if(this.§[$@§)
         {
            return this.§[$@§;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:§@"!§ = null;
         super.viewWidth = param1;
         for each(_loc2_ in this.§6$!§)
         {
            _loc2_.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:§@"!§ = null;
         super.viewHeight = param1;
         for each(_loc2_ in this.§6$!§)
         {
            _loc2_.viewHeight = param1;
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §%M§)
         {
            (_loc3_ as §%M§).setText(param1);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
