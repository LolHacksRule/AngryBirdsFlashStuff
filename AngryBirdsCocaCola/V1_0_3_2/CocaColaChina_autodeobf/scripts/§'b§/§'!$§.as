package §'b§
{
   import §-!9§.§3!5§;
   import §6!Q§.§7!7§;
   import §6l§.§ l§;
   import §6l§.§#!Z§;
   import §6l§.§,!G§;
   import §6l§.§-a§;
   import §>!8§.§4!0§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'!$§ extends §'^§
   {
      
      public static const §>9§:int = 0;
      
      public static const §>!M§:int = 1;
      
      public static const §,§:int = 2;
       
      
      public var §>R§:String;
      
      public var §"!_§:Class;
      
      public var §[z§:String = null;
      
      public var §]!9§:Vector.<§,!G§>;
      
      public var §;!`§:int;
      
      public var §<+§:Number;
      
      public var §1;§:Number;
      
      public var § case§:Number;
      
      public var §+O§:Number;
      
      public var §+t§:Number;
      
      public var §?&§:Number;
      
      public var §<!&§:Number;
      
      public var §>!9§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §"!"§:int;
      
      public var §6q§:Number;
      
      public var §#+§:String = "";
      
      public var §@!3§:int;
      
      public var §&'§:int;
      
      public var §>o§:GlowFilter;
      
      public var §7!_§:Boolean = true;
      
      public var §3m§:int;
      
      public var §[`§:int;
      
      public var §[E§:Number = 0;
      
      public var §>Y§:Number = 0;
      
      public var §&Y§:Number = 0;
      
      public var §'!8§:Number = 0;
      
      public var §8!<§:Boolean = false;
      
      public var §6!_§:Boolean = false;
      
      public var §-F§:MovieClip = null;
      
      public function §'!$§(param1:XML, param2:§'^§, param3:§4!0§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§>R§ = param1.@button;
         if(this.§>R§.length > 0)
         {
            this.§"!_§ = §3!5§.§9g§(this.§>R§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§[z§ = _loc5_;
         }
         this.§@!3§ = §>9§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§@!3§ = §>!M§;
            }
         }
         this.§&'§ = §,§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§&'§ = §>9§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§>o§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            § C§.push(new §0!D§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            § C§.push(new §0!D§(_loc18_,this));
         }
         this.§<+§ = mClip.getChildByName("Surface").x;
         this.§1;§ = mClip.getChildByName("Surface").y;
         this.§ case§ = mClip.getChildByName("Surface").width;
         this.§+O§ = mClip.getChildByName("Surface").height;
         this.§+t§ = mClip.getChildByName("Button_Area1").x - this.§<+§;
         this.§?&§ = mClip.getChildByName("Button_Area1").y - this.§1;§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§<+§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§1;§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§6q§ = _loc9_.bottom - this.§1;§ - this.§?&§;
         this.§<!&§ = _loc7_ - this.§+t§;
         this.§>!9§ = _loc8_ - this.§?&§;
         if(Math.abs(this.§<!&§) < 3)
         {
            this.§<!&§ = 0;
         }
         if(Math.abs(this.§>!9§) < 3)
         {
            this.§>!9§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§<!&§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§+t§ - this.§+t§) / this.§<!&§;
         }
         if(this.§>!9§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§?&§ - this.§?&§) / this.§>!9§;
         }
         this.§;!`§ = Math.min(_loc10_,_loc11_);
         this.§7!_§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§3m§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§3m§ = this.§;!`§;
         }
         this.§"!"§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§<+§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§1;§;
            this.mButtonMarginX2 = _loc19_ - this.§+t§;
            this.mButtonMarginY2 = _loc20_ - this.§?&§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§7!_§)
            {
               this.§"!"§ = 1 + (mClip.getChildByName("Surface").height - this.§?&§ - this.§?&§) / this.mButtonMarginY2;
            }
            else
            {
               this.§"!"§ = 1 + (mClip.getChildByName("Surface").width - this.§+t§ - this.§+t§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§-F§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§&Y§ = this.§-F§.x - mClip.getChildByName("Surface").x;
            this.§'!8§ = this.§-F§.y - mClip.getChildByName("Surface").y;
            this.§[E§ = this.§-F§.x + this.§-F§.width - (this.§-F§.x + mClip.getChildByName("Surface").width);
            this.§>Y§ = this.§-F§.y + this.§-F§.height - (this.§-F§.y + mClip.getChildByName("Surface").height);
            this.§8!<§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§6!_§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§[`§ = §,!G§.§2M§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§[`§ = §,!G§.§-!'§;
            }
         }
         this.§`!H§();
      }
      
      public function §`!H§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§1!^§ = null;
         var _loc8_:§,!G§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§&X§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §&X§;
         }
         this.§]!9§ = new Vector.<§,!G§>();
         this.§,W§();
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
            _loc7_ = new §1!^§(_loc6_,this,null,_loc5_);
            § C§.push(_loc7_);
            _loc8_ = new §,!G§(this.§[`§,_loc4_);
            this.§]!9§.push(_loc8_);
            _loc9_ = this.§+t§;
            _loc10_ = this.§;!`§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§&'§ == §>9§)
            {
               _loc9_ = (this.§ case§ - (_loc10_ - 1) * this.§<!&§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§ C§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§ C§.push(new param2(_loc12_,_loc7_,new this.§"!_§() as MovieClip));
               }
               _loc13_ = _loc7_.§ C§[_loc7_.§ C§.length - 1] as §&X§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§?A§(_loc14_,this.§[z§);
                  if(this.§@!3§ == §>!M§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§[z§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§"!"§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§<!&§;
                  _loc13_.y = this.§?&§ + _loc11_ * this.§>!9§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§;!`§ * this.§"!"§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§;!`§ * this.§"!"§) / this.§;!`§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§;!`§ * this.§"!"§) % this.§;!`§;
                  if(this.§7!_§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§<!&§ + _loc16_ * this.§;!`§ * this.§<!&§;
                     _loc13_.y = this.§?&§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§?&§ + _loc18_ * this.§>!9§ + _loc16_ * this.§;!`§ * this.§>!9§;
                  }
               }
               _loc8_.§`F§(_loc13_);
               _loc11_++;
            }
            _loc8_.§9]§("");
            _loc7_.§;g§(this.§;!`§,this.§<+§,this.§1;§,this.§3m§ * this.§<!&§,this.§3m§ * this.§>!9§,this.§"!"§,this.§3m§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §4!7§() : int
      {
         return this.§;!`§;
      }
      
      public function get §package§() : int
      {
         if(this.§4!7§ == 0)
         {
            return 0;
         }
         return this.§'9§(this.§#+§).§#$§.length / this.§4!7§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§#!Z§) : void
      {
         var _loc5_:§,!G§ = null;
         var _loc4_:§1!^§ = getItemByName(this.§#+§) as §1!^§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§&v§(_loc4_.§=I§ - 1);
               this.§%!B§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§&v§(_loc4_.§=I§ + 1);
               this.§%!B§();
            }
         }
         else if(param2.length > 0 && (param1 == §#!Z§.LISTENER_EVENT_MOUSE_DOWN || param1 == §#!Z§.LISTENER_EVENT_MOUSE_UP) && param3 is §-a§)
         {
            if((_loc5_ = this.§'9§((param3 as §-a§).mParentContainer.mName.toUpperCase())) && param3 is §&X§)
            {
               _loc5_.§9]§((param3 as §-a§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §+<§(param1:String, param2:int) : void
      {
         var _loc3_:§1!^§ = getItemByName(param1) as §1!^§;
         if(_loc3_)
         {
            _loc3_.§&v§(param2);
            this.§%!B§();
         }
      }
      
      public function §'9§(param1:String) : §,!G§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!9§.length)
         {
            if(param1.toUpperCase() == (this.§]!9§[_loc2_] as §,!G§).mName.toUpperCase())
            {
               return this.§]!9§[_loc2_] as §,!G§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §39§(param1:String) : void
      {
         this.§#+§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < § C§.length)
         {
            if(§ C§[_loc2_] is §1!^§)
            {
               if((§ C§[_loc2_] as §1!^§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§ C§[_loc2_] as §1!^§).setActiveStatus(true);
                  if(this.§8!<§)
                  {
                     this.§-F§.x = (§ C§[_loc2_] as §1!^§).x + this.§&Y§;
                     this.§-F§.width = (§ C§[_loc2_] as §1!^§).width + this.§[E§;
                  }
                  if(this.§6!_§)
                  {
                     this.§-F§.y = (§ C§[_loc2_] as §1!^§).y + this.§'!8§;
                     this.§-F§.height = (§ C§[_loc2_] as §1!^§).height + this.§>Y§;
                  }
               }
               else
               {
                  (§ C§[_loc2_] as §1!^§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§%!B§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§,!G§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§]!9§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §%!B§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§1!^§ = getItemByName(this.§#+§) as §1!^§;
         if(_loc1_)
         {
            if(_loc1_.§=I§ > 0)
            {
               (getItemByName("Button_Scroll1") as §0!D§).setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §0!D§).setComponentState(§ l§.§1'§);
            }
            if(_loc1_.§=I§ < _loc1_.§6!8§ - 1)
            {
               (getItemByName("Button_Scroll2") as §0!D§).setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §0!D§).setComponentState(§ l§.§1'§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §0!D§).setComponentState(§ l§.§1'§);
            (getItemByName("Button_Scroll2") as §0!D§).setComponentState(§ l§.§1'§);
         }
      }
      
      public function §,W§() : void
      {
         var _loc2_:§1!^§ = null;
         var _loc1_:int = § C§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § C§[_loc1_] as §1!^§;
            if(_loc2_)
            {
               _loc2_.clear();
               § C§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§39§("");
      }
      
      public function § m§() : void
      {
         var _loc1_:§,!G§ = null;
         for each(_loc1_ in this.§]!9§)
         {
            _loc1_.§ m§();
         }
      }
      
      public function §'X§() : Array
      {
         if(this.§'9§(this.§#+§) == null)
         {
            §7!7§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§'9§(this.§#+§).§!!Y§();
      }
      
      public function §6w§(param1:Array) : void
      {
         this.§'9§(this.§#+§).§6w§(param1);
      }
      
      public function §#!@§(param1:Number) : void
      {
         this.§'9§(this.§#+§).§#!@§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§"!_§ = null;
         this.§]!9§ = null;
         this.§>o§ = null;
      }
   }
}
