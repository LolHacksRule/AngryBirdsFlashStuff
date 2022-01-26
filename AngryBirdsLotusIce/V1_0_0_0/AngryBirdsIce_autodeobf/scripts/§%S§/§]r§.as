package §%S§
{
   import §'m§.§^S§;
   import §87§.§]T§;
   import com.rovio.assets.§-!1§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import §in§.§ !3§;
   import §in§.§%K§;
   import §in§.§9c§;
   import §in§.§]R§;
   
   public class §]r§ extends §,1§
   {
      
      public static const §^g§:int = 0;
      
      public static const §],§:int = 1;
      
      public static const §`Y§:int = 2;
       
      
      public var §8!$§:String;
      
      public var §6T§:Class;
      
      public var §'y§:String = null;
      
      public var §-C§:Vector.<§ !3§>;
      
      public var §;!#§:int;
      
      public var § m§:Number;
      
      public var §;!G§:Number;
      
      public var §#x§:Number;
      
      public var §<!C§:Number;
      
      public var §=!4§:Number;
      
      public var §3T§:Number;
      
      public var §"+§:Number;
      
      public var §2q§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §"<§:int;
      
      public var §@?§:Number;
      
      public var §'3§:String = "";
      
      public var §0^§:int;
      
      public var §[m§:int;
      
      public var §#Z§:GlowFilter;
      
      public var §[O§:Boolean = true;
      
      public var § !6§:int;
      
      public var §!,§:int;
      
      public var §6r§:Number = 0;
      
      public var §06§:Number = 0;
      
      public var §%!E§:Number = 0;
      
      public var §9<§:Number = 0;
      
      public var §7H§:Boolean = false;
      
      public var §#!§:Boolean = false;
      
      public var §+3§:MovieClip = null;
      
      public function §]r§(param1:XML, param2:§,1§, param3:§]T§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§8!$§ = param1.@button;
         if(this.§8!$§.length > 0)
         {
            this.§6T§ = §-!1§.§-T§(this.§8!$§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§'y§ = _loc5_;
         }
         this.§0^§ = §^g§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§0^§ = §],§;
            }
         }
         this.§[m§ = §`Y§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§[m§ = §^g§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§#Z§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §0V§.push(new §%X§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §0V§.push(new §%X§(_loc18_,this));
         }
         this.§ m§ = mClip.getChildByName("Surface").x;
         this.§;!G§ = mClip.getChildByName("Surface").y;
         this.§#x§ = mClip.getChildByName("Surface").width;
         this.§<!C§ = mClip.getChildByName("Surface").height;
         this.§=!4§ = mClip.getChildByName("Button_Area1").x - this.§ m§;
         this.§3T§ = mClip.getChildByName("Button_Area1").y - this.§;!G§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§ m§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§;!G§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§@?§ = _loc9_.bottom - this.§;!G§ - this.§3T§;
         this.§"+§ = _loc7_ - this.§=!4§;
         this.§2q§ = _loc8_ - this.§3T§;
         if(Math.abs(this.§"+§) < 3)
         {
            this.§"+§ = 0;
         }
         if(Math.abs(this.§2q§) < 3)
         {
            this.§2q§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§"+§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§=!4§ - this.§=!4§) / this.§"+§;
         }
         if(this.§2q§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§3T§ - this.§3T§) / this.§2q§;
         }
         this.§;!#§ = Math.min(_loc10_,_loc11_);
         this.§[O§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§ !6§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§ !6§ = this.§;!#§;
         }
         this.§"<§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§ m§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§;!G§;
            this.mButtonMarginX2 = _loc19_ - this.§=!4§;
            this.mButtonMarginY2 = _loc20_ - this.§3T§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§[O§)
            {
               this.§"<§ = 1 + (mClip.getChildByName("Surface").height - this.§3T§ - this.§3T§) / this.mButtonMarginY2;
            }
            else
            {
               this.§"<§ = 1 + (mClip.getChildByName("Surface").width - this.§=!4§ - this.§=!4§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§+3§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§%!E§ = this.§+3§.x - mClip.getChildByName("Surface").x;
            this.§9<§ = this.§+3§.y - mClip.getChildByName("Surface").y;
            this.§6r§ = this.§+3§.x + this.§+3§.width - (this.§+3§.x + mClip.getChildByName("Surface").width);
            this.§06§ = this.§+3§.y + this.§+3§.height - (this.§+3§.y + mClip.getChildByName("Surface").height);
            this.§7H§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§#!§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§!,§ = § !3§.§5W§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§!,§ = § !3§.§>!<§;
            }
         }
         this.§`!<§();
      }
      
      public function §`!<§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§"1§ = null;
         var _loc8_:§ !3§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§>!>§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §>!>§;
         }
         this.§-C§ = new Vector.<§ !3§>();
         this.§!<§();
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
            _loc7_ = new §"1§(_loc6_,this,null,_loc5_);
            §0V§.push(_loc7_);
            _loc8_ = new § !3§(this.§!,§,_loc4_);
            this.§-C§.push(_loc8_);
            _loc9_ = this.§=!4§;
            _loc10_ = this.§;!#§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§[m§ == §^g§)
            {
               _loc9_ = (this.§#x§ - (_loc10_ - 1) * this.§"+§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§0V§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§0V§.push(new param2(_loc12_,_loc7_,new this.§6T§() as MovieClip));
               }
               _loc13_ = _loc7_.§0V§[_loc7_.§0V§.length - 1] as §>!>§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§9h§(_loc14_,this.§'y§);
                  if(this.§0^§ == §],§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§'y§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§"<§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§"+§;
                  _loc13_.y = this.§3T§ + _loc11_ * this.§2q§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§;!#§ * this.§"<§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§;!#§ * this.§"<§) / this.§;!#§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§;!#§ * this.§"<§) % this.§;!#§;
                  if(this.§[O§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§"+§ + _loc16_ * this.§;!#§ * this.§"+§;
                     _loc13_.y = this.§3T§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§3T§ + _loc18_ * this.§2q§ + _loc16_ * this.§;!#§ * this.§2q§;
                  }
               }
               _loc8_.§5n§(_loc13_);
               _loc11_++;
            }
            _loc8_.§!?§("");
            _loc7_.§3!+§(this.§;!#§,this.§ m§,this.§;!G§,this.§ !6§ * this.§"+§,this.§ !6§ * this.§2q§,this.§"<§,this.§ !6§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §@o§() : int
      {
         return this.§;!#§;
      }
      
      public function get §+%§() : int
      {
         if(this.§@o§ == 0)
         {
            return 0;
         }
         return this.§4g§(this.§'3§).§17§.length / this.§@o§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§%K§) : void
      {
         var _loc5_:§ !3§ = null;
         var _loc4_:§"1§ = getItemByName(this.§'3§) as §"1§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§]!%§(_loc4_.§?§ - 1);
               this.§;A§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§]!%§(_loc4_.§?§ + 1);
               this.§;A§();
            }
         }
         else if(param2.length > 0 && (param1 == §%K§.LISTENER_EVENT_MOUSE_DOWN || param1 == §%K§.LISTENER_EVENT_MOUSE_UP) && param3 is §]R§)
         {
            if((_loc5_ = this.§4g§((param3 as §]R§).mParentContainer.mName.toUpperCase())) && param3 is §>!>§)
            {
               _loc5_.§!?§((param3 as §]R§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §<!G§(param1:String, param2:int) : void
      {
         var _loc3_:§"1§ = getItemByName(param1) as §"1§;
         if(_loc3_)
         {
            _loc3_.§]!%§(param2);
            this.§;A§();
         }
      }
      
      public function §4g§(param1:String) : § !3§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-C§.length)
         {
            if(param1.toUpperCase() == (this.§-C§[_loc2_] as § !3§).mName.toUpperCase())
            {
               return this.§-C§[_loc2_] as § !3§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-!?§(param1:String) : void
      {
         this.§'3§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §0V§.length)
         {
            if(§0V§[_loc2_] is §"1§)
            {
               if((§0V§[_loc2_] as §"1§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§0V§[_loc2_] as §"1§).setActiveStatus(true);
                  if(this.§7H§)
                  {
                     this.§+3§.x = (§0V§[_loc2_] as §"1§).x + this.§%!E§;
                     this.§+3§.width = (§0V§[_loc2_] as §"1§).width + this.§6r§;
                  }
                  if(this.§#!§)
                  {
                     this.§+3§.y = (§0V§[_loc2_] as §"1§).y + this.§9<§;
                     this.§+3§.height = (§0V§[_loc2_] as §"1§).height + this.§06§;
                  }
               }
               else
               {
                  (§0V§[_loc2_] as §"1§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§;A§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§ !3§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§-C§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §;A§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§"1§ = getItemByName(this.§'3§) as §"1§;
         if(_loc1_)
         {
            if(_loc1_.§?§ > 0)
            {
               (getItemByName("Button_Scroll1") as §%X§).setComponentState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §%X§).setComponentState(§9c§.§@<§);
            }
            if(_loc1_.§?§ < _loc1_.§0!!§ - 1)
            {
               (getItemByName("Button_Scroll2") as §%X§).setComponentState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §%X§).setComponentState(§9c§.§@<§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §%X§).setComponentState(§9c§.§@<§);
            (getItemByName("Button_Scroll2") as §%X§).setComponentState(§9c§.§@<§);
         }
      }
      
      public function §!<§() : void
      {
         var _loc2_:§"1§ = null;
         var _loc1_:int = §0V§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §0V§[_loc1_] as §"1§;
            if(_loc2_)
            {
               _loc2_.clear();
               §0V§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§-!?§("");
      }
      
      public function §8e§() : void
      {
         var _loc1_:§ !3§ = null;
         for each(_loc1_ in this.§-C§)
         {
            _loc1_.§8e§();
         }
      }
      
      public function §"!E§() : Array
      {
         if(this.§4g§(this.§'3§) == null)
         {
            §^S§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§4g§(this.§'3§).§!G§();
      }
      
      public function §3l§(param1:Array) : void
      {
         this.§4g§(this.§'3§).§3l§(param1);
      }
      
      public function §]!'§(param1:Number) : void
      {
         this.§4g§(this.§'3§).§]!'§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§6T§ = null;
         this.§-C§ = null;
         this.§#Z§ = null;
      }
   }
}
