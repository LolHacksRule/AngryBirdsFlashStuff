package §6"r§
{
   import §!x§.§4"d§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'!U§.§7"I§;
   import §'!U§.§>$$§;
   import §<!O§.§'k§;
   import com.rovio.assets.§@`§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §3#@§ extends §0"<§
   {
      
      public static const §^$7§:int = 0;
      
      public static const §7#z§:int = 1;
      
      public static const §=^§:int = 2;
       
      
      public var §;!v§:String;
      
      public var §1"u§:Class;
      
      public var §&!r§:String = null;
      
      public var §2!o§:Vector.<§7"I§>;
      
      public var §!!l§:int;
      
      public var §"##§:Number;
      
      public var §%J§:Number;
      
      public var §'!B§:Number;
      
      public var §8$,§:Number;
      
      public var §,v§:Number;
      
      public var §6#,§:Number;
      
      public var §`d§:Number;
      
      public var §6l§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §[#5§:int;
      
      public var § #8§:Number;
      
      public var §+"A§:String = "";
      
      public var §>"_§:int;
      
      public var §3#w§:int;
      
      public var §'"v§:GlowFilter;
      
      public var §!V§:Boolean = true;
      
      public var §0"v§:int;
      
      public var §8#S§:int;
      
      public var §4!U§:Number = 0;
      
      public var §0g§:Number = 0;
      
      public var §7"_§:Number = 0;
      
      public var §8$!§:Number = 0;
      
      public var §"!p§:Boolean = false;
      
      public var §8!A§:Boolean = false;
      
      public var §<!`§:MovieClip = null;
      
      public function §3#@§(param1:XML, param2:§0"<§, param3:§'k§, param4:MovieClip = null)
      {
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§;!v§ = param1.@button;
         if(this.§;!v§.length > 0)
         {
            this.§1"u§ = §@`§.§4!i§(this.§;!v§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§&!r§ = _loc5_;
         }
         this.§>"_§ = §^$7§;
         if(param1.@buttonAlign)
         {
            if(param1.@buttonAlign.toUpperCase() == "BOTTOM")
            {
               this.§>"_§ = §7#z§;
            }
         }
         this.§3#w§ = §=^§;
         if(param1.@surfaceAlign)
         {
            if(param1.@surfaceAlign.toUpperCase() == "CENTER")
            {
               this.§3#w§ = §^$7§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§'"v§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §5&§.push(new §=O§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §5&§.push(new §=O§(_loc18_,this));
         }
         this.§"##§ = mClip.getChildByName("Surface").x;
         this.§%J§ = mClip.getChildByName("Surface").y;
         this.§'!B§ = mClip.getChildByName("Surface").width;
         this.§8$,§ = mClip.getChildByName("Surface").height;
         this.§,v§ = mClip.getChildByName("Button_Area1").x - this.§"##§;
         this.§6#,§ = mClip.getChildByName("Button_Area1").y - this.§%J§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§"##§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§%J§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§ #8§ = _loc9_.bottom - this.§%J§ - this.§6#,§;
         this.§`d§ = _loc7_ - this.§,v§;
         this.§6l§ = _loc8_ - this.§6#,§;
         if(Math.abs(this.§`d§) < 3)
         {
            this.§`d§ = 0;
         }
         if(Math.abs(this.§6l§) < 3)
         {
            this.§6l§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§`d§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§,v§ - this.§,v§) / this.§`d§;
         }
         if(this.§6l§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§6#,§ - this.§6#,§) / this.§6l§;
         }
         this.§!!l§ = Math.min(_loc10_,_loc11_);
         this.§!V§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§0"v§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§0"v§ = this.§!!l§;
         }
         this.§[#5§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§"##§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§%J§;
            this.mButtonMarginX2 = _loc19_ - this.§,v§;
            this.mButtonMarginY2 = _loc20_ - this.§6#,§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§!V§)
            {
               this.§[#5§ = 1 + (mClip.getChildByName("Surface").height - this.§6#,§ - this.§6#,§) / this.mButtonMarginY2;
            }
            else
            {
               this.§[#5§ = 1 + (mClip.getChildByName("Surface").width - this.§,v§ - this.§,v§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§<!`§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§7"_§ = this.§<!`§.x - mClip.getChildByName("Surface").x;
            this.§8$!§ = this.§<!`§.y - mClip.getChildByName("Surface").y;
            this.§4!U§ = this.§<!`§.x + this.§<!`§.width - (this.§<!`§.x + mClip.getChildByName("Surface").width);
            this.§0g§ = this.§<!`§.y + this.§<!`§.height - (this.§<!`§.y + mClip.getChildByName("Surface").height);
            this.§"!p§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§8!A§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§8#S§ = §7"I§.§]#V§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§8#S§ = §7"I§.§@!t§;
            }
         }
         this.§@$0§();
      }
      
      public function §@$0§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§-"N§ = null;
         var _loc8_:§7"I§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§9a§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §9a§;
         }
         this.§2!o§ = new Vector.<§7"I§>();
         this.§#!t§();
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = name + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §-"N§(_loc6_,this,null,_loc5_);
            §5&§.push(_loc7_);
            _loc8_ = new §7"I§(this.§8#S§,_loc4_);
            this.§2!o§.push(_loc8_);
            _loc9_ = this.§,v§;
            _loc10_ = this.§!!l§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§3#w§ == §^$7§)
            {
               _loc9_ = (this.§'!B§ - (_loc10_ - 1) * this.§`d§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§5&§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§5&§.push(new param2(_loc12_,_loc7_,new this.§1"u§() as MovieClip));
               }
               _loc13_ = _loc7_.§5&§[_loc7_.§5&§.length - 1] as §9a§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§&!r§);
                  if(this.§>"_§ == §7#z§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§&!r§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§[#5§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§`d§;
                  _loc13_.y = this.§6#,§ + _loc11_ * this.§6l§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§!!l§ * this.§[#5§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§!!l§ * this.§[#5§) / this.§!!l§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§!!l§ * this.§[#5§) % this.§!!l§;
                  if(this.§!V§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§`d§ + _loc16_ * this.§!!l§ * this.§`d§;
                     _loc13_.y = this.§6#,§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§6#,§ + _loc18_ * this.§6l§ + _loc16_ * this.§!!l§ * this.§6l§;
                  }
               }
               _loc8_.§-$<§(_loc13_);
               _loc11_++;
            }
            _loc8_.§9"S§("");
            _loc7_.§<e§(this.§!!l§,this.§"##§,this.§%J§,this.§0"v§ * this.§`d§,this.§0"v§ * this.§6l§,this.§[#5§,this.§0"v§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §=R§() : int
      {
         return this.§!!l§;
      }
      
      public function get §<!3§() : int
      {
         if(this.§=R§ == 0)
         {
            return 0;
         }
         return this.§`"I§(this.§+"A§).§?$0§.length / this.§=R§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§0!?§, param4:Event = null) : void
      {
         var _loc6_:§7"I§ = null;
         var _loc5_:§-"N§ = getItemByName(this.§+"A§) as §-"N§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§ !d§(_loc5_.§`$!§ - 1);
               this.§@!X§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§ !d§(_loc5_.§`$!§ + 1);
               this.§@!X§();
            }
         }
         else if(param2.length > 0 && (param1 == §0!?§.LISTENER_EVENT_MOUSE_DOWN || param1 == §0!?§.LISTENER_EVENT_MOUSE_UP) && param3 is §>$$§)
         {
            if((_loc6_ = this.§`"I§((param3 as §>$$§).mParentContainer.upperCaseName)) && param3 is §9a§)
            {
               _loc6_.§9"S§((param3 as §>$$§).upperCaseName);
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §["L§(param1:String, param2:int) : void
      {
         var _loc3_:§-"N§ = getItemByName(param1) as §-"N§;
         if(_loc3_)
         {
            _loc3_.§ !d§(param2);
            this.§@!X§();
         }
      }
      
      public function §`"I§(param1:String) : §7"I§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!o§.length)
         {
            if(param1.toUpperCase() == (this.§2!o§[_loc2_] as §7"I§).§2!4§.toUpperCase())
            {
               return this.§2!o§[_loc2_] as §7"I§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5%§(param1:String) : void
      {
         this.§+"A§ = param1;
         param1 = param1.toUpperCase();
         var _loc2_:int = 0;
         while(_loc2_ < §5&§.length)
         {
            if(§5&§[_loc2_] is §-"N§)
            {
               if((§5&§[_loc2_] as §-"N§).upperCaseName == param1)
               {
                  (§5&§[_loc2_] as §-"N§).setActiveStatus(true);
                  if(this.§"!p§)
                  {
                     this.§<!`§.x = (§5&§[_loc2_] as §-"N§).x + this.§7"_§;
                     this.§<!`§.width = (§5&§[_loc2_] as §-"N§).width + this.§4!U§;
                  }
                  if(this.§8!A§)
                  {
                     this.§<!`§.y = (§5&§[_loc2_] as §-"N§).y + this.§8$!§;
                     this.§<!`§.height = (§5&§[_loc2_] as §-"N§).height + this.§0g§;
                  }
               }
               else
               {
                  (§5&§[_loc2_] as §-"N§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§@!X§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§7"I§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§2!o§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §@!X§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§-"N§ = getItemByName(this.§+"A§) as §-"N§;
         if(_loc1_)
         {
            if(_loc1_.§`$!§ > 0)
            {
               (getItemByName("Button_Scroll1") as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §=O§).setComponentState(§4P§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§`$!§ < _loc1_.§?"U§ - 1)
            {
               (getItemByName("Button_Scroll2") as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §=O§).setComponentState(§4P§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §=O§).setComponentState(§4P§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §=O§).setComponentState(§4P§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §#!t§() : void
      {
         var _loc2_:§-"N§ = null;
         var _loc1_:int = §5&§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §5&§[_loc1_] as §-"N§;
            if(_loc2_)
            {
               _loc2_.clear();
               §5&§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§5%§("");
      }
      
      public function §>K§() : void
      {
         var _loc1_:§7"I§ = null;
         for each(_loc1_ in this.§2!o§)
         {
            _loc1_.§>K§();
         }
      }
      
      public function §+!b§() : Array
      {
         if(this.§`"I§(this.§+"A§) == null)
         {
            §4"d§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§`"I§(this.§+"A§).§?#3§();
      }
      
      public function §&x§(param1:Array) : void
      {
         this.§`"I§(this.§+"A§).§&x§(param1);
      }
      
      public function §7!&§(param1:Number) : void
      {
         this.§`"I§(this.§+"A§).§7!&§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§1"u§ = null;
         this.§2!o§ = null;
         this.§'"v§ = null;
      }
   }
}
