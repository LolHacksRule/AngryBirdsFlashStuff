package §=!c§
{
   import § !Y§.§if§;
   import §1!K§.§>!<§;
   import §93§.§"6§;
   import §93§.§6P§;
   import §93§.§?t§;
   import §93§.§^!H§;
   import §@u§.§]!-§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §>d§ extends §=>§
   {
      
      public static const §6!4§:int = 0;
      
      public static const §-!V§:int = 1;
      
      public static const §-!P§:int = 2;
       
      
      public var §!7§:String;
      
      public var §0x§:Class;
      
      public var §`!$§:String = null;
      
      public var § !<§:Vector.<§6P§>;
      
      public var §"!1§:int;
      
      public var §4%§:Number;
      
      public var §@N§:Number;
      
      public var §"!8§:Number;
      
      public var §-! §:Number;
      
      public var §>!V§:Number;
      
      public var §0!P§:Number;
      
      public var §&D§:Number;
      
      public var §`!?§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §[!9§:int;
      
      public var §?!4§:Number;
      
      public var §0`§:String = "";
      
      public var §@!c§:int;
      
      public var §5=§:int;
      
      public var §4W§:GlowFilter;
      
      public var §^t§:Boolean = true;
      
      public var §@!!§:int;
      
      public var §>c§:int;
      
      public var §%M§:Number = 0;
      
      public var §1m§:Number = 0;
      
      public var §'p§:Number = 0;
      
      public var §^d§:Number = 0;
      
      public var §-@§:Boolean = false;
      
      public var §"y§:Boolean = false;
      
      public var §%!"§:MovieClip = null;
      
      public function §>d§(param1:XML, param2:§=>§, param3:§if§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§!7§ = param1.@button;
         if(this.§!7§.length > 0)
         {
            this.§0x§ = §]!-§.§=!M§(this.§!7§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§`!$§ = _loc5_;
         }
         this.§@!c§ = §6!4§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§@!c§ = §-!V§;
            }
         }
         this.§5=§ = §-!P§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§5=§ = §6!4§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§4W§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §-!`§.push(new §-A§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §-!`§.push(new §-A§(_loc18_,this));
         }
         this.§4%§ = mClip.getChildByName("Surface").x;
         this.§@N§ = mClip.getChildByName("Surface").y;
         this.§"!8§ = mClip.getChildByName("Surface").width;
         this.§-! § = mClip.getChildByName("Surface").height;
         this.§>!V§ = mClip.getChildByName("Button_Area1").x - this.§4%§;
         this.§0!P§ = mClip.getChildByName("Button_Area1").y - this.§@N§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§4%§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§@N§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§?!4§ = _loc9_.bottom - this.§@N§ - this.§0!P§;
         this.§&D§ = _loc7_ - this.§>!V§;
         this.§`!?§ = _loc8_ - this.§0!P§;
         if(Math.abs(this.§&D§) < 3)
         {
            this.§&D§ = 0;
         }
         if(Math.abs(this.§`!?§) < 3)
         {
            this.§`!?§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§&D§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§>!V§ - this.§>!V§) / this.§&D§;
         }
         if(this.§`!?§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§0!P§ - this.§0!P§) / this.§`!?§;
         }
         this.§"!1§ = Math.min(_loc10_,_loc11_);
         this.§^t§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§@!!§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§@!!§ = this.§"!1§;
         }
         this.§[!9§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§4%§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§@N§;
            this.mButtonMarginX2 = _loc19_ - this.§>!V§;
            this.mButtonMarginY2 = _loc20_ - this.§0!P§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§^t§)
            {
               this.§[!9§ = 1 + (mClip.getChildByName("Surface").height - this.§0!P§ - this.§0!P§) / this.mButtonMarginY2;
            }
            else
            {
               this.§[!9§ = 1 + (mClip.getChildByName("Surface").width - this.§>!V§ - this.§>!V§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§%!"§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§'p§ = this.§%!"§.x - mClip.getChildByName("Surface").x;
            this.§^d§ = this.§%!"§.y - mClip.getChildByName("Surface").y;
            this.§%M§ = this.§%!"§.x + this.§%!"§.width - (this.§%!"§.x + mClip.getChildByName("Surface").width);
            this.§1m§ = this.§%!"§.y + this.§%!"§.height - (this.§%!"§.y + mClip.getChildByName("Surface").height);
            this.§-@§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§"y§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§>c§ = §6P§.§@!6§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§>c§ = §6P§.§"!c§;
            }
         }
         this.§,!9§();
      }
      
      public function §,!9§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§5!-§ = null;
         var _loc8_:§6P§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§ >§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = § >§;
         }
         this.§ !<§ = new Vector.<§6P§>();
         this.§+k§();
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
            _loc7_ = new §5!-§(_loc6_,this,null,_loc5_);
            §-!`§.push(_loc7_);
            _loc8_ = new §6P§(this.§>c§,_loc4_);
            this.§ !<§.push(_loc8_);
            _loc9_ = this.§>!V§;
            _loc10_ = this.§"!1§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§5=§ == §6!4§)
            {
               _loc9_ = (this.§"!8§ - (_loc10_ - 1) * this.§&D§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§-!`§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§-!`§.push(new param2(_loc12_,_loc7_,new this.§0x§() as MovieClip));
               }
               _loc13_ = _loc7_.§-!`§[_loc7_.§-!`§.length - 1] as § >§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§+n§(_loc14_,this.§`!$§);
                  if(this.§@!c§ == §-!V§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§`!$§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§[!9§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§&D§;
                  _loc13_.y = this.§0!P§ + _loc11_ * this.§`!?§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§"!1§ * this.§[!9§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§"!1§ * this.§[!9§) / this.§"!1§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§"!1§ * this.§[!9§) % this.§"!1§;
                  if(this.§^t§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§&D§ + _loc16_ * this.§"!1§ * this.§&D§;
                     _loc13_.y = this.§0!P§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§0!P§ + _loc18_ * this.§`!?§ + _loc16_ * this.§"!1§ * this.§`!?§;
                  }
               }
               _loc8_.§0c§(_loc13_);
               _loc11_++;
            }
            _loc8_.§7e§("");
            _loc7_.§<T§(this.§"!1§,this.§4%§,this.§@N§,this.§@!!§ * this.§&D§,this.§@!!§ * this.§`!?§,this.§[!9§,this.§@!!§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §]!3§() : int
      {
         return this.§"!1§;
      }
      
      public function get §^W§() : int
      {
         if(this.§]!3§ == 0)
         {
            return 0;
         }
         return this.§-V§(this.§0`§).§?K§.length / this.§]!3§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§^!H§) : void
      {
         var _loc5_:§6P§ = null;
         var _loc4_:§5!-§ = getItemByName(this.§0`§) as §5!-§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§=!b§(_loc4_.§'E§ - 1);
               this.§<!M§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§=!b§(_loc4_.§'E§ + 1);
               this.§<!M§();
            }
         }
         else if(param2.length > 0 && (param1 == §^!H§.LISTENER_EVENT_MOUSE_DOWN || param1 == §^!H§.LISTENER_EVENT_MOUSE_UP) && param3 is §"6§)
         {
            if((_loc5_ = this.§-V§((param3 as §"6§).mParentContainer.mName.toUpperCase())) && param3 is § >§)
            {
               _loc5_.§7e§((param3 as §"6§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §'!Y§(param1:String, param2:int) : void
      {
         var _loc3_:§5!-§ = getItemByName(param1) as §5!-§;
         if(_loc3_)
         {
            _loc3_.§=!b§(param2);
            this.§<!M§();
         }
      }
      
      public function §-V§(param1:String) : §6P§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !<§.length)
         {
            if(param1.toUpperCase() == (this.§ !<§[_loc2_] as §6P§).mName.toUpperCase())
            {
               return this.§ !<§[_loc2_] as §6P§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §'j§(param1:String) : void
      {
         this.§0`§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §-!`§.length)
         {
            if(§-!`§[_loc2_] is §5!-§)
            {
               if((§-!`§[_loc2_] as §5!-§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§-!`§[_loc2_] as §5!-§).setActiveStatus(true);
                  if(this.§-@§)
                  {
                     this.§%!"§.x = (§-!`§[_loc2_] as §5!-§).x + this.§'p§;
                     this.§%!"§.width = (§-!`§[_loc2_] as §5!-§).width + this.§%M§;
                  }
                  if(this.§"y§)
                  {
                     this.§%!"§.y = (§-!`§[_loc2_] as §5!-§).y + this.§^d§;
                     this.§%!"§.height = (§-!`§[_loc2_] as §5!-§).height + this.§1m§;
                  }
               }
               else
               {
                  (§-!`§[_loc2_] as §5!-§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§<!M§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§6P§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§ !<§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §<!M§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§5!-§ = getItemByName(this.§0`§) as §5!-§;
         if(_loc1_)
         {
            if(_loc1_.§'E§ > 0)
            {
               (getItemByName("Button_Scroll1") as §-A§).setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §-A§).setComponentState(§?t§.§@G§);
            }
            if(_loc1_.§'E§ < _loc1_.§%e§ - 1)
            {
               (getItemByName("Button_Scroll2") as §-A§).setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §-A§).setComponentState(§?t§.§@G§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §-A§).setComponentState(§?t§.§@G§);
            (getItemByName("Button_Scroll2") as §-A§).setComponentState(§?t§.§@G§);
         }
      }
      
      public function §+k§() : void
      {
         var _loc2_:§5!-§ = null;
         var _loc1_:int = §-!`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §-!`§[_loc1_] as §5!-§;
            if(_loc2_)
            {
               _loc2_.clear();
               §-!`§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§'j§("");
      }
      
      public function §6M§() : void
      {
         var _loc1_:§6P§ = null;
         for each(_loc1_ in this.§ !<§)
         {
            _loc1_.§6M§();
         }
      }
      
      public function §%! §() : Array
      {
         if(this.§-V§(this.§0`§) == null)
         {
            §>!<§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§-V§(this.§0`§).§,2§();
      }
      
      public function §=d§(param1:Array) : void
      {
         this.§-V§(this.§0`§).§=d§(param1);
      }
      
      public function §@3§(param1:Number) : void
      {
         this.§-V§(this.§0`§).§@3§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§0x§ = null;
         this.§ !<§ = null;
         this.§4W§ = null;
      }
   }
}
