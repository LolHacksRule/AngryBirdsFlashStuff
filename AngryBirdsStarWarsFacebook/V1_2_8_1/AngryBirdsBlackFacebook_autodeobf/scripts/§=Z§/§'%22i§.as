package §=Z§
{
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §8!h§.§[#'§;
   import §8!h§.§[Z§;
   import §9"`§.§-"H§;
   import §[!H§.§4Z§;
   import com.rovio.assets.§%!Z§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'"i§ extends §@!8§
   {
      
      public static const §%"r§:int = 0;
      
      public static const §"!u§:int = 1;
      
      public static const §%!;§:int = 2;
       
      
      public var §1G§:String;
      
      public var §+!"§:Class;
      
      public var §0!1§:String = null;
      
      public var §;#$§:Vector.<§[#'§>;
      
      public var §<#5§:int;
      
      public var §3!P§:Number;
      
      public var §!C§:Number;
      
      public var §#"4§:Number;
      
      public var §`"r§:Number;
      
      public var §?L§:Number;
      
      public var §&!k§:Number;
      
      public var §="A§:Number;
      
      public var §@!]§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §><§:int;
      
      public var §<!m§:Number;
      
      public var §""W§:String = "";
      
      public var §#"v§:int;
      
      public var §9"I§:int;
      
      public var §6!%§:GlowFilter;
      
      public var §'"@§:Boolean = true;
      
      public var §#!i§:int;
      
      public var §8Y§:int;
      
      public var §["<§:Number = 0;
      
      public var §!"6§:Number = 0;
      
      public var §9#%§:Number = 0;
      
      public var §0"y§:Number = 0;
      
      public var §="]§:Boolean = false;
      
      public var §5V§:Boolean = false;
      
      public var §'#-§:MovieClip = null;
      
      public function §'"i§(param1:XML, param2:§@!8§, param3:§4Z§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§1G§ = param1.@button;
         if(this.§1G§.length > 0)
         {
            this.§+!"§ = §%!Z§.§;",§(this.§1G§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§0!1§ = _loc5_;
         }
         this.§#"v§ = §%"r§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§#"v§ = §"!u§;
            }
         }
         this.§9"I§ = §%!;§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§9"I§ = §%"r§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§6!%§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §true §.push(new §;g§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §true §.push(new §;g§(_loc18_,this));
         }
         this.§3!P§ = mClip.getChildByName("Surface").x;
         this.§!C§ = mClip.getChildByName("Surface").y;
         this.§#"4§ = mClip.getChildByName("Surface").width;
         this.§`"r§ = mClip.getChildByName("Surface").height;
         this.§?L§ = mClip.getChildByName("Button_Area1").x - this.§3!P§;
         this.§&!k§ = mClip.getChildByName("Button_Area1").y - this.§!C§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§3!P§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§!C§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§<!m§ = _loc9_.bottom - this.§!C§ - this.§&!k§;
         this.§="A§ = _loc7_ - this.§?L§;
         this.§@!]§ = _loc8_ - this.§&!k§;
         if(Math.abs(this.§="A§) < 3)
         {
            this.§="A§ = 0;
         }
         if(Math.abs(this.§@!]§) < 3)
         {
            this.§@!]§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§="A§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§?L§ - this.§?L§) / this.§="A§;
         }
         if(this.§@!]§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§&!k§ - this.§&!k§) / this.§@!]§;
         }
         this.§<#5§ = Math.min(_loc10_,_loc11_);
         this.§'"@§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§#!i§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§#!i§ = this.§<#5§;
         }
         this.§><§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§3!P§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§!C§;
            this.mButtonMarginX2 = _loc19_ - this.§?L§;
            this.mButtonMarginY2 = _loc20_ - this.§&!k§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§'"@§)
            {
               this.§><§ = 1 + (mClip.getChildByName("Surface").height - this.§&!k§ - this.§&!k§) / this.mButtonMarginY2;
            }
            else
            {
               this.§><§ = 1 + (mClip.getChildByName("Surface").width - this.§?L§ - this.§?L§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§'#-§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§9#%§ = this.§'#-§.x - mClip.getChildByName("Surface").x;
            this.§0"y§ = this.§'#-§.y - mClip.getChildByName("Surface").y;
            this.§["<§ = this.§'#-§.x + this.§'#-§.width - (this.§'#-§.x + mClip.getChildByName("Surface").width);
            this.§!"6§ = this.§'#-§.y + this.§'#-§.height - (this.§'#-§.y + mClip.getChildByName("Surface").height);
            this.§="]§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§5V§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§8Y§ = §[#'§.§<k§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§8Y§ = §[#'§.§5!N§;
            }
         }
         this.§ #6§();
      }
      
      public function § #6§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§5"8§ = null;
         var _loc8_:§[#'§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§&!F§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §&!F§;
         }
         this.§;#$§ = new Vector.<§[#'§>();
         this.§5"P§();
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = mName + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §5"8§(_loc6_,this,null,_loc5_);
            §true §.push(_loc7_);
            _loc8_ = new §[#'§(this.§8Y§,_loc4_);
            this.§;#$§.push(_loc8_);
            _loc9_ = this.§?L§;
            _loc10_ = this.§<#5§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§9"I§ == §%"r§)
            {
               _loc9_ = (this.§#"4§ - (_loc10_ - 1) * this.§="A§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§true §.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§true §.push(new param2(_loc12_,_loc7_,new this.§+!"§() as MovieClip));
               }
               _loc13_ = _loc7_.§true §[_loc7_.§true §.length - 1] as §&!F§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§0k§(_loc14_,this.§0!1§);
                  if(this.§#"v§ == §"!u§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§0!1§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§><§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§="A§;
                  _loc13_.y = this.§&!k§ + _loc11_ * this.§@!]§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§<#5§ * this.§><§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§<#5§ * this.§><§) / this.§<#5§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§<#5§ * this.§><§) % this.§<#5§;
                  if(this.§'"@§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§="A§ + _loc16_ * this.§<#5§ * this.§="A§;
                     _loc13_.y = this.§&!k§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§&!k§ + _loc18_ * this.§@!]§ + _loc16_ * this.§<#5§ * this.§@!]§;
                  }
               }
               _loc8_.addButton(_loc13_);
               _loc11_++;
            }
            _loc8_.§>>§("");
            _loc7_.§+,§(this.§<#5§,this.§3!P§,this.§!C§,this.§#!i§ * this.§="A§,this.§#!i§ * this.§@!]§,this.§><§,this.§#!i§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §?!L§() : int
      {
         return this.§<#5§;
      }
      
      public function get §"s§() : int
      {
         if(this.§?!L§ == 0)
         {
            return 0;
         }
         return this.§]$§(this.§""W§).§>Q§.length / this.§?!L§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§-V§, param4:Event = null) : void
      {
         var _loc6_:§[#'§ = null;
         var _loc5_:§5"8§ = getItemByName(this.§""W§) as §5"8§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§3N§(_loc5_.§7!0§ - 1);
               this.§<"U§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§3N§(_loc5_.§7!0§ + 1);
               this.§<"U§();
            }
         }
         else if(param2.length > 0 && (param1 == §-V§.LISTENER_EVENT_MOUSE_DOWN || param1 == §-V§.LISTENER_EVENT_MOUSE_UP) && param3 is §[Z§)
         {
            if((_loc6_ = this.§]$§((param3 as §[Z§).mParentContainer.mName.toUpperCase())) && param3 is §&!F§)
            {
               _loc6_.§>>§((param3 as §[Z§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §1# §(param1:String, param2:int) : void
      {
         var _loc3_:§5"8§ = getItemByName(param1) as §5"8§;
         if(_loc3_)
         {
            _loc3_.§3N§(param2);
            this.§<"U§();
         }
      }
      
      public function §]$§(param1:String) : §[#'§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;#$§.length)
         {
            if(param1.toUpperCase() == (this.§;#$§[_loc2_] as §[#'§).mName.toUpperCase())
            {
               return this.§;#$§[_loc2_] as §[#'§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §4!%§(param1:String) : void
      {
         this.§""W§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §true §.length)
         {
            if(§true §[_loc2_] is §5"8§)
            {
               if((§true §[_loc2_] as §5"8§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§true §[_loc2_] as §5"8§).setActiveStatus(true);
                  if(this.§="]§)
                  {
                     this.§'#-§.x = (§true §[_loc2_] as §5"8§).x + this.§9#%§;
                     this.§'#-§.width = (§true §[_loc2_] as §5"8§).width + this.§["<§;
                  }
                  if(this.§5V§)
                  {
                     this.§'#-§.y = (§true §[_loc2_] as §5"8§).y + this.§0"y§;
                     this.§'#-§.height = (§true §[_loc2_] as §5"8§).height + this.§!"6§;
                  }
               }
               else
               {
                  (§true §[_loc2_] as §5"8§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§<"U§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§[#'§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§;#$§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §<"U§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§5"8§ = getItemByName(this.§""W§) as §5"8§;
         if(_loc1_)
         {
            if(_loc1_.§7!0§ > 0)
            {
               (getItemByName("Button_Scroll1") as §;g§).setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §;g§).setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§7!0§ < _loc1_.§?J§ - 1)
            {
               (getItemByName("Button_Scroll2") as §;g§).setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §;g§).setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §;g§).setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §;g§).setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §5"P§() : void
      {
         var _loc2_:§5"8§ = null;
         var _loc1_:int = §true §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §true §[_loc1_] as §5"8§;
            if(_loc2_)
            {
               _loc2_.clear();
               §true §.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§4!%§("");
      }
      
      public function §>";§() : void
      {
         var _loc1_:§[#'§ = null;
         for each(_loc1_ in this.§;#$§)
         {
            _loc1_.§>";§();
         }
      }
      
      public function §'#$§() : Array
      {
         if(this.§]$§(this.§""W§) == null)
         {
            §-"H§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§]$§(this.§""W§).§,!2§();
      }
      
      public function § n§(param1:Array) : void
      {
         this.§]$§(this.§""W§).§ n§(param1);
      }
      
      public function §3!C§(param1:Number) : void
      {
         this.§]$§(this.§""W§).§3!C§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§+!"§ = null;
         this.§;#$§ = null;
         this.§6!%§ = null;
      }
   }
}
