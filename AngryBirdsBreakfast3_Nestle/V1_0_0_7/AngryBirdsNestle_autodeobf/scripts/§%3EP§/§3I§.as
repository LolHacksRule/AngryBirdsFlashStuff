package §>P§
{
   import § !Q§.§"D§;
   import §<!0§.§ !B§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §<!0§.§3j§;
   import §^6§.§;!j§;
   import com.rovio.assets.§[O§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §3I§ extends §]"4§
   {
      
      public static const §0V§:int = 0;
      
      public static const §1Q§:int = 1;
      
      public static const §`!K§:int = 2;
       
      
      public var §7!l§:String;
      
      public var §8!t§:Class;
      
      public var §#2§:String = null;
      
      public var §%y§:Vector.<§3j§>;
      
      public var §8!2§:int;
      
      public var §&!A§:Number;
      
      public var §9!I§:Number;
      
      public var §+!6§:Number;
      
      public var §^h§:Number;
      
      public var §if§:Number;
      
      public var §>!w§:Number;
      
      public var §]!e§:Number;
      
      public var §`!6§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §4,§:int;
      
      public var §,]§:Number;
      
      public var §0!1§:String = "";
      
      public var §'"1§:int;
      
      public var §4!"§:int;
      
      public var §]C§:GlowFilter;
      
      public var § !§:Boolean = true;
      
      public var §8!=§:int;
      
      public var § 7§:int;
      
      public var §>^§:Number = 0;
      
      public var §^_§:Number = 0;
      
      public var §&!j§:Number = 0;
      
      public var §=i§:Number = 0;
      
      public var §%!'§:Boolean = false;
      
      public var §6"+§:Boolean = false;
      
      public var §3!<§:MovieClip = null;
      
      public function §3I§(param1:XML, param2:§]"4§, param3:§;!j§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§7!l§ = param1.@button;
         if(this.§7!l§.length > 0)
         {
            this.§8!t§ = §[O§.§1s§(this.§7!l§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§#2§ = _loc5_;
         }
         this.§'"1§ = §0V§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§'"1§ = §1Q§;
            }
         }
         this.§4!"§ = §`!K§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§4!"§ = §0V§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§]C§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            § !"§.push(new §73§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            § !"§.push(new §73§(_loc18_,this));
         }
         this.§&!A§ = mClip.getChildByName("Surface").x;
         this.§9!I§ = mClip.getChildByName("Surface").y;
         this.§+!6§ = mClip.getChildByName("Surface").width;
         this.§^h§ = mClip.getChildByName("Surface").height;
         this.§if§ = mClip.getChildByName("Button_Area1").x - this.§&!A§;
         this.§>!w§ = mClip.getChildByName("Button_Area1").y - this.§9!I§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§&!A§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§9!I§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§,]§ = _loc9_.bottom - this.§9!I§ - this.§>!w§;
         this.§]!e§ = _loc7_ - this.§if§;
         this.§`!6§ = _loc8_ - this.§>!w§;
         if(Math.abs(this.§]!e§) < 3)
         {
            this.§]!e§ = 0;
         }
         if(Math.abs(this.§`!6§) < 3)
         {
            this.§`!6§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§]!e§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§if§ - this.§if§) / this.§]!e§;
         }
         if(this.§`!6§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§>!w§ - this.§>!w§) / this.§`!6§;
         }
         this.§8!2§ = Math.min(_loc10_,_loc11_);
         this.§ !§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§8!=§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§8!=§ = this.§8!2§;
         }
         this.§4,§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§&!A§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§9!I§;
            this.mButtonMarginX2 = _loc19_ - this.§if§;
            this.mButtonMarginY2 = _loc20_ - this.§>!w§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§ !§)
            {
               this.§4,§ = 1 + (mClip.getChildByName("Surface").height - this.§>!w§ - this.§>!w§) / this.mButtonMarginY2;
            }
            else
            {
               this.§4,§ = 1 + (mClip.getChildByName("Surface").width - this.§if§ - this.§if§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§3!<§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§&!j§ = this.§3!<§.x - mClip.getChildByName("Surface").x;
            this.§=i§ = this.§3!<§.y - mClip.getChildByName("Surface").y;
            this.§>^§ = this.§3!<§.x + this.§3!<§.width - (this.§3!<§.x + mClip.getChildByName("Surface").width);
            this.§^_§ = this.§3!<§.y + this.§3!<§.height - (this.§3!<§.y + mClip.getChildByName("Surface").height);
            this.§%!'§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§6"+§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§ 7§ = §3j§.§+!y§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§ 7§ = §3j§.§^Q§;
            }
         }
         this.§[!D§();
      }
      
      public function §[!D§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§2"6§ = null;
         var _loc8_:§3j§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§+"6§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §+"6§;
         }
         this.§%y§ = new Vector.<§3j§>();
         this.§<!J§();
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
            _loc7_ = new §2"6§(_loc6_,this,null,_loc5_);
            § !"§.push(_loc7_);
            _loc8_ = new §3j§(this.§ 7§,_loc4_);
            this.§%y§.push(_loc8_);
            _loc9_ = this.§if§;
            _loc10_ = this.§8!2§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§4!"§ == §0V§)
            {
               _loc9_ = (this.§+!6§ - (_loc10_ - 1) * this.§]!e§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§ !"§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§ !"§.push(new param2(_loc12_,_loc7_,new this.§8!t§() as MovieClip));
               }
               _loc13_ = _loc7_.§ !"§[_loc7_.§ !"§.length - 1] as §+"6§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§#!4§(_loc14_,this.§#2§);
                  if(this.§'"1§ == §1Q§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§#2§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§4,§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§]!e§;
                  _loc13_.y = this.§>!w§ + _loc11_ * this.§`!6§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§8!2§ * this.§4,§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§8!2§ * this.§4,§) / this.§8!2§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§8!2§ * this.§4,§) % this.§8!2§;
                  if(this.§ !§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§]!e§ + _loc16_ * this.§8!2§ * this.§]!e§;
                     _loc13_.y = this.§>!w§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§>!w§ + _loc18_ * this.§`!6§ + _loc16_ * this.§8!2§ * this.§`!6§;
                  }
               }
               _loc8_.§>!]§(_loc13_);
               _loc11_++;
            }
            _loc8_.§-a§("");
            _loc7_.§["5§(this.§8!2§,this.§&!A§,this.§9!I§,this.§8!=§ * this.§]!e§,this.§8!=§ * this.§`!6§,this.§4,§,this.§8!=§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §<!O§() : int
      {
         return this.§8!2§;
      }
      
      public function get §@"'§() : int
      {
         if(this.§<!O§ == 0)
         {
            return 0;
         }
         return this.§]!p§(this.§0!1§).§=v§.length / this.§<!O§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§'!%§, param4:Event = null) : void
      {
         var _loc6_:§3j§ = null;
         var _loc5_:§2"6§ = getItemByName(this.§0!1§) as §2"6§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§>!a§(_loc5_.§0!h§ - 1);
               this.§?"5§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§>!a§(_loc5_.§0!h§ + 1);
               this.§?"5§();
            }
         }
         else if(param2.length > 0 && (param1 == §'!%§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'!%§.LISTENER_EVENT_MOUSE_UP) && param3 is § !B§)
         {
            if((_loc6_ = this.§]!p§((param3 as § !B§).mParentContainer.mName.toUpperCase())) && param3 is §+"6§)
            {
               _loc6_.§-a§((param3 as § !B§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §2K§(param1:String, param2:int) : void
      {
         var _loc3_:§2"6§ = getItemByName(param1) as §2"6§;
         if(_loc3_)
         {
            _loc3_.§>!a§(param2);
            this.§?"5§();
         }
      }
      
      public function §]!p§(param1:String) : §3j§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%y§.length)
         {
            if(param1.toUpperCase() == (this.§%y§[_loc2_] as §3j§).mName.toUpperCase())
            {
               return this.§%y§[_loc2_] as §3j§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1O§(param1:String) : void
      {
         this.§0!1§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < § !"§.length)
         {
            if(§ !"§[_loc2_] is §2"6§)
            {
               if((§ !"§[_loc2_] as §2"6§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§ !"§[_loc2_] as §2"6§).setActiveStatus(true);
                  if(this.§%!'§)
                  {
                     this.§3!<§.x = (§ !"§[_loc2_] as §2"6§).x + this.§&!j§;
                     this.§3!<§.width = (§ !"§[_loc2_] as §2"6§).width + this.§>^§;
                  }
                  if(this.§6"+§)
                  {
                     this.§3!<§.y = (§ !"§[_loc2_] as §2"6§).y + this.§=i§;
                     this.§3!<§.height = (§ !"§[_loc2_] as §2"6§).height + this.§^_§;
                  }
               }
               else
               {
                  (§ !"§[_loc2_] as §2"6§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§?"5§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§3j§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§%y§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §?"5§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§2"6§ = getItemByName(this.§0!1§) as §2"6§;
         if(_loc1_)
         {
            if(_loc1_.§0!h§ > 0)
            {
               (getItemByName("Button_Scroll1") as §73§).setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §73§).setComponentState(§3!W§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§0!h§ < _loc1_.§9"2§ - 1)
            {
               (getItemByName("Button_Scroll2") as §73§).setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §73§).setComponentState(§3!W§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §73§).setComponentState(§3!W§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §73§).setComponentState(§3!W§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §<!J§() : void
      {
         var _loc2_:§2"6§ = null;
         var _loc1_:int = § !"§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § !"§[_loc1_] as §2"6§;
            if(_loc2_)
            {
               _loc2_.clear();
               § !"§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§1O§("");
      }
      
      public function §[!Z§() : void
      {
         var _loc1_:§3j§ = null;
         for each(_loc1_ in this.§%y§)
         {
            _loc1_.§[!Z§();
         }
      }
      
      public function §-!I§() : Array
      {
         if(this.§]!p§(this.§0!1§) == null)
         {
            §"D§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§]!p§(this.§0!1§).§@F§();
      }
      
      public function §,J§(param1:Array) : void
      {
         this.§]!p§(this.§0!1§).§,J§(param1);
      }
      
      public function §4&§(param1:Number) : void
      {
         this.§]!p§(this.§0!1§).§4&§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§8!t§ = null;
         this.§%y§ = null;
         this.§]C§ = null;
      }
   }
}
