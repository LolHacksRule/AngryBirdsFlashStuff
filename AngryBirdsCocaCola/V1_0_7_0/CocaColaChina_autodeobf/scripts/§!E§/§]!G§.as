package §!E§
{
   import §%!G§.§ !G§;
   import §2!$§.§#!K§;
   import §2!$§.§95§;
   import §2!$§.§<!%§;
   import §2!$§.§=!&§;
   import §?@§.§"]§;
   import §^!L§.§@x§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]!G§ extends §-!%§
   {
      
      public static const §7h§:int = 0;
      
      public static const §<L§:int = 1;
      
      public static const §^4§:int = 2;
       
      
      public var §`6§:String;
      
      public var §7!D§:Class;
      
      public var §;!V§:String = null;
      
      public var §!D§:Vector.<§95§>;
      
      public var §5!_§:int;
      
      public var §5r§:Number;
      
      public var §]! §:Number;
      
      public var §!!$§:Number;
      
      public var §false§:Number;
      
      public var §"j§:Number;
      
      public var §9!>§:Number;
      
      public var §[l§:Number;
      
      public var §7r§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §2!M§:int;
      
      public var §&9§:Number;
      
      public var §2!#§:String = "";
      
      public var §!B§:int;
      
      public var §-!T§:int;
      
      public var §1!§:GlowFilter;
      
      public var §3o§:Boolean = true;
      
      public var §;!<§:int;
      
      public var §@V§:int;
      
      public var §0!,§:Number = 0;
      
      public var §2N§:Number = 0;
      
      public var §8!>§:Number = 0;
      
      public var §7E§:Number = 0;
      
      public var §=!0§:Boolean = false;
      
      public var §>c§:Boolean = false;
      
      public var §<!-§:MovieClip = null;
      
      public function §]!G§(param1:XML, param2:§-!%§, param3:§ !G§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§`6§ = param1.@button;
         if(this.§`6§.length > 0)
         {
            this.§7!D§ = §@x§.§="§(this.§`6§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§;!V§ = _loc5_;
         }
         this.§!B§ = §7h§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§!B§ = §<L§;
            }
         }
         this.§-!T§ = §^4§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§-!T§ = §7h§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§1!§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            § 7§.push(new §;!P§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            § 7§.push(new §;!P§(_loc18_,this));
         }
         this.§5r§ = mClip.getChildByName("Surface").x;
         this.§]! § = mClip.getChildByName("Surface").y;
         this.§!!$§ = mClip.getChildByName("Surface").width;
         this.§false§ = mClip.getChildByName("Surface").height;
         this.§"j§ = mClip.getChildByName("Button_Area1").x - this.§5r§;
         this.§9!>§ = mClip.getChildByName("Button_Area1").y - this.§]! §;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§5r§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§]! §;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§&9§ = _loc9_.bottom - this.§]! § - this.§9!>§;
         this.§[l§ = _loc7_ - this.§"j§;
         this.§7r§ = _loc8_ - this.§9!>§;
         if(Math.abs(this.§[l§) < 3)
         {
            this.§[l§ = 0;
         }
         if(Math.abs(this.§7r§) < 3)
         {
            this.§7r§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§[l§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§"j§ - this.§"j§) / this.§[l§;
         }
         if(this.§7r§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§9!>§ - this.§9!>§) / this.§7r§;
         }
         this.§5!_§ = Math.min(_loc10_,_loc11_);
         this.§3o§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§;!<§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§;!<§ = this.§5!_§;
         }
         this.§2!M§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§5r§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§]! §;
            this.mButtonMarginX2 = _loc19_ - this.§"j§;
            this.mButtonMarginY2 = _loc20_ - this.§9!>§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§3o§)
            {
               this.§2!M§ = 1 + (mClip.getChildByName("Surface").height - this.§9!>§ - this.§9!>§) / this.mButtonMarginY2;
            }
            else
            {
               this.§2!M§ = 1 + (mClip.getChildByName("Surface").width - this.§"j§ - this.§"j§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§<!-§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§8!>§ = this.§<!-§.x - mClip.getChildByName("Surface").x;
            this.§7E§ = this.§<!-§.y - mClip.getChildByName("Surface").y;
            this.§0!,§ = this.§<!-§.x + this.§<!-§.width - (this.§<!-§.x + mClip.getChildByName("Surface").width);
            this.§2N§ = this.§<!-§.y + this.§<!-§.height - (this.§<!-§.y + mClip.getChildByName("Surface").height);
            this.§=!0§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§>c§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§@V§ = §95§.§,!N§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§@V§ = §95§.§%z§;
            }
         }
         this.§[F§();
      }
      
      public function §[F§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§%G§ = null;
         var _loc8_:§95§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§<!?§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §<!?§;
         }
         this.§!D§ = new Vector.<§95§>();
         this.§[W§();
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
            _loc7_ = new §%G§(_loc6_,this,null,_loc5_);
            § 7§.push(_loc7_);
            _loc8_ = new §95§(this.§@V§,_loc4_);
            this.§!D§.push(_loc8_);
            _loc9_ = this.§"j§;
            _loc10_ = this.§5!_§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§-!T§ == §7h§)
            {
               _loc9_ = (this.§!!$§ - (_loc10_ - 1) * this.§[l§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§ 7§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§ 7§.push(new param2(_loc12_,_loc7_,new this.§7!D§() as MovieClip));
               }
               _loc13_ = _loc7_.§ 7§[_loc7_.§ 7§.length - 1] as §<!?§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§7F§(_loc14_,this.§;!V§);
                  if(this.§!B§ == §<L§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§;!V§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§2!M§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§[l§;
                  _loc13_.y = this.§9!>§ + _loc11_ * this.§7r§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§5!_§ * this.§2!M§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§5!_§ * this.§2!M§) / this.§5!_§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§5!_§ * this.§2!M§) % this.§5!_§;
                  if(this.§3o§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§[l§ + _loc16_ * this.§5!_§ * this.§[l§;
                     _loc13_.y = this.§9!>§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§9!>§ + _loc18_ * this.§7r§ + _loc16_ * this.§5!_§ * this.§7r§;
                  }
               }
               _loc8_.§?1§(_loc13_);
               _loc11_++;
            }
            _loc8_.§%!N§("");
            _loc7_.§@!3§(this.§5!_§,this.§5r§,this.§]! §,this.§;!<§ * this.§[l§,this.§;!<§ * this.§7r§,this.§2!M§,this.§;!<§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §-%§() : int
      {
         return this.§5!_§;
      }
      
      public function get §5<§() : int
      {
         if(this.§-%§ == 0)
         {
            return 0;
         }
         return this.§]+§(this.§2!#§).§<>§.length / this.§-%§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§<!%§) : void
      {
         var _loc5_:§95§ = null;
         var _loc4_:§%G§ = getItemByName(this.§2!#§) as §%G§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§4!#§(_loc4_.§#c§ - 1);
               this.§]!$§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§4!#§(_loc4_.§#c§ + 1);
               this.§]!$§();
            }
         }
         else if(param2.length > 0 && (param1 == §<!%§.LISTENER_EVENT_MOUSE_DOWN || param1 == §<!%§.LISTENER_EVENT_MOUSE_UP) && param3 is §=!&§)
         {
            if((_loc5_ = this.§]+§((param3 as §=!&§).mParentContainer.mName.toUpperCase())) && param3 is §<!?§)
            {
               _loc5_.§%!N§((param3 as §=!&§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §[!R§(param1:String, param2:int) : void
      {
         var _loc3_:§%G§ = getItemByName(param1) as §%G§;
         if(_loc3_)
         {
            _loc3_.§4!#§(param2);
            this.§]!$§();
         }
      }
      
      public function §]+§(param1:String) : §95§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!D§.length)
         {
            if(param1.toUpperCase() == (this.§!D§[_loc2_] as §95§).mName.toUpperCase())
            {
               return this.§!D§[_loc2_] as §95§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §61§(param1:String) : void
      {
         this.§2!#§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < § 7§.length)
         {
            if(§ 7§[_loc2_] is §%G§)
            {
               if((§ 7§[_loc2_] as §%G§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§ 7§[_loc2_] as §%G§).setActiveStatus(true);
                  if(this.§=!0§)
                  {
                     this.§<!-§.x = (§ 7§[_loc2_] as §%G§).x + this.§8!>§;
                     this.§<!-§.width = (§ 7§[_loc2_] as §%G§).width + this.§0!,§;
                  }
                  if(this.§>c§)
                  {
                     this.§<!-§.y = (§ 7§[_loc2_] as §%G§).y + this.§7E§;
                     this.§<!-§.height = (§ 7§[_loc2_] as §%G§).height + this.§2N§;
                  }
               }
               else
               {
                  (§ 7§[_loc2_] as §%G§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§]!$§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§95§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§!D§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §]!$§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§%G§ = getItemByName(this.§2!#§) as §%G§;
         if(_loc1_)
         {
            if(_loc1_.§#c§ > 0)
            {
               (getItemByName("Button_Scroll1") as §;!P§).setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §;!P§).setComponentState(§#!K§.§3H§);
            }
            if(_loc1_.§#c§ < _loc1_.§>!&§ - 1)
            {
               (getItemByName("Button_Scroll2") as §;!P§).setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §;!P§).setComponentState(§#!K§.§3H§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §;!P§).setComponentState(§#!K§.§3H§);
            (getItemByName("Button_Scroll2") as §;!P§).setComponentState(§#!K§.§3H§);
         }
      }
      
      public function §[W§() : void
      {
         var _loc2_:§%G§ = null;
         var _loc1_:int = § 7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § 7§[_loc1_] as §%G§;
            if(_loc2_)
            {
               _loc2_.clear();
               § 7§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§61§("");
      }
      
      public function §,!T§() : void
      {
         var _loc1_:§95§ = null;
         for each(_loc1_ in this.§!D§)
         {
            _loc1_.§,!T§();
         }
      }
      
      public function §6+§() : Array
      {
         if(this.§]+§(this.§2!#§) == null)
         {
            §"]§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§]+§(this.§2!#§).§@r§();
      }
      
      public function §&!!§(param1:Array) : void
      {
         this.§]+§(this.§2!#§).§&!!§(param1);
      }
      
      public function §48§(param1:Number) : void
      {
         this.§]+§(this.§2!#§).§48§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§7!D§ = null;
         this.§!D§ = null;
         this.§1!§ = null;
      }
   }
}
