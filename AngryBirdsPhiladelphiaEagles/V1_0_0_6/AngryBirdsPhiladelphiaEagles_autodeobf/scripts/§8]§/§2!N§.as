package §8]§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §!!0§.§8D§;
   import §!!0§.override;
   import §3!O§.§5q§;
   import §4M§.§^'§;
   import com.rovio.assets.§^3§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §2!N§ extends §+a§
   {
      
      public static const §@C§:int = 0;
      
      public static const §1G§:int = 1;
      
      public static const §5j§:int = 2;
       
      
      public var § m§:String;
      
      public var §&T§:Class;
      
      public var §9Q§:String = null;
      
      public var § ^§:Vector.<§8D§>;
      
      public var §7c§:int;
      
      public var §`R§:Number;
      
      public var §^5§:Number;
      
      public var §'!'§:Number;
      
      public var §5H§:Number;
      
      public var §0?§:Number;
      
      public var §%I§:Number;
      
      public var §#!§:Number;
      
      public var §>i§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §4p§:int;
      
      public var §=%§:Number;
      
      public var §^2§:String = "";
      
      public var §2-§:int;
      
      public var §98§:int;
      
      public var §0'§:GlowFilter;
      
      public var §[i§:Boolean = true;
      
      public var §?!+§:int;
      
      public var §&U§:int;
      
      public var §1!9§:Number = 0;
      
      public var §4q§:Number = 0;
      
      public var §@!$§:Number = 0;
      
      public var §?!F§:Number = 0;
      
      public var §'!0§:Boolean = false;
      
      public var §;A§:Boolean = false;
      
      public var §[!M§:MovieClip = null;
      
      public function §2!N§(param1:XML, param2:§+a§, param3:§^'§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§ m§ = param1.@button;
         if(this.§ m§.length > 0)
         {
            this.§&T§ = §^3§.§+_§(this.§ m§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§9Q§ = _loc5_;
         }
         this.§2-§ = §@C§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§2-§ = §1G§;
            }
         }
         this.§98§ = §5j§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§98§ = §@C§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§0'§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §with§.push(new §-u§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §with§.push(new §-u§(_loc18_,this));
         }
         this.§`R§ = mClip.getChildByName("Surface").x;
         this.§^5§ = mClip.getChildByName("Surface").y;
         this.§'!'§ = mClip.getChildByName("Surface").width;
         this.§5H§ = mClip.getChildByName("Surface").height;
         this.§0?§ = mClip.getChildByName("Button_Area1").x - this.§`R§;
         this.§%I§ = mClip.getChildByName("Button_Area1").y - this.§^5§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§`R§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§^5§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§=%§ = _loc9_.bottom - this.§^5§ - this.§%I§;
         this.§#!§ = _loc7_ - this.§0?§;
         this.§>i§ = _loc8_ - this.§%I§;
         if(Math.abs(this.§#!§) < 3)
         {
            this.§#!§ = 0;
         }
         if(Math.abs(this.§>i§) < 3)
         {
            this.§>i§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§#!§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§0?§ - this.§0?§) / this.§#!§;
         }
         if(this.§>i§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§%I§ - this.§%I§) / this.§>i§;
         }
         this.§7c§ = Math.min(_loc10_,_loc11_);
         this.§[i§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§?!+§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§?!+§ = this.§7c§;
         }
         this.§4p§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§`R§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§^5§;
            this.mButtonMarginX2 = _loc19_ - this.§0?§;
            this.mButtonMarginY2 = _loc20_ - this.§%I§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§[i§)
            {
               this.§4p§ = 1 + (mClip.getChildByName("Surface").height - this.§%I§ - this.§%I§) / this.mButtonMarginY2;
            }
            else
            {
               this.§4p§ = 1 + (mClip.getChildByName("Surface").width - this.§0?§ - this.§0?§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§[!M§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§@!$§ = this.§[!M§.x - mClip.getChildByName("Surface").x;
            this.§?!F§ = this.§[!M§.y - mClip.getChildByName("Surface").y;
            this.§1!9§ = this.§[!M§.x + this.§[!M§.width - (this.§[!M§.x + mClip.getChildByName("Surface").width);
            this.§4q§ = this.§[!M§.y + this.§[!M§.height - (this.§[!M§.y + mClip.getChildByName("Surface").height);
            this.§'!0§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§;A§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§&U§ = §8D§.§9v§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§&U§ = §8D§.§#i§;
            }
         }
         this.§0M§();
      }
      
      public function §0M§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§[^§ = null;
         var _loc8_:§8D§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§<!7§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §<!7§;
         }
         this.§ ^§ = new Vector.<§8D§>();
         this.§?!,§();
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
            _loc7_ = new §[^§(_loc6_,this,null,_loc5_);
            §with§.push(_loc7_);
            _loc8_ = new §8D§(this.§&U§,_loc4_);
            this.§ ^§.push(_loc8_);
            _loc9_ = this.§0?§;
            _loc10_ = this.§7c§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§98§ == §@C§)
            {
               _loc9_ = (this.§'!'§ - (_loc10_ - 1) * this.§#!§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§with§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§with§.push(new param2(_loc12_,_loc7_,new this.§&T§() as MovieClip));
               }
               _loc13_ = _loc7_.§with§[_loc7_.§with§.length - 1] as §<!7§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§4h§(_loc14_,this.§9Q§);
                  if(this.§2-§ == §1G§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§9Q§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§4p§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§#!§;
                  _loc13_.y = this.§%I§ + _loc11_ * this.§>i§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§7c§ * this.§4p§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§7c§ * this.§4p§) / this.§7c§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§7c§ * this.§4p§) % this.§7c§;
                  if(this.§[i§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§#!§ + _loc16_ * this.§7c§ * this.§#!§;
                     _loc13_.y = this.§%I§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§%I§ + _loc18_ * this.§>i§ + _loc16_ * this.§7c§ * this.§>i§;
                  }
               }
               _loc8_.§-_§(_loc13_);
               _loc11_++;
            }
            _loc8_.§6!B§("");
            _loc7_.§@y§(this.§7c§,this.§`R§,this.§^5§,this.§?!+§ * this.§#!§,this.§?!+§ * this.§>i§,this.§4p§,this.§?!+§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §1!K§() : int
      {
         return this.§7c§;
      }
      
      public function get §[! §() : int
      {
         if(this.§1!K§ == 0)
         {
            return 0;
         }
         return this.§1!F§(this.§^2§).§`k§.length / this.§1!K§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§ true§) : void
      {
         var _loc5_:§8D§ = null;
         var _loc4_:§[^§ = getItemByName(this.§^2§) as §[^§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§1e§(_loc4_.§"!E§ - 1);
               this.§&!@§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§1e§(_loc4_.§"!E§ + 1);
               this.§&!@§();
            }
         }
         else if(param2.length > 0 && (param1 == § true§.LISTENER_EVENT_MOUSE_DOWN || param1 == § true§.LISTENER_EVENT_MOUSE_UP) && param3 is override)
         {
            if((_loc5_ = this.§1!F§((param3 as override).mParentContainer.mName.toUpperCase())) && param3 is §<!7§)
            {
               _loc5_.§6!B§((param3 as override).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §56§(param1:String, param2:int) : void
      {
         var _loc3_:§[^§ = getItemByName(param1) as §[^§;
         if(_loc3_)
         {
            _loc3_.§1e§(param2);
            this.§&!@§();
         }
      }
      
      public function §1!F§(param1:String) : §8D§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ ^§.length)
         {
            if(param1.toUpperCase() == (this.§ ^§[_loc2_] as §8D§).mName.toUpperCase())
            {
               return this.§ ^§[_loc2_] as §8D§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&s§(param1:String) : void
      {
         this.§^2§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §with§.length)
         {
            if(§with§[_loc2_] is §[^§)
            {
               if((§with§[_loc2_] as §[^§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§with§[_loc2_] as §[^§).setActiveStatus(true);
                  if(this.§'!0§)
                  {
                     this.§[!M§.x = (§with§[_loc2_] as §[^§).x + this.§@!$§;
                     this.§[!M§.width = (§with§[_loc2_] as §[^§).width + this.§1!9§;
                  }
                  if(this.§;A§)
                  {
                     this.§[!M§.y = (§with§[_loc2_] as §[^§).y + this.§?!F§;
                     this.§[!M§.height = (§with§[_loc2_] as §[^§).height + this.§4q§;
                  }
               }
               else
               {
                  (§with§[_loc2_] as §[^§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§&!@§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§8D§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§ ^§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §&!@§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§[^§ = getItemByName(this.§^2§) as §[^§;
         if(_loc1_)
         {
            if(_loc1_.§"!E§ > 0)
            {
               (getItemByName("Button_Scroll1") as §-u§).setComponentState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §-u§).setComponentState(§2§.§1u§);
            }
            if(_loc1_.§"!E§ < _loc1_.§]!N§ - 1)
            {
               (getItemByName("Button_Scroll2") as §-u§).setComponentState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §-u§).setComponentState(§2§.§1u§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §-u§).setComponentState(§2§.§1u§);
            (getItemByName("Button_Scroll2") as §-u§).setComponentState(§2§.§1u§);
         }
      }
      
      public function §?!,§() : void
      {
         var _loc2_:§[^§ = null;
         var _loc1_:int = §with§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §with§[_loc1_] as §[^§;
            if(_loc2_)
            {
               _loc2_.clear();
               §with§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§&s§("");
      }
      
      public function §55§() : void
      {
         var _loc1_:§8D§ = null;
         for each(_loc1_ in this.§ ^§)
         {
            _loc1_.§55§();
         }
      }
      
      public function §-!!§() : Array
      {
         if(this.§1!F§(this.§^2§) == null)
         {
            §5q§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1!F§(this.§^2§).§?!O§();
      }
      
      public function § ?§(param1:Array) : void
      {
         this.§1!F§(this.§^2§).§ ?§(param1);
      }
      
      public function §^^§(param1:Number) : void
      {
         this.§1!F§(this.§^2§).§^^§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§&T§ = null;
         this.§ ^§ = null;
         this.§0'§ = null;
      }
   }
}
