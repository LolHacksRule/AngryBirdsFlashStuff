package §[h§
{
   import §+$§.§ !5§;
   import §+$§.§"!p§;
   import §+$§.§5"§;
   import §+$§.§[!a§;
   import §0i§.§4!%§;
   import §3<§.§-2§;
   import §<l§.§@0§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#<§ extends § !&§
   {
      
      public static const §9G§:int = 0;
      
      public static const §&G§:int = 1;
      
      public static const §%v§:int = 2;
       
      
      public var §9j§:String;
      
      public var §7W§:Class;
      
      public var §7r§:String = null;
      
      public var §>`§:Vector.<§ !5§>;
      
      public var §@!;§:int;
      
      public var §#h§:Number;
      
      public var §"A§:Number;
      
      public var §+!%§:Number;
      
      public var §=K§:Number;
      
      public var §!!2§:Number;
      
      public var §'!d§:Number;
      
      public var §%e§:Number;
      
      public var § z§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §;o§:int;
      
      public var §<!q§:Number;
      
      public var §6<§:String = "";
      
      public var §0!0§:int;
      
      public var §4!A§:int;
      
      public var §&!S§:GlowFilter;
      
      public var §;!V§:Boolean = true;
      
      public var §;M§:int;
      
      public var §@[§:int;
      
      public var § §:Number = 0;
      
      public var §8K§:Number = 0;
      
      public var §,!_§:Number = 0;
      
      public var §>!c§:Number = 0;
      
      public var §#!g§:Boolean = false;
      
      public var §?#§:Boolean = false;
      
      public var §3!"§:MovieClip = null;
      
      public function §#<§(param1:XML, param2:§ !&§, param3:§-2§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§9j§ = param1.@button;
         if(this.§9j§.length > 0)
         {
            this.§7W§ = §@0§.§5+§(this.§9j§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§7r§ = _loc5_;
         }
         this.§0!0§ = §9G§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§0!0§ = §&G§;
            }
         }
         this.§4!A§ = §%v§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§4!A§ = §9G§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§&!S§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            § k§.push(new §49§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            § k§.push(new §49§(_loc18_,this));
         }
         this.§#h§ = mClip.getChildByName("Surface").x;
         this.§"A§ = mClip.getChildByName("Surface").y;
         this.§+!%§ = mClip.getChildByName("Surface").width;
         this.§=K§ = mClip.getChildByName("Surface").height;
         this.§!!2§ = mClip.getChildByName("Button_Area1").x - this.§#h§;
         this.§'!d§ = mClip.getChildByName("Button_Area1").y - this.§"A§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§#h§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§"A§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§<!q§ = _loc9_.bottom - this.§"A§ - this.§'!d§;
         this.§%e§ = _loc7_ - this.§!!2§;
         this.§ z§ = _loc8_ - this.§'!d§;
         if(Math.abs(this.§%e§) < 3)
         {
            this.§%e§ = 0;
         }
         if(Math.abs(this.§ z§) < 3)
         {
            this.§ z§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§%e§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§!!2§ - this.§!!2§) / this.§%e§;
         }
         if(this.§ z§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§'!d§ - this.§'!d§) / this.§ z§;
         }
         this.§@!;§ = Math.min(_loc10_,_loc11_);
         this.§;!V§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§;M§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§;M§ = this.§@!;§;
         }
         this.§;o§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§#h§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§"A§;
            this.mButtonMarginX2 = _loc19_ - this.§!!2§;
            this.mButtonMarginY2 = _loc20_ - this.§'!d§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§;!V§)
            {
               this.§;o§ = 1 + (mClip.getChildByName("Surface").height - this.§'!d§ - this.§'!d§) / this.mButtonMarginY2;
            }
            else
            {
               this.§;o§ = 1 + (mClip.getChildByName("Surface").width - this.§!!2§ - this.§!!2§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§3!"§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§,!_§ = this.§3!"§.x - mClip.getChildByName("Surface").x;
            this.§>!c§ = this.§3!"§.y - mClip.getChildByName("Surface").y;
            this.§ § = this.§3!"§.x + this.§3!"§.width - (this.§3!"§.x + mClip.getChildByName("Surface").width);
            this.§8K§ = this.§3!"§.y + this.§3!"§.height - (this.§3!"§.y + mClip.getChildByName("Surface").height);
            this.§#!g§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§?#§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§@[§ = § !5§.§%u§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§@[§ = § !5§.§@?§;
            }
         }
         this.§]u§();
      }
      
      public function §]u§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§#!7§ = null;
         var _loc8_:§ !5§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§+C§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §+C§;
         }
         this.§>`§ = new Vector.<§ !5§>();
         this.§&!D§();
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
            _loc7_ = new §#!7§(_loc6_,this,null,_loc5_);
            § k§.push(_loc7_);
            _loc8_ = new § !5§(this.§@[§,_loc4_);
            this.§>`§.push(_loc8_);
            _loc9_ = this.§!!2§;
            _loc10_ = this.§@!;§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§4!A§ == §9G§)
            {
               _loc9_ = (this.§+!%§ - (_loc10_ - 1) * this.§%e§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§ k§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§ k§.push(new param2(_loc12_,_loc7_,new this.§7W§() as MovieClip));
               }
               _loc13_ = _loc7_.§ k§[_loc7_.§ k§.length - 1] as §+C§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§-g§(_loc14_,this.§7r§);
                  if(this.§0!0§ == §&G§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§7r§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§;o§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§%e§;
                  _loc13_.y = this.§'!d§ + _loc11_ * this.§ z§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§@!;§ * this.§;o§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§@!;§ * this.§;o§) / this.§@!;§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§@!;§ * this.§;o§) % this.§@!;§;
                  if(this.§;!V§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§%e§ + _loc16_ * this.§@!;§ * this.§%e§;
                     _loc13_.y = this.§'!d§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§'!d§ + _loc18_ * this.§ z§ + _loc16_ * this.§@!;§ * this.§ z§;
                  }
               }
               _loc8_.§%!F§(_loc13_);
               _loc11_++;
            }
            _loc8_.§8!h§("");
            _loc7_.§97§(this.§@!;§,this.§#h§,this.§"A§,this.§;M§ * this.§%e§,this.§;M§ * this.§ z§,this.§;o§,this.§;M§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §%!^§() : int
      {
         return this.§@!;§;
      }
      
      public function get §9A§() : int
      {
         if(this.§%!^§ == 0)
         {
            return 0;
         }
         return this.§"0§(this.§6<§).§5d§.length / this.§%!^§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§[!a§) : void
      {
         var _loc5_:§ !5§ = null;
         var _loc4_:§#!7§ = getItemByName(this.§6<§) as §#!7§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§?!B§(_loc4_.§@=§ - 1);
               this.§`!C§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§?!B§(_loc4_.§@=§ + 1);
               this.§`!C§();
            }
         }
         else if(param2.length > 0 && (param1 == §[!a§.LISTENER_EVENT_MOUSE_DOWN || param1 == §[!a§.LISTENER_EVENT_MOUSE_UP) && param3 is §5"§)
         {
            if((_loc5_ = this.§"0§((param3 as §5"§).mParentContainer.mName.toUpperCase())) && param3 is §+C§)
            {
               _loc5_.§8!h§((param3 as §5"§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §3!m§(param1:String, param2:int) : void
      {
         var _loc3_:§#!7§ = getItemByName(param1) as §#!7§;
         if(_loc3_)
         {
            _loc3_.§?!B§(param2);
            this.§`!C§();
         }
      }
      
      public function §"0§(param1:String) : § !5§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>`§.length)
         {
            if(param1.toUpperCase() == (this.§>`§[_loc2_] as § !5§).mName.toUpperCase())
            {
               return this.§>`§[_loc2_] as § !5§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<!,§(param1:String) : void
      {
         this.§6<§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < § k§.length)
         {
            if(§ k§[_loc2_] is §#!7§)
            {
               if((§ k§[_loc2_] as §#!7§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§ k§[_loc2_] as §#!7§).setActiveStatus(true);
                  if(this.§#!g§)
                  {
                     this.§3!"§.x = (§ k§[_loc2_] as §#!7§).x + this.§,!_§;
                     this.§3!"§.width = (§ k§[_loc2_] as §#!7§).width + this.§ §;
                  }
                  if(this.§?#§)
                  {
                     this.§3!"§.y = (§ k§[_loc2_] as §#!7§).y + this.§>!c§;
                     this.§3!"§.height = (§ k§[_loc2_] as §#!7§).height + this.§8K§;
                  }
               }
               else
               {
                  (§ k§[_loc2_] as §#!7§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§`!C§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§ !5§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§>`§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §`!C§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§#!7§ = getItemByName(this.§6<§) as §#!7§;
         if(_loc1_)
         {
            if(_loc1_.§@=§ > 0)
            {
               (getItemByName("Button_Scroll1") as §49§).setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §49§).setComponentState(§"!p§.§>!W§);
            }
            if(_loc1_.§@=§ < _loc1_.§6#§ - 1)
            {
               (getItemByName("Button_Scroll2") as §49§).setComponentState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §49§).setComponentState(§"!p§.§>!W§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §49§).setComponentState(§"!p§.§>!W§);
            (getItemByName("Button_Scroll2") as §49§).setComponentState(§"!p§.§>!W§);
         }
      }
      
      public function §&!D§() : void
      {
         var _loc2_:§#!7§ = null;
         var _loc1_:int = § k§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § k§[_loc1_] as §#!7§;
            if(_loc2_)
            {
               _loc2_.clear();
               § k§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§<!,§("");
      }
      
      public function §'!7§() : void
      {
         var _loc1_:§ !5§ = null;
         for each(_loc1_ in this.§>`§)
         {
            _loc1_.§'!7§();
         }
      }
      
      public function §1`§() : Array
      {
         if(this.§"0§(this.§6<§) == null)
         {
            §4!%§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§"0§(this.§6<§).§#6§();
      }
      
      public function §"!o§(param1:Array) : void
      {
         this.§"0§(this.§6<§).§"!o§(param1);
      }
      
      public function §1s§(param1:Number) : void
      {
         this.§"0§(this.§6<§).§1s§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§7W§ = null;
         this.§>`§ = null;
         this.§&!S§ = null;
      }
   }
}
