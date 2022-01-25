package §'P§
{
   import §'!G§.§1C§;
   import §7]§.§%!N§;
   import §7]§.§'T§;
   import §7]§.§8N§;
   import §7]§.§;T§;
   import §="§.§@5§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]! § extends §`;§
   {
      
      public static const §<>§:int = 0;
      
      public static const §95§:int = 1;
      
      public static const §,H§:int = 2;
       
      
      public var §!!$§:String;
      
      public var §false§:Class;
      
      public var §"j§:String = null;
      
      public var §9!>§:Vector.<§%!N§>;
      
      public var §[l§:int;
      
      public var §7r§:Number;
      
      public var §2!M§:Number;
      
      public var §&9§:Number;
      
      public var §2!#§:Number;
      
      public var §!B§:Number;
      
      public var §-!T§:Number;
      
      public var §1!§:Number;
      
      public var §3o§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §;!<§:int;
      
      public var §@V§:Number;
      
      public var §0!,§:String = "";
      
      public var §2N§:int;
      
      public var §8!>§:int;
      
      public var §7E§:GlowFilter;
      
      public var §=!0§:Boolean = true;
      
      public var §>c§:int;
      
      public var §<!-§:int;
      
      public var §[F§:Number = 0;
      
      public var §-%§:Number = 0;
      
      public var §5<§:Number = 0;
      
      public var §[!R§:Number = 0;
      
      public var §]+§:Boolean = false;
      
      public var §61§:Boolean = false;
      
      public var §]!$§:MovieClip = null;
      
      public function §]! §(param1:XML, param2:§`;§, param3:§^R§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§!!$§ = param1.@button;
         if(this.§!!$§.length > 0)
         {
            this.§false§ = §@5§.§>! §(this.§!!$§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§"j§ = _loc5_;
         }
         this.§2N§ = §<>§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§2N§ = §95§;
            }
         }
         this.§8!>§ = §,H§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§8!>§ = §<>§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§7E§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §1!M§.push(new §,!"§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §1!M§.push(new §,!"§(_loc18_,this));
         }
         this.§7r§ = mClip.getChildByName("Surface").x;
         this.§2!M§ = mClip.getChildByName("Surface").y;
         this.§&9§ = mClip.getChildByName("Surface").width;
         this.§2!#§ = mClip.getChildByName("Surface").height;
         this.§!B§ = mClip.getChildByName("Button_Area1").x - this.§7r§;
         this.§-!T§ = mClip.getChildByName("Button_Area1").y - this.§2!M§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§7r§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§2!M§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§@V§ = _loc9_.bottom - this.§2!M§ - this.§-!T§;
         this.§1!§ = _loc7_ - this.§!B§;
         this.§3o§ = _loc8_ - this.§-!T§;
         if(Math.abs(this.§1!§) < 3)
         {
            this.§1!§ = 0;
         }
         if(Math.abs(this.§3o§) < 3)
         {
            this.§3o§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§1!§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§!B§ - this.§!B§) / this.§1!§;
         }
         if(this.§3o§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§-!T§ - this.§-!T§) / this.§3o§;
         }
         this.§[l§ = Math.min(_loc10_,_loc11_);
         this.§=!0§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§>c§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§>c§ = this.§[l§;
         }
         this.§;!<§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§7r§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§2!M§;
            this.mButtonMarginX2 = _loc19_ - this.§!B§;
            this.mButtonMarginY2 = _loc20_ - this.§-!T§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§=!0§)
            {
               this.§;!<§ = 1 + (mClip.getChildByName("Surface").height - this.§-!T§ - this.§-!T§) / this.mButtonMarginY2;
            }
            else
            {
               this.§;!<§ = 1 + (mClip.getChildByName("Surface").width - this.§!B§ - this.§!B§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§]!$§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§5<§ = this.§]!$§.x - mClip.getChildByName("Surface").x;
            this.§[!R§ = this.§]!$§.y - mClip.getChildByName("Surface").y;
            this.§[F§ = this.§]!$§.x + this.§]!$§.width - (this.§]!$§.x + mClip.getChildByName("Surface").width);
            this.§-%§ = this.§]!$§.y + this.§]!$§.height - (this.§]!$§.y + mClip.getChildByName("Surface").height);
            this.§]+§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§61§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§<!-§ = §%!N§.§9H§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§<!-§ = §%!N§.§+!J§;
            }
         }
         this.§[W§();
      }
      
      public function §[W§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§@!3§ = null;
         var _loc8_:§%!N§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§+x§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §+x§;
         }
         this.§9!>§ = new Vector.<§%!N§>();
         this.§=!6§();
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
            _loc7_ = new §@!3§(_loc6_,this,null,_loc5_);
            §1!M§.push(_loc7_);
            _loc8_ = new §%!N§(this.§<!-§,_loc4_);
            this.§9!>§.push(_loc8_);
            _loc9_ = this.§!B§;
            _loc10_ = this.§[l§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§8!>§ == §<>§)
            {
               _loc9_ = (this.§&9§ - (_loc10_ - 1) * this.§1!§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§1!M§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§1!M§.push(new param2(_loc12_,_loc7_,new this.§false§() as MovieClip));
               }
               _loc13_ = _loc7_.§1!M§[_loc7_.§1!M§.length - 1] as §+x§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.include(_loc14_,this.§"j§);
                  if(this.§2N§ == §95§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§"j§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§;!<§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§1!§;
                  _loc13_.y = this.§-!T§ + _loc11_ * this.§3o§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§[l§ * this.§;!<§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§[l§ * this.§;!<§) / this.§[l§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§[l§ * this.§;!<§) % this.§[l§;
                  if(this.§=!0§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§1!§ + _loc16_ * this.§[l§ * this.§1!§;
                     _loc13_.y = this.§-!T§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§-!T§ + _loc18_ * this.§3o§ + _loc16_ * this.§[l§ * this.§3o§;
                  }
               }
               _loc8_.§@r§(_loc13_);
               _loc11_++;
            }
            _loc8_.§%z§("");
            _loc7_.§[4§(this.§[l§,this.§7r§,this.§2!M§,this.§>c§ * this.§1!§,this.§>c§ * this.§3o§,this.§;!<§,this.§>c§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §6+§() : int
      {
         return this.§[l§;
      }
      
      public function get §<!?§() : int
      {
         if(this.§6+§ == 0)
         {
            return 0;
         }
         return this.§>!9§(this.§0!,§).§,!T§.length / this.§6+§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§;T§) : void
      {
         var _loc5_:§%!N§ = null;
         var _loc4_:§@!3§ = getItemByName(this.§0!,§) as §@!3§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§3^§(_loc4_.§#c§ - 1);
               this.§9!S§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§3^§(_loc4_.§#c§ + 1);
               this.§9!S§();
            }
         }
         else if(param2.length > 0 && (param1 == §;T§.LISTENER_EVENT_MOUSE_DOWN || param1 == §;T§.LISTENER_EVENT_MOUSE_UP) && param3 is §'T§)
         {
            if((_loc5_ = this.§>!9§((param3 as §'T§).mParentContainer.mName.toUpperCase())) && param3 is §+x§)
            {
               _loc5_.§%z§((param3 as §'T§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §'p§(param1:String, param2:int) : void
      {
         var _loc3_:§@!3§ = getItemByName(param1) as §@!3§;
         if(_loc3_)
         {
            _loc3_.§3^§(param2);
            this.§9!S§();
         }
      }
      
      public function §>!9§(param1:String) : §%!N§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!>§.length)
         {
            if(param1.toUpperCase() == (this.§9!>§[_loc2_] as §%!N§).mName.toUpperCase())
            {
               return this.§9!>§[_loc2_] as §%!N§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7F§(param1:String) : void
      {
         this.§0!,§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §1!M§.length)
         {
            if(§1!M§[_loc2_] is §@!3§)
            {
               if((§1!M§[_loc2_] as §@!3§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§1!M§[_loc2_] as §@!3§).setActiveStatus(true);
                  if(this.§]+§)
                  {
                     this.§]!$§.x = (§1!M§[_loc2_] as §@!3§).x + this.§5<§;
                     this.§]!$§.width = (§1!M§[_loc2_] as §@!3§).width + this.§[F§;
                  }
                  if(this.§61§)
                  {
                     this.§]!$§.y = (§1!M§[_loc2_] as §@!3§).y + this.§[!R§;
                     this.§]!$§.height = (§1!M§[_loc2_] as §@!3§).height + this.§-%§;
                  }
               }
               else
               {
                  (§1!M§[_loc2_] as §@!3§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§9!S§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§%!N§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§9!>§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §9!S§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§@!3§ = getItemByName(this.§0!,§) as §@!3§;
         if(_loc1_)
         {
            if(_loc1_.§#c§ > 0)
            {
               (getItemByName("Button_Scroll1") as §,!"§).setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §,!"§).setComponentState(§8N§.§!N§);
            }
            if(_loc1_.§#c§ < _loc1_.§4!#§ - 1)
            {
               (getItemByName("Button_Scroll2") as §,!"§).setComponentState(§8N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §,!"§).setComponentState(§8N§.§!N§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §,!"§).setComponentState(§8N§.§!N§);
            (getItemByName("Button_Scroll2") as §,!"§).setComponentState(§8N§.§!N§);
         }
      }
      
      public function §=!6§() : void
      {
         var _loc2_:§@!3§ = null;
         var _loc1_:int = §1!M§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §1!M§[_loc1_] as §@!3§;
            if(_loc2_)
            {
               _loc2_.clear();
               §1!M§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§7F§("");
      }
      
      public function §,!N§() : void
      {
         var _loc1_:§%!N§ = null;
         for each(_loc1_ in this.§9!>§)
         {
            _loc1_.§,!N§();
         }
      }
      
      public function §9!M§() : Array
      {
         if(this.§>!9§(this.§0!,§) == null)
         {
            §1C§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§>!9§(this.§0!,§).§`!Z§();
      }
      
      public function §7x§(param1:Array) : void
      {
         this.§>!9§(this.§0!,§).§7x§(param1);
      }
      
      public function §^1§(param1:Number) : void
      {
         this.§>!9§(this.§0!,§).§^1§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§false§ = null;
         this.§9!>§ = null;
         this.§7E§ = null;
      }
   }
}
