package §?>§
{
   import §7!P§.§-3§;
   import §7'§.§ ?§;
   import §7'§.§'q§;
   import §7'§.§-!6§;
   import §7'§.§[o§;
   import §8v§.§#Z§;
   import §^q§.§8,§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §5t§ extends § !V§
   {
      
      public static const §<;§:int = 0;
      
      public static const § !`§:int = 1;
      
      public static const §false§:int = 2;
       
      
      public var §#E§:String;
      
      public var §^N§:Class;
      
      public var §!t§:String = null;
      
      public var §3@§:Vector.<§[o§>;
      
      public var §[b§:int;
      
      public var §=!!§:Number;
      
      public var §@m§:Number;
      
      public var §@!^§:Number;
      
      public var §?B§:Number;
      
      public var §`#§:Number;
      
      public var §3!%§:Number;
      
      public var §8F§:Number;
      
      public var §-![§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §'n§:int;
      
      public var §#!R§:Number;
      
      public var §'h§:String = "";
      
      public var §"C§:int;
      
      public var §<E§:int;
      
      public var §]!O§:GlowFilter;
      
      public var §]!]§:Boolean = true;
      
      public var §1!R§:int;
      
      public var §8K§:int;
      
      public var §,k§:Number = 0;
      
      public var §%!Y§:Number = 0;
      
      public var §#!V§:Number = 0;
      
      public var §<!J§:Number = 0;
      
      public var §63§:Boolean = false;
      
      public var §9D§:Boolean = false;
      
      public var §^!;§:MovieClip = null;
      
      public function §5t§(param1:XML, param2:§ !V§, param3:§#Z§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§#E§ = param1.@button;
         if(this.§#E§.length > 0)
         {
            this.§^N§ = §8,§.§8X§(this.§#E§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§!t§ = _loc5_;
         }
         this.§"C§ = §<;§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§"C§ = § !`§;
            }
         }
         this.§<E§ = §false§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§<E§ = §<;§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§]!O§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §!x§.push(new §!&§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §!x§.push(new §!&§(_loc18_,this));
         }
         this.§=!!§ = mClip.getChildByName("Surface").x;
         this.§@m§ = mClip.getChildByName("Surface").y;
         this.§@!^§ = mClip.getChildByName("Surface").width;
         this.§?B§ = mClip.getChildByName("Surface").height;
         this.§`#§ = mClip.getChildByName("Button_Area1").x - this.§=!!§;
         this.§3!%§ = mClip.getChildByName("Button_Area1").y - this.§@m§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§=!!§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§@m§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§#!R§ = _loc9_.bottom - this.§@m§ - this.§3!%§;
         this.§8F§ = _loc7_ - this.§`#§;
         this.§-![§ = _loc8_ - this.§3!%§;
         if(Math.abs(this.§8F§) < 3)
         {
            this.§8F§ = 0;
         }
         if(Math.abs(this.§-![§) < 3)
         {
            this.§-![§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§8F§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§`#§ - this.§`#§) / this.§8F§;
         }
         if(this.§-![§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§3!%§ - this.§3!%§) / this.§-![§;
         }
         this.§[b§ = Math.min(_loc10_,_loc11_);
         this.§]!]§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§1!R§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§1!R§ = this.§[b§;
         }
         this.§'n§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§=!!§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§@m§;
            this.mButtonMarginX2 = _loc19_ - this.§`#§;
            this.mButtonMarginY2 = _loc20_ - this.§3!%§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§]!]§)
            {
               this.§'n§ = 1 + (mClip.getChildByName("Surface").height - this.§3!%§ - this.§3!%§) / this.mButtonMarginY2;
            }
            else
            {
               this.§'n§ = 1 + (mClip.getChildByName("Surface").width - this.§`#§ - this.§`#§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§^!;§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§#!V§ = this.§^!;§.x - mClip.getChildByName("Surface").x;
            this.§<!J§ = this.§^!;§.y - mClip.getChildByName("Surface").y;
            this.§,k§ = this.§^!;§.x + this.§^!;§.width - (this.§^!;§.x + mClip.getChildByName("Surface").width);
            this.§%!Y§ = this.§^!;§.y + this.§^!;§.height - (this.§^!;§.y + mClip.getChildByName("Surface").height);
            this.§63§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§9D§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§8K§ = §[o§.§+!J§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§8K§ = §[o§.§>o§;
            }
         }
         this.§"!Q§();
      }
      
      public function §"!Q§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§`n§ = null;
         var _loc8_:§[o§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§3! § = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §3! §;
         }
         this.§3@§ = new Vector.<§[o§>();
         this.§!'§();
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
            _loc7_ = new §`n§(_loc6_,this,null,_loc5_);
            §!x§.push(_loc7_);
            _loc8_ = new §[o§(this.§8K§,_loc4_);
            this.§3@§.push(_loc8_);
            _loc9_ = this.§`#§;
            _loc10_ = this.§[b§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§<E§ == §<;§)
            {
               _loc9_ = (this.§@!^§ - (_loc10_ - 1) * this.§8F§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§!x§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§!x§.push(new param2(_loc12_,_loc7_,new this.§^N§() as MovieClip));
               }
               _loc13_ = _loc7_.§!x§[_loc7_.§!x§.length - 1] as §3! §;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§&q§(_loc14_,this.§!t§);
                  if(this.§"C§ == § !`§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§!t§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§'n§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§8F§;
                  _loc13_.y = this.§3!%§ + _loc11_ * this.§-![§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§[b§ * this.§'n§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§[b§ * this.§'n§) / this.§[b§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§[b§ * this.§'n§) % this.§[b§;
                  if(this.§]!]§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§8F§ + _loc16_ * this.§[b§ * this.§8F§;
                     _loc13_.y = this.§3!%§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§3!%§ + _loc18_ * this.§-![§ + _loc16_ * this.§[b§ * this.§-![§;
                  }
               }
               _loc8_.§@P§(_loc13_);
               _loc11_++;
            }
            _loc8_.§@6§("");
            _loc7_.§1'§(this.§[b§,this.§=!!§,this.§@m§,this.§1!R§ * this.§8F§,this.§1!R§ * this.§-![§,this.§'n§,this.§1!R§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §`Z§() : int
      {
         return this.§[b§;
      }
      
      public function get §&!>§() : int
      {
         if(this.§`Z§ == 0)
         {
            return 0;
         }
         return this.§2[§(this.§'h§).§!!Z§.length / this.§`Z§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§-!6§) : void
      {
         var _loc5_:§[o§ = null;
         var _loc4_:§`n§ = getItemByName(this.§'h§) as §`n§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§<<§(_loc4_.§2H§ - 1);
               this.§-!?§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§<<§(_loc4_.§2H§ + 1);
               this.§-!?§();
            }
         }
         else if(param2.length > 0 && (param1 == §-!6§.LISTENER_EVENT_MOUSE_DOWN || param1 == §-!6§.LISTENER_EVENT_MOUSE_UP) && param3 is § ?§)
         {
            if((_loc5_ = this.§2[§((param3 as § ?§).mParentContainer.mName.toUpperCase())) && param3 is §3! §)
            {
               _loc5_.§@6§((param3 as § ?§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §^!Z§(param1:String, param2:int) : void
      {
         var _loc3_:§`n§ = getItemByName(param1) as §`n§;
         if(_loc3_)
         {
            _loc3_.§<<§(param2);
            this.§-!?§();
         }
      }
      
      public function §2[§(param1:String) : §[o§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3@§.length)
         {
            if(param1.toUpperCase() == (this.§3@§[_loc2_] as §[o§).mName.toUpperCase())
            {
               return this.§3@§[_loc2_] as §[o§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §`t§(param1:String) : void
      {
         this.§'h§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §!x§.length)
         {
            if(§!x§[_loc2_] is §`n§)
            {
               if((§!x§[_loc2_] as §`n§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§!x§[_loc2_] as §`n§).setActiveStatus(true);
                  if(this.§63§)
                  {
                     this.§^!;§.x = (§!x§[_loc2_] as §`n§).x + this.§#!V§;
                     this.§^!;§.width = (§!x§[_loc2_] as §`n§).width + this.§,k§;
                  }
                  if(this.§9D§)
                  {
                     this.§^!;§.y = (§!x§[_loc2_] as §`n§).y + this.§<!J§;
                     this.§^!;§.height = (§!x§[_loc2_] as §`n§).height + this.§%!Y§;
                  }
               }
               else
               {
                  (§!x§[_loc2_] as §`n§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§-!?§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§[o§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§3@§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §-!?§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§`n§ = getItemByName(this.§'h§) as §`n§;
         if(_loc1_)
         {
            if(_loc1_.§2H§ > 0)
            {
               (getItemByName("Button_Scroll1") as §!&§).setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §!&§).setComponentState(§'q§.§,%§);
            }
            if(_loc1_.§2H§ < _loc1_.§%!S§ - 1)
            {
               (getItemByName("Button_Scroll2") as §!&§).setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §!&§).setComponentState(§'q§.§,%§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §!&§).setComponentState(§'q§.§,%§);
            (getItemByName("Button_Scroll2") as §!&§).setComponentState(§'q§.§,%§);
         }
      }
      
      public function §!'§() : void
      {
         var _loc2_:§`n§ = null;
         var _loc1_:int = §!x§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!x§[_loc1_] as §`n§;
            if(_loc2_)
            {
               _loc2_.clear();
               §!x§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§`t§("");
      }
      
      public function §!m§() : void
      {
         var _loc1_:§[o§ = null;
         for each(_loc1_ in this.§3@§)
         {
            _loc1_.§!m§();
         }
      }
      
      public function §8D§() : Array
      {
         if(this.§2[§(this.§'h§) == null)
         {
            §-3§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§2[§(this.§'h§).§@k§();
      }
      
      public function §5b§(param1:Array) : void
      {
         this.§2[§(this.§'h§).§5b§(param1);
      }
      
      public function §6!-§(param1:Number) : void
      {
         this.§2[§(this.§'h§).§6!-§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§^N§ = null;
         this.§3@§ = null;
         this.§]!O§ = null;
      }
   }
}
