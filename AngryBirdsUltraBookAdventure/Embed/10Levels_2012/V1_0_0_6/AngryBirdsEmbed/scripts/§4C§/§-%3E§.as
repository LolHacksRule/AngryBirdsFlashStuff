package §4C§
{
   import §0w§.§0#§;
   import §>K§.§9X§;
   import §`!0§.§"?§;
   import §`!0§.§4Y§;
   import §`!0§.§8`§;
   import §`!0§.§[4§;
   import com.rovio.assets.§!Q§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §->§ extends §1!=§
   {
      
      public static const §@!;§:int = 0;
      
      public static const §,R§:int = 1;
      
      public static const §`B§:int = 2;
       
      
      public var §10§:String;
      
      public var §#! §:Class;
      
      public var §&i§:String = null;
      
      public var §?L§:Vector.<§8`§>;
      
      public var § 7§:int;
      
      public var §%!"§:Number;
      
      public var §5!2§:Number;
      
      public var § !=§:Number;
      
      public var §>!0§:Number;
      
      public var §1>§:Number;
      
      public var §set §:Number;
      
      public var §1,§:Number;
      
      public var §%!I§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §5#§:int;
      
      public var §?m§:Number;
      
      public var §90§:String = "";
      
      public var §;0§:int;
      
      public var §][§:int;
      
      public var § !<§:GlowFilter;
      
      public var §;y§:Boolean = true;
      
      public var §6s§:int;
      
      public var §%!E§:int;
      
      public var §&l§:Number = 0;
      
      public var §6U§:Number = 0;
      
      public var §!!,§:Number = 0;
      
      public var §throw§:Number = 0;
      
      public var §+!"§:Boolean = false;
      
      public var §7^§:Boolean = false;
      
      public var §5G§:MovieClip = null;
      
      public function §->§(param1:XML, param2:§1!=§, param3:§0#§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§10§ = param1.@button;
         if(this.§10§.length > 0)
         {
            this.§#! § = §!Q§.§^!H§(this.§10§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§&i§ = _loc5_;
         }
         this.§;0§ = §@!;§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§;0§ = §,R§;
            }
         }
         this.§][§ = §`B§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§][§ = §@!;§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§ !<§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §@_§.push(new §6<§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §@_§.push(new §6<§(_loc18_,this));
         }
         this.§%!"§ = mClip.getChildByName("Surface").x;
         this.§5!2§ = mClip.getChildByName("Surface").y;
         this.§ !=§ = mClip.getChildByName("Surface").width;
         this.§>!0§ = mClip.getChildByName("Surface").height;
         this.§1>§ = mClip.getChildByName("Button_Area1").x - this.§%!"§;
         this.§set § = mClip.getChildByName("Button_Area1").y - this.§5!2§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§%!"§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§5!2§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§?m§ = _loc9_.bottom - this.§5!2§ - this.§set §;
         this.§1,§ = _loc7_ - this.§1>§;
         this.§%!I§ = _loc8_ - this.§set §;
         if(Math.abs(this.§1,§) < 3)
         {
            this.§1,§ = 0;
         }
         if(Math.abs(this.§%!I§) < 3)
         {
            this.§%!I§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§1,§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§1>§ - this.§1>§) / this.§1,§;
         }
         if(this.§%!I§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§set § - this.§set §) / this.§%!I§;
         }
         this.§ 7§ = Math.min(_loc10_,_loc11_);
         this.§;y§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§6s§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§6s§ = this.§ 7§;
         }
         this.§5#§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§%!"§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§5!2§;
            this.mButtonMarginX2 = _loc19_ - this.§1>§;
            this.mButtonMarginY2 = _loc20_ - this.§set §;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§;y§)
            {
               this.§5#§ = 1 + (mClip.getChildByName("Surface").height - this.§set § - this.§set §) / this.mButtonMarginY2;
            }
            else
            {
               this.§5#§ = 1 + (mClip.getChildByName("Surface").width - this.§1>§ - this.§1>§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§5G§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§!!,§ = this.§5G§.x - mClip.getChildByName("Surface").x;
            this.§throw§ = this.§5G§.y - mClip.getChildByName("Surface").y;
            this.§&l§ = this.§5G§.x + this.§5G§.width - (this.§5G§.x + mClip.getChildByName("Surface").width);
            this.§6U§ = this.§5G§.y + this.§5G§.height - (this.§5G§.y + mClip.getChildByName("Surface").height);
            this.§+!"§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§7^§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§%!E§ = §8`§.§^a§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§%!E§ = §8`§.§!d§;
            }
         }
         this.§7N§();
      }
      
      public function §7N§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§'=§ = null;
         var _loc8_:§8`§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§";§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §";§;
         }
         this.§?L§ = new Vector.<§8`§>();
         this.§;F§();
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
            _loc7_ = new §'=§(_loc6_,this,null,_loc5_);
            §@_§.push(_loc7_);
            _loc8_ = new §8`§(this.§%!E§,_loc4_);
            this.§?L§.push(_loc8_);
            _loc9_ = this.§1>§;
            _loc10_ = this.§ 7§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§][§ == §@!;§)
            {
               _loc9_ = (this.§ !=§ - (_loc10_ - 1) * this.§1,§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§@_§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§@_§.push(new param2(_loc12_,_loc7_,new this.§#! §() as MovieClip));
               }
               _loc13_ = _loc7_.§@_§[_loc7_.§@_§.length - 1] as §";§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§&!J§(_loc14_,this.§&i§);
                  if(this.§;0§ == §,R§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§&i§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§5#§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§1,§;
                  _loc13_.y = this.§set § + _loc11_ * this.§%!I§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§ 7§ * this.§5#§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§ 7§ * this.§5#§) / this.§ 7§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§ 7§ * this.§5#§) % this.§ 7§;
                  if(this.§;y§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§1,§ + _loc16_ * this.§ 7§ * this.§1,§;
                     _loc13_.y = this.§set § + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§set § + _loc18_ * this.§%!I§ + _loc16_ * this.§ 7§ * this.§%!I§;
                  }
               }
               _loc8_.§^!D§(_loc13_);
               _loc11_++;
            }
            _loc8_.§,P§("");
            _loc7_.§&!!§(this.§ 7§,this.§%!"§,this.§5!2§,this.§6s§ * this.§1,§,this.§6s§ * this.§%!I§,this.§5#§,this.§6s§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §<1§() : int
      {
         return this.§ 7§;
      }
      
      public function get §4Q§() : int
      {
         if(this.§<1§ == 0)
         {
            return 0;
         }
         return this.§>`§(this.§90§).§^`§.length / this.§<1§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc5_:§8`§ = null;
         var _loc4_:§'=§ = getItemByName(this.§90§) as §'=§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§+!I§(_loc4_.§<,§ - 1);
               this.§[Y§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§+!I§(_loc4_.§<,§ + 1);
               this.§[Y§();
            }
         }
         else if(param2.length > 0 && (param1 == §"?§.LISTENER_EVENT_MOUSE_DOWN || param1 == §"?§.LISTENER_EVENT_MOUSE_UP) && param3 is §4Y§)
         {
            if((_loc5_ = this.§>`§((param3 as §4Y§).mParentContainer.mName.toUpperCase())) && param3 is §";§)
            {
               _loc5_.§,P§((param3 as §4Y§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §"J§(param1:String, param2:int) : void
      {
         var _loc3_:§'=§ = getItemByName(param1) as §'=§;
         if(_loc3_)
         {
            _loc3_.§+!I§(param2);
            this.§[Y§();
         }
      }
      
      public function §>`§(param1:String) : §8`§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?L§.length)
         {
            if(param1.toUpperCase() == (this.§?L§[_loc2_] as §8`§).mName.toUpperCase())
            {
               return this.§?L§[_loc2_] as §8`§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1!#§(param1:String) : void
      {
         this.§90§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §@_§.length)
         {
            if(§@_§[_loc2_] is §'=§)
            {
               if((§@_§[_loc2_] as §'=§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§@_§[_loc2_] as §'=§).setActiveStatus(true);
                  if(this.§+!"§)
                  {
                     this.§5G§.x = (§@_§[_loc2_] as §'=§).x + this.§!!,§;
                     this.§5G§.width = (§@_§[_loc2_] as §'=§).width + this.§&l§;
                  }
                  if(this.§7^§)
                  {
                     this.§5G§.y = (§@_§[_loc2_] as §'=§).y + this.§throw§;
                     this.§5G§.height = (§@_§[_loc2_] as §'=§).height + this.§6U§;
                  }
               }
               else
               {
                  (§@_§[_loc2_] as §'=§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§[Y§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§8`§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§?L§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §[Y§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§'=§ = getItemByName(this.§90§) as §'=§;
         if(_loc1_)
         {
            if(_loc1_.§<,§ > 0)
            {
               (getItemByName("Button_Scroll1") as §6<§).setComponentState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §6<§).setComponentState(§[4§.§?[§);
            }
            if(_loc1_.§<,§ < _loc1_.§+!2§ - 1)
            {
               (getItemByName("Button_Scroll2") as §6<§).setComponentState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §6<§).setComponentState(§[4§.§?[§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §6<§).setComponentState(§[4§.§?[§);
            (getItemByName("Button_Scroll2") as §6<§).setComponentState(§[4§.§?[§);
         }
      }
      
      public function §;F§() : void
      {
         var _loc2_:§'=§ = null;
         var _loc1_:int = §@_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §@_§[_loc1_] as §'=§;
            if(_loc2_)
            {
               _loc2_.clear();
               §@_§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§1!#§("");
      }
      
      public function §8s§() : void
      {
         var _loc1_:§8`§ = null;
         for each(_loc1_ in this.§?L§)
         {
            _loc1_.§8s§();
         }
      }
      
      public function §8C§() : Array
      {
         if(this.§>`§(this.§90§) == null)
         {
            §9X§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§>`§(this.§90§).§,2§();
      }
      
      public function §&!@§(param1:Array) : void
      {
         this.§>`§(this.§90§).§&!@§(param1);
      }
      
      public function §<9§(param1:Number) : void
      {
         this.§>`§(this.§90§).§<9§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§#! § = null;
         this.§?L§ = null;
         this.§ !<§ = null;
      }
   }
}
