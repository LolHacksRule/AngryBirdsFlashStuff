package §1!E§
{
   import §"x§.§-8§;
   import §>7§.§&! §;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §>7§.§4f§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §31§ extends §#?§
   {
      
      public static const §[p§:int = 0;
      
      public static const §#[§:int = 1;
      
      public static const §8!9§:int = 2;
       
      
      public var §^!2§:String;
      
      public var §,t§:Class;
      
      public var §<!]§:String = null;
      
      public var §-P§:Vector.<§4f§>;
      
      public var §6D§:int;
      
      public var §&W§:Number;
      
      public var §9V§:Number;
      
      public var §,!P§:Number;
      
      public var §7!S§:Number;
      
      public var §<@§:Number;
      
      public var §@D§:Number;
      
      public var §7q§:Number;
      
      public var §+!9§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §^!B§:int;
      
      public var §%!J§:Number;
      
      public var §!=§:String = "";
      
      public var §<s§:int;
      
      public var §<!X§:int;
      
      public var §1O§:GlowFilter;
      
      public var §<!4§:Boolean = true;
      
      public var §%!q§:int;
      
      public var §2B§:int;
      
      public var §>!+§:Number = 0;
      
      public var §!l§:Number = 0;
      
      public var §do §:Number = 0;
      
      public var §-!l§:Number = 0;
      
      public var §1B§:Boolean = false;
      
      public var §9^§:Boolean = false;
      
      public var §-!7§:MovieClip = null;
      
      public function §31§(param1:XML, param2:§#?§, param3:§4`§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§^!2§ = param1.@button;
         if(this.§^!2§.length > 0)
         {
            this.§,t§ = §`!t§.§=J§(this.§^!2§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§<!]§ = _loc5_;
         }
         this.§<s§ = §[p§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§<s§ = §#[§;
            }
         }
         this.§<!X§ = §8!9§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§<!X§ = §[p§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§1O§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §6!§.push(new §==§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §6!§.push(new §==§(_loc18_,this));
         }
         this.§&W§ = mClip.getChildByName("Surface").x;
         this.§9V§ = mClip.getChildByName("Surface").y;
         this.§,!P§ = mClip.getChildByName("Surface").width;
         this.§7!S§ = mClip.getChildByName("Surface").height;
         this.§<@§ = mClip.getChildByName("Button_Area1").x - this.§&W§;
         this.§@D§ = mClip.getChildByName("Button_Area1").y - this.§9V§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§&W§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§9V§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§%!J§ = _loc9_.bottom - this.§9V§ - this.§@D§;
         this.§7q§ = _loc7_ - this.§<@§;
         this.§+!9§ = _loc8_ - this.§@D§;
         if(Math.abs(this.§7q§) < 3)
         {
            this.§7q§ = 0;
         }
         if(Math.abs(this.§+!9§) < 3)
         {
            this.§+!9§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§7q§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§<@§ - this.§<@§) / this.§7q§;
         }
         if(this.§+!9§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§@D§ - this.§@D§) / this.§+!9§;
         }
         this.§6D§ = Math.min(_loc10_,_loc11_);
         this.§<!4§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§%!q§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§%!q§ = this.§6D§;
         }
         this.§^!B§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§&W§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§9V§;
            this.mButtonMarginX2 = _loc19_ - this.§<@§;
            this.mButtonMarginY2 = _loc20_ - this.§@D§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§<!4§)
            {
               this.§^!B§ = 1 + (mClip.getChildByName("Surface").height - this.§@D§ - this.§@D§) / this.mButtonMarginY2;
            }
            else
            {
               this.§^!B§ = 1 + (mClip.getChildByName("Surface").width - this.§<@§ - this.§<@§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§-!7§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§do § = this.§-!7§.x - mClip.getChildByName("Surface").x;
            this.§-!l§ = this.§-!7§.y - mClip.getChildByName("Surface").y;
            this.§>!+§ = this.§-!7§.x + this.§-!7§.width - (this.§-!7§.x + mClip.getChildByName("Surface").width);
            this.§!l§ = this.§-!7§.y + this.§-!7§.height - (this.§-!7§.y + mClip.getChildByName("Surface").height);
            this.§1B§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§9^§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§2B§ = §4f§.§8k§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§2B§ = §4f§.§8!!§;
            }
         }
         this.§@K§();
      }
      
      public function §@K§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§,!5§ = null;
         var _loc8_:§4f§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§,D§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §,D§;
         }
         this.§-P§ = new Vector.<§4f§>();
         this.§true§();
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
            _loc7_ = new §,!5§(_loc6_,this,null,_loc5_);
            §6!§.push(_loc7_);
            _loc8_ = new §4f§(this.§2B§,_loc4_);
            this.§-P§.push(_loc8_);
            _loc9_ = this.§<@§;
            _loc10_ = this.§6D§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§<!X§ == §[p§)
            {
               _loc9_ = (this.§,!P§ - (_loc10_ - 1) * this.§7q§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§6!§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§6!§.push(new param2(_loc12_,_loc7_,new this.§,t§() as MovieClip));
               }
               _loc13_ = _loc7_.§6!§[_loc7_.§6!§.length - 1] as §,D§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§<!]§);
                  if(this.§<s§ == §#[§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§<!]§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§^!B§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§7q§;
                  _loc13_.y = this.§@D§ + _loc11_ * this.§+!9§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§6D§ * this.§^!B§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§6D§ * this.§^!B§) / this.§6D§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§6D§ * this.§^!B§) % this.§6D§;
                  if(this.§<!4§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§7q§ + _loc16_ * this.§6D§ * this.§7q§;
                     _loc13_.y = this.§@D§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§@D§ + _loc18_ * this.§+!9§ + _loc16_ * this.§6D§ * this.§+!9§;
                  }
               }
               _loc8_.§>!G§(_loc13_);
               _loc11_++;
            }
            _loc8_.§<!_§("");
            _loc7_.§<q§(this.§6D§,this.§&W§,this.§9V§,this.§%!q§ * this.§7q§,this.§%!q§ * this.§+!9§,this.§^!B§,this.§%!q§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §!!#§() : int
      {
         return this.§6D§;
      }
      
      public function get §@?§() : int
      {
         if(this.§!!#§ == 0)
         {
            return 0;
         }
         return this.§-!3§(this.§!=§).§&%§.length / this.§!!#§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:§4f§ = null;
         var _loc4_:§,!5§ = getItemByName(this.§!=§) as §,!5§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§8!P§(_loc4_.§2!D§ - 1);
               this.§7!w§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§8!P§(_loc4_.§2!D§ + 1);
               this.§7!w§();
            }
         }
         else if(param2.length > 0 && (param1 == §,!c§.LISTENER_EVENT_MOUSE_DOWN || param1 == §,!c§.LISTENER_EVENT_MOUSE_UP) && param3 is §&! §)
         {
            if((_loc5_ = this.§-!3§((param3 as §&! §).mParentContainer.mName.toUpperCase())) && param3 is §,D§)
            {
               _loc5_.§<!_§((param3 as §&! §).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §?;§(param1:String, param2:int) : void
      {
         var _loc3_:§,!5§ = getItemByName(param1) as §,!5§;
         if(_loc3_)
         {
            _loc3_.§8!P§(param2);
            this.§7!w§();
         }
      }
      
      public function §-!3§(param1:String) : §4f§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-P§.length)
         {
            if(param1.toUpperCase() == (this.§-P§[_loc2_] as §4f§).mName.toUpperCase())
            {
               return this.§-P§[_loc2_] as §4f§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8!R§(param1:String) : void
      {
         this.§!=§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §6!§.length)
         {
            if(§6!§[_loc2_] is §,!5§)
            {
               if((§6!§[_loc2_] as §,!5§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§6!§[_loc2_] as §,!5§).setActiveStatus(true);
                  if(this.§1B§)
                  {
                     this.§-!7§.x = (§6!§[_loc2_] as §,!5§).x + this.§do §;
                     this.§-!7§.width = (§6!§[_loc2_] as §,!5§).width + this.§>!+§;
                  }
                  if(this.§9^§)
                  {
                     this.§-!7§.y = (§6!§[_loc2_] as §,!5§).y + this.§-!l§;
                     this.§-!7§.height = (§6!§[_loc2_] as §,!5§).height + this.§!l§;
                  }
               }
               else
               {
                  (§6!§[_loc2_] as §,!5§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§7!w§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§4f§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§-P§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §7!w§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§,!5§ = getItemByName(this.§!=§) as §,!5§;
         if(_loc1_)
         {
            if(_loc1_.§2!D§ > 0)
            {
               (getItemByName("Button_Scroll1") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §==§).setComponentState(§4+§.§ !M§);
            }
            if(_loc1_.§2!D§ < _loc1_.§]!@§ - 1)
            {
               (getItemByName("Button_Scroll2") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §==§).setComponentState(§4+§.§ !M§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §==§).setComponentState(§4+§.§ !M§);
            (getItemByName("Button_Scroll2") as §==§).setComponentState(§4+§.§ !M§);
         }
      }
      
      public function §true§() : void
      {
         var _loc2_:§,!5§ = null;
         var _loc1_:int = §6!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §6!§[_loc1_] as §,!5§;
            if(_loc2_)
            {
               _loc2_.clear();
               §6!§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§8!R§("");
      }
      
      public function §9!^§() : void
      {
         var _loc1_:§4f§ = null;
         for each(_loc1_ in this.§-P§)
         {
            _loc1_.§9!^§();
         }
      }
      
      public function §"!y§() : Array
      {
         if(this.§-!3§(this.§!=§) == null)
         {
            §-8§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§-!3§(this.§!=§).§4y§();
      }
      
      public function §[!W§(param1:Array) : void
      {
         this.§-!3§(this.§!=§).§[!W§(param1);
      }
      
      public function §?!_§(param1:Number) : void
      {
         this.§-!3§(this.§!=§).§?!_§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§,t§ = null;
         this.§-P§ = null;
         this.§1O§ = null;
      }
   }
}
