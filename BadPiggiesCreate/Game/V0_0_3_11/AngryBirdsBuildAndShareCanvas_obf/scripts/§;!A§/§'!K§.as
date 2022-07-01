package §;!A§
{
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §+!d§.§8!=§;
   import §+!d§.§]!N§;
   import §;"$§.§`5§;
   import §;X§.§ do§;
   import com.rovio.assets.§]!S§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'!K§ extends §;!u§
   {
      
      public static const §3!C§:int = 0;
      
      public static const §?<§:int = 1;
      
      public static const § !!§:int = 2;
       
      
      public var §'?§:String;
      
      public var §2"3§:Class;
      
      public var §#^§:String = null;
      
      public var §%]§:Vector.<§]!N§>;
      
      public var §;q§:int;
      
      public var §2<§:Number;
      
      public var §6V§:Number;
      
      public var §`!`§:Number;
      
      public var §37§:Number;
      
      public var §1+§:Number;
      
      public var §!!7§:Number;
      
      public var §;!I§:Number;
      
      public var §!B§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §3!@§:int;
      
      public var §9!-§:Number;
      
      public var § ,§:String = "";
      
      public var §7K§:int;
      
      public var §;S§:int;
      
      public var §`p§:GlowFilter;
      
      public var §9!S§:Boolean = true;
      
      public var include:int;
      
      public var §=s§:int;
      
      public var §`f§:Number = 0;
      
      public var §`!&§:Number = 0;
      
      public var §!u§:Number = 0;
      
      public var §&!@§:Number = 0;
      
      public var §,![§:Boolean = false;
      
      public var §]!<§:Boolean = false;
      
      public var §>!Y§:MovieClip = null;
      
      public function §'!K§(param1:XML, param2:§;!u§, param3:§`5§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§'?§ = param1.@button;
         if(this.§'?§.length > 0)
         {
            this.§2"3§ = §]!S§.§?! §(this.§'?§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§#^§ = _loc5_;
         }
         this.§7K§ = §3!C§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§7K§ = §?<§;
            }
         }
         this.§;S§ = § !!§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§;S§ = §3!C§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§`p§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §`6§.push(new §2v§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §`6§.push(new §2v§(_loc18_,this));
         }
         this.§2<§ = mClip.getChildByName("Surface").x;
         this.§6V§ = mClip.getChildByName("Surface").y;
         this.§`!`§ = mClip.getChildByName("Surface").width;
         this.§37§ = mClip.getChildByName("Surface").height;
         this.§1+§ = mClip.getChildByName("Button_Area1").x - this.§2<§;
         this.§!!7§ = mClip.getChildByName("Button_Area1").y - this.§6V§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§2<§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§6V§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§9!-§ = _loc9_.bottom - this.§6V§ - this.§!!7§;
         this.§;!I§ = _loc7_ - this.§1+§;
         this.§!B§ = _loc8_ - this.§!!7§;
         if(Math.abs(this.§;!I§) < 3)
         {
            this.§;!I§ = 0;
         }
         if(Math.abs(this.§!B§) < 3)
         {
            this.§!B§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§;!I§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§1+§ - this.§1+§) / this.§;!I§;
         }
         if(this.§!B§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§!!7§ - this.§!!7§) / this.§!B§;
         }
         this.§;q§ = Math.min(_loc10_,_loc11_);
         this.§9!S§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.include = param1.@ScrollPerClick;
         }
         else
         {
            this.include = this.§;q§;
         }
         this.§3!@§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§2<§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§6V§;
            this.mButtonMarginX2 = _loc19_ - this.§1+§;
            this.mButtonMarginY2 = _loc20_ - this.§!!7§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§9!S§)
            {
               this.§3!@§ = 1 + (mClip.getChildByName("Surface").height - this.§!!7§ - this.§!!7§) / this.mButtonMarginY2;
            }
            else
            {
               this.§3!@§ = 1 + (mClip.getChildByName("Surface").width - this.§1+§ - this.§1+§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§>!Y§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§!u§ = this.§>!Y§.x - mClip.getChildByName("Surface").x;
            this.§&!@§ = this.§>!Y§.y - mClip.getChildByName("Surface").y;
            this.§`f§ = this.§>!Y§.x + this.§>!Y§.width - (this.§>!Y§.x + mClip.getChildByName("Surface").width);
            this.§`!&§ = this.§>!Y§.y + this.§>!Y§.height - (this.§>!Y§.y + mClip.getChildByName("Surface").height);
            this.§,![§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§]!<§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§=s§ = §]!N§.§!!3§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§=s§ = §]!N§.§,<§;
            }
         }
         this.§5![§();
      }
      
      public function §5![§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§"s§ = null;
         var _loc8_:§]!N§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§8!N§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §8!N§;
         }
         this.§%]§ = new Vector.<§]!N§>();
         this.§&x§();
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
            _loc7_ = new §"s§(_loc6_,this,null,_loc5_);
            §`6§.push(_loc7_);
            _loc8_ = new §]!N§(this.§=s§,_loc4_);
            this.§%]§.push(_loc8_);
            _loc9_ = this.§1+§;
            _loc10_ = this.§;q§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§;S§ == §3!C§)
            {
               _loc9_ = (this.§`!`§ - (_loc10_ - 1) * this.§;!I§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§`6§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§`6§.push(new param2(_loc12_,_loc7_,new this.§2"3§() as MovieClip));
               }
               _loc13_ = _loc7_.§`6§[_loc7_.§`6§.length - 1] as §8!N§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§#^§);
                  if(this.§7K§ == §?<§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§#^§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§3!@§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§;!I§;
                  _loc13_.y = this.§!!7§ + _loc11_ * this.§!B§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§;q§ * this.§3!@§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§;q§ * this.§3!@§) / this.§;q§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§;q§ * this.§3!@§) % this.§;q§;
                  if(this.§9!S§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§;!I§ + _loc16_ * this.§;q§ * this.§;!I§;
                     _loc13_.y = this.§!!7§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§!!7§ + _loc18_ * this.§!B§ + _loc16_ * this.§;q§ * this.§!B§;
                  }
               }
               _loc8_.§0`§(_loc13_);
               _loc11_++;
            }
            _loc8_.§[!x§("");
            _loc7_.§3!Q§(this.§;q§,this.§2<§,this.§6V§,this.include * this.§;!I§,this.include * this.§!B§,this.§3!@§,this.include);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §-!T§() : int
      {
         return this.§;q§;
      }
      
      public function get §2^§() : int
      {
         if(this.§-!T§ == 0)
         {
            return 0;
         }
         return this.§6"%§(this.§ ,§).§9!&§.length / this.§-!T§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§6=§) : void
      {
         var _loc5_:§]!N§ = null;
         var _loc4_:§"s§ = getItemByName(this.§ ,§) as §"s§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§0!F§(_loc4_.§9E§ - 1);
               this.§@!§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§0!F§(_loc4_.§9E§ + 1);
               this.§@!§();
            }
         }
         else if(param2.length > 0 && (param1 == §6=§.LISTENER_EVENT_MOUSE_DOWN || param1 == §6=§.LISTENER_EVENT_MOUSE_UP) && param3 is §8!=§)
         {
            if((_loc5_ = this.§6"%§((param3 as §8!=§).mParentContainer.mName.toUpperCase())) && param3 is §8!N§)
            {
               _loc5_.§[!x§((param3 as §8!=§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §8y§(param1:String, param2:int) : void
      {
         var _loc3_:§"s§ = getItemByName(param1) as §"s§;
         if(_loc3_)
         {
            _loc3_.§0!F§(param2);
            this.§@!§();
         }
      }
      
      public function §6"%§(param1:String) : §]!N§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%]§.length)
         {
            if(param1.toUpperCase() == (this.§%]§[_loc2_] as §]!N§).mName.toUpperCase())
            {
               return this.§%]§[_loc2_] as §]!N§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;!g§(param1:String) : void
      {
         this.§ ,§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §`6§.length)
         {
            if(§`6§[_loc2_] is §"s§)
            {
               if((§`6§[_loc2_] as §"s§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§`6§[_loc2_] as §"s§).setActiveStatus(true);
                  if(this.§,![§)
                  {
                     this.§>!Y§.x = (§`6§[_loc2_] as §"s§).x + this.§!u§;
                     this.§>!Y§.width = (§`6§[_loc2_] as §"s§).width + this.§`f§;
                  }
                  if(this.§]!<§)
                  {
                     this.§>!Y§.y = (§`6§[_loc2_] as §"s§).y + this.§&!@§;
                     this.§>!Y§.height = (§`6§[_loc2_] as §"s§).height + this.§`!&§;
                  }
               }
               else
               {
                  (§`6§[_loc2_] as §"s§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§@!§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§]!N§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§%]§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §@!§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§"s§ = getItemByName(this.§ ,§) as §"s§;
         if(_loc1_)
         {
            if(_loc1_.§9E§ > 0)
            {
               (getItemByName("Button_Scroll1") as §2v§).setComponentState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §2v§).setComponentState(§"r§.§=!Z§);
            }
            if(_loc1_.§9E§ < _loc1_.§3"+§ - 1)
            {
               (getItemByName("Button_Scroll2") as §2v§).setComponentState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §2v§).setComponentState(§"r§.§=!Z§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §2v§).setComponentState(§"r§.§=!Z§);
            (getItemByName("Button_Scroll2") as §2v§).setComponentState(§"r§.§=!Z§);
         }
      }
      
      public function §&x§() : void
      {
         var _loc2_:§"s§ = null;
         var _loc1_:int = §`6§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §`6§[_loc1_] as §"s§;
            if(_loc2_)
            {
               _loc2_.clear();
               §`6§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§;!g§("");
      }
      
      public function §9!>§() : void
      {
         var _loc1_:§]!N§ = null;
         for each(_loc1_ in this.§%]§)
         {
            _loc1_.§9!>§();
         }
      }
      
      public function §-!3§() : Array
      {
         if(this.§6"%§(this.§ ,§) == null)
         {
            § do§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§6"%§(this.§ ,§).§4r§();
      }
      
      public function §?!f§(param1:Array) : void
      {
         this.§6"%§(this.§ ,§).§?!f§(param1);
      }
      
      public function §^"8§(param1:Number) : void
      {
         this.§6"%§(this.§ ,§).§^"8§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§2"3§ = null;
         this.§%]§ = null;
         this.§`p§ = null;
      }
   }
}
