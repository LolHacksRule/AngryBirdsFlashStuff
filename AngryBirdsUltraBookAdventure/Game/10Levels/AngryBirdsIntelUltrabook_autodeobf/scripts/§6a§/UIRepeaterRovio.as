package §6a§
{
   import §0!Q§.UIButtonGroupRovio;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIComponentRovio;
   import §0!Q§.UIEventListenerRovio;
   import §<u§.Log;
   import §=!5§.§`X§;
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class UIRepeaterRovio extends UIContainerRovio
   {
      
      public static const §=G§:int = 0;
      
      public static const §^!B§:int = 1;
      
      public static const §-!@§:int = 2;
       
      
      public var §&!J§:String;
      
      public var §8y§:Class;
      
      public var §7Y§:String = null;
      
      public var §<1§:Vector.<UIButtonGroupRovio>;
      
      public var §+!M§:int;
      
      public var §%<§:Number;
      
      public var §9!9§:Number;
      
      public var §-n§:Number;
      
      public var §&<§:Number;
      
      public var §#!M§:Number;
      
      public var §]!7§:Number;
      
      public var §+R§:Number;
      
      public var §7J§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §,C§:int;
      
      public var § x§:Number;
      
      public var § !5§:String = "";
      
      public var §+r§:int;
      
      public var §8x§:int;
      
      public var §+Q§:GlowFilter;
      
      public var §0!]§:Boolean = true;
      
      public var §9Y§:int;
      
      public var §#!I§:int;
      
      public var §<!X§:Number = 0;
      
      public var §%!j§:Number = 0;
      
      public var §'!P§:Number = 0;
      
      public var §7!h§:Number = 0;
      
      public var §#!%§:Boolean = false;
      
      public var §8P§:Boolean = false;
      
      public var §9!b§:MovieClip = null;
      
      public function UIRepeaterRovio(param1:XML, param2:UIContainerRovio, param3:§`X§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§&!J§ = param1.@button;
         if(this.§&!J§.length > 0)
         {
            this.§8y§ = AssetCache.§%p§(this.§&!J§);
         }
         var _loc5_:String = param1.@buttonIconContainer;
         if(_loc5_.length > 0)
         {
            this.§7Y§ = _loc5_;
         }
         this.§+r§ = §=G§;
         if(param1.@buttonAlign)
         {
            _loc14_ = param1.@buttonAlign;
            if(_loc14_.toUpperCase() == "BOTTOM")
            {
               this.§+r§ = §^!B§;
            }
         }
         this.§8x§ = §-!@§;
         if(param1.@surfaceAlign)
         {
            _loc15_ = param1.@surfaceAlign;
            if(_loc15_.toUpperCase() == "CENTER")
            {
               this.§8x§ = §=G§;
            }
         }
         var _loc6_:String = param1.@GlowFilter;
         if(_loc6_ && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§+Q§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            _loc17_ = <Button/>;
            _loc17_.@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §]6§.push(new UIButtonRovio(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            _loc18_ = <Button/>;
            _loc18_.@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §]6§.push(new UIButtonRovio(_loc18_,this));
         }
         this.§%<§ = mClip.getChildByName("Surface").x;
         this.§9!9§ = mClip.getChildByName("Surface").y;
         this.§-n§ = mClip.getChildByName("Surface").width;
         this.§&<§ = mClip.getChildByName("Surface").height;
         this.§#!M§ = mClip.getChildByName("Button_Area1").x - this.§%<§;
         this.§]!7§ = mClip.getChildByName("Button_Area1").y - this.§9!9§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§%<§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§9!9§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§ x§ = _loc9_.bottom - this.§9!9§ - this.§]!7§;
         this.§+R§ = _loc7_ - this.§#!M§;
         this.§7J§ = _loc8_ - this.§]!7§;
         if(Math.abs(this.§+R§) < 3)
         {
            this.§+R§ = 0;
         }
         if(Math.abs(this.§7J§) < 3)
         {
            this.§7J§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§+R§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§#!M§ - this.§#!M§) / this.§+R§;
         }
         if(this.§7J§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§]!7§ - this.§]!7§) / this.§7J§;
         }
         this.§+!M§ = Math.min(_loc10_,_loc11_);
         this.§0!]§ = _loc10_ <= _loc11_;
         var _loc12_:String = param1.@ScrollPerClick;
         if(_loc12_ && _loc12_.length > 0)
         {
            this.§9Y§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§9Y§ = this.§+!M§;
         }
         this.§,C§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§%<§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§9!9§;
            this.mButtonMarginX2 = _loc19_ - this.§#!M§;
            this.mButtonMarginY2 = _loc20_ - this.§]!7§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§0!]§)
            {
               this.§,C§ = 1 + (mClip.getChildByName("Surface").height - this.§]!7§ - this.§]!7§) / this.mButtonMarginY2;
            }
            else
            {
               this.§,C§ = 1 + (mClip.getChildByName("Surface").width - this.§#!M§ - this.§#!M§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String = param1.@backgroundInstance;
         if(_loc13_ && _loc13_.length > 0)
         {
            this.§9!b§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§'!P§ = this.§9!b§.x - mClip.getChildByName("Surface").x;
            this.§7!h§ = this.§9!b§.y - mClip.getChildByName("Surface").y;
            this.§<!X§ = this.§9!b§.x + this.§9!b§.width - (this.§9!b§.x + mClip.getChildByName("Surface").width);
            this.§%!j§ = this.§9!b§.y + this.§9!b§.height - (this.§9!b§.y + mClip.getChildByName("Surface").height);
            this.§#!%§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§8P§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§#!I§ = UIButtonGroupRovio.§4!0§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§#!I§ = UIButtonGroupRovio.§0<§;
            }
         }
         this.§2!,§();
      }
      
      public function §2!,§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:UIRepeaterTabRovio = null;
         var _loc8_:UIButtonGroupRovio = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:UIRepeaterButtonRovio = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = UIRepeaterButtonRovio;
         }
         this.§<1§ = new Vector.<UIButtonGroupRovio>();
         this.§%z§();
         if(param1 == null)
         {
            param1 = getParentView().getRepeaterDataXML(mName);
         }
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = mName + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            _loc6_ = <Container/>;
            _loc6_.@name = _loc4_;
            _loc7_ = new UIRepeaterTabRovio(_loc6_,this,null,_loc5_);
            §]6§.push(_loc7_);
            _loc8_ = new UIButtonGroupRovio(this.§#!I§,_loc4_);
            this.§<1§.push(_loc8_);
            _loc9_ = this.§#!M§;
            _loc10_ = this.§+!M§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§8x§ == §=G§)
            {
               _loc9_ = (this.§-n§ - (_loc10_ - 1) * this.§+R§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§]6§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§]6§.push(new param2(_loc12_,_loc7_,new this.§8y§() as MovieClip));
               }
               _loc13_ = _loc7_.§]6§[_loc7_.§]6§.length - 1] as UIRepeaterButtonRovio;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§7Y§);
                  if(this.§+r§ == §^!B§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§7Y§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§,C§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§+R§;
                  _loc13_.y = this.§]!7§ + _loc11_ * this.§7J§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§+!M§ * this.§,C§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§+!M§ * this.§,C§) / this.§+!M§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§+!M§ * this.§,C§) % this.§+!M§;
                  if(this.§0!]§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§+R§ + _loc16_ * this.§+!M§ * this.§+R§;
                     _loc13_.y = this.§]!7§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§]!7§ + _loc18_ * this.§7J§ + _loc16_ * this.§+!M§ * this.§7J§;
                  }
               }
               _loc8_.§"g§(_loc13_);
               _loc11_++;
            }
            _loc8_.§?!#§("");
            _loc7_.§-W§(this.§+!M§,this.§%<§,this.§9!9§,this.§9Y§ * this.§+R§,this.§9Y§ * this.§7J§,this.§,C§,this.§9Y§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §%!6§() : int
      {
         return this.§+!M§;
      }
      
      public function get § !b§() : int
      {
         if(this.§%!6§ == 0)
         {
            return 0;
         }
         return this.§;!W§(this.§ !5§).§9!'§.length / this.§%!6§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc5_:UIButtonGroupRovio = null;
         var _loc4_:UIRepeaterTabRovio = getItemByName(this.§ !5§) as UIRepeaterTabRovio;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§0!K§(_loc4_.§]Y§ - 1);
               this.§?!U§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§0!K§(_loc4_.§]Y§ + 1);
               this.§?!U§();
            }
         }
         else if(param2.length > 0 && (param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN || param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP) && param3 is UIComponentRovio)
         {
            _loc5_ = this.§;!W§((param3 as UIComponentRovio).mParentContainer.mName.toUpperCase());
            if(_loc5_ && param3 is UIRepeaterButtonRovio)
            {
               _loc5_.§?!#§((param3 as UIComponentRovio).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §2!1§(param1:String, param2:int) : void
      {
         var _loc3_:UIRepeaterTabRovio = getItemByName(param1) as UIRepeaterTabRovio;
         if(_loc3_)
         {
            _loc3_.§0!K§(param2);
            this.§?!U§();
         }
      }
      
      public function §;!W§(param1:String) : UIButtonGroupRovio
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<1§.length)
         {
            if(param1.toUpperCase() == (this.§<1§[_loc2_] as UIButtonGroupRovio).mName.toUpperCase())
            {
               return this.§<1§[_loc2_] as UIButtonGroupRovio;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §>!K§(param1:String) : void
      {
         this.§ !5§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §]6§.length)
         {
            if(§]6§[_loc2_] is UIRepeaterTabRovio)
            {
               if((§]6§[_loc2_] as UIRepeaterTabRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§]6§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(true);
                  if(this.§#!%§)
                  {
                     this.§9!b§.x = (§]6§[_loc2_] as UIRepeaterTabRovio).x + this.§'!P§;
                     this.§9!b§.width = (§]6§[_loc2_] as UIRepeaterTabRovio).width + this.§<!X§;
                  }
                  if(this.§8P§)
                  {
                     this.§9!b§.y = (§]6§[_loc2_] as UIRepeaterTabRovio).y + this.§7!h§;
                     this.§9!b§.height = (§]6§[_loc2_] as UIRepeaterTabRovio).height + this.§%!j§;
                  }
               }
               else
               {
                  (§]6§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§?!U§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:UIButtonGroupRovio = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§<1§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §?!U§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:UIRepeaterTabRovio = getItemByName(this.§ !5§) as UIRepeaterTabRovio;
         if(_loc1_)
         {
            if(_loc1_.§]Y§ > 0)
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
            }
            if(_loc1_.§]Y§ < _loc1_.§"=§ - 1)
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
            (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
         }
      }
      
      public function §%z§() : void
      {
         var _loc2_:UIRepeaterTabRovio = null;
         var _loc1_:int = §]6§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §]6§[_loc1_] as UIRepeaterTabRovio;
            if(_loc2_)
            {
               _loc2_.clear();
               §]6§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§>!K§("");
      }
      
      public function §67§() : void
      {
         var _loc1_:UIButtonGroupRovio = null;
         for each(_loc1_ in this.§<1§)
         {
            _loc1_.§67§();
         }
      }
      
      public function §;!E§() : Array
      {
         if(this.§;!W§(this.§ !5§) == null)
         {
            Log.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§;!W§(this.§ !5§).§[!c§();
      }
      
      public function §1s§(param1:Array) : void
      {
         this.§;!W§(this.§ !5§).§1s§(param1);
      }
      
      public function §!q§(param1:Number) : void
      {
         this.§;!W§(this.§ !5§).§!q§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§8y§ = null;
         this.§<1§ = null;
         this.§+Q§ = null;
      }
   }
}
