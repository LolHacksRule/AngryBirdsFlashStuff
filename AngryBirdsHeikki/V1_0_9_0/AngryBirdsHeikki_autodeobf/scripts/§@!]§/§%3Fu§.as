package §@!]§
{
   import §"!S§.§<s§;
   import §#Q§.§8Y§;
   import §0i§.§]_§;
   import §1Q§.§'!`§;
   import §1Q§.§-§;
   import §1Q§.§4p§;
   import §1Q§.§6'§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?u§ extends §'!9§
   {
      
      public static const §'M§:int = 0;
      
      public static const §0K§:int = 1;
      
      public static const §@8§:int = 2;
       
      
      public var §1;§:String;
      
      public var §4!0§:Class;
      
      public var §[j§:String = null;
      
      public var §9!b§:Vector.<§-§>;
      
      public var §>!U§:int;
      
      public var §#!I§:Number;
      
      public var §6r§:Number;
      
      public var §-!b§:Number;
      
      public var §@+§:Number;
      
      public var §`!"§:Number;
      
      public var §^!3§:Number;
      
      public var §96§:Number;
      
      public var §6Q§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §30§:int;
      
      public var §5!C§:Number;
      
      public var §1c§:String = "";
      
      public var §0O§:int;
      
      public var §#!L§:int;
      
      public var §,^§:GlowFilter;
      
      public var §05§:Boolean = true;
      
      public var §"a§:int;
      
      public var §5!6§:int;
      
      public var §&b§:Number = 0;
      
      public var §;J§:Number = 0;
      
      public var final:Number = 0;
      
      public var §1e§:Number = 0;
      
      public var §7=§:Boolean = false;
      
      public var §<U§:Boolean = false;
      
      public var §?!d§:MovieClip = null;
      
      public function §?u§(param1:XML, param2:§'!9§, param3:§8Y§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§1;§ = param1.@button;
         if(this.§1;§.length > 0)
         {
            this.§4!0§ = §<s§.§0b§(this.§1;§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§[j§ = _loc5_;
         }
         this.§0O§ = §'M§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§0O§ = §0K§;
            }
         }
         this.§#!L§ = §@8§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§#!L§ = §'M§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§,^§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §'t§.push(new §&!!§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §'t§.push(new §&!!§(_loc18_,this));
         }
         this.§#!I§ = mClip.getChildByName("Surface").x;
         this.§6r§ = mClip.getChildByName("Surface").y;
         this.§-!b§ = mClip.getChildByName("Surface").width;
         this.§@+§ = mClip.getChildByName("Surface").height;
         this.§`!"§ = mClip.getChildByName("Button_Area1").x - this.§#!I§;
         this.§^!3§ = mClip.getChildByName("Button_Area1").y - this.§6r§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§#!I§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§6r§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§5!C§ = _loc9_.bottom - this.§6r§ - this.§^!3§;
         this.§96§ = _loc7_ - this.§`!"§;
         this.§6Q§ = _loc8_ - this.§^!3§;
         if(Math.abs(this.§96§) < 3)
         {
            this.§96§ = 0;
         }
         if(Math.abs(this.§6Q§) < 3)
         {
            this.§6Q§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§96§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§`!"§ - this.§`!"§) / this.§96§;
         }
         if(this.§6Q§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§^!3§ - this.§^!3§) / this.§6Q§;
         }
         this.§>!U§ = Math.min(_loc10_,_loc11_);
         this.§05§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§"a§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§"a§ = this.§>!U§;
         }
         this.§30§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§#!I§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§6r§;
            this.mButtonMarginX2 = _loc19_ - this.§`!"§;
            this.mButtonMarginY2 = _loc20_ - this.§^!3§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§05§)
            {
               this.§30§ = 1 + (mClip.getChildByName("Surface").height - this.§^!3§ - this.§^!3§) / this.mButtonMarginY2;
            }
            else
            {
               this.§30§ = 1 + (mClip.getChildByName("Surface").width - this.§`!"§ - this.§`!"§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§?!d§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.final = this.§?!d§.x - mClip.getChildByName("Surface").x;
            this.§1e§ = this.§?!d§.y - mClip.getChildByName("Surface").y;
            this.§&b§ = this.§?!d§.x + this.§?!d§.width - (this.§?!d§.x + mClip.getChildByName("Surface").width);
            this.§;J§ = this.§?!d§.y + this.§?!d§.height - (this.§?!d§.y + mClip.getChildByName("Surface").height);
            this.§7=§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§<U§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§5!6§ = §-§.§[!b§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§5!6§ = §-§.§'?§;
            }
         }
         this.§]K§();
      }
      
      public function §]K§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§>&§ = null;
         var _loc8_:§-§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§`J§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §`J§;
         }
         this.§9!b§ = new Vector.<§-§>();
         this.§4!1§();
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
            _loc7_ = new §>&§(_loc6_,this,null,_loc5_);
            §'t§.push(_loc7_);
            _loc8_ = new §-§(this.§5!6§,_loc4_);
            this.§9!b§.push(_loc8_);
            _loc9_ = this.§`!"§;
            _loc10_ = this.§>!U§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§#!L§ == §'M§)
            {
               _loc9_ = (this.§-!b§ - (_loc10_ - 1) * this.§96§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§'t§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§'t§.push(new param2(_loc12_,_loc7_,new this.§4!0§() as MovieClip));
               }
               _loc13_ = _loc7_.§'t§[_loc7_.§'t§.length - 1] as §`J§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§7z§(_loc14_,this.§[j§);
                  if(this.§0O§ == §0K§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§[j§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§30§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§96§;
                  _loc13_.y = this.§^!3§ + _loc11_ * this.§6Q§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§>!U§ * this.§30§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§>!U§ * this.§30§) / this.§>!U§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§>!U§ * this.§30§) % this.§>!U§;
                  if(this.§05§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§96§ + _loc16_ * this.§>!U§ * this.§96§;
                     _loc13_.y = this.§^!3§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§^!3§ + _loc18_ * this.§6Q§ + _loc16_ * this.§>!U§ * this.§6Q§;
                  }
               }
               _loc8_.§6!#§(_loc13_);
               _loc11_++;
            }
            _loc8_.§%s§("");
            _loc7_.§^`§(this.§>!U§,this.§#!I§,this.§6r§,this.§"a§ * this.§96§,this.§"a§ * this.§6Q§,this.§30§,this.§"a§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §!R§() : int
      {
         return this.§>!U§;
      }
      
      public function get §3!,§() : int
      {
         if(this.§!R§ == 0)
         {
            return 0;
         }
         return this.§=!<§(this.§1c§).§;x§.length / this.§!R§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'!`§) : void
      {
         var _loc5_:§-§ = null;
         var _loc4_:§>&§ = getItemByName(this.§1c§) as §>&§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§if§(_loc4_.§&;§ - 1);
               this.§?z§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§if§(_loc4_.§&;§ + 1);
               this.§?z§();
            }
         }
         else if(param2.length > 0 && (param1 == §'!`§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'!`§.LISTENER_EVENT_MOUSE_UP) && param3 is §6'§)
         {
            if((_loc5_ = this.§=!<§((param3 as §6'§).mParentContainer.mName.toUpperCase())) && param3 is §`J§)
            {
               _loc5_.§%s§((param3 as §6'§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §%!T§(param1:String, param2:int) : void
      {
         var _loc3_:§>&§ = getItemByName(param1) as §>&§;
         if(_loc3_)
         {
            _loc3_.§if§(param2);
            this.§?z§();
         }
      }
      
      public function §=!<§(param1:String) : §-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!b§.length)
         {
            if(param1.toUpperCase() == (this.§9!b§[_loc2_] as §-§).mName.toUpperCase())
            {
               return this.§9!b§[_loc2_] as §-§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §3q§(param1:String) : void
      {
         this.§1c§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §'t§.length)
         {
            if(§'t§[_loc2_] is §>&§)
            {
               if((§'t§[_loc2_] as §>&§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§'t§[_loc2_] as §>&§).setActiveStatus(true);
                  if(this.§7=§)
                  {
                     this.§?!d§.x = (§'t§[_loc2_] as §>&§).x + this.final;
                     this.§?!d§.width = (§'t§[_loc2_] as §>&§).width + this.§&b§;
                  }
                  if(this.§<U§)
                  {
                     this.§?!d§.y = (§'t§[_loc2_] as §>&§).y + this.§1e§;
                     this.§?!d§.height = (§'t§[_loc2_] as §>&§).height + this.§;J§;
                  }
               }
               else
               {
                  (§'t§[_loc2_] as §>&§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§?z§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§-§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§9!b§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §?z§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§>&§ = getItemByName(this.§1c§) as §>&§;
         if(_loc1_)
         {
            if(_loc1_.§&;§ > 0)
            {
               (getItemByName("Button_Scroll1") as §&!!§).setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §&!!§).setComponentState(§4p§.§9L§);
            }
            if(_loc1_.§&;§ < _loc1_.§3J§ - 1)
            {
               (getItemByName("Button_Scroll2") as §&!!§).setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §&!!§).setComponentState(§4p§.§9L§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §&!!§).setComponentState(§4p§.§9L§);
            (getItemByName("Button_Scroll2") as §&!!§).setComponentState(§4p§.§9L§);
         }
      }
      
      public function §4!1§() : void
      {
         var _loc2_:§>&§ = null;
         var _loc1_:int = §'t§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §'t§[_loc1_] as §>&§;
            if(_loc2_)
            {
               _loc2_.clear();
               §'t§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§3q§("");
      }
      
      public function §,!K§() : void
      {
         var _loc1_:§-§ = null;
         for each(_loc1_ in this.§9!b§)
         {
            _loc1_.§,!K§();
         }
      }
      
      public function §+!R§() : Array
      {
         if(this.§=!<§(this.§1c§) == null)
         {
            §]_§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§=!<§(this.§1c§).§7I§();
      }
      
      public function §4&§(param1:Array) : void
      {
         this.§=!<§(this.§1c§).§4&§(param1);
      }
      
      public function §0w§(param1:Number) : void
      {
         this.§=!<§(this.§1c§).§0w§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§4!0§ = null;
         this.§9!b§ = null;
         this.§,^§ = null;
      }
   }
}
