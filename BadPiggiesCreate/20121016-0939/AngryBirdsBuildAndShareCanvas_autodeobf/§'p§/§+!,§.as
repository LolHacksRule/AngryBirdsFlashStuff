package §'p§
{
   import §'!A§.§ !q§;
   import §'!A§.§-!2§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §1"2§.§'s§;
   import §=!M§.§9!P§;
   import com.rovio.assets.§>!]§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §+!,§ extends §`!T§
   {
      
      public static const §;e§:int = 0;
      
      public static const §6!s§:int = 1;
      
      public static const §1T§:int = 2;
       
      
      public var §=!G§:String;
      
      public var §<9§:Class;
      
      public var §[$§:String = null;
      
      public var §4"%§:Vector.<§ !q§>;
      
      public var §2v§:int;
      
      public var §?"&§:Number;
      
      public var §9!o§:Number;
      
      public var §`"?§:Number;
      
      public var §0m§:Number;
      
      public var §3K§:Number;
      
      public var §2!!§:Number;
      
      public var §"5§:Number;
      
      public var §1X§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §-!^§:int;
      
      public var §``§:Number;
      
      public var §0y§:String = "";
      
      public var §"!?§:int;
      
      public var §,!D§:int;
      
      public var §6Y§:GlowFilter;
      
      public var §?!-§:Boolean = true;
      
      public var §<!n§:int;
      
      public var §4l§:int;
      
      public var §[w§:Number = 0;
      
      public var §@m§:Number = 0;
      
      public var §>R§:Number = 0;
      
      public var §?,§:Number = 0;
      
      public var §?!3§:Boolean = false;
      
      public var §?e§:Boolean = false;
      
      public var §;"5§:MovieClip = null;
      
      public function §+!,§(param1:XML, param2:§`!T§, param3:§'s§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§=!G§ = param1.@button;
         if(this.§=!G§.length > 0)
         {
            this.§<9§ = §>!]§.§1!8§(this.§=!G§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§[$§ = _loc5_;
         }
         this.§"!?§ = §;e§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§"!?§ = §6!s§;
            }
         }
         this.§,!D§ = §1T§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§,!D§ = §;e§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§6Y§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §"!_§.push(new §="#§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §"!_§.push(new §="#§(_loc18_,this));
         }
         this.§?"&§ = mClip.getChildByName("Surface").x;
         this.§9!o§ = mClip.getChildByName("Surface").y;
         this.§`"?§ = mClip.getChildByName("Surface").width;
         this.§0m§ = mClip.getChildByName("Surface").height;
         this.§3K§ = mClip.getChildByName("Button_Area1").x - this.§?"&§;
         this.§2!!§ = mClip.getChildByName("Button_Area1").y - this.§9!o§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§?"&§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§9!o§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§``§ = _loc9_.bottom - this.§9!o§ - this.§2!!§;
         this.§"5§ = _loc7_ - this.§3K§;
         this.§1X§ = _loc8_ - this.§2!!§;
         if(Math.abs(this.§"5§) < 3)
         {
            this.§"5§ = 0;
         }
         if(Math.abs(this.§1X§) < 3)
         {
            this.§1X§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§"5§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§3K§ - this.§3K§) / this.§"5§;
         }
         if(this.§1X§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§2!!§ - this.§2!!§) / this.§1X§;
         }
         this.§2v§ = Math.min(_loc10_,_loc11_);
         this.§?!-§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§<!n§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§<!n§ = this.§2v§;
         }
         this.§-!^§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§?"&§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§9!o§;
            this.mButtonMarginX2 = _loc19_ - this.§3K§;
            this.mButtonMarginY2 = _loc20_ - this.§2!!§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§?!-§)
            {
               this.§-!^§ = 1 + (mClip.getChildByName("Surface").height - this.§2!!§ - this.§2!!§) / this.mButtonMarginY2;
            }
            else
            {
               this.§-!^§ = 1 + (mClip.getChildByName("Surface").width - this.§3K§ - this.§3K§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§;"5§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§>R§ = this.§;"5§.x - mClip.getChildByName("Surface").x;
            this.§?,§ = this.§;"5§.y - mClip.getChildByName("Surface").y;
            this.§[w§ = this.§;"5§.x + this.§;"5§.width - (this.§;"5§.x + mClip.getChildByName("Surface").width);
            this.§@m§ = this.§;"5§.y + this.§;"5§.height - (this.§;"5§.y + mClip.getChildByName("Surface").height);
            this.§?!3§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§?e§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§4l§ = § !q§.§!!o§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§4l§ = § !q§.§>!2§;
            }
         }
         this.§[!5§();
      }
      
      public function §[!5§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§["!§ = null;
         var _loc8_:§ !q§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§-!"§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §-!"§;
         }
         this.§4"%§ = new Vector.<§ !q§>();
         this.§%!n§();
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
            _loc7_ = new §["!§(_loc6_,this,null,_loc5_);
            §"!_§.push(_loc7_);
            _loc8_ = new § !q§(this.§4l§,_loc4_);
            this.§4"%§.push(_loc8_);
            _loc9_ = this.§3K§;
            _loc10_ = this.§2v§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§,!D§ == §;e§)
            {
               _loc9_ = (this.§`"?§ - (_loc10_ - 1) * this.§"5§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§"!_§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§"!_§.push(new param2(_loc12_,_loc7_,new this.§<9§() as MovieClip));
               }
               _loc13_ = _loc7_.§"!_§[_loc7_.§"!_§.length - 1] as §-!"§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§[$§);
                  if(this.§"!?§ == §6!s§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§[$§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§-!^§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§"5§;
                  _loc13_.y = this.§2!!§ + _loc11_ * this.§1X§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§2v§ * this.§-!^§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§2v§ * this.§-!^§) / this.§2v§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§2v§ * this.§-!^§) % this.§2v§;
                  if(this.§?!-§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§"5§ + _loc16_ * this.§2v§ * this.§"5§;
                     _loc13_.y = this.§2!!§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§2!!§ + _loc18_ * this.§1X§ + _loc16_ * this.§2v§ * this.§1X§;
                  }
               }
               _loc8_.§?!;§(_loc13_);
               _loc11_++;
            }
            _loc8_.§>!,§("");
            _loc7_.§ ">§(this.§2v§,this.§?"&§,this.§9!o§,this.§<!n§ * this.§"5§,this.§<!n§ * this.§1X§,this.§-!^§,this.§<!n§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §8!j§() : int
      {
         return this.§2v§;
      }
      
      public function get §8",§() : int
      {
         if(this.§8!j§ == 0)
         {
            return 0;
         }
         return this.§]!v§(this.§0y§).§#!S§.length / this.§8!j§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:§ !q§ = null;
         var _loc4_:§["!§ = getItemByName(this.§0y§) as §["!§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§@!w§(_loc4_.§7!+§ - 1);
               this.§;!%§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§@!w§(_loc4_.§7!+§ + 1);
               this.§;!%§();
            }
         }
         else if(param2.length > 0 && (param1 == §-!S§.LISTENER_EVENT_MOUSE_DOWN || param1 == §-!S§.LISTENER_EVENT_MOUSE_UP) && param3 is §-!2§)
         {
            if((_loc5_ = this.§]!v§((param3 as §-!2§).mParentContainer.mName.toUpperCase())) && param3 is §-!"§)
            {
               _loc5_.§>!,§((param3 as §-!2§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §9"8§(param1:String, param2:int) : void
      {
         var _loc3_:§["!§ = getItemByName(param1) as §["!§;
         if(_loc3_)
         {
            _loc3_.§@!w§(param2);
            this.§;!%§();
         }
      }
      
      public function §]!v§(param1:String) : § !q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4"%§.length)
         {
            if(param1.toUpperCase() == (this.§4"%§[_loc2_] as § !q§).mName.toUpperCase())
            {
               return this.§4"%§[_loc2_] as § !q§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%D§(param1:String) : void
      {
         this.§0y§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §"!_§.length)
         {
            if(§"!_§[_loc2_] is §["!§)
            {
               if((§"!_§[_loc2_] as §["!§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§"!_§[_loc2_] as §["!§).setActiveStatus(true);
                  if(this.§?!3§)
                  {
                     this.§;"5§.x = (§"!_§[_loc2_] as §["!§).x + this.§>R§;
                     this.§;"5§.width = (§"!_§[_loc2_] as §["!§).width + this.§[w§;
                  }
                  if(this.§?e§)
                  {
                     this.§;"5§.y = (§"!_§[_loc2_] as §["!§).y + this.§?,§;
                     this.§;"5§.height = (§"!_§[_loc2_] as §["!§).height + this.§@m§;
                  }
               }
               else
               {
                  (§"!_§[_loc2_] as §["!§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§;!%§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§ !q§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§4"%§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §;!%§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§["!§ = getItemByName(this.§0y§) as §["!§;
         if(_loc1_)
         {
            if(_loc1_.§7!+§ > 0)
            {
               (getItemByName("Button_Scroll1") as §="#§).setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §="#§).setComponentState(§9!!§.§%!§);
            }
            if(_loc1_.§7!+§ < _loc1_.§+!j§ - 1)
            {
               (getItemByName("Button_Scroll2") as §="#§).setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §="#§).setComponentState(§9!!§.§%!§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §="#§).setComponentState(§9!!§.§%!§);
            (getItemByName("Button_Scroll2") as §="#§).setComponentState(§9!!§.§%!§);
         }
      }
      
      public function §%!n§() : void
      {
         var _loc2_:§["!§ = null;
         var _loc1_:int = §"!_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §"!_§[_loc1_] as §["!§;
            if(_loc2_)
            {
               _loc2_.clear();
               §"!_§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§%D§("");
      }
      
      public function §4!R§() : void
      {
         var _loc1_:§ !q§ = null;
         for each(_loc1_ in this.§4"%§)
         {
            _loc1_.§4!R§();
         }
      }
      
      public function §?!E§() : Array
      {
         if(this.§]!v§(this.§0y§) == null)
         {
            §9!P§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§]!v§(this.§0y§).§>U§();
      }
      
      public function §]!u§(param1:Array) : void
      {
         this.§]!v§(this.§0y§).§]!u§(param1);
      }
      
      public function § 0§(param1:Number) : void
      {
         this.§]!v§(this.§0y§).§ 0§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§<9§ = null;
         this.§4"%§ = null;
         this.§6Y§ = null;
      }
   }
}
