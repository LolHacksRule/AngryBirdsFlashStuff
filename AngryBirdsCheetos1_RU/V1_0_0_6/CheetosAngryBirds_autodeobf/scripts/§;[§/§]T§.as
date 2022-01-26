package §;[§
{
   import §'!N§.§0q§;
   import §'!N§.§2!3§;
   import §'!N§.§71§;
   import §'!N§.§9!O§;
   import §'D§.§8e§;
   import §;!K§.§+!4§;
   import §]0§.§%%§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]T§ extends §>!^§
   {
      
      public static const §6m§:int = 0;
      
      public static const §9N§:int = 1;
      
      public static const §8%§:int = 2;
       
      
      public var §0R§:String;
      
      public var § U§:Class;
      
      public var §]3§:String = null;
      
      public var §[!C§:Vector.<§0q§>;
      
      public var §&B§:int;
      
      public var §9f§:Number;
      
      public var §;q§:Number;
      
      public var §0!$§:Number;
      
      public var §#H§:Number;
      
      public var §%!1§:Number;
      
      public var §1I§:Number;
      
      public var §2!Y§:Number;
      
      public var §,!-§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §+4§:int;
      
      public var § Y§:Number;
      
      public var §9[§:String = "";
      
      public var §;!`§:int;
      
      public var §'!'§:int;
      
      public var §>m§:GlowFilter;
      
      public var §-h§:Boolean = true;
      
      public var §?!>§:int;
      
      public var §^[§:int;
      
      public var §5!!§:Number = 0;
      
      public var §6L§:Number = 0;
      
      public var §#w§:Number = 0;
      
      public var §1d§:Number = 0;
      
      public var §;S§:Boolean = false;
      
      public var §2X§:Boolean = false;
      
      public var §9!P§:MovieClip = null;
      
      public function §]T§(param1:XML, param2:§>!^§, param3:§+!4§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§0R§ = param1.@button;
         if(this.§0R§.length > 0)
         {
            this.§ U§ = §%%§.§in §(this.§0R§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§]3§ = _loc5_;
         }
         this.§;!`§ = §6m§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§;!`§ = §9N§;
            }
         }
         this.§'!'§ = §8%§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§'!'§ = §6m§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§>m§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §[!Y§.push(new §7!F§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §[!Y§.push(new §7!F§(_loc18_,this));
         }
         this.§9f§ = mClip.getChildByName("Surface").x;
         this.§;q§ = mClip.getChildByName("Surface").y;
         this.§0!$§ = mClip.getChildByName("Surface").width;
         this.§#H§ = mClip.getChildByName("Surface").height;
         this.§%!1§ = mClip.getChildByName("Button_Area1").x - this.§9f§;
         this.§1I§ = mClip.getChildByName("Button_Area1").y - this.§;q§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§9f§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§;q§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§ Y§ = _loc9_.bottom - this.§;q§ - this.§1I§;
         this.§2!Y§ = _loc7_ - this.§%!1§;
         this.§,!-§ = _loc8_ - this.§1I§;
         if(Math.abs(this.§2!Y§) < 3)
         {
            this.§2!Y§ = 0;
         }
         if(Math.abs(this.§,!-§) < 3)
         {
            this.§,!-§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§2!Y§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§%!1§ - this.§%!1§) / this.§2!Y§;
         }
         if(this.§,!-§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§1I§ - this.§1I§) / this.§,!-§;
         }
         this.§&B§ = Math.min(_loc10_,_loc11_);
         this.§-h§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§?!>§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§?!>§ = this.§&B§;
         }
         this.§+4§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§9f§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§;q§;
            this.mButtonMarginX2 = _loc19_ - this.§%!1§;
            this.mButtonMarginY2 = _loc20_ - this.§1I§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§-h§)
            {
               this.§+4§ = 1 + (mClip.getChildByName("Surface").height - this.§1I§ - this.§1I§) / this.mButtonMarginY2;
            }
            else
            {
               this.§+4§ = 1 + (mClip.getChildByName("Surface").width - this.§%!1§ - this.§%!1§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§9!P§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§#w§ = this.§9!P§.x - mClip.getChildByName("Surface").x;
            this.§1d§ = this.§9!P§.y - mClip.getChildByName("Surface").y;
            this.§5!!§ = this.§9!P§.x + this.§9!P§.width - (this.§9!P§.x + mClip.getChildByName("Surface").width);
            this.§6L§ = this.§9!P§.y + this.§9!P§.height - (this.§9!P§.y + mClip.getChildByName("Surface").height);
            this.§;S§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§2X§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§^[§ = §0q§.§>2§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§^[§ = §0q§.§<!1§;
            }
         }
         this.§!n§();
      }
      
      public function §!n§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§1p§ = null;
         var _loc8_:§0q§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§8Y§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §8Y§;
         }
         this.§[!C§ = new Vector.<§0q§>();
         this.§8!§();
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
            _loc7_ = new §1p§(_loc6_,this,null,_loc5_);
            §[!Y§.push(_loc7_);
            _loc8_ = new §0q§(this.§^[§,_loc4_);
            this.§[!C§.push(_loc8_);
            _loc9_ = this.§%!1§;
            _loc10_ = this.§&B§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§'!'§ == §6m§)
            {
               _loc9_ = (this.§0!$§ - (_loc10_ - 1) * this.§2!Y§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§[!Y§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§[!Y§.push(new param2(_loc12_,_loc7_,new this.§ U§() as MovieClip));
               }
               _loc13_ = _loc7_.§[!Y§[_loc7_.§[!Y§.length - 1] as §8Y§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§5-§(_loc14_,this.§]3§);
                  if(this.§;!`§ == §9N§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§]3§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§+4§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§2!Y§;
                  _loc13_.y = this.§1I§ + _loc11_ * this.§,!-§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§&B§ * this.§+4§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§&B§ * this.§+4§) / this.§&B§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§&B§ * this.§+4§) % this.§&B§;
                  if(this.§-h§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§2!Y§ + _loc16_ * this.§&B§ * this.§2!Y§;
                     _loc13_.y = this.§1I§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§1I§ + _loc18_ * this.§,!-§ + _loc16_ * this.§&B§ * this.§,!-§;
                  }
               }
               _loc8_.§5!$§(_loc13_);
               _loc11_++;
            }
            _loc8_.§1!Z§("");
            _loc7_.§?J§(this.§&B§,this.§9f§,this.§;q§,this.§?!>§ * this.§2!Y§,this.§?!>§ * this.§,!-§,this.§+4§,this.§?!>§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §`j§() : int
      {
         return this.§&B§;
      }
      
      public function get §]$§() : int
      {
         if(this.§`j§ == 0)
         {
            return 0;
         }
         return this.§'!X§(this.§9[§).§2^§.length / this.§`j§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§9!O§) : void
      {
         var _loc5_:§0q§ = null;
         var _loc4_:§1p§ = getItemByName(this.§9[§) as §1p§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§'K§(_loc4_.§`=§ - 1);
               this.§^<§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§'K§(_loc4_.§`=§ + 1);
               this.§^<§();
            }
         }
         else if(param2.length > 0 && (param1 == §9!O§.LISTENER_EVENT_MOUSE_DOWN || param1 == §9!O§.LISTENER_EVENT_MOUSE_UP) && param3 is §2!3§)
         {
            if((_loc5_ = this.§'!X§((param3 as §2!3§).mParentContainer.mName.toUpperCase())) && param3 is §8Y§)
            {
               _loc5_.§1!Z§((param3 as §2!3§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §4f§(param1:String, param2:int) : void
      {
         var _loc3_:§1p§ = getItemByName(param1) as §1p§;
         if(_loc3_)
         {
            _loc3_.§'K§(param2);
            this.§^<§();
         }
      }
      
      public function §'!X§(param1:String) : §0q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!C§.length)
         {
            if(param1.toUpperCase() == (this.§[!C§[_loc2_] as §0q§).mName.toUpperCase())
            {
               return this.§[!C§[_loc2_] as §0q§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!!?§(param1:String) : void
      {
         this.§9[§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §[!Y§.length)
         {
            if(§[!Y§[_loc2_] is §1p§)
            {
               if((§[!Y§[_loc2_] as §1p§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§[!Y§[_loc2_] as §1p§).setActiveStatus(true);
                  if(this.§;S§)
                  {
                     this.§9!P§.x = (§[!Y§[_loc2_] as §1p§).x + this.§#w§;
                     this.§9!P§.width = (§[!Y§[_loc2_] as §1p§).width + this.§5!!§;
                  }
                  if(this.§2X§)
                  {
                     this.§9!P§.y = (§[!Y§[_loc2_] as §1p§).y + this.§1d§;
                     this.§9!P§.height = (§[!Y§[_loc2_] as §1p§).height + this.§6L§;
                  }
               }
               else
               {
                  (§[!Y§[_loc2_] as §1p§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§^<§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§0q§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§[!C§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §^<§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§1p§ = getItemByName(this.§9[§) as §1p§;
         if(_loc1_)
         {
            if(_loc1_.§`=§ > 0)
            {
               (getItemByName("Button_Scroll1") as §7!F§).setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §7!F§).setComponentState(§71§.§'!,§);
            }
            if(_loc1_.§`=§ < _loc1_.§4!I§ - 1)
            {
               (getItemByName("Button_Scroll2") as §7!F§).setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §7!F§).setComponentState(§71§.§'!,§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §7!F§).setComponentState(§71§.§'!,§);
            (getItemByName("Button_Scroll2") as §7!F§).setComponentState(§71§.§'!,§);
         }
      }
      
      public function §8!§() : void
      {
         var _loc2_:§1p§ = null;
         var _loc1_:int = §[!Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §[!Y§[_loc1_] as §1p§;
            if(_loc2_)
            {
               _loc2_.clear();
               §[!Y§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§!!?§("");
      }
      
      public function §5^§() : void
      {
         var _loc1_:§0q§ = null;
         for each(_loc1_ in this.§[!C§)
         {
            _loc1_.§5^§();
         }
      }
      
      public function §9!>§() : Array
      {
         if(this.§'!X§(this.§9[§) == null)
         {
            §8e§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§'!X§(this.§9[§).§5!L§();
      }
      
      public function §]=§(param1:Array) : void
      {
         this.§'!X§(this.§9[§).§]=§(param1);
      }
      
      public function §6^§(param1:Number) : void
      {
         this.§'!X§(this.§9[§).§6^§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§ U§ = null;
         this.§[!C§ = null;
         this.§>m§ = null;
      }
   }
}
