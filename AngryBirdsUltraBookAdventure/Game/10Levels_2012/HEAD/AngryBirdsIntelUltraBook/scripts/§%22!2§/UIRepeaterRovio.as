package §"!2§
{
   import §'N§.Log;
   import §>!<§.UIButtonGroupRovio;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIComponentRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class UIRepeaterRovio extends UIContainerRovio
   {
      
      public static const §9P§:int = 0;
      
      public static const §+f§:int = 1;
      
      public static const §-!6§:int = 2;
       
      
      public var §[N§:String;
      
      public var §]f§:Class;
      
      public var §1v§:String = null;
      
      public var §5@§:Vector.<UIButtonGroupRovio>;
      
      public var §#u§:int;
      
      public var §7!`§:Number;
      
      public var §2#§:Number;
      
      public var §9!$§:Number;
      
      public var §%!<§:Number;
      
      public var §<v§:Number;
      
      public var §^z§:Number;
      
      public var §+r§:Number;
      
      public var §>D§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §,,§:int;
      
      public var §<W§:Number;
      
      public var §;!=§:String = "";
      
      public var §^!X§:int;
      
      public var §!I§:int;
      
      public var §@!]§:GlowFilter;
      
      public var §2!!§:Boolean = true;
      
      public var §32§:int;
      
      public var §9!1§:int;
      
      public var §^!e§:Number = 0;
      
      public var §^!D§:Number = 0;
      
      public var §>!#§:Number = 0;
      
      public var §,l§:Number = 0;
      
      public var §@+§:Boolean = false;
      
      public var §5!3§:Boolean = false;
      
      public var §6!X§:MovieClip = null;
      
      public function UIRepeaterRovio(param1:XML, param2:UIContainerRovio, param3:§-!H§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§[N§ = param1.@button;
         if(this.§[N§.length > 0)
         {
            this.§]f§ = AssetCache.§,!k§(this.§[N§);
         }
         var _loc5_:String = param1.@buttonIconContainer;
         if(_loc5_.length > 0)
         {
            this.§1v§ = _loc5_;
         }
         this.§^!X§ = §9P§;
         if(param1.@buttonAlign)
         {
            _loc14_ = param1.@buttonAlign;
            if(_loc14_.toUpperCase() == "BOTTOM")
            {
               this.§^!X§ = §+f§;
            }
         }
         this.§!I§ = §-!6§;
         if(param1.@surfaceAlign)
         {
            _loc15_ = param1.@surfaceAlign;
            if(_loc15_.toUpperCase() == "CENTER")
            {
               this.§!I§ = §9P§;
            }
         }
         var _loc6_:String = param1.@GlowFilter;
         if(_loc6_ && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§@!]§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            _loc17_ = <Button/>;
            _loc17_.@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            § !]§.push(new UIButtonRovio(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            _loc18_ = <Button/>;
            _loc18_.@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            § !]§.push(new UIButtonRovio(_loc18_,this));
         }
         this.§7!`§ = mClip.getChildByName("Surface").x;
         this.§2#§ = mClip.getChildByName("Surface").y;
         this.§9!$§ = mClip.getChildByName("Surface").width;
         this.§%!<§ = mClip.getChildByName("Surface").height;
         this.§<v§ = mClip.getChildByName("Button_Area1").x - this.§7!`§;
         this.§^z§ = mClip.getChildByName("Button_Area1").y - this.§2#§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§7!`§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§2#§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§<W§ = _loc9_.bottom - this.§2#§ - this.§^z§;
         this.§+r§ = _loc7_ - this.§<v§;
         this.§>D§ = _loc8_ - this.§^z§;
         if(Math.abs(this.§+r§) < 3)
         {
            this.§+r§ = 0;
         }
         if(Math.abs(this.§>D§) < 3)
         {
            this.§>D§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§+r§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§<v§ - this.§<v§) / this.§+r§;
         }
         if(this.§>D§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§^z§ - this.§^z§) / this.§>D§;
         }
         this.§#u§ = Math.min(_loc10_,_loc11_);
         this.§2!!§ = _loc10_ <= _loc11_;
         var _loc12_:String = param1.@ScrollPerClick;
         if(_loc12_ && _loc12_.length > 0)
         {
            this.§32§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§32§ = this.§#u§;
         }
         this.§,,§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§7!`§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§2#§;
            this.mButtonMarginX2 = _loc19_ - this.§<v§;
            this.mButtonMarginY2 = _loc20_ - this.§^z§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§2!!§)
            {
               this.§,,§ = 1 + (mClip.getChildByName("Surface").height - this.§^z§ - this.§^z§) / this.mButtonMarginY2;
            }
            else
            {
               this.§,,§ = 1 + (mClip.getChildByName("Surface").width - this.§<v§ - this.§<v§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String = param1.@backgroundInstance;
         if(_loc13_ && _loc13_.length > 0)
         {
            this.§6!X§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§>!#§ = this.§6!X§.x - mClip.getChildByName("Surface").x;
            this.§,l§ = this.§6!X§.y - mClip.getChildByName("Surface").y;
            this.§^!e§ = this.§6!X§.x + this.§6!X§.width - (this.§6!X§.x + mClip.getChildByName("Surface").width);
            this.§^!D§ = this.§6!X§.y + this.§6!X§.height - (this.§6!X§.y + mClip.getChildByName("Surface").height);
            this.§@+§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§5!3§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§9!1§ = UIButtonGroupRovio.§+U§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§9!1§ = UIButtonGroupRovio.§+!4§;
            }
         }
         this.§>!0§();
      }
      
      public function §>!0§(param1:Array = null, param2:Class = null) : void
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
         this.§5@§ = new Vector.<UIButtonGroupRovio>();
         this.§'e§();
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
            § !]§.push(_loc7_);
            _loc8_ = new UIButtonGroupRovio(this.§9!1§,_loc4_);
            this.§5@§.push(_loc8_);
            _loc9_ = this.§<v§;
            _loc10_ = this.§#u§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§!I§ == §9P§)
            {
               _loc9_ = (this.§9!$§ - (_loc10_ - 1) * this.§+r§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§ !]§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§ !]§.push(new param2(_loc12_,_loc7_,new this.§]f§() as MovieClip));
               }
               _loc13_ = _loc7_.§ !]§[_loc7_.§ !]§.length - 1] as UIRepeaterButtonRovio;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§1v§);
                  if(this.§^!X§ == §+f§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§1v§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§,,§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§+r§;
                  _loc13_.y = this.§^z§ + _loc11_ * this.§>D§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§#u§ * this.§,,§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§#u§ * this.§,,§) / this.§#u§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§#u§ * this.§,,§) % this.§#u§;
                  if(this.§2!!§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§+r§ + _loc16_ * this.§#u§ * this.§+r§;
                     _loc13_.y = this.§^z§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§^z§ + _loc18_ * this.§>D§ + _loc16_ * this.§#u§ * this.§>D§;
                  }
               }
               _loc8_.§2!d§(_loc13_);
               _loc11_++;
            }
            _loc8_.§!>§("");
            _loc7_.§#K§(this.§#u§,this.§7!`§,this.§2#§,this.§32§ * this.§+r§,this.§32§ * this.§>D§,this.§,,§,this.§32§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §'f§() : int
      {
         return this.§#u§;
      }
      
      public function get § a§() : int
      {
         if(this.§'f§ == 0)
         {
            return 0;
         }
         return this.§+'§(this.§;!=§).§8!G§.length / this.§'f§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc5_:UIButtonGroupRovio = null;
         var _loc4_:UIRepeaterTabRovio = getItemByName(this.§;!=§) as UIRepeaterTabRovio;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§3f§(_loc4_.§?f§ - 1);
               this.§1k§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§3f§(_loc4_.§?f§ + 1);
               this.§1k§();
            }
         }
         else if(param2.length > 0 && (param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN || param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP) && param3 is UIComponentRovio)
         {
            _loc5_ = this.§+'§((param3 as UIComponentRovio).mParentContainer.mName.toUpperCase());
            if(_loc5_ && param3 is UIRepeaterButtonRovio)
            {
               _loc5_.§!>§((param3 as UIComponentRovio).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §`!!§(param1:String, param2:int) : void
      {
         var _loc3_:UIRepeaterTabRovio = getItemByName(param1) as UIRepeaterTabRovio;
         if(_loc3_)
         {
            _loc3_.§3f§(param2);
            this.§1k§();
         }
      }
      
      public function §+'§(param1:String) : UIButtonGroupRovio
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5@§.length)
         {
            if(param1.toUpperCase() == (this.§5@§[_loc2_] as UIButtonGroupRovio).mName.toUpperCase())
            {
               return this.§5@§[_loc2_] as UIButtonGroupRovio;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!+§(param1:String) : void
      {
         this.§;!=§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < § !]§.length)
         {
            if(§ !]§[_loc2_] is UIRepeaterTabRovio)
            {
               if((§ !]§[_loc2_] as UIRepeaterTabRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§ !]§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(true);
                  if(this.§@+§)
                  {
                     this.§6!X§.x = (§ !]§[_loc2_] as UIRepeaterTabRovio).x + this.§>!#§;
                     this.§6!X§.width = (§ !]§[_loc2_] as UIRepeaterTabRovio).width + this.§^!e§;
                  }
                  if(this.§5!3§)
                  {
                     this.§6!X§.y = (§ !]§[_loc2_] as UIRepeaterTabRovio).y + this.§,l§;
                     this.§6!X§.height = (§ !]§[_loc2_] as UIRepeaterTabRovio).height + this.§^!D§;
                  }
               }
               else
               {
                  (§ !]§[_loc2_] as UIRepeaterTabRovio).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§1k§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:UIButtonGroupRovio = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§5@§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §1k§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:UIRepeaterTabRovio = getItemByName(this.§;!=§) as UIRepeaterTabRovio;
         if(_loc1_)
         {
            if(_loc1_.§?f§ > 0)
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
            }
            if(_loc1_.§?f§ < _loc1_.§7J§ - 1)
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
            (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
         }
      }
      
      public function §'e§() : void
      {
         var _loc2_:UIRepeaterTabRovio = null;
         var _loc1_:int = § !]§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § !]§[_loc1_] as UIRepeaterTabRovio;
            if(_loc2_)
            {
               _loc2_.clear();
               § !]§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§!+§("");
      }
      
      public function §catch§() : void
      {
         var _loc1_:UIButtonGroupRovio = null;
         for each(_loc1_ in this.§5@§)
         {
            _loc1_.§catch§();
         }
      }
      
      public function §&!Y§() : Array
      {
         if(this.§+'§(this.§;!=§) == null)
         {
            Log.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§+'§(this.§;!=§).§-;§();
      }
      
      public function §4!B§(param1:Array) : void
      {
         this.§+'§(this.§;!=§).§4!B§(param1);
      }
      
      public function §6!B§(param1:Number) : void
      {
         this.§+'§(this.§;!=§).§6!B§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§]f§ = null;
         this.§5@§ = null;
         this.§@!]§ = null;
      }
   }
}
