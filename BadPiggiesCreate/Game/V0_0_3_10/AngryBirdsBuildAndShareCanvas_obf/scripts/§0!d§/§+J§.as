package §0!d§
{
   import §4!t§.§=p§;
   import §9!G§.§]!e§;
   import §<8§.§"h§;
   import §<8§.§'X§;
   import §<8§.§7!n§;
   import §<8§.§>!H§;
   import com.rovio.assets.§5!+§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §+J§ extends §7!a§
   {
      
      public static const §&!h§:int = 0;
      
      public static const §2!j§:int = 1;
      
      public static const §>0§:int = 2;
       
      
      public var §?t§:String;
      
      public var §]S§:Class;
      
      public var §0!f§:String = null;
      
      public var §&=§:Vector.<§>!H§>;
      
      public var §,<§:int;
      
      public var §4!4§:Number;
      
      public var §!![§:Number;
      
      public var §1"9§:Number;
      
      public var §7"&§:Number;
      
      public var §6!@§:Number;
      
      public var §"D§:Number;
      
      public var §]!d§:Number;
      
      public var §%!g§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §&",§:int;
      
      public var §"f§:Number;
      
      public var §;!D§:String = "";
      
      public var §6!N§:int;
      
      public var §@!7§:int;
      
      public var §^!w§:GlowFilter;
      
      public var §+i§:Boolean = true;
      
      public var §]E§:int;
      
      public var §3!i§:int;
      
      public var §while§:Number = 0;
      
      public var §]"8§:Number = 0;
      
      public var §1"$§:Number = 0;
      
      public var §=!?§:Number = 0;
      
      public var §,!z§:Boolean = false;
      
      public var §3!@§:Boolean = false;
      
      public var §]!Z§:MovieClip = null;
      
      public function §+J§(param1:XML, param2:§7!a§, param3:§=p§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§?t§ = param1.@button;
         if(this.§?t§.length > 0)
         {
            this.§]S§ = §5!+§.§,]§(this.§?t§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§0!f§ = _loc5_;
         }
         this.§6!N§ = §&!h§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§6!N§ = §2!j§;
            }
         }
         this.§@!7§ = §>0§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§@!7§ = §&!h§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§^!w§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §`F§.push(new §8!r§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §`F§.push(new §8!r§(_loc18_,this));
         }
         this.§4!4§ = mClip.getChildByName("Surface").x;
         this.§!![§ = mClip.getChildByName("Surface").y;
         this.§1"9§ = mClip.getChildByName("Surface").width;
         this.§7"&§ = mClip.getChildByName("Surface").height;
         this.§6!@§ = mClip.getChildByName("Button_Area1").x - this.§4!4§;
         this.§"D§ = mClip.getChildByName("Button_Area1").y - this.§!![§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§4!4§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§!![§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§"f§ = _loc9_.bottom - this.§!![§ - this.§"D§;
         this.§]!d§ = _loc7_ - this.§6!@§;
         this.§%!g§ = _loc8_ - this.§"D§;
         if(Math.abs(this.§]!d§) < 3)
         {
            this.§]!d§ = 0;
         }
         if(Math.abs(this.§%!g§) < 3)
         {
            this.§%!g§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§]!d§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§6!@§ - this.§6!@§) / this.§]!d§;
         }
         if(this.§%!g§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§"D§ - this.§"D§) / this.§%!g§;
         }
         this.§,<§ = Math.min(_loc10_,_loc11_);
         this.§+i§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§]E§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§]E§ = this.§,<§;
         }
         this.§&",§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§4!4§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§!![§;
            this.mButtonMarginX2 = _loc19_ - this.§6!@§;
            this.mButtonMarginY2 = _loc20_ - this.§"D§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§+i§)
            {
               this.§&",§ = 1 + (mClip.getChildByName("Surface").height - this.§"D§ - this.§"D§) / this.mButtonMarginY2;
            }
            else
            {
               this.§&",§ = 1 + (mClip.getChildByName("Surface").width - this.§6!@§ - this.§6!@§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§]!Z§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§1"$§ = this.§]!Z§.x - mClip.getChildByName("Surface").x;
            this.§=!?§ = this.§]!Z§.y - mClip.getChildByName("Surface").y;
            this.§while§ = this.§]!Z§.x + this.§]!Z§.width - (this.§]!Z§.x + mClip.getChildByName("Surface").width);
            this.§]"8§ = this.§]!Z§.y + this.§]!Z§.height - (this.§]!Z§.y + mClip.getChildByName("Surface").height);
            this.§,!z§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§3!@§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§3!i§ = §>!H§.§<!T§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§3!i§ = §>!H§.§0]§;
            }
         }
         this.§"9§();
      }
      
      public function §"9§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§8!p§ = null;
         var _loc8_:§>!H§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§!!y§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §!!y§;
         }
         this.§&=§ = new Vector.<§>!H§>();
         this.§,;§();
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
            _loc7_ = new §8!p§(_loc6_,this,null,_loc5_);
            §`F§.push(_loc7_);
            _loc8_ = new §>!H§(this.§3!i§,_loc4_);
            this.§&=§.push(_loc8_);
            _loc9_ = this.§6!@§;
            _loc10_ = this.§,<§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§@!7§ == §&!h§)
            {
               _loc9_ = (this.§1"9§ - (_loc10_ - 1) * this.§]!d§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§`F§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§`F§.push(new param2(_loc12_,_loc7_,new this.§]S§() as MovieClip));
               }
               _loc13_ = _loc7_.§`F§[_loc7_.§`F§.length - 1] as §!!y§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§0!f§);
                  if(this.§6!N§ == §2!j§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§0!f§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§&",§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§]!d§;
                  _loc13_.y = this.§"D§ + _loc11_ * this.§%!g§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§,<§ * this.§&",§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§,<§ * this.§&",§) / this.§,<§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§,<§ * this.§&",§) % this.§,<§;
                  if(this.§+i§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§]!d§ + _loc16_ * this.§,<§ * this.§]!d§;
                     _loc13_.y = this.§"D§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§"D§ + _loc18_ * this.§%!g§ + _loc16_ * this.§,<§ * this.§%!g§;
                  }
               }
               _loc8_.§[" §(_loc13_);
               _loc11_++;
            }
            _loc8_.§"!Q§("");
            _loc7_.§`U§(this.§,<§,this.§4!4§,this.§!![§,this.§]E§ * this.§]!d§,this.§]E§ * this.§%!g§,this.§&",§,this.§]E§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §&!r§() : int
      {
         return this.§,<§;
      }
      
      public function get §6!E§() : int
      {
         if(this.§&!r§ == 0)
         {
            return 0;
         }
         return this.§1![§(this.§;!D§).§^!J§.length / this.§&!r§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§7!n§) : void
      {
         var _loc5_:§>!H§ = null;
         var _loc4_:§8!p§ = getItemByName(this.§;!D§) as §8!p§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§@!q§(_loc4_.§`!$§ - 1);
               this.§6!>§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§@!q§(_loc4_.§`!$§ + 1);
               this.§6!>§();
            }
         }
         else if(param2.length > 0 && (param1 == §7!n§.LISTENER_EVENT_MOUSE_DOWN || param1 == §7!n§.LISTENER_EVENT_MOUSE_UP) && param3 is §'X§)
         {
            if((_loc5_ = this.§1![§((param3 as §'X§).mParentContainer.mName.toUpperCase())) && param3 is §!!y§)
            {
               _loc5_.§"!Q§((param3 as §'X§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §=!i§(param1:String, param2:int) : void
      {
         var _loc3_:§8!p§ = getItemByName(param1) as §8!p§;
         if(_loc3_)
         {
            _loc3_.§@!q§(param2);
            this.§6!>§();
         }
      }
      
      public function §1![§(param1:String) : §>!H§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&=§.length)
         {
            if(param1.toUpperCase() == (this.§&=§[_loc2_] as §>!H§).mName.toUpperCase())
            {
               return this.§&=§[_loc2_] as §>!H§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,!1§(param1:String) : void
      {
         this.§;!D§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §`F§.length)
         {
            if(§`F§[_loc2_] is §8!p§)
            {
               if((§`F§[_loc2_] as §8!p§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§`F§[_loc2_] as §8!p§).setActiveStatus(true);
                  if(this.§,!z§)
                  {
                     this.§]!Z§.x = (§`F§[_loc2_] as §8!p§).x + this.§1"$§;
                     this.§]!Z§.width = (§`F§[_loc2_] as §8!p§).width + this.§while§;
                  }
                  if(this.§3!@§)
                  {
                     this.§]!Z§.y = (§`F§[_loc2_] as §8!p§).y + this.§=!?§;
                     this.§]!Z§.height = (§`F§[_loc2_] as §8!p§).height + this.§]"8§;
                  }
               }
               else
               {
                  (§`F§[_loc2_] as §8!p§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§6!>§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§>!H§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§&=§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §6!>§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§8!p§ = getItemByName(this.§;!D§) as §8!p§;
         if(_loc1_)
         {
            if(_loc1_.§`!$§ > 0)
            {
               (getItemByName("Button_Scroll1") as §8!r§).setComponentState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §8!r§).setComponentState(§"h§.§?L§);
            }
            if(_loc1_.§`!$§ < _loc1_.§8E§ - 1)
            {
               (getItemByName("Button_Scroll2") as §8!r§).setComponentState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §8!r§).setComponentState(§"h§.§?L§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §8!r§).setComponentState(§"h§.§?L§);
            (getItemByName("Button_Scroll2") as §8!r§).setComponentState(§"h§.§?L§);
         }
      }
      
      public function §,;§() : void
      {
         var _loc2_:§8!p§ = null;
         var _loc1_:int = §`F§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §`F§[_loc1_] as §8!p§;
            if(_loc2_)
            {
               _loc2_.clear();
               §`F§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§,!1§("");
      }
      
      public function §&C§() : void
      {
         var _loc1_:§>!H§ = null;
         for each(_loc1_ in this.§&=§)
         {
            _loc1_.§&C§();
         }
      }
      
      public function §[!I§() : Array
      {
         if(this.§1![§(this.§;!D§) == null)
         {
            §]!e§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1![§(this.§;!D§).§2!!§();
      }
      
      public function §1o§(param1:Array) : void
      {
         this.§1![§(this.§;!D§).§1o§(param1);
      }
      
      public function §+!h§(param1:Number) : void
      {
         this.§1![§(this.§;!D§).§+!h§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§]S§ = null;
         this.§&=§ = null;
         this.§^!w§ = null;
      }
   }
}
