package §5!8§
{
   import §"p§.§@8§;
   import §@">§.§%!u§;
   import §^x§.§3!r§;
   import §^x§.§8$§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import com.rovio.assets.§!"'§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §-!+§ extends §+!?§
   {
      
      public static const §9f§:int = 0;
      
      public static const §?!t§:int = 1;
      
      public static const §1M§:int = 2;
       
      
      public var §!!p§:String;
      
      public var §,6§:Class;
      
      public var §]"8§:String = null;
      
      public var § !H§:Vector.<§8$§>;
      
      public var §,D§:int;
      
      public var §^">§:Number;
      
      public var §5!_§:Number;
      
      public var §1!X§:Number;
      
      public var §8!K§:Number;
      
      public var §each §:Number;
      
      public var §4!C§:Number;
      
      public var § V§:Number;
      
      public var §;!d§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §"P§:int;
      
      public var §1">§:Number;
      
      public var §@P§:String = "";
      
      public var §!!l§:int;
      
      public var §`!$§:int;
      
      public var §7]§:GlowFilter;
      
      public var §4^§:Boolean = true;
      
      public var §9!V§:int;
      
      public var §"_§:int;
      
      public var §4!d§:Number = 0;
      
      public var §"!+§:Number = 0;
      
      public var §7R§:Number = 0;
      
      public var §2!2§:Number = 0;
      
      public var §6!u§:Boolean = false;
      
      public var §^<§:Boolean = false;
      
      public var §^i§:MovieClip = null;
      
      public function §-!+§(param1:XML, param2:§+!?§, param3:§%!u§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§!!p§ = param1.@button;
         if(this.§!!p§.length > 0)
         {
            this.§,6§ = §!"'§.§%!Q§(this.§!!p§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§]"8§ = _loc5_;
         }
         this.§!!l§ = §9f§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§!!l§ = §?!t§;
            }
         }
         this.§`!$§ = §1M§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§`!$§ = §9f§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§7]§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §@"9§.push(new §;!Z§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §@"9§.push(new §;!Z§(_loc18_,this));
         }
         this.§^">§ = mClip.getChildByName("Surface").x;
         this.§5!_§ = mClip.getChildByName("Surface").y;
         this.§1!X§ = mClip.getChildByName("Surface").width;
         this.§8!K§ = mClip.getChildByName("Surface").height;
         this.§each § = mClip.getChildByName("Button_Area1").x - this.§^">§;
         this.§4!C§ = mClip.getChildByName("Button_Area1").y - this.§5!_§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§^">§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§5!_§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§1">§ = _loc9_.bottom - this.§5!_§ - this.§4!C§;
         this.§ V§ = _loc7_ - this.§each §;
         this.§;!d§ = _loc8_ - this.§4!C§;
         if(Math.abs(this.§ V§) < 3)
         {
            this.§ V§ = 0;
         }
         if(Math.abs(this.§;!d§) < 3)
         {
            this.§;!d§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§ V§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§each § - this.§each §) / this.§ V§;
         }
         if(this.§;!d§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§4!C§ - this.§4!C§) / this.§;!d§;
         }
         this.§,D§ = Math.min(_loc10_,_loc11_);
         this.§4^§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§9!V§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§9!V§ = this.§,D§;
         }
         this.§"P§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§^">§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§5!_§;
            this.mButtonMarginX2 = _loc19_ - this.§each §;
            this.mButtonMarginY2 = _loc20_ - this.§4!C§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§4^§)
            {
               this.§"P§ = 1 + (mClip.getChildByName("Surface").height - this.§4!C§ - this.§4!C§) / this.mButtonMarginY2;
            }
            else
            {
               this.§"P§ = 1 + (mClip.getChildByName("Surface").width - this.§each § - this.§each §) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§^i§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§7R§ = this.§^i§.x - mClip.getChildByName("Surface").x;
            this.§2!2§ = this.§^i§.y - mClip.getChildByName("Surface").y;
            this.§4!d§ = this.§^i§.x + this.§^i§.width - (this.§^i§.x + mClip.getChildByName("Surface").width);
            this.§"!+§ = this.§^i§.y + this.§^i§.height - (this.§^i§.y + mClip.getChildByName("Surface").height);
            this.§6!u§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§^<§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§"_§ = §8$§.§!7§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§"_§ = §8$§.§,"?§;
            }
         }
         this.§<`§();
      }
      
      public function §<`§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§+!^§ = null;
         var _loc8_:§8$§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§-">§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §-">§;
         }
         this.§ !H§ = new Vector.<§8$§>();
         this.§!w§();
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
            _loc7_ = new §+!^§(_loc6_,this,null,_loc5_);
            §@"9§.push(_loc7_);
            _loc8_ = new §8$§(this.§"_§,_loc4_);
            this.§ !H§.push(_loc8_);
            _loc9_ = this.§each §;
            _loc10_ = this.§,D§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§`!$§ == §9f§)
            {
               _loc9_ = (this.§1!X§ - (_loc10_ - 1) * this.§ V§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§@"9§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§@"9§.push(new param2(_loc12_,_loc7_,new this.§,6§() as MovieClip));
               }
               _loc13_ = _loc7_.§@"9§[_loc7_.§@"9§.length - 1] as §-">§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§]"8§);
                  if(this.§!!l§ == §?!t§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§]"8§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§"P§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§ V§;
                  _loc13_.y = this.§4!C§ + _loc11_ * this.§;!d§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§,D§ * this.§"P§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§,D§ * this.§"P§) / this.§,D§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§,D§ * this.§"P§) % this.§,D§;
                  if(this.§4^§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§ V§ + _loc16_ * this.§,D§ * this.§ V§;
                     _loc13_.y = this.§4!C§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§4!C§ + _loc18_ * this.§;!d§ + _loc16_ * this.§,D§ * this.§;!d§;
                  }
               }
               _loc8_.§!T§(_loc13_);
               _loc11_++;
            }
            _loc8_.§!!5§("");
            _loc7_.§=J§(this.§,D§,this.§^">§,this.§5!_§,this.§9!V§ * this.§ V§,this.§9!V§ * this.§;!d§,this.§"P§,this.§9!V§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §0y§() : int
      {
         return this.§,D§;
      }
      
      public function get §'!L§() : int
      {
         if(this.§0y§ == 0)
         {
            return 0;
         }
         return this.§]!O§(this.§@P§).§`c§.length / this.§0y§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§<!w§) : void
      {
         var _loc5_:§8$§ = null;
         var _loc4_:§+!^§ = getItemByName(this.§@P§) as §+!^§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§-!?§(_loc4_.§ Y§ - 1);
               this.§`!'§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§-!?§(_loc4_.§ Y§ + 1);
               this.§`!'§();
            }
         }
         else if(param2.length > 0 && (param1 == §<!w§.LISTENER_EVENT_MOUSE_DOWN || param1 == §<!w§.LISTENER_EVENT_MOUSE_UP) && param3 is §3!r§)
         {
            if((_loc5_ = this.§]!O§((param3 as §3!r§).mParentContainer.mName.toUpperCase())) && param3 is §-">§)
            {
               _loc5_.§!!5§((param3 as §3!r§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §71§(param1:String, param2:int) : void
      {
         var _loc3_:§+!^§ = getItemByName(param1) as §+!^§;
         if(_loc3_)
         {
            _loc3_.§-!?§(param2);
            this.§`!'§();
         }
      }
      
      public function §]!O§(param1:String) : §8$§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !H§.length)
         {
            if(param1.toUpperCase() == (this.§ !H§[_loc2_] as §8$§).mName.toUpperCase())
            {
               return this.§ !H§[_loc2_] as §8$§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §#!s§(param1:String) : void
      {
         this.§@P§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §@"9§.length)
         {
            if(§@"9§[_loc2_] is §+!^§)
            {
               if((§@"9§[_loc2_] as §+!^§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§@"9§[_loc2_] as §+!^§).setActiveStatus(true);
                  if(this.§6!u§)
                  {
                     this.§^i§.x = (§@"9§[_loc2_] as §+!^§).x + this.§7R§;
                     this.§^i§.width = (§@"9§[_loc2_] as §+!^§).width + this.§4!d§;
                  }
                  if(this.§^<§)
                  {
                     this.§^i§.y = (§@"9§[_loc2_] as §+!^§).y + this.§2!2§;
                     this.§^i§.height = (§@"9§[_loc2_] as §+!^§).height + this.§"!+§;
                  }
               }
               else
               {
                  (§@"9§[_loc2_] as §+!^§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§`!'§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§8$§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§ !H§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §`!'§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§+!^§ = getItemByName(this.§@P§) as §+!^§;
         if(_loc1_)
         {
            if(_loc1_.§ Y§ > 0)
            {
               (getItemByName("Button_Scroll1") as §;!Z§).setComponentState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §;!Z§).setComponentState(§;_§.§<!v§);
            }
            if(_loc1_.§ Y§ < _loc1_.§5!y§ - 1)
            {
               (getItemByName("Button_Scroll2") as §;!Z§).setComponentState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §;!Z§).setComponentState(§;_§.§<!v§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §;!Z§).setComponentState(§;_§.§<!v§);
            (getItemByName("Button_Scroll2") as §;!Z§).setComponentState(§;_§.§<!v§);
         }
      }
      
      public function §!w§() : void
      {
         var _loc2_:§+!^§ = null;
         var _loc1_:int = §@"9§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §@"9§[_loc1_] as §+!^§;
            if(_loc2_)
            {
               _loc2_.clear();
               §@"9§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§#!s§("");
      }
      
      public function §?!T§() : void
      {
         var _loc1_:§8$§ = null;
         for each(_loc1_ in this.§ !H§)
         {
            _loc1_.§?!T§();
         }
      }
      
      public function §&r§() : Array
      {
         if(this.§]!O§(this.§@P§) == null)
         {
            §@8§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§]!O§(this.§@P§).§@!7§();
      }
      
      public function §]![§(param1:Array) : void
      {
         this.§]!O§(this.§@P§).§]![§(param1);
      }
      
      public function §+!n§(param1:Number) : void
      {
         this.§]!O§(this.§@P§).§+!n§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§,6§ = null;
         this.§ !H§ = null;
         this.§7]§ = null;
      }
   }
}
