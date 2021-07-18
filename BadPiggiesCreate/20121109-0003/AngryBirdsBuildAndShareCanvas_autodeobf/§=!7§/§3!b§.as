package §=!7§
{
   import §&!<§.§>!V§;
   import §6]§.§,"0§;
   import §@y§.§&a§;
   import §@y§.§0"4§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import com.rovio.assets.§69§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §3!b§ extends §6W§
   {
      
      public static const §""7§:int = 0;
      
      public static const §+!a§:int = 1;
      
      public static const §?!t§:int = 2;
       
      
      public var §3"2§:String;
      
      public var §?!R§:Class;
      
      public var §%!`§:String = null;
      
      public var §9!1§:Vector.<§&a§>;
      
      public var §0!T§:int;
      
      public var §#!Z§:Number;
      
      public var §;!3§:Number;
      
      public var §5[§:Number;
      
      public var §5A§:Number;
      
      public var §6"§:Number;
      
      public var §2O§:Number;
      
      public var §"!"§:Number;
      
      public var §`O§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §>$§:int;
      
      public var §9@§:Number;
      
      public var §]!G§:String = "";
      
      public var §3!U§:int;
      
      public var §'!G§:int;
      
      public var §9!K§:GlowFilter;
      
      public var §,"+§:Boolean = true;
      
      public var §!";§:int;
      
      public var §3>§:int;
      
      public var §?t§:Number = 0;
      
      public var §3a§:Number = 0;
      
      public var §[!A§:Number = 0;
      
      public var §2E§:Number = 0;
      
      public var §'+§:Boolean = false;
      
      public var §3!H§:Boolean = false;
      
      public var §>!^§:MovieClip = null;
      
      public function §3!b§(param1:XML, param2:§6W§, param3:§>!V§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§3"2§ = param1.@button;
         if(this.§3"2§.length > 0)
         {
            this.§?!R§ = §69§.§ 0§(this.§3"2§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§%!`§ = _loc5_;
         }
         this.§3!U§ = §""7§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§3!U§ = §+!a§;
            }
         }
         this.§'!G§ = §?!t§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§'!G§ = §""7§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§9!K§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §[z§.push(new §9"8§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §[z§.push(new §9"8§(_loc18_,this));
         }
         this.§#!Z§ = mClip.getChildByName("Surface").x;
         this.§;!3§ = mClip.getChildByName("Surface").y;
         this.§5[§ = mClip.getChildByName("Surface").width;
         this.§5A§ = mClip.getChildByName("Surface").height;
         this.§6"§ = mClip.getChildByName("Button_Area1").x - this.§#!Z§;
         this.§2O§ = mClip.getChildByName("Button_Area1").y - this.§;!3§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§#!Z§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§;!3§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§9@§ = _loc9_.bottom - this.§;!3§ - this.§2O§;
         this.§"!"§ = _loc7_ - this.§6"§;
         this.§`O§ = _loc8_ - this.§2O§;
         if(Math.abs(this.§"!"§) < 3)
         {
            this.§"!"§ = 0;
         }
         if(Math.abs(this.§`O§) < 3)
         {
            this.§`O§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§"!"§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§6"§ - this.§6"§) / this.§"!"§;
         }
         if(this.§`O§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§2O§ - this.§2O§) / this.§`O§;
         }
         this.§0!T§ = Math.min(_loc10_,_loc11_);
         this.§,"+§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§!";§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§!";§ = this.§0!T§;
         }
         this.§>$§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§#!Z§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§;!3§;
            this.mButtonMarginX2 = _loc19_ - this.§6"§;
            this.mButtonMarginY2 = _loc20_ - this.§2O§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§,"+§)
            {
               this.§>$§ = 1 + (mClip.getChildByName("Surface").height - this.§2O§ - this.§2O§) / this.mButtonMarginY2;
            }
            else
            {
               this.§>$§ = 1 + (mClip.getChildByName("Surface").width - this.§6"§ - this.§6"§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§>!^§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§[!A§ = this.§>!^§.x - mClip.getChildByName("Surface").x;
            this.§2E§ = this.§>!^§.y - mClip.getChildByName("Surface").y;
            this.§?t§ = this.§>!^§.x + this.§>!^§.width - (this.§>!^§.x + mClip.getChildByName("Surface").width);
            this.§3a§ = this.§>!^§.y + this.§>!^§.height - (this.§>!^§.y + mClip.getChildByName("Surface").height);
            this.§'+§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§3!H§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§3>§ = §&a§.§,_§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§3>§ = §&a§.§in §;
            }
         }
         this.§&!'§();
      }
      
      public function §&!'§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§7";§ = null;
         var _loc8_:§&a§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§#!n§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §#!n§;
         }
         this.§9!1§ = new Vector.<§&a§>();
         this.§5""§();
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
            _loc7_ = new §7";§(_loc6_,this,null,_loc5_);
            §[z§.push(_loc7_);
            _loc8_ = new §&a§(this.§3>§,_loc4_);
            this.§9!1§.push(_loc8_);
            _loc9_ = this.§6"§;
            _loc10_ = this.§0!T§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§'!G§ == §""7§)
            {
               _loc9_ = (this.§5[§ - (_loc10_ - 1) * this.§"!"§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§[z§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§[z§.push(new param2(_loc12_,_loc7_,new this.§?!R§() as MovieClip));
               }
               _loc13_ = _loc7_.§[z§[_loc7_.§[z§.length - 1] as §#!n§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§%!`§);
                  if(this.§3!U§ == §+!a§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§%!`§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§>$§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§"!"§;
                  _loc13_.y = this.§2O§ + _loc11_ * this.§`O§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§0!T§ * this.§>$§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§0!T§ * this.§>$§) / this.§0!T§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§0!T§ * this.§>$§) % this.§0!T§;
                  if(this.§,"+§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§"!"§ + _loc16_ * this.§0!T§ * this.§"!"§;
                     _loc13_.y = this.§2O§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§2O§ + _loc18_ * this.§`O§ + _loc16_ * this.§0!T§ * this.§`O§;
                  }
               }
               _loc8_.§>[§(_loc13_);
               _loc11_++;
            }
            _loc8_.§>" §("");
            _loc7_.§9!D§(this.§0!T§,this.§#!Z§,this.§;!3§,this.§!";§ * this.§"!"§,this.§!";§ * this.§`O§,this.§>$§,this.§!";§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §;X§() : int
      {
         return this.§0!T§;
      }
      
      public function get §8!D§() : int
      {
         if(this.§;X§ == 0)
         {
            return 0;
         }
         return this.§^a§(this.§]!G§).§5f§.length / this.§;X§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:§&a§ = null;
         var _loc4_:§7";§ = getItemByName(this.§]!G§) as §7";§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§&!M§(_loc4_.§<!6§ - 1);
               this.§-!P§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§&!M§(_loc4_.§<!6§ + 1);
               this.§-!P§();
            }
         }
         else if(param2.length > 0 && (param1 == §0=§.LISTENER_EVENT_MOUSE_DOWN || param1 == §0=§.LISTENER_EVENT_MOUSE_UP) && param3 is §0"4§)
         {
            if((_loc5_ = this.§^a§((param3 as §0"4§).mParentContainer.mName.toUpperCase())) && param3 is §#!n§)
            {
               _loc5_.§>" §((param3 as §0"4§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §9!;§(param1:String, param2:int) : void
      {
         var _loc3_:§7";§ = getItemByName(param1) as §7";§;
         if(_loc3_)
         {
            _loc3_.§&!M§(param2);
            this.§-!P§();
         }
      }
      
      public function §^a§(param1:String) : §&a§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!1§.length)
         {
            if(param1.toUpperCase() == (this.§9!1§[_loc2_] as §&a§).mName.toUpperCase())
            {
               return this.§9!1§[_loc2_] as §&a§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §9N§(param1:String) : void
      {
         this.§]!G§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §[z§.length)
         {
            if(§[z§[_loc2_] is §7";§)
            {
               if((§[z§[_loc2_] as §7";§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§[z§[_loc2_] as §7";§).setActiveStatus(true);
                  if(this.§'+§)
                  {
                     this.§>!^§.x = (§[z§[_loc2_] as §7";§).x + this.§[!A§;
                     this.§>!^§.width = (§[z§[_loc2_] as §7";§).width + this.§?t§;
                  }
                  if(this.§3!H§)
                  {
                     this.§>!^§.y = (§[z§[_loc2_] as §7";§).y + this.§2E§;
                     this.§>!^§.height = (§[z§[_loc2_] as §7";§).height + this.§3a§;
                  }
               }
               else
               {
                  (§[z§[_loc2_] as §7";§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§-!P§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§&a§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§9!1§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §-!P§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§7";§ = getItemByName(this.§]!G§) as §7";§;
         if(_loc1_)
         {
            if(_loc1_.§<!6§ > 0)
            {
               (getItemByName("Button_Scroll1") as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §9"8§).setComponentState(§>!D§.§&!j§);
            }
            if(_loc1_.§<!6§ < _loc1_.§;!-§ - 1)
            {
               (getItemByName("Button_Scroll2") as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §9"8§).setComponentState(§>!D§.§&!j§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §9"8§).setComponentState(§>!D§.§&!j§);
            (getItemByName("Button_Scroll2") as §9"8§).setComponentState(§>!D§.§&!j§);
         }
      }
      
      public function §5""§() : void
      {
         var _loc2_:§7";§ = null;
         var _loc1_:int = §[z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §[z§[_loc1_] as §7";§;
            if(_loc2_)
            {
               _loc2_.clear();
               §[z§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§9N§("");
      }
      
      public function §2!4§() : void
      {
         var _loc1_:§&a§ = null;
         for each(_loc1_ in this.§9!1§)
         {
            _loc1_.§2!4§();
         }
      }
      
      public function §<!F§() : Array
      {
         if(this.§^a§(this.§]!G§) == null)
         {
            §,"0§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§^a§(this.§]!G§).§'!6§();
      }
      
      public function §9![§(param1:Array) : void
      {
         this.§^a§(this.§]!G§).§9![§(param1);
      }
      
      public function §<!5§(param1:Number) : void
      {
         this.§^a§(this.§]!G§).§<!5§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§?!R§ = null;
         this.§9!1§ = null;
         this.§9!K§ = null;
      }
   }
}
