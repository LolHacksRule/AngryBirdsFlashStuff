package §77§
{
   import §0N§.§2!@§;
   import §5X§.§+!#§;
   import §5X§.§3""§;
   import §5X§.§8n§;
   import §5X§.§@!!§;
   import §^=§.§1"F§;
   import com.rovio.assets.§ !h§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §%]§ extends § ",§
   {
      
      public static const §9!Q§:int = 0;
      
      public static const §%s§:int = 1;
      
      public static const §4!x§:int = 2;
       
      
      public var §8?§:String;
      
      public var §8z§:Class;
      
      public var §0y§:String = null;
      
      public var §^!7§:Vector.<§3""§>;
      
      public var §@!s§:int;
      
      public var §+!$§:Number;
      
      public var §^c§:Number;
      
      public var §##§:Number;
      
      public var §6"0§:Number;
      
      public var §6!V§:Number;
      
      public var §<"A§:Number;
      
      public var §-!W§:Number;
      
      public var §7"5§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §#"§:int;
      
      public var §4x§:Number;
      
      public var §-Z§:String = "";
      
      public var §6_§:int;
      
      public var §,K§:int;
      
      public var §,-§:GlowFilter;
      
      public var §8"A§:Boolean = true;
      
      public var §@!D§:int;
      
      public var §2"=§:int;
      
      public var §-!"§:Number = 0;
      
      public var §&!T§:Number = 0;
      
      public var §3!q§:Number = 0;
      
      public var §"C§:Number = 0;
      
      public var §>Y§:Boolean = false;
      
      public var §]!N§:Boolean = false;
      
      public var §%!3§:MovieClip = null;
      
      public function §%]§(param1:XML, param2:§ ",§, param3:§1"F§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§8?§ = param1.@button;
         if(this.§8?§.length > 0)
         {
            this.§8z§ = § !h§.§["3§(this.§8?§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§0y§ = _loc5_;
         }
         this.§6_§ = §9!Q§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§6_§ = §%s§;
            }
         }
         this.§,K§ = §4!x§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§,K§ = §9!Q§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§,-§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §1"0§.push(new §@_§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §1"0§.push(new §@_§(_loc18_,this));
         }
         this.§+!$§ = mClip.getChildByName("Surface").x;
         this.§^c§ = mClip.getChildByName("Surface").y;
         this.§##§ = mClip.getChildByName("Surface").width;
         this.§6"0§ = mClip.getChildByName("Surface").height;
         this.§6!V§ = mClip.getChildByName("Button_Area1").x - this.§+!$§;
         this.§<"A§ = mClip.getChildByName("Button_Area1").y - this.§^c§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§+!$§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§^c§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§4x§ = _loc9_.bottom - this.§^c§ - this.§<"A§;
         this.§-!W§ = _loc7_ - this.§6!V§;
         this.§7"5§ = _loc8_ - this.§<"A§;
         if(Math.abs(this.§-!W§) < 3)
         {
            this.§-!W§ = 0;
         }
         if(Math.abs(this.§7"5§) < 3)
         {
            this.§7"5§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§-!W§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§6!V§ - this.§6!V§) / this.§-!W§;
         }
         if(this.§7"5§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§<"A§ - this.§<"A§) / this.§7"5§;
         }
         this.§@!s§ = Math.min(_loc10_,_loc11_);
         this.§8"A§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§@!D§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§@!D§ = this.§@!s§;
         }
         this.§#"§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§+!$§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§^c§;
            this.mButtonMarginX2 = _loc19_ - this.§6!V§;
            this.mButtonMarginY2 = _loc20_ - this.§<"A§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§8"A§)
            {
               this.§#"§ = 1 + (mClip.getChildByName("Surface").height - this.§<"A§ - this.§<"A§) / this.mButtonMarginY2;
            }
            else
            {
               this.§#"§ = 1 + (mClip.getChildByName("Surface").width - this.§6!V§ - this.§6!V§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§%!3§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§3!q§ = this.§%!3§.x - mClip.getChildByName("Surface").x;
            this.§"C§ = this.§%!3§.y - mClip.getChildByName("Surface").y;
            this.§-!"§ = this.§%!3§.x + this.§%!3§.width - (this.§%!3§.x + mClip.getChildByName("Surface").width);
            this.§&!T§ = this.§%!3§.y + this.§%!3§.height - (this.§%!3§.y + mClip.getChildByName("Surface").height);
            this.§>Y§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§]!N§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§2"=§ = §3""§.§&k§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§2"=§ = §3""§.§9!3§;
            }
         }
         this.§9<§();
      }
      
      public function §9<§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§1!_§ = null;
         var _loc8_:§3""§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§#"D§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §#"D§;
         }
         this.§^!7§ = new Vector.<§3""§>();
         this.§9!S§();
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
            _loc7_ = new §1!_§(_loc6_,this,null,_loc5_);
            §1"0§.push(_loc7_);
            _loc8_ = new §3""§(this.§2"=§,_loc4_);
            this.§^!7§.push(_loc8_);
            _loc9_ = this.§6!V§;
            _loc10_ = this.§@!s§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§,K§ == §9!Q§)
            {
               _loc9_ = (this.§##§ - (_loc10_ - 1) * this.§-!W§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§1"0§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§1"0§.push(new param2(_loc12_,_loc7_,new this.§8z§() as MovieClip));
               }
               _loc13_ = _loc7_.§1"0§[_loc7_.§1"0§.length - 1] as §#"D§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§]"$§(_loc14_,this.§0y§);
                  if(this.§6_§ == §%s§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§0y§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§#"§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§-!W§;
                  _loc13_.y = this.§<"A§ + _loc11_ * this.§7"5§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§@!s§ * this.§#"§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§@!s§ * this.§#"§) / this.§@!s§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§@!s§ * this.§#"§) % this.§@!s§;
                  if(this.§8"A§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§-!W§ + _loc16_ * this.§@!s§ * this.§-!W§;
                     _loc13_.y = this.§<"A§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§<"A§ + _loc18_ * this.§7"5§ + _loc16_ * this.§@!s§ * this.§7"5§;
                  }
               }
               _loc8_.§4"A§(_loc13_);
               _loc11_++;
            }
            _loc8_.§^0§("");
            _loc7_.§2"3§(this.§@!s§,this.§+!$§,this.§^c§,this.§@!D§ * this.§-!W§,this.§@!D§ * this.§7"5§,this.§#"§,this.§@!D§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §0<§() : int
      {
         return this.§@!s§;
      }
      
      public function get §9T§() : int
      {
         if(this.§0<§ == 0)
         {
            return 0;
         }
         return this.§`!`§(this.§-Z§).§1!'§.length / this.§0<§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§+!#§, param4:Event = null) : void
      {
         var _loc6_:§3""§ = null;
         var _loc5_:§1!_§ = getItemByName(this.§-Z§) as §1!_§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§&!F§(_loc5_.§@!-§ - 1);
               this.§0!P§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§&!F§(_loc5_.§@!-§ + 1);
               this.§0!P§();
            }
         }
         else if(param2.length > 0 && (param1 == §+!#§.LISTENER_EVENT_MOUSE_DOWN || param1 == §+!#§.LISTENER_EVENT_MOUSE_UP) && param3 is §8n§)
         {
            if((_loc6_ = this.§`!`§((param3 as §8n§).mParentContainer.mName.toUpperCase())) && param3 is §#"D§)
            {
               _loc6_.§^0§((param3 as §8n§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §-!r§(param1:String, param2:int) : void
      {
         var _loc3_:§1!_§ = getItemByName(param1) as §1!_§;
         if(_loc3_)
         {
            _loc3_.§&!F§(param2);
            this.§0!P§();
         }
      }
      
      public function §`!`§(param1:String) : §3""§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!7§.length)
         {
            if(param1.toUpperCase() == (this.§^!7§[_loc2_] as §3""§).mName.toUpperCase())
            {
               return this.§^!7§[_loc2_] as §3""§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §^!3§(param1:String) : void
      {
         this.§-Z§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §1"0§.length)
         {
            if(§1"0§[_loc2_] is §1!_§)
            {
               if((§1"0§[_loc2_] as §1!_§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§1"0§[_loc2_] as §1!_§).setActiveStatus(true);
                  if(this.§>Y§)
                  {
                     this.§%!3§.x = (§1"0§[_loc2_] as §1!_§).x + this.§3!q§;
                     this.§%!3§.width = (§1"0§[_loc2_] as §1!_§).width + this.§-!"§;
                  }
                  if(this.§]!N§)
                  {
                     this.§%!3§.y = (§1"0§[_loc2_] as §1!_§).y + this.§"C§;
                     this.§%!3§.height = (§1"0§[_loc2_] as §1!_§).height + this.§&!T§;
                  }
               }
               else
               {
                  (§1"0§[_loc2_] as §1!_§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§0!P§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§3""§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§^!7§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §0!P§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§1!_§ = getItemByName(this.§-Z§) as §1!_§;
         if(_loc1_)
         {
            if(_loc1_.§@!-§ > 0)
            {
               (getItemByName("Button_Scroll1") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§@!-§ < _loc1_.§&!2§ - 1)
            {
               (getItemByName("Button_Scroll2") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §@_§).setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §9!S§() : void
      {
         var _loc2_:§1!_§ = null;
         var _loc1_:int = §1"0§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §1"0§[_loc1_] as §1!_§;
            if(_loc2_)
            {
               _loc2_.clear();
               §1"0§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§^!3§("");
      }
      
      public function §!0§() : void
      {
         var _loc1_:§3""§ = null;
         for each(_loc1_ in this.§^!7§)
         {
            _loc1_.§!0§();
         }
      }
      
      public function §5"E§() : Array
      {
         if(this.§`!`§(this.§-Z§) == null)
         {
            §2!@§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§`!`§(this.§-Z§).§@T§();
      }
      
      public function §"!,§(param1:Array) : void
      {
         this.§`!`§(this.§-Z§).§"!,§(param1);
      }
      
      public function §[^§(param1:Number) : void
      {
         this.§`!`§(this.§-Z§).§[^§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§8z§ = null;
         this.§^!7§ = null;
         this.§,-§ = null;
      }
   }
}
