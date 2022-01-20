package §,!C§
{
   import §'+§.§1u§;
   import §7p§.§%g§;
   import §;'§.§6d§;
   import §@-§.§ x§;
   import §@-§.§#W§;
   import §@-§.§-m§;
   import §@-§.§[y§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#!4§ extends §-6§
   {
      
      public static const §'!m§:int = 0;
      
      public static const §,!d§:int = 1;
      
      public static const §]!e§:int = 2;
       
      
      public var § R§:String;
      
      public var §9y§:Class;
      
      public var §@p§:String = null;
      
      public var §+s§:Vector.<§#W§>;
      
      public var §5!^§:int;
      
      public var §7!B§:Number;
      
      public var §1z§:Number;
      
      public var §6c§:Number;
      
      public var §-!V§:Number;
      
      public var §;O§:Number;
      
      public var §!R§:Number;
      
      public var §`!D§:Number;
      
      public var §0!K§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §^!Y§:int;
      
      public var §'K§:Number;
      
      public var §#!m§:String = "";
      
      public var §3^§:int;
      
      public var §`V§:int;
      
      public var §?!`§:GlowFilter;
      
      public var §+!0§:Boolean = true;
      
      public var §6Q§:int;
      
      public var §4!Q§:int;
      
      public var §7Q§:Number = 0;
      
      public var §'!P§:Number = 0;
      
      public var §]g§:Number = 0;
      
      public var §&!#§:Number = 0;
      
      public var § !8§:Boolean = false;
      
      public var §@!>§:Boolean = false;
      
      public var §<8§:MovieClip = null;
      
      public function §#!4§(param1:XML, param2:§-6§, param3:§%g§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§ R§ = param1.@button;
         if(this.§ R§.length > 0)
         {
            this.§9y§ = §6d§.§=!Y§(this.§ R§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§@p§ = _loc5_;
         }
         this.§3^§ = §'!m§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§3^§ = §,!d§;
            }
         }
         this.§`V§ = §]!e§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§`V§ = §'!m§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§?!`§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §@!g§.push(new §?!C§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §@!g§.push(new §?!C§(_loc18_,this));
         }
         this.§7!B§ = mClip.getChildByName("Surface").x;
         this.§1z§ = mClip.getChildByName("Surface").y;
         this.§6c§ = mClip.getChildByName("Surface").width;
         this.§-!V§ = mClip.getChildByName("Surface").height;
         this.§;O§ = mClip.getChildByName("Button_Area1").x - this.§7!B§;
         this.§!R§ = mClip.getChildByName("Button_Area1").y - this.§1z§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§7!B§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§1z§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§'K§ = _loc9_.bottom - this.§1z§ - this.§!R§;
         this.§`!D§ = _loc7_ - this.§;O§;
         this.§0!K§ = _loc8_ - this.§!R§;
         if(Math.abs(this.§`!D§) < 3)
         {
            this.§`!D§ = 0;
         }
         if(Math.abs(this.§0!K§) < 3)
         {
            this.§0!K§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§`!D§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§;O§ - this.§;O§) / this.§`!D§;
         }
         if(this.§0!K§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§!R§ - this.§!R§) / this.§0!K§;
         }
         this.§5!^§ = Math.min(_loc10_,_loc11_);
         this.§+!0§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§6Q§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§6Q§ = this.§5!^§;
         }
         this.§^!Y§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§7!B§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§1z§;
            this.mButtonMarginX2 = _loc19_ - this.§;O§;
            this.mButtonMarginY2 = _loc20_ - this.§!R§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§+!0§)
            {
               this.§^!Y§ = 1 + (mClip.getChildByName("Surface").height - this.§!R§ - this.§!R§) / this.mButtonMarginY2;
            }
            else
            {
               this.§^!Y§ = 1 + (mClip.getChildByName("Surface").width - this.§;O§ - this.§;O§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§<8§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§]g§ = this.§<8§.x - mClip.getChildByName("Surface").x;
            this.§&!#§ = this.§<8§.y - mClip.getChildByName("Surface").y;
            this.§7Q§ = this.§<8§.x + this.§<8§.width - (this.§<8§.x + mClip.getChildByName("Surface").width);
            this.§'!P§ = this.§<8§.y + this.§<8§.height - (this.§<8§.y + mClip.getChildByName("Surface").height);
            this.§ !8§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§@!>§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§4!Q§ = §#W§.§]!,§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§4!Q§ = §#W§.§`!"§;
            }
         }
         this.§%j§();
      }
      
      public function §%j§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§8+§ = null;
         var _loc8_:§#W§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§<,§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §<,§;
         }
         this.§+s§ = new Vector.<§#W§>();
         this.§]D§();
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
            _loc7_ = new §8+§(_loc6_,this,null,_loc5_);
            §@!g§.push(_loc7_);
            _loc8_ = new §#W§(this.§4!Q§,_loc4_);
            this.§+s§.push(_loc8_);
            _loc9_ = this.§;O§;
            _loc10_ = this.§5!^§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§`V§ == §'!m§)
            {
               _loc9_ = (this.§6c§ - (_loc10_ - 1) * this.§`!D§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§@!g§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§@!g§.push(new param2(_loc12_,_loc7_,new this.§9y§() as MovieClip));
               }
               _loc13_ = _loc7_.§@!g§[_loc7_.§@!g§.length - 1] as §<,§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§4C§(_loc14_,this.§@p§);
                  if(this.§3^§ == §,!d§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§@p§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§^!Y§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§`!D§;
                  _loc13_.y = this.§!R§ + _loc11_ * this.§0!K§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§5!^§ * this.§^!Y§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§5!^§ * this.§^!Y§) / this.§5!^§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§5!^§ * this.§^!Y§) % this.§5!^§;
                  if(this.§+!0§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§`!D§ + _loc16_ * this.§5!^§ * this.§`!D§;
                     _loc13_.y = this.§!R§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§!R§ + _loc18_ * this.§0!K§ + _loc16_ * this.§5!^§ * this.§0!K§;
                  }
               }
               _loc8_.§&!p§(_loc13_);
               _loc11_++;
            }
            _loc8_.§1!V§("");
            _loc7_.§7t§(this.§5!^§,this.§7!B§,this.§1z§,this.§6Q§ * this.§`!D§,this.§6Q§ * this.§0!K§,this.§^!Y§,this.§6Q§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §1!<§() : int
      {
         return this.§5!^§;
      }
      
      public function get §%8§() : int
      {
         if(this.§1!<§ == 0)
         {
            return 0;
         }
         return this.§2!7§(this.§#!m§).§+!;§.length / this.§1!<§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§[y§) : void
      {
         var _loc5_:§#W§ = null;
         var _loc4_:§8+§ = getItemByName(this.§#!m§) as §8+§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§'w§(_loc4_.§^d§ - 1);
               this.§'!8§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§'w§(_loc4_.§^d§ + 1);
               this.§'!8§();
            }
         }
         else if(param2.length > 0 && (param1 == §[y§.LISTENER_EVENT_MOUSE_DOWN || param1 == §[y§.LISTENER_EVENT_MOUSE_UP) && param3 is §-m§)
         {
            if((_loc5_ = this.§2!7§((param3 as §-m§).mParentContainer.mName.toUpperCase())) && param3 is §<,§)
            {
               _loc5_.§1!V§((param3 as §-m§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function § J§(param1:String, param2:int) : void
      {
         var _loc3_:§8+§ = getItemByName(param1) as §8+§;
         if(_loc3_)
         {
            _loc3_.§'w§(param2);
            this.§'!8§();
         }
      }
      
      public function §2!7§(param1:String) : §#W§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+s§.length)
         {
            if(param1.toUpperCase() == (this.§+s§[_loc2_] as §#W§).mName.toUpperCase())
            {
               return this.§+s§[_loc2_] as §#W§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1P§(param1:String) : void
      {
         this.§#!m§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §@!g§.length)
         {
            if(§@!g§[_loc2_] is §8+§)
            {
               if((§@!g§[_loc2_] as §8+§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§@!g§[_loc2_] as §8+§).setActiveStatus(true);
                  if(this.§ !8§)
                  {
                     this.§<8§.x = (§@!g§[_loc2_] as §8+§).x + this.§]g§;
                     this.§<8§.width = (§@!g§[_loc2_] as §8+§).width + this.§7Q§;
                  }
                  if(this.§@!>§)
                  {
                     this.§<8§.y = (§@!g§[_loc2_] as §8+§).y + this.§&!#§;
                     this.§<8§.height = (§@!g§[_loc2_] as §8+§).height + this.§'!P§;
                  }
               }
               else
               {
                  (§@!g§[_loc2_] as §8+§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§'!8§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§#W§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§+s§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §'!8§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§8+§ = getItemByName(this.§#!m§) as §8+§;
         if(_loc1_)
         {
            if(_loc1_.§^d§ > 0)
            {
               (getItemByName("Button_Scroll1") as §?!C§).setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §?!C§).setComponentState(§ x§.§;g§);
            }
            if(_loc1_.§^d§ < _loc1_.§-V§ - 1)
            {
               (getItemByName("Button_Scroll2") as §?!C§).setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §?!C§).setComponentState(§ x§.§;g§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §?!C§).setComponentState(§ x§.§;g§);
            (getItemByName("Button_Scroll2") as §?!C§).setComponentState(§ x§.§;g§);
         }
      }
      
      public function §]D§() : void
      {
         var _loc2_:§8+§ = null;
         var _loc1_:int = §@!g§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §@!g§[_loc1_] as §8+§;
            if(_loc2_)
            {
               _loc2_.clear();
               §@!g§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§1P§("");
      }
      
      public function §5!X§() : void
      {
         var _loc1_:§#W§ = null;
         for each(_loc1_ in this.§+s§)
         {
            _loc1_.§5!X§();
         }
      }
      
      public function §,9§() : Array
      {
         if(this.§2!7§(this.§#!m§) == null)
         {
            §1u§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§2!7§(this.§#!m§).§%!5§();
      }
      
      public function §@!G§(param1:Array) : void
      {
         this.§2!7§(this.§#!m§).§@!G§(param1);
      }
      
      public function §2!_§(param1:Number) : void
      {
         this.§2!7§(this.§#!m§).§2!_§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§9y§ = null;
         this.§+s§ = null;
         this.§?!`§ = null;
      }
   }
}
