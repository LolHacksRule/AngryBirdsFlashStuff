package §7f§
{
   import §"A§.§?3§;
   import §-!6§.§>I§;
   import §1q§.§-!+§;
   import §^r§.§ ^§;
   import §^r§.§%%§;
   import §^r§.§-!'§;
   import §^r§.§>`§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §8!3§ extends §?i§
   {
      
      public static const §[F§:int = 0;
      
      public static const § !V§:int = 1;
      
      public static const §2N§:int = 2;
       
      
      public var §9H§:String;
      
      public var §,!7§:Class;
      
      public var §;P§:String = null;
      
      public var §&c§:Vector.<§-!'§>;
      
      public var §^n§:int;
      
      public var §76§:Number;
      
      public var §!D§:Number;
      
      public var §1!C§:Number;
      
      public var §1!=§:Number;
      
      public var §!^§:Number;
      
      public var §4!8§:Number;
      
      public var §7&§:Number;
      
      public var §?![§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §46§:int;
      
      public var §?p§:Number;
      
      public var §7!6§:String = "";
      
      public var §@h§:int;
      
      public var §4!"§:int;
      
      public var §0z§:GlowFilter;
      
      public var §<!@§:Boolean = true;
      
      public var §%l§:int;
      
      public var §%$§:int;
      
      public var §1!3§:Number = 0;
      
      public var §'d§:Number = 0;
      
      public var §&s§:Number = 0;
      
      public var §=!`§:Number = 0;
      
      public var §>!"§:Boolean = false;
      
      public var §4! §:Boolean = false;
      
      public var §7R§:MovieClip = null;
      
      public function §8!3§(param1:XML, param2:§?i§, param3:§?3§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§9H§ = param1.@button;
         if(this.§9H§.length > 0)
         {
            this.§,!7§ = §-!+§.§"x§(this.§9H§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§;P§ = _loc5_;
         }
         this.§@h§ = §[F§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§@h§ = § !V§;
            }
         }
         this.§4!"§ = §2N§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§4!"§ = §[F§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§0z§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §!!X§.push(new §,!>§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §!!X§.push(new §,!>§(_loc18_,this));
         }
         this.§76§ = mClip.getChildByName("Surface").x;
         this.§!D§ = mClip.getChildByName("Surface").y;
         this.§1!C§ = mClip.getChildByName("Surface").width;
         this.§1!=§ = mClip.getChildByName("Surface").height;
         this.§!^§ = mClip.getChildByName("Button_Area1").x - this.§76§;
         this.§4!8§ = mClip.getChildByName("Button_Area1").y - this.§!D§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§76§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§!D§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§?p§ = _loc9_.bottom - this.§!D§ - this.§4!8§;
         this.§7&§ = _loc7_ - this.§!^§;
         this.§?![§ = _loc8_ - this.§4!8§;
         if(Math.abs(this.§7&§) < 3)
         {
            this.§7&§ = 0;
         }
         if(Math.abs(this.§?![§) < 3)
         {
            this.§?![§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§7&§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§!^§ - this.§!^§) / this.§7&§;
         }
         if(this.§?![§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§4!8§ - this.§4!8§) / this.§?![§;
         }
         this.§^n§ = Math.min(_loc10_,_loc11_);
         this.§<!@§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§%l§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§%l§ = this.§^n§;
         }
         this.§46§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§76§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§!D§;
            this.mButtonMarginX2 = _loc19_ - this.§!^§;
            this.mButtonMarginY2 = _loc20_ - this.§4!8§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§<!@§)
            {
               this.§46§ = 1 + (mClip.getChildByName("Surface").height - this.§4!8§ - this.§4!8§) / this.mButtonMarginY2;
            }
            else
            {
               this.§46§ = 1 + (mClip.getChildByName("Surface").width - this.§!^§ - this.§!^§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§7R§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§&s§ = this.§7R§.x - mClip.getChildByName("Surface").x;
            this.§=!`§ = this.§7R§.y - mClip.getChildByName("Surface").y;
            this.§1!3§ = this.§7R§.x + this.§7R§.width - (this.§7R§.x + mClip.getChildByName("Surface").width);
            this.§'d§ = this.§7R§.y + this.§7R§.height - (this.§7R§.y + mClip.getChildByName("Surface").height);
            this.§>!"§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§4! § = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§%$§ = §-!'§.§7C§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§%$§ = §-!'§.§9j§;
            }
         }
         this.§-!_§();
      }
      
      public function §-!_§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§&9§ = null;
         var _loc8_:§-!'§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§2K§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §2K§;
         }
         this.§&c§ = new Vector.<§-!'§>();
         this.§8!U§();
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
            _loc7_ = new §&9§(_loc6_,this,null,_loc5_);
            §!!X§.push(_loc7_);
            _loc8_ = new §-!'§(this.§%$§,_loc4_);
            this.§&c§.push(_loc8_);
            _loc9_ = this.§!^§;
            _loc10_ = this.§^n§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§4!"§ == §[F§)
            {
               _loc9_ = (this.§1!C§ - (_loc10_ - 1) * this.§7&§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§!!X§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§!!X§.push(new param2(_loc12_,_loc7_,new this.§,!7§() as MovieClip));
               }
               _loc13_ = _loc7_.§!!X§[_loc7_.§!!X§.length - 1] as §2K§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§]$§(_loc14_,this.§;P§);
                  if(this.§@h§ == § !V§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§;P§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§46§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§7&§;
                  _loc13_.y = this.§4!8§ + _loc11_ * this.§?![§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§^n§ * this.§46§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§^n§ * this.§46§) / this.§^n§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§^n§ * this.§46§) % this.§^n§;
                  if(this.§<!@§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§7&§ + _loc16_ * this.§^n§ * this.§7&§;
                     _loc13_.y = this.§4!8§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§4!8§ + _loc18_ * this.§?![§ + _loc16_ * this.§^n§ * this.§?![§;
                  }
               }
               _loc8_.§[!1§(_loc13_);
               _loc11_++;
            }
            _loc8_.§6R§("");
            _loc7_.§9!,§(this.§^n§,this.§76§,this.§!D§,this.§%l§ * this.§7&§,this.§%l§ * this.§?![§,this.§46§,this.§%l§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §?!K§() : int
      {
         return this.§^n§;
      }
      
      public function get §#P§() : int
      {
         if(this.§?!K§ == 0)
         {
            return 0;
         }
         return this.§-!^§(this.§7!6§).§&3§.length / this.§?!K§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§>`§) : void
      {
         var _loc5_:§-!'§ = null;
         var _loc4_:§&9§ = getItemByName(this.§7!6§) as §&9§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§&!A§(_loc4_.§#z§ - 1);
               this.§0!+§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§&!A§(_loc4_.§#z§ + 1);
               this.§0!+§();
            }
         }
         else if(param2.length > 0 && (param1 == §>`§.LISTENER_EVENT_MOUSE_DOWN || param1 == §>`§.LISTENER_EVENT_MOUSE_UP) && param3 is § ^§)
         {
            if((_loc5_ = this.§-!^§((param3 as § ^§).mParentContainer.mName.toUpperCase())) && param3 is §2K§)
            {
               _loc5_.§6R§((param3 as § ^§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §8w§(param1:String, param2:int) : void
      {
         var _loc3_:§&9§ = getItemByName(param1) as §&9§;
         if(_loc3_)
         {
            _loc3_.§&!A§(param2);
            this.§0!+§();
         }
      }
      
      public function §-!^§(param1:String) : §-!'§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&c§.length)
         {
            if(param1.toUpperCase() == (this.§&c§[_loc2_] as §-!'§).mName.toUpperCase())
            {
               return this.§&c§[_loc2_] as §-!'§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §9!Z§(param1:String) : void
      {
         this.§7!6§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §!!X§.length)
         {
            if(§!!X§[_loc2_] is §&9§)
            {
               if((§!!X§[_loc2_] as §&9§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§!!X§[_loc2_] as §&9§).setActiveStatus(true);
                  if(this.§>!"§)
                  {
                     this.§7R§.x = (§!!X§[_loc2_] as §&9§).x + this.§&s§;
                     this.§7R§.width = (§!!X§[_loc2_] as §&9§).width + this.§1!3§;
                  }
                  if(this.§4! §)
                  {
                     this.§7R§.y = (§!!X§[_loc2_] as §&9§).y + this.§=!`§;
                     this.§7R§.height = (§!!X§[_loc2_] as §&9§).height + this.§'d§;
                  }
               }
               else
               {
                  (§!!X§[_loc2_] as §&9§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§0!+§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§-!'§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§&c§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §0!+§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§&9§ = getItemByName(this.§7!6§) as §&9§;
         if(_loc1_)
         {
            if(_loc1_.§#z§ > 0)
            {
               (getItemByName("Button_Scroll1") as §,!>§).setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §,!>§).setComponentState(§%%§.§@!]§);
            }
            if(_loc1_.§#z§ < _loc1_.§7!3§ - 1)
            {
               (getItemByName("Button_Scroll2") as §,!>§).setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §,!>§).setComponentState(§%%§.§@!]§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §,!>§).setComponentState(§%%§.§@!]§);
            (getItemByName("Button_Scroll2") as §,!>§).setComponentState(§%%§.§@!]§);
         }
      }
      
      public function §8!U§() : void
      {
         var _loc2_:§&9§ = null;
         var _loc1_:int = §!!X§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!!X§[_loc1_] as §&9§;
            if(_loc2_)
            {
               _loc2_.clear();
               §!!X§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§9!Z§("");
      }
      
      public function §4]§() : void
      {
         var _loc1_:§-!'§ = null;
         for each(_loc1_ in this.§&c§)
         {
            _loc1_.§4]§();
         }
      }
      
      public function §!l§() : Array
      {
         if(this.§-!^§(this.§7!6§) == null)
         {
            §>I§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§-!^§(this.§7!6§).§"O§();
      }
      
      public function §[g§(param1:Array) : void
      {
         this.§-!^§(this.§7!6§).§[g§(param1);
      }
      
      public function §,4§(param1:Number) : void
      {
         this.§-!^§(this.§7!6§).§,4§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§,!7§ = null;
         this.§&c§ = null;
         this.§0z§ = null;
      }
   }
}
