package §8!<§
{
   import § !K§.§'h§;
   import §%3§.§7b§;
   import §7!H§.§&![§;
   import §7!H§.§12§;
   import §7!H§.§^!X§;
   import §7!H§.§`f§;
   import §<!!§.§-"§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §1e§ extends §2W§
   {
      
      public static const §8p§:int = 0;
      
      public static const §"!c§:int = 1;
      
      public static const §5v§:int = 2;
       
      
      public var §2v§:String;
      
      public var §3!a§:Class;
      
      public var §"y§:String = null;
      
      public var §&7§:Vector.<§^!X§>;
      
      public var §+L§:int;
      
      public var §8@§:Number;
      
      public var §%!O§:Number;
      
      public var §]W§:Number;
      
      public var §23§:Number;
      
      public var §-P§:Number;
      
      public var §-!2§:Number;
      
      public var §1!^§:Number;
      
      public var §3w§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §!!<§:int;
      
      public var §;I§:Number;
      
      public var §"!`§:String = "";
      
      public var §9K§:int;
      
      public var §8!6§:int;
      
      public var §3i§:GlowFilter;
      
      public var §2!5§:Boolean = true;
      
      public var §?t§:int;
      
      public var §3R§:int;
      
      public var §-u§:Number = 0;
      
      public var §8!B§:Number = 0;
      
      public var §81§:Number = 0;
      
      public var §0_§:Number = 0;
      
      public var §,b§:Boolean = false;
      
      public var §9!L§:Boolean = false;
      
      public var §0! §:MovieClip = null;
      
      public function §1e§(param1:XML, param2:§2W§, param3:§7b§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§2v§ = param1.@button;
         if(this.§2v§.length > 0)
         {
            this.§3!a§ = §'h§.§`E§(this.§2v§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§"y§ = _loc5_;
         }
         this.§9K§ = §8p§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§9K§ = §"!c§;
            }
         }
         this.§8!6§ = §5v§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§8!6§ = §8p§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§3i§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §@!X§.push(new §29§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §@!X§.push(new §29§(_loc18_,this));
         }
         this.§8@§ = mClip.getChildByName("Surface").x;
         this.§%!O§ = mClip.getChildByName("Surface").y;
         this.§]W§ = mClip.getChildByName("Surface").width;
         this.§23§ = mClip.getChildByName("Surface").height;
         this.§-P§ = mClip.getChildByName("Button_Area1").x - this.§8@§;
         this.§-!2§ = mClip.getChildByName("Button_Area1").y - this.§%!O§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§8@§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§%!O§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§;I§ = _loc9_.bottom - this.§%!O§ - this.§-!2§;
         this.§1!^§ = _loc7_ - this.§-P§;
         this.§3w§ = _loc8_ - this.§-!2§;
         if(Math.abs(this.§1!^§) < 3)
         {
            this.§1!^§ = 0;
         }
         if(Math.abs(this.§3w§) < 3)
         {
            this.§3w§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§1!^§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§-P§ - this.§-P§) / this.§1!^§;
         }
         if(this.§3w§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§-!2§ - this.§-!2§) / this.§3w§;
         }
         this.§+L§ = Math.min(_loc10_,_loc11_);
         this.§2!5§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§?t§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§?t§ = this.§+L§;
         }
         this.§!!<§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§8@§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§%!O§;
            this.mButtonMarginX2 = _loc19_ - this.§-P§;
            this.mButtonMarginY2 = _loc20_ - this.§-!2§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§2!5§)
            {
               this.§!!<§ = 1 + (mClip.getChildByName("Surface").height - this.§-!2§ - this.§-!2§) / this.mButtonMarginY2;
            }
            else
            {
               this.§!!<§ = 1 + (mClip.getChildByName("Surface").width - this.§-P§ - this.§-P§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§0! § = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§81§ = this.§0! §.x - mClip.getChildByName("Surface").x;
            this.§0_§ = this.§0! §.y - mClip.getChildByName("Surface").y;
            this.§-u§ = this.§0! §.x + this.§0! §.width - (this.§0! §.x + mClip.getChildByName("Surface").width);
            this.§8!B§ = this.§0! §.y + this.§0! §.height - (this.§0! §.y + mClip.getChildByName("Surface").height);
            this.§,b§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§9!L§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§3R§ = §^!X§.§5!;§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§3R§ = §^!X§.§"!D§;
            }
         }
         this.§<!U§();
      }
      
      public function §<!U§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§<Y§ = null;
         var _loc8_:§^!X§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§<h§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §<h§;
         }
         this.§&7§ = new Vector.<§^!X§>();
         this.§88§();
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
            _loc7_ = new §<Y§(_loc6_,this,null,_loc5_);
            §@!X§.push(_loc7_);
            _loc8_ = new §^!X§(this.§3R§,_loc4_);
            this.§&7§.push(_loc8_);
            _loc9_ = this.§-P§;
            _loc10_ = this.§+L§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§8!6§ == §8p§)
            {
               _loc9_ = (this.§]W§ - (_loc10_ - 1) * this.§1!^§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§@!X§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§@!X§.push(new param2(_loc12_,_loc7_,new this.§3!a§() as MovieClip));
               }
               _loc13_ = _loc7_.§@!X§[_loc7_.§@!X§.length - 1] as §<h§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§[!W§(_loc14_,this.§"y§);
                  if(this.§9K§ == §"!c§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§"y§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§!!<§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§1!^§;
                  _loc13_.y = this.§-!2§ + _loc11_ * this.§3w§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§+L§ * this.§!!<§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§+L§ * this.§!!<§) / this.§+L§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§+L§ * this.§!!<§) % this.§+L§;
                  if(this.§2!5§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§1!^§ + _loc16_ * this.§+L§ * this.§1!^§;
                     _loc13_.y = this.§-!2§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§-!2§ + _loc18_ * this.§3w§ + _loc16_ * this.§+L§ * this.§3w§;
                  }
               }
               _loc8_.§1A§(_loc13_);
               _loc11_++;
            }
            _loc8_.§0!3§("");
            _loc7_.§,!P§(this.§+L§,this.§8@§,this.§%!O§,this.§?t§ * this.§1!^§,this.§?t§ * this.§3w§,this.§!!<§,this.§?t§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §-!8§() : int
      {
         return this.§+L§;
      }
      
      public function get §>`§() : int
      {
         if(this.§-!8§ == 0)
         {
            return 0;
         }
         return this.§6!E§(this.§"!`§).§[!c§.length / this.§-!8§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§12§) : void
      {
         var _loc5_:§^!X§ = null;
         var _loc4_:§<Y§ = getItemByName(this.§"!`§) as §<Y§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§%[§(_loc4_.§=!-§ - 1);
               this.§7%§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§%[§(_loc4_.§=!-§ + 1);
               this.§7%§();
            }
         }
         else if(param2.length > 0 && (param1 == §12§.LISTENER_EVENT_MOUSE_DOWN || param1 == §12§.LISTENER_EVENT_MOUSE_UP) && param3 is §&![§)
         {
            if((_loc5_ = this.§6!E§((param3 as §&![§).mParentContainer.mName.toUpperCase())) && param3 is §<h§)
            {
               _loc5_.§0!3§((param3 as §&![§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §]I§(param1:String, param2:int) : void
      {
         var _loc3_:§<Y§ = getItemByName(param1) as §<Y§;
         if(_loc3_)
         {
            _loc3_.§%[§(param2);
            this.§7%§();
         }
      }
      
      public function §6!E§(param1:String) : §^!X§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&7§.length)
         {
            if(param1.toUpperCase() == (this.§&7§[_loc2_] as §^!X§).mName.toUpperCase())
            {
               return this.§&7§[_loc2_] as §^!X§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §>s§(param1:String) : void
      {
         this.§"!`§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §@!X§.length)
         {
            if(§@!X§[_loc2_] is §<Y§)
            {
               if((§@!X§[_loc2_] as §<Y§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§@!X§[_loc2_] as §<Y§).setActiveStatus(true);
                  if(this.§,b§)
                  {
                     this.§0! §.x = (§@!X§[_loc2_] as §<Y§).x + this.§81§;
                     this.§0! §.width = (§@!X§[_loc2_] as §<Y§).width + this.§-u§;
                  }
                  if(this.§9!L§)
                  {
                     this.§0! §.y = (§@!X§[_loc2_] as §<Y§).y + this.§0_§;
                     this.§0! §.height = (§@!X§[_loc2_] as §<Y§).height + this.§8!B§;
                  }
               }
               else
               {
                  (§@!X§[_loc2_] as §<Y§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§7%§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§^!X§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§&7§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §7%§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§<Y§ = getItemByName(this.§"!`§) as §<Y§;
         if(_loc1_)
         {
            if(_loc1_.§=!-§ > 0)
            {
               (getItemByName("Button_Scroll1") as §29§).setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §29§).setComponentState(§`f§.§0m§);
            }
            if(_loc1_.§=!-§ < _loc1_.§2!A§ - 1)
            {
               (getItemByName("Button_Scroll2") as §29§).setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §29§).setComponentState(§`f§.§0m§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §29§).setComponentState(§`f§.§0m§);
            (getItemByName("Button_Scroll2") as §29§).setComponentState(§`f§.§0m§);
         }
      }
      
      public function §88§() : void
      {
         var _loc2_:§<Y§ = null;
         var _loc1_:int = §@!X§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §@!X§[_loc1_] as §<Y§;
            if(_loc2_)
            {
               _loc2_.clear();
               §@!X§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§>s§("");
      }
      
      public function §3;§() : void
      {
         var _loc1_:§^!X§ = null;
         for each(_loc1_ in this.§&7§)
         {
            _loc1_.§3;§();
         }
      }
      
      public function §7!,§() : Array
      {
         if(this.§6!E§(this.§"!`§) == null)
         {
            §-"§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§6!E§(this.§"!`§).§0=§();
      }
      
      public function §3!6§(param1:Array) : void
      {
         this.§6!E§(this.§"!`§).§3!6§(param1);
      }
      
      public function §9!#§(param1:Number) : void
      {
         this.§6!E§(this.§"!`§).§9!#§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§3!a§ = null;
         this.§&7§ = null;
         this.§3i§ = null;
      }
   }
}
