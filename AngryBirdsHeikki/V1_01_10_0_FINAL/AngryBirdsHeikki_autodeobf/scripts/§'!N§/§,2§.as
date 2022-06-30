package §'!N§
{
   import §8P§.§&-§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import §8P§.§=1§;
   import §<u§.§]!Q§;
   import §@R§.§4,§;
   import §]!6§.§false§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §,2§ extends §2O§
   {
      
      public static const §@y§:int = 0;
      
      public static const §3#§:int = 1;
      
      public static const §30§:int = 2;
       
      
      public var § !0§:String;
      
      public var §1d§:Class;
      
      public var §1!^§:String = null;
      
      public var §1!0§:Vector.<§=1§>;
      
      public var §0!H§:int;
      
      public var §#!I§:Number;
      
      public var §,Q§:Number;
      
      public var §[!c§:Number;
      
      public var §[!@§:Number;
      
      public var §"!$§:Number;
      
      public var §,!J§:Number;
      
      public var §6z§:Number;
      
      public var §?! §:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §!!`§:int;
      
      public var §'o§:Number;
      
      public var §]!c§:String = "";
      
      public var §-v§:int;
      
      public var § 8§:int;
      
      public var § ! §:GlowFilter;
      
      public var §7u§:Boolean = true;
      
      public var §&J§:int;
      
      public var §!-§:int;
      
      public var §6R§:Number = 0;
      
      public var §5S§:Number = 0;
      
      public var §8!c§:Number = 0;
      
      public var §`!f§:Number = 0;
      
      public var §'!D§:Boolean = false;
      
      public var §@V§:Boolean = false;
      
      public var §,d§:MovieClip = null;
      
      public function §,2§(param1:XML, param2:§2O§, param3:§]!Q§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§ !0§ = param1.@button;
         if(this.§ !0§.length > 0)
         {
            this.§1d§ = §false§.§5#§(this.§ !0§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§1!^§ = _loc5_;
         }
         this.§-v§ = §@y§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§-v§ = §3#§;
            }
         }
         this.§ 8§ = §30§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§ 8§ = §@y§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§ ! § = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §],§.push(new §<i§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §],§.push(new §<i§(_loc18_,this));
         }
         this.§#!I§ = mClip.getChildByName("Surface").x;
         this.§,Q§ = mClip.getChildByName("Surface").y;
         this.§[!c§ = mClip.getChildByName("Surface").width;
         this.§[!@§ = mClip.getChildByName("Surface").height;
         this.§"!$§ = mClip.getChildByName("Button_Area1").x - this.§#!I§;
         this.§,!J§ = mClip.getChildByName("Button_Area1").y - this.§,Q§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§#!I§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§,Q§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§'o§ = _loc9_.bottom - this.§,Q§ - this.§,!J§;
         this.§6z§ = _loc7_ - this.§"!$§;
         this.§?! § = _loc8_ - this.§,!J§;
         if(Math.abs(this.§6z§) < 3)
         {
            this.§6z§ = 0;
         }
         if(Math.abs(this.§?! §) < 3)
         {
            this.§?! § = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§6z§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§"!$§ - this.§"!$§) / this.§6z§;
         }
         if(this.§?! § != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§,!J§ - this.§,!J§) / this.§?! §;
         }
         this.§0!H§ = Math.min(_loc10_,_loc11_);
         this.§7u§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§&J§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§&J§ = this.§0!H§;
         }
         this.§!!`§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§#!I§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§,Q§;
            this.mButtonMarginX2 = _loc19_ - this.§"!$§;
            this.mButtonMarginY2 = _loc20_ - this.§,!J§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§7u§)
            {
               this.§!!`§ = 1 + (mClip.getChildByName("Surface").height - this.§,!J§ - this.§,!J§) / this.mButtonMarginY2;
            }
            else
            {
               this.§!!`§ = 1 + (mClip.getChildByName("Surface").width - this.§"!$§ - this.§"!$§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§,d§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§8!c§ = this.§,d§.x - mClip.getChildByName("Surface").x;
            this.§`!f§ = this.§,d§.y - mClip.getChildByName("Surface").y;
            this.§6R§ = this.§,d§.x + this.§,d§.width - (this.§,d§.x + mClip.getChildByName("Surface").width);
            this.§5S§ = this.§,d§.y + this.§,d§.height - (this.§,d§.y + mClip.getChildByName("Surface").height);
            this.§'!D§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§@V§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§!-§ = §=1§.§^g§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§!-§ = §=1§.§set §;
            }
         }
         this.§3!8§();
      }
      
      public function §3!8§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§#v§ = null;
         var _loc8_:§=1§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§`!M§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §`!M§;
         }
         this.§1!0§ = new Vector.<§=1§>();
         this.§&a§();
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
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §#v§(_loc6_,this,null,_loc5_);
            §],§.push(_loc7_);
            _loc8_ = new §=1§(this.§!-§,_loc4_);
            this.§1!0§.push(_loc8_);
            _loc9_ = this.§"!$§;
            _loc10_ = this.§0!H§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§ 8§ == §@y§)
            {
               _loc9_ = (this.§[!c§ - (_loc10_ - 1) * this.§6z§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§],§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§],§.push(new param2(_loc12_,_loc7_,new this.§1d§() as MovieClip));
               }
               _loc13_ = _loc7_.§],§[_loc7_.§],§.length - 1] as §`!M§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§1o§(_loc14_,this.§1!^§);
                  if(this.§-v§ == §3#§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§1!^§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§!!`§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§6z§;
                  _loc13_.y = this.§,!J§ + _loc11_ * this.§?! §;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§0!H§ * this.§!!`§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§0!H§ * this.§!!`§) / this.§0!H§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§0!H§ * this.§!!`§) % this.§0!H§;
                  if(this.§7u§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§6z§ + _loc16_ * this.§0!H§ * this.§6z§;
                     _loc13_.y = this.§,!J§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§,!J§ + _loc18_ * this.§?! § + _loc16_ * this.§0!H§ * this.§?! §;
                  }
               }
               _loc8_.§^!U§(_loc13_);
               _loc11_++;
            }
            _loc8_.§;!O§("");
            _loc7_.§;!H§(this.§0!H§,this.§#!I§,this.§,Q§,this.§&J§ * this.§6z§,this.§&J§ * this.§?! §,this.§!!`§,this.§&J§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §;p§() : int
      {
         return this.§0!H§;
      }
      
      public function get §]!Y§() : int
      {
         if(this.§;p§ == 0)
         {
            return 0;
         }
         return this.§4!X§(this.§]!c§).§2!G§.length / this.§;p§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc5_:§=1§ = null;
         var _loc4_:§#v§ = getItemByName(this.§]!c§) as §#v§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§%<§(_loc4_.§2!T§ - 1);
               this.§!`§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§%<§(_loc4_.§2!T§ + 1);
               this.§!`§();
            }
         }
         else if(param2.length > 0 && (param1 == §1A§.LISTENER_EVENT_MOUSE_DOWN || param1 == §1A§.LISTENER_EVENT_MOUSE_UP) && param3 is §&-§)
         {
            if((_loc5_ = this.§4!X§((param3 as §&-§).mParentContainer.mName.toUpperCase())) && param3 is §`!M§)
            {
               _loc5_.§;!O§((param3 as §&-§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §>H§(param1:String, param2:int) : void
      {
         var _loc3_:§#v§ = getItemByName(param1) as §#v§;
         if(_loc3_)
         {
            _loc3_.§%<§(param2);
            this.§!`§();
         }
      }
      
      public function §4!X§(param1:String) : §=1§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!0§.length)
         {
            if(param1.toUpperCase() == (this.§1!0§[_loc2_] as §=1§).mName.toUpperCase())
            {
               return this.§1!0§[_loc2_] as §=1§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%v§(param1:String) : void
      {
         this.§]!c§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §],§.length)
         {
            if(§],§[_loc2_] is §#v§)
            {
               if((§],§[_loc2_] as §#v§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§],§[_loc2_] as §#v§).setActiveStatus(true);
                  if(this.§'!D§)
                  {
                     this.§,d§.x = (§],§[_loc2_] as §#v§).x + this.§8!c§;
                     this.§,d§.width = (§],§[_loc2_] as §#v§).width + this.§6R§;
                  }
                  if(this.§@V§)
                  {
                     this.§,d§.y = (§],§[_loc2_] as §#v§).y + this.§`!f§;
                     this.§,d§.height = (§],§[_loc2_] as §#v§).height + this.§5S§;
                  }
               }
               else
               {
                  (§],§[_loc2_] as §#v§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§!`§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§=1§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§1!0§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §!`§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§#v§ = getItemByName(this.§]!c§) as §#v§;
         if(_loc1_)
         {
            if(_loc1_.§2!T§ > 0)
            {
               (getItemByName("Button_Scroll1") as §<i§).setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §<i§).setComponentState(§4!Y§.§[&§);
            }
            if(_loc1_.§2!T§ < _loc1_.§@"§ - 1)
            {
               (getItemByName("Button_Scroll2") as §<i§).setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §<i§).setComponentState(§4!Y§.§[&§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §<i§).setComponentState(§4!Y§.§[&§);
            (getItemByName("Button_Scroll2") as §<i§).setComponentState(§4!Y§.§[&§);
         }
      }
      
      public function §&a§() : void
      {
         var _loc2_:§#v§ = null;
         var _loc1_:int = §],§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §],§[_loc1_] as §#v§;
            if(_loc2_)
            {
               _loc2_.clear();
               §],§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§%v§("");
      }
      
      public function §=!f§() : void
      {
         var _loc1_:§=1§ = null;
         for each(_loc1_ in this.§1!0§)
         {
            _loc1_.§=!f§();
         }
      }
      
      public function §5!V§() : Array
      {
         if(this.§4!X§(this.§]!c§) == null)
         {
            §4,§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§4!X§(this.§]!c§).§!_§();
      }
      
      public function §=!>§(param1:Array) : void
      {
         this.§4!X§(this.§]!c§).§=!>§(param1);
      }
      
      public function §9f§(param1:Number) : void
      {
         this.§4!X§(this.§]!c§).§9f§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§1d§ = null;
         this.§1!0§ = null;
         this.§ ! § = null;
      }
   }
}
