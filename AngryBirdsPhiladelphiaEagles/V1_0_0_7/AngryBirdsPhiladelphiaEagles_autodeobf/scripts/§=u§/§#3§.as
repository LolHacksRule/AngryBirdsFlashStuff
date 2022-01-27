package §=u§
{
   import §!6§.§3!5§;
   import §5!<§.§@]§;
   import §5f§.§&!F§;
   import §5f§.§-G§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import com.rovio.assets.§@h§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#3§ extends §>v§
   {
      
      public static const §28§:int = 0;
      
      public static const §,i§:int = 1;
      
      public static const §]k§:int = 2;
       
      
      public var §!P§:String;
      
      public var § p§:Class;
      
      public var §9!>§:String = null;
      
      public var §8A§:Vector.<§&!F§>;
      
      public var §@!§:int;
      
      public var § !,§:Number;
      
      public var §7!!§:Number;
      
      public var §?c§:Number;
      
      public var §#Y§:Number;
      
      public var §0§:Number;
      
      public var §7@§:Number;
      
      public var §39§:Number;
      
      public var §;L§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §6!,§:int;
      
      public var §+F§:Number;
      
      public var §@o§:String = "";
      
      public var §-h§:int;
      
      public var §]4§:int;
      
      public var §&?§:GlowFilter;
      
      public var §&r§:Boolean = true;
      
      public var §`+§:int;
      
      public var §&!9§:int;
      
      public var §,x§:Number = 0;
      
      public var §1p§:Number = 0;
      
      public var §#v§:Number = 0;
      
      public var §?4§:Number = 0;
      
      public var §const§:Boolean = false;
      
      public var §9J§:Boolean = false;
      
      public var §0R§:MovieClip = null;
      
      public function §#3§(param1:XML, param2:§>v§, param3:§@]§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§!P§ = param1.@button;
         if(this.§!P§.length > 0)
         {
            this.§ p§ = §@h§.§[@§(this.§!P§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§9!>§ = _loc5_;
         }
         this.§-h§ = §28§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§-h§ = §,i§;
            }
         }
         this.§]4§ = §]k§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§]4§ = §28§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§&?§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §@#§.push(new §1r§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §@#§.push(new §1r§(_loc18_,this));
         }
         this.§ !,§ = mClip.getChildByName("Surface").x;
         this.§7!!§ = mClip.getChildByName("Surface").y;
         this.§?c§ = mClip.getChildByName("Surface").width;
         this.§#Y§ = mClip.getChildByName("Surface").height;
         this.§0§ = mClip.getChildByName("Button_Area1").x - this.§ !,§;
         this.§7@§ = mClip.getChildByName("Button_Area1").y - this.§7!!§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§ !,§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§7!!§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§+F§ = _loc9_.bottom - this.§7!!§ - this.§7@§;
         this.§39§ = _loc7_ - this.§0§;
         this.§;L§ = _loc8_ - this.§7@§;
         if(Math.abs(this.§39§) < 3)
         {
            this.§39§ = 0;
         }
         if(Math.abs(this.§;L§) < 3)
         {
            this.§;L§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§39§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§0§ - this.§0§) / this.§39§;
         }
         if(this.§;L§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§7@§ - this.§7@§) / this.§;L§;
         }
         this.§@!§ = Math.min(_loc10_,_loc11_);
         this.§&r§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§`+§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§`+§ = this.§@!§;
         }
         this.§6!,§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§ !,§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§7!!§;
            this.mButtonMarginX2 = _loc19_ - this.§0§;
            this.mButtonMarginY2 = _loc20_ - this.§7@§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§&r§)
            {
               this.§6!,§ = 1 + (mClip.getChildByName("Surface").height - this.§7@§ - this.§7@§) / this.mButtonMarginY2;
            }
            else
            {
               this.§6!,§ = 1 + (mClip.getChildByName("Surface").width - this.§0§ - this.§0§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§0R§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§#v§ = this.§0R§.x - mClip.getChildByName("Surface").x;
            this.§?4§ = this.§0R§.y - mClip.getChildByName("Surface").y;
            this.§,x§ = this.§0R§.x + this.§0R§.width - (this.§0R§.x + mClip.getChildByName("Surface").width);
            this.§1p§ = this.§0R§.y + this.§0R§.height - (this.§0R§.y + mClip.getChildByName("Surface").height);
            this.§const§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§9J§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§&!9§ = §&!F§.§9!O§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§&!9§ = §&!F§.§<!<§;
            }
         }
         this.§6m§();
      }
      
      public function §6m§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§"v§ = null;
         var _loc8_:§&!F§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§&'§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §&'§;
         }
         this.§8A§ = new Vector.<§&!F§>();
         this.§ !$§();
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
            _loc7_ = new §"v§(_loc6_,this,null,_loc5_);
            §@#§.push(_loc7_);
            _loc8_ = new §&!F§(this.§&!9§,_loc4_);
            this.§8A§.push(_loc8_);
            _loc9_ = this.§0§;
            _loc10_ = this.§@!§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§]4§ == §28§)
            {
               _loc9_ = (this.§?c§ - (_loc10_ - 1) * this.§39§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§@#§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§@#§.push(new param2(_loc12_,_loc7_,new this.§ p§() as MovieClip));
               }
               _loc13_ = _loc7_.§@#§[_loc7_.§@#§.length - 1] as §&'§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§[-§(_loc14_,this.§9!>§);
                  if(this.§-h§ == §,i§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§9!>§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§6!,§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§39§;
                  _loc13_.y = this.§7@§ + _loc11_ * this.§;L§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§@!§ * this.§6!,§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§@!§ * this.§6!,§) / this.§@!§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§@!§ * this.§6!,§) % this.§@!§;
                  if(this.§&r§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§39§ + _loc16_ * this.§@!§ * this.§39§;
                     _loc13_.y = this.§7@§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§7@§ + _loc18_ * this.§;L§ + _loc16_ * this.§@!§ * this.§;L§;
                  }
               }
               _loc8_.§2!D§(_loc13_);
               _loc11_++;
            }
            _loc8_.§33§("");
            _loc7_.§'[§(this.§@!§,this.§ !,§,this.§7!!§,this.§`+§ * this.§39§,this.§`+§ * this.§;L§,this.§6!,§,this.§`+§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §9;§() : int
      {
         return this.§@!§;
      }
      
      public function get §9!@§() : int
      {
         if(this.§9;§ == 0)
         {
            return 0;
         }
         return this.§`!#§(this.§@o§).§9!L§.length / this.§9;§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§]_§) : void
      {
         var _loc5_:§&!F§ = null;
         var _loc4_:§"v§ = getItemByName(this.§@o§) as §"v§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§=!D§(_loc4_.§?m§ - 1);
               this.§[s§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§=!D§(_loc4_.§?m§ + 1);
               this.§[s§();
            }
         }
         else if(param2.length > 0 && (param1 == §]_§.LISTENER_EVENT_MOUSE_DOWN || param1 == §]_§.LISTENER_EVENT_MOUSE_UP) && param3 is §-G§)
         {
            if((_loc5_ = this.§`!#§((param3 as §-G§).mParentContainer.mName.toUpperCase())) && param3 is §&'§)
            {
               _loc5_.§33§((param3 as §-G§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §<o§(param1:String, param2:int) : void
      {
         var _loc3_:§"v§ = getItemByName(param1) as §"v§;
         if(_loc3_)
         {
            _loc3_.§=!D§(param2);
            this.§[s§();
         }
      }
      
      public function §`!#§(param1:String) : §&!F§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8A§.length)
         {
            if(param1.toUpperCase() == (this.§8A§[_loc2_] as §&!F§).mName.toUpperCase())
            {
               return this.§8A§[_loc2_] as §&!F§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%u§(param1:String) : void
      {
         this.§@o§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §@#§.length)
         {
            if(§@#§[_loc2_] is §"v§)
            {
               if((§@#§[_loc2_] as §"v§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§@#§[_loc2_] as §"v§).setActiveStatus(true);
                  if(this.§const§)
                  {
                     this.§0R§.x = (§@#§[_loc2_] as §"v§).x + this.§#v§;
                     this.§0R§.width = (§@#§[_loc2_] as §"v§).width + this.§,x§;
                  }
                  if(this.§9J§)
                  {
                     this.§0R§.y = (§@#§[_loc2_] as §"v§).y + this.§?4§;
                     this.§0R§.height = (§@#§[_loc2_] as §"v§).height + this.§1p§;
                  }
               }
               else
               {
                  (§@#§[_loc2_] as §"v§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§[s§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§&!F§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§8A§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §[s§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§"v§ = getItemByName(this.§@o§) as §"v§;
         if(_loc1_)
         {
            if(_loc1_.§?m§ > 0)
            {
               (getItemByName("Button_Scroll1") as §1r§).setComponentState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §1r§).setComponentState(§=;§.§+!0§);
            }
            if(_loc1_.§?m§ < _loc1_.§!!&§ - 1)
            {
               (getItemByName("Button_Scroll2") as §1r§).setComponentState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §1r§).setComponentState(§=;§.§+!0§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §1r§).setComponentState(§=;§.§+!0§);
            (getItemByName("Button_Scroll2") as §1r§).setComponentState(§=;§.§+!0§);
         }
      }
      
      public function § !$§() : void
      {
         var _loc2_:§"v§ = null;
         var _loc1_:int = §@#§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §@#§[_loc1_] as §"v§;
            if(_loc2_)
            {
               _loc2_.clear();
               §@#§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§%u§("");
      }
      
      public function §&7§() : void
      {
         var _loc1_:§&!F§ = null;
         for each(_loc1_ in this.§8A§)
         {
            _loc1_.§&7§();
         }
      }
      
      public function §9F§() : Array
      {
         if(this.§`!#§(this.§@o§) == null)
         {
            §3!5§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§`!#§(this.§@o§).§2j§();
      }
      
      public function §%8§(param1:Array) : void
      {
         this.§`!#§(this.§@o§).§%8§(param1);
      }
      
      public function §-!5§(param1:Number) : void
      {
         this.§`!#§(this.§@o§).§-!5§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§ p§ = null;
         this.§8A§ = null;
         this.§&?§ = null;
      }
   }
}
