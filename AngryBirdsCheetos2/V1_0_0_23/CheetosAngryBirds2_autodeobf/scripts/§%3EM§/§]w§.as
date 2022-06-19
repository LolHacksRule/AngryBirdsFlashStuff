package §>M§
{
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §'!D§.§0y§;
   import §'!D§.§?!h§;
   import §7'§.§!y§;
   import §>P§.§5!§;
   import §>^§.§!6§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]w§ extends §<6§
   {
      
      public static const §&!R§:int = 0;
      
      public static const §+!0§:int = 1;
      
      public static const §=f§:int = 2;
       
      
      public var §2!f§:String;
      
      public var §@E§:Class;
      
      public var §6!;§:String = null;
      
      public var §9%§:Vector.<§0y§>;
      
      public var §+x§:int;
      
      public var §]z§:Number;
      
      public var §3!H§:Number;
      
      public var §7u§:Number;
      
      public var §1d§:Number;
      
      public var §4!"§:Number;
      
      public var §7!7§:Number;
      
      public var §;j§:Number;
      
      public var §9!O§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §6B§:int;
      
      public var §!"§:Number;
      
      public var §@![§:String = "";
      
      public var §if§:int;
      
      public var §9h§:int;
      
      public var §9!'§:GlowFilter;
      
      public var §@G§:Boolean = true;
      
      public var §-e§:int;
      
      public var §@! §:int;
      
      public var §implements§:Number = 0;
      
      public var §<J§:Number = 0;
      
      public var §"!@§:Number = 0;
      
      public var §;k§:Number = 0;
      
      public var §,o§:Boolean = false;
      
      public var §>!P§:Boolean = false;
      
      public var §@y§:MovieClip = null;
      
      public function §]w§(param1:XML, param2:§<6§, param3:§5!§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§2!f§ = param1.@button;
         if(this.§2!f§.length > 0)
         {
            this.§@E§ = §!y§.§%!C§(this.§2!f§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§6!;§ = _loc5_;
         }
         this.§if§ = §&!R§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§if§ = §+!0§;
            }
         }
         this.§9h§ = §=f§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§9h§ = §&!R§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§9!'§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §[!L§.push(new §^-§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §[!L§.push(new §^-§(_loc18_,this));
         }
         this.§]z§ = mClip.getChildByName("Surface").x;
         this.§3!H§ = mClip.getChildByName("Surface").y;
         this.§7u§ = mClip.getChildByName("Surface").width;
         this.§1d§ = mClip.getChildByName("Surface").height;
         this.§4!"§ = mClip.getChildByName("Button_Area1").x - this.§]z§;
         this.§7!7§ = mClip.getChildByName("Button_Area1").y - this.§3!H§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§]z§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§3!H§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§!"§ = _loc9_.bottom - this.§3!H§ - this.§7!7§;
         this.§;j§ = _loc7_ - this.§4!"§;
         this.§9!O§ = _loc8_ - this.§7!7§;
         if(Math.abs(this.§;j§) < 3)
         {
            this.§;j§ = 0;
         }
         if(Math.abs(this.§9!O§) < 3)
         {
            this.§9!O§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§;j§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§4!"§ - this.§4!"§) / this.§;j§;
         }
         if(this.§9!O§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§7!7§ - this.§7!7§) / this.§9!O§;
         }
         this.§+x§ = Math.min(_loc10_,_loc11_);
         this.§@G§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§-e§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§-e§ = this.§+x§;
         }
         this.§6B§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§]z§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§3!H§;
            this.mButtonMarginX2 = _loc19_ - this.§4!"§;
            this.mButtonMarginY2 = _loc20_ - this.§7!7§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§@G§)
            {
               this.§6B§ = 1 + (mClip.getChildByName("Surface").height - this.§7!7§ - this.§7!7§) / this.mButtonMarginY2;
            }
            else
            {
               this.§6B§ = 1 + (mClip.getChildByName("Surface").width - this.§4!"§ - this.§4!"§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§@y§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§"!@§ = this.§@y§.x - mClip.getChildByName("Surface").x;
            this.§;k§ = this.§@y§.y - mClip.getChildByName("Surface").y;
            this.§implements§ = this.§@y§.x + this.§@y§.width - (this.§@y§.x + mClip.getChildByName("Surface").width);
            this.§<J§ = this.§@y§.y + this.§@y§.height - (this.§@y§.y + mClip.getChildByName("Surface").height);
            this.§,o§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§>!P§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§@! § = §0y§.§!z§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§@! § = §0y§.§,!!§;
            }
         }
         this.§-m§();
      }
      
      public function §-m§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§0!O§ = null;
         var _loc8_:§0y§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§[!D§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §[!D§;
         }
         this.§9%§ = new Vector.<§0y§>();
         this.§]g§();
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
            _loc7_ = new §0!O§(_loc6_,this,null,_loc5_);
            §[!L§.push(_loc7_);
            _loc8_ = new §0y§(this.§@! §,_loc4_);
            this.§9%§.push(_loc8_);
            _loc9_ = this.§4!"§;
            _loc10_ = this.§+x§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§9h§ == §&!R§)
            {
               _loc9_ = (this.§7u§ - (_loc10_ - 1) * this.§;j§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§[!L§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§[!L§.push(new param2(_loc12_,_loc7_,new this.§@E§() as MovieClip));
               }
               _loc13_ = _loc7_.§[!L§[_loc7_.§[!L§.length - 1] as §[!D§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§3!3§(_loc14_,this.§6!;§);
                  if(this.§if§ == §+!0§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§6!;§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§6B§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§;j§;
                  _loc13_.y = this.§7!7§ + _loc11_ * this.§9!O§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§+x§ * this.§6B§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§+x§ * this.§6B§) / this.§+x§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§+x§ * this.§6B§) % this.§+x§;
                  if(this.§@G§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§;j§ + _loc16_ * this.§+x§ * this.§;j§;
                     _loc13_.y = this.§7!7§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§7!7§ + _loc18_ * this.§9!O§ + _loc16_ * this.§+x§ * this.§9!O§;
                  }
               }
               _loc8_.§0q§(_loc13_);
               _loc11_++;
            }
            _loc8_.§;I§("");
            _loc7_.§-!J§(this.§+x§,this.§]z§,this.§3!H§,this.§-e§ * this.§;j§,this.§-e§ * this.§9!O§,this.§6B§,this.§-e§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §1!C§() : int
      {
         return this.§+x§;
      }
      
      public function get §'S§() : int
      {
         if(this.§1!C§ == 0)
         {
            return 0;
         }
         return this.§^L§(this.§@![§).§"!H§.length / this.§1!C§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§08§) : void
      {
         var _loc5_:§0y§ = null;
         var _loc4_:§0!O§ = getItemByName(this.§@![§) as §0!O§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§"R§(_loc4_.§0e§ - 1);
               this.§0T§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§"R§(_loc4_.§0e§ + 1);
               this.§0T§();
            }
         }
         else if(param2.length > 0 && (param1 == §08§.LISTENER_EVENT_MOUSE_DOWN || param1 == §08§.LISTENER_EVENT_MOUSE_UP) && param3 is §?!h§)
         {
            if((_loc5_ = this.§^L§((param3 as §?!h§).mParentContainer.mName.toUpperCase())) && param3 is §[!D§)
            {
               _loc5_.§;I§((param3 as §?!h§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §[c§(param1:String, param2:int) : void
      {
         var _loc3_:§0!O§ = getItemByName(param1) as §0!O§;
         if(_loc3_)
         {
            _loc3_.§"R§(param2);
            this.§0T§();
         }
      }
      
      public function §^L§(param1:String) : §0y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9%§.length)
         {
            if(param1.toUpperCase() == (this.§9%§[_loc2_] as §0y§).mName.toUpperCase())
            {
               return this.§9%§[_loc2_] as §0y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7!'§(param1:String) : void
      {
         this.§@![§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §[!L§.length)
         {
            if(§[!L§[_loc2_] is §0!O§)
            {
               if((§[!L§[_loc2_] as §0!O§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§[!L§[_loc2_] as §0!O§).setActiveStatus(true);
                  if(this.§,o§)
                  {
                     this.§@y§.x = (§[!L§[_loc2_] as §0!O§).x + this.§"!@§;
                     this.§@y§.width = (§[!L§[_loc2_] as §0!O§).width + this.§implements§;
                  }
                  if(this.§>!P§)
                  {
                     this.§@y§.y = (§[!L§[_loc2_] as §0!O§).y + this.§;k§;
                     this.§@y§.height = (§[!L§[_loc2_] as §0!O§).height + this.§<J§;
                  }
               }
               else
               {
                  (§[!L§[_loc2_] as §0!O§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§0T§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§0y§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§9%§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §0T§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§0!O§ = getItemByName(this.§@![§) as §0!O§;
         if(_loc1_)
         {
            if(_loc1_.§0e§ > 0)
            {
               (getItemByName("Button_Scroll1") as §^-§).setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §^-§).setComponentState(§0j§.§%!T§);
            }
            if(_loc1_.§0e§ < _loc1_.§52§ - 1)
            {
               (getItemByName("Button_Scroll2") as §^-§).setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §^-§).setComponentState(§0j§.§%!T§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §^-§).setComponentState(§0j§.§%!T§);
            (getItemByName("Button_Scroll2") as §^-§).setComponentState(§0j§.§%!T§);
         }
      }
      
      public function §]g§() : void
      {
         var _loc2_:§0!O§ = null;
         var _loc1_:int = §[!L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §[!L§[_loc1_] as §0!O§;
            if(_loc2_)
            {
               _loc2_.clear();
               §[!L§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§7!'§("");
      }
      
      public function §&!H§() : void
      {
         var _loc1_:§0y§ = null;
         for each(_loc1_ in this.§9%§)
         {
            _loc1_.§&!H§();
         }
      }
      
      public function §@'§() : Array
      {
         if(this.§^L§(this.§@![§) == null)
         {
            §!6§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§^L§(this.§@![§).§-B§();
      }
      
      public function §@!d§(param1:Array) : void
      {
         this.§^L§(this.§@![§).§@!d§(param1);
      }
      
      public function §"!C§(param1:Number) : void
      {
         this.§^L§(this.§@![§).§"!C§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§@E§ = null;
         this.§9%§ = null;
         this.§9!'§ = null;
      }
   }
}
