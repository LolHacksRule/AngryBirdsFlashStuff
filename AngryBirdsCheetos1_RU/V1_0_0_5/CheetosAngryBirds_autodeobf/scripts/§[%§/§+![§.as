package §[%§
{
   import §!4§.§=!Z§;
   import §'Y§.§;J§;
   import §<s§.§&3§;
   import §<s§.§&4§;
   import §<s§.§'k§;
   import §<s§.§]@§;
   import §[-§.§#!,§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §+![§ extends §&a§
   {
      
      public static const §>c§:int = 0;
      
      public static const §]!'§:int = 1;
      
      public static const §@!M§:int = 2;
       
      
      public var §9r§:String;
      
      public var §2!>§:Class;
      
      public var §1D§:String = null;
      
      public var §6<§:Vector.<§&3§>;
      
      public var §^!T§:int;
      
      public var §2!Q§:Number;
      
      public var §7J§:Number;
      
      public var §-Z§:Number;
      
      public var §`E§:Number;
      
      public var §]'§:Number;
      
      public var §%%§:Number;
      
      public var §>I§:Number;
      
      public var §`@§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §6A§:int;
      
      public var §3C§:Number;
      
      public var §9!%§:String = "";
      
      public var §7I§:int;
      
      public var §`C§:int;
      
      public var §;x§:GlowFilter;
      
      public var §?!]§:Boolean = true;
      
      public var §"z§:int;
      
      public var §;v§:int;
      
      public var §]u§:Number = 0;
      
      public var §2t§:Number = 0;
      
      public var §%p§:Number = 0;
      
      public var §1q§:Number = 0;
      
      public var §,j§:Boolean = false;
      
      public var §3"§:Boolean = false;
      
      public var §]!4§:MovieClip = null;
      
      public function §+![§(param1:XML, param2:§&a§, param3:§;J§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§9r§ = param1.@button;
         if(this.§9r§.length > 0)
         {
            this.§2!>§ = §#!,§.§-<§(this.§9r§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§1D§ = _loc5_;
         }
         this.§7I§ = §>c§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§7I§ = §]!'§;
            }
         }
         this.§`C§ = §@!M§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§`C§ = §>c§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§;x§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §-8§.push(new §6!§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §-8§.push(new §6!§(_loc18_,this));
         }
         this.§2!Q§ = mClip.getChildByName("Surface").x;
         this.§7J§ = mClip.getChildByName("Surface").y;
         this.§-Z§ = mClip.getChildByName("Surface").width;
         this.§`E§ = mClip.getChildByName("Surface").height;
         this.§]'§ = mClip.getChildByName("Button_Area1").x - this.§2!Q§;
         this.§%%§ = mClip.getChildByName("Button_Area1").y - this.§7J§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§2!Q§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§7J§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§3C§ = _loc9_.bottom - this.§7J§ - this.§%%§;
         this.§>I§ = _loc7_ - this.§]'§;
         this.§`@§ = _loc8_ - this.§%%§;
         if(Math.abs(this.§>I§) < 3)
         {
            this.§>I§ = 0;
         }
         if(Math.abs(this.§`@§) < 3)
         {
            this.§`@§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§>I§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§]'§ - this.§]'§) / this.§>I§;
         }
         if(this.§`@§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§%%§ - this.§%%§) / this.§`@§;
         }
         this.§^!T§ = Math.min(_loc10_,_loc11_);
         this.§?!]§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§"z§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§"z§ = this.§^!T§;
         }
         this.§6A§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§2!Q§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§7J§;
            this.mButtonMarginX2 = _loc19_ - this.§]'§;
            this.mButtonMarginY2 = _loc20_ - this.§%%§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§?!]§)
            {
               this.§6A§ = 1 + (mClip.getChildByName("Surface").height - this.§%%§ - this.§%%§) / this.mButtonMarginY2;
            }
            else
            {
               this.§6A§ = 1 + (mClip.getChildByName("Surface").width - this.§]'§ - this.§]'§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§]!4§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§%p§ = this.§]!4§.x - mClip.getChildByName("Surface").x;
            this.§1q§ = this.§]!4§.y - mClip.getChildByName("Surface").y;
            this.§]u§ = this.§]!4§.x + this.§]!4§.width - (this.§]!4§.x + mClip.getChildByName("Surface").width);
            this.§2t§ = this.§]!4§.y + this.§]!4§.height - (this.§]!4§.y + mClip.getChildByName("Surface").height);
            this.§,j§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§3"§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§;v§ = §&3§.§ !I§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§;v§ = §&3§.§4!$§;
            }
         }
         this.§ B§();
      }
      
      public function § B§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§'5§ = null;
         var _loc8_:§&3§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§`!U§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §`!U§;
         }
         this.§6<§ = new Vector.<§&3§>();
         this.§5!"§();
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
            _loc7_ = new §'5§(_loc6_,this,null,_loc5_);
            §-8§.push(_loc7_);
            _loc8_ = new §&3§(this.§;v§,_loc4_);
            this.§6<§.push(_loc8_);
            _loc9_ = this.§]'§;
            _loc10_ = this.§^!T§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§`C§ == §>c§)
            {
               _loc9_ = (this.§-Z§ - (_loc10_ - 1) * this.§>I§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§-8§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§-8§.push(new param2(_loc12_,_loc7_,new this.§2!>§() as MovieClip));
               }
               _loc13_ = _loc7_.§-8§[_loc7_.§-8§.length - 1] as §`!U§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§!o§(_loc14_,this.§1D§);
                  if(this.§7I§ == §]!'§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§1D§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§6A§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§>I§;
                  _loc13_.y = this.§%%§ + _loc11_ * this.§`@§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§^!T§ * this.§6A§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§^!T§ * this.§6A§) / this.§^!T§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§^!T§ * this.§6A§) % this.§^!T§;
                  if(this.§?!]§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§>I§ + _loc16_ * this.§^!T§ * this.§>I§;
                     _loc13_.y = this.§%%§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§%%§ + _loc18_ * this.§`@§ + _loc16_ * this.§^!T§ * this.§`@§;
                  }
               }
               _loc8_.§0W§(_loc13_);
               _loc11_++;
            }
            _loc8_.§7§("");
            _loc7_.§-h§(this.§^!T§,this.§2!Q§,this.§7J§,this.§"z§ * this.§>I§,this.§"z§ * this.§`@§,this.§6A§,this.§"z§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §6!9§() : int
      {
         return this.§^!T§;
      }
      
      public function get §@p§() : int
      {
         if(this.§6!9§ == 0)
         {
            return 0;
         }
         return this.§<!2§(this.§9!%§).§`!P§.length / this.§6!9§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§]@§) : void
      {
         var _loc5_:§&3§ = null;
         var _loc4_:§'5§ = getItemByName(this.§9!%§) as §'5§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§1_§(_loc4_.§ W§ - 1);
               this.§?2§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§1_§(_loc4_.§ W§ + 1);
               this.§?2§();
            }
         }
         else if(param2.length > 0 && (param1 == §]@§.LISTENER_EVENT_MOUSE_DOWN || param1 == §]@§.LISTENER_EVENT_MOUSE_UP) && param3 is §'k§)
         {
            if((_loc5_ = this.§<!2§((param3 as §'k§).mParentContainer.mName.toUpperCase())) && param3 is §`!U§)
            {
               _loc5_.§7§((param3 as §'k§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §use§(param1:String, param2:int) : void
      {
         var _loc3_:§'5§ = getItemByName(param1) as §'5§;
         if(_loc3_)
         {
            _loc3_.§1_§(param2);
            this.§?2§();
         }
      }
      
      public function §<!2§(param1:String) : §&3§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6<§.length)
         {
            if(param1.toUpperCase() == (this.§6<§[_loc2_] as §&3§).mName.toUpperCase())
            {
               return this.§6<§[_loc2_] as §&3§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5x§(param1:String) : void
      {
         this.§9!%§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §-8§.length)
         {
            if(§-8§[_loc2_] is §'5§)
            {
               if((§-8§[_loc2_] as §'5§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§-8§[_loc2_] as §'5§).setActiveStatus(true);
                  if(this.§,j§)
                  {
                     this.§]!4§.x = (§-8§[_loc2_] as §'5§).x + this.§%p§;
                     this.§]!4§.width = (§-8§[_loc2_] as §'5§).width + this.§]u§;
                  }
                  if(this.§3"§)
                  {
                     this.§]!4§.y = (§-8§[_loc2_] as §'5§).y + this.§1q§;
                     this.§]!4§.height = (§-8§[_loc2_] as §'5§).height + this.§2t§;
                  }
               }
               else
               {
                  (§-8§[_loc2_] as §'5§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§?2§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§&3§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§6<§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §?2§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§'5§ = getItemByName(this.§9!%§) as §'5§;
         if(_loc1_)
         {
            if(_loc1_.§ W§ > 0)
            {
               (getItemByName("Button_Scroll1") as §6!§).setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §6!§).setComponentState(§&4§.§'!U§);
            }
            if(_loc1_.§ W§ < _loc1_.§0!]§ - 1)
            {
               (getItemByName("Button_Scroll2") as §6!§).setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §6!§).setComponentState(§&4§.§'!U§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §6!§).setComponentState(§&4§.§'!U§);
            (getItemByName("Button_Scroll2") as §6!§).setComponentState(§&4§.§'!U§);
         }
      }
      
      public function §5!"§() : void
      {
         var _loc2_:§'5§ = null;
         var _loc1_:int = §-8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §-8§[_loc1_] as §'5§;
            if(_loc2_)
            {
               _loc2_.clear();
               §-8§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§5x§("");
      }
      
      public function §#!B§() : void
      {
         var _loc1_:§&3§ = null;
         for each(_loc1_ in this.§6<§)
         {
            _loc1_.§#!B§();
         }
      }
      
      public function §7m§() : Array
      {
         if(this.§<!2§(this.§9!%§) == null)
         {
            §=!Z§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§<!2§(this.§9!%§).§4C§();
      }
      
      public function §=-§(param1:Array) : void
      {
         this.§<!2§(this.§9!%§).§=-§(param1);
      }
      
      public function §-!@§(param1:Number) : void
      {
         this.§<!2§(this.§9!%§).§-!@§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§2!>§ = null;
         this.§6<§ = null;
         this.§;x§ = null;
      }
   }
}
