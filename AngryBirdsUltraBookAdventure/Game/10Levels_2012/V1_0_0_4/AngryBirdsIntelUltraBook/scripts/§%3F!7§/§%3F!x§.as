package §?!7§
{
   import §2h§.§'!^§;
   import §9Y§.§+!!§;
   import §9Y§.§2!2§;
   import §9Y§.§6!8§;
   import §9Y§.§9j§;
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?!x§ extends §8;§
   {
      
      public static const § !q§:int = 0;
      
      public static const §,!§:int = 1;
      
      public static const §<!5§:int = 2;
       
      
      public var §7G§:String;
      
      public var §+!#§:Class;
      
      public var §'Z§:String = null;
      
      public var §>!e§:Vector.<§2!2§>;
      
      public var §%!_§:int;
      
      public var §37§:Number;
      
      public var §3!l§:Number;
      
      public var §'!J§:Number;
      
      public var §%;§:Number;
      
      public var §^9§:Number;
      
      public var §7w§:Number;
      
      public var §[6§:Number;
      
      public var §69§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §;I§:int;
      
      public var §?!3§:Number;
      
      public var §5!i§:String = "";
      
      public var §9l§:int;
      
      public var §0!m§:int;
      
      public var §3!m§:GlowFilter;
      
      public var §^!;§:Boolean = true;
      
      public var §=<§:int;
      
      public var §>r§:int;
      
      public var §4!!§:Number = 0;
      
      public var §3y§:Number = 0;
      
      public var §%!2§:Number = 0;
      
      public var §+!9§:Number = 0;
      
      public var §]!1§:Boolean = false;
      
      public var §[]§:Boolean = false;
      
      public var §0H§:MovieClip = null;
      
      public function §?!x§(param1:XML, param2:§8;§, param3:§'!^§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§7G§ = param1.@button;
         if(this.§7G§.length > 0)
         {
            this.§+!#§ = §%!G§.§^!B§(this.§7G§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§'Z§ = _loc5_;
         }
         this.§9l§ = § !q§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§9l§ = §,!§;
            }
         }
         this.§0!m§ = §<!5§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§0!m§ = § !q§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§3!m§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §>!!§.push(new §5!I§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §>!!§.push(new §5!I§(_loc18_,this));
         }
         this.§37§ = mClip.getChildByName("Surface").x;
         this.§3!l§ = mClip.getChildByName("Surface").y;
         this.§'!J§ = mClip.getChildByName("Surface").width;
         this.§%;§ = mClip.getChildByName("Surface").height;
         this.§^9§ = mClip.getChildByName("Button_Area1").x - this.§37§;
         this.§7w§ = mClip.getChildByName("Button_Area1").y - this.§3!l§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§37§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§3!l§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§?!3§ = _loc9_.bottom - this.§3!l§ - this.§7w§;
         this.§[6§ = _loc7_ - this.§^9§;
         this.§69§ = _loc8_ - this.§7w§;
         if(Math.abs(this.§[6§) < 3)
         {
            this.§[6§ = 0;
         }
         if(Math.abs(this.§69§) < 3)
         {
            this.§69§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§[6§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§^9§ - this.§^9§) / this.§[6§;
         }
         if(this.§69§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§7w§ - this.§7w§) / this.§69§;
         }
         this.§%!_§ = Math.min(_loc10_,_loc11_);
         this.§^!;§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§=<§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§=<§ = this.§%!_§;
         }
         this.§;I§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§37§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§3!l§;
            this.mButtonMarginX2 = _loc19_ - this.§^9§;
            this.mButtonMarginY2 = _loc20_ - this.§7w§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§^!;§)
            {
               this.§;I§ = 1 + (mClip.getChildByName("Surface").height - this.§7w§ - this.§7w§) / this.mButtonMarginY2;
            }
            else
            {
               this.§;I§ = 1 + (mClip.getChildByName("Surface").width - this.§^9§ - this.§^9§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§0H§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§%!2§ = this.§0H§.x - mClip.getChildByName("Surface").x;
            this.§+!9§ = this.§0H§.y - mClip.getChildByName("Surface").y;
            this.§4!!§ = this.§0H§.x + this.§0H§.width - (this.§0H§.x + mClip.getChildByName("Surface").width);
            this.§3y§ = this.§0H§.y + this.§0H§.height - (this.§0H§.y + mClip.getChildByName("Surface").height);
            this.§]!1§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§[]§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§>r§ = §2!2§.§1!v§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§>r§ = §2!2§.§1!G§;
            }
         }
         this.§8!2§();
      }
      
      public function §8!2§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§7p§ = null;
         var _loc8_:§2!2§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§=!#§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §=!#§;
         }
         this.§>!e§ = new Vector.<§2!2§>();
         this.§7g§();
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
            _loc7_ = new §7p§(_loc6_,this,null,_loc5_);
            §>!!§.push(_loc7_);
            _loc8_ = new §2!2§(this.§>r§,_loc4_);
            this.§>!e§.push(_loc8_);
            _loc9_ = this.§^9§;
            _loc10_ = this.§%!_§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§0!m§ == § !q§)
            {
               _loc9_ = (this.§'!J§ - (_loc10_ - 1) * this.§[6§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§>!!§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§>!!§.push(new param2(_loc12_,_loc7_,new this.§+!#§() as MovieClip));
               }
               _loc13_ = _loc7_.§>!!§[_loc7_.§>!!§.length - 1] as §=!#§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§'Z§);
                  if(this.§9l§ == §,!§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§'Z§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§;I§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§[6§;
                  _loc13_.y = this.§7w§ + _loc11_ * this.§69§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§%!_§ * this.§;I§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§%!_§ * this.§;I§) / this.§%!_§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§%!_§ * this.§;I§) % this.§%!_§;
                  if(this.§^!;§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§[6§ + _loc16_ * this.§%!_§ * this.§[6§;
                     _loc13_.y = this.§7w§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§7w§ + _loc18_ * this.§69§ + _loc16_ * this.§%!_§ * this.§69§;
                  }
               }
               _loc8_.§+!-§(_loc13_);
               _loc11_++;
            }
            _loc8_.§`N§("");
            _loc7_.§#!v§(this.§%!_§,this.§37§,this.§3!l§,this.§=<§ * this.§[6§,this.§=<§ * this.§69§,this.§;I§,this.§=<§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §[p§() : int
      {
         return this.§%!_§;
      }
      
      public function get §4f§() : int
      {
         if(this.§[p§ == 0)
         {
            return 0;
         }
         return this.§#!0§(this.§5!i§).§&!A§.length / this.§[p§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:§2!2§ = null;
         var _loc4_:§7p§ = getItemByName(this.§5!i§) as §7p§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§7&§(_loc4_.§;!q§ - 1);
               this.§!C§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§7&§(_loc4_.§;!q§ + 1);
               this.§!C§();
            }
         }
         else if(param2.length > 0 && (param1 == §6!8§.LISTENER_EVENT_MOUSE_DOWN || param1 == §6!8§.LISTENER_EVENT_MOUSE_UP) && param3 is §9j§)
         {
            if((_loc5_ = this.§#!0§((param3 as §9j§).mParentContainer.mName.toUpperCase())) && param3 is §=!#§)
            {
               _loc5_.§`N§((param3 as §9j§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §!P§(param1:String, param2:int) : void
      {
         var _loc3_:§7p§ = getItemByName(param1) as §7p§;
         if(_loc3_)
         {
            _loc3_.§7&§(param2);
            this.§!C§();
         }
      }
      
      public function §#!0§(param1:String) : §2!2§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!e§.length)
         {
            if(param1.toUpperCase() == (this.§>!e§[_loc2_] as §2!2§).mName.toUpperCase())
            {
               return this.§>!e§[_loc2_] as §2!2§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §'!g§(param1:String) : void
      {
         this.§5!i§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §>!!§.length)
         {
            if(§>!!§[_loc2_] is §7p§)
            {
               if((§>!!§[_loc2_] as §7p§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§>!!§[_loc2_] as §7p§).setActiveStatus(true);
                  if(this.§]!1§)
                  {
                     this.§0H§.x = (§>!!§[_loc2_] as §7p§).x + this.§%!2§;
                     this.§0H§.width = (§>!!§[_loc2_] as §7p§).width + this.§4!!§;
                  }
                  if(this.§[]§)
                  {
                     this.§0H§.y = (§>!!§[_loc2_] as §7p§).y + this.§+!9§;
                     this.§0H§.height = (§>!!§[_loc2_] as §7p§).height + this.§3y§;
                  }
               }
               else
               {
                  (§>!!§[_loc2_] as §7p§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§!C§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§2!2§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§>!e§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §!C§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§7p§ = getItemByName(this.§5!i§) as §7p§;
         if(_loc1_)
         {
            if(_loc1_.§;!q§ > 0)
            {
               (getItemByName("Button_Scroll1") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §5!I§).setComponentState(§+!!§.§ H§);
            }
            if(_loc1_.§;!q§ < _loc1_.§9!;§ - 1)
            {
               (getItemByName("Button_Scroll2") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §5!I§).setComponentState(§+!!§.§ H§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §5!I§).setComponentState(§+!!§.§ H§);
            (getItemByName("Button_Scroll2") as §5!I§).setComponentState(§+!!§.§ H§);
         }
      }
      
      public function §7g§() : void
      {
         var _loc2_:§7p§ = null;
         var _loc1_:int = §>!!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §>!!§[_loc1_] as §7p§;
            if(_loc2_)
            {
               _loc2_.clear();
               §>!!§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§'!g§("");
      }
      
      public function §0F§() : void
      {
         var _loc1_:§2!2§ = null;
         for each(_loc1_ in this.§>!e§)
         {
            _loc1_.§0F§();
         }
      }
      
      public function §'F§() : Array
      {
         if(this.§#!0§(this.§5!i§) == null)
         {
            §!>§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§#!0§(this.§5!i§).§"h§();
      }
      
      public function §9!f§(param1:Array) : void
      {
         this.§#!0§(this.§5!i§).§9!f§(param1);
      }
      
      public function §8!=§(param1:Number) : void
      {
         this.§#!0§(this.§5!i§).§8!=§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§+!#§ = null;
         this.§>!e§ = null;
         this.§3!m§ = null;
      }
   }
}
