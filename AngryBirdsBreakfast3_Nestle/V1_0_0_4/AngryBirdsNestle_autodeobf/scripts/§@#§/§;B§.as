package §@#§
{
   import §"I§.§=!U§;
   import §02§.§`%§;
   import §[!b§.§!>§;
   import §[!b§.§'!R§;
   import §[!b§.§2!O§;
   import §[!b§.§]"-§;
   import com.rovio.assets.§&!2§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §;B§ extends §9!'§
   {
      
      public static const §%B§:int = 0;
      
      public static const §'!i§:int = 1;
      
      public static const §8!M§:int = 2;
       
      
      public var §8"2§:String;
      
      public var §5d§:Class;
      
      public var §%f§:String = null;
      
      public var §@"+§:Vector.<§!>§>;
      
      public var §2R§:int;
      
      public var §1"-§:Number;
      
      public var §'!I§:Number;
      
      public var §,c§:Number;
      
      public var §>B§:Number;
      
      public var §[!-§:Number;
      
      public var §^!x§:Number;
      
      public var §6!q§:Number;
      
      public var §3!#§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §!"-§:int;
      
      public var §==§:Number;
      
      public var §#R§:String = "";
      
      public var §7!h§:int;
      
      public var §7!T§:int;
      
      public var §<S§:GlowFilter;
      
      public var §6M§:Boolean = true;
      
      public var §0! §:int;
      
      public var §]!9§:int;
      
      public var §3!g§:Number = 0;
      
      public var §=7§:Number = 0;
      
      public var §0B§:Number = 0;
      
      public var §9!=§:Number = 0;
      
      public var §="2§:Boolean = false;
      
      public var §6'§:Boolean = false;
      
      public var §^!O§:MovieClip = null;
      
      public function §;B§(param1:XML, param2:§9!'§, param3:§`%§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§8"2§ = param1.@button;
         if(this.§8"2§.length > 0)
         {
            this.§5d§ = §&!2§.§0!O§(this.§8"2§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§%f§ = _loc5_;
         }
         this.§7!h§ = §%B§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§7!h§ = §'!i§;
            }
         }
         this.§7!T§ = §8!M§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§7!T§ = §%B§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§<S§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §3H§.push(new §4!O§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §3H§.push(new §4!O§(_loc18_,this));
         }
         this.§1"-§ = mClip.getChildByName("Surface").x;
         this.§'!I§ = mClip.getChildByName("Surface").y;
         this.§,c§ = mClip.getChildByName("Surface").width;
         this.§>B§ = mClip.getChildByName("Surface").height;
         this.§[!-§ = mClip.getChildByName("Button_Area1").x - this.§1"-§;
         this.§^!x§ = mClip.getChildByName("Button_Area1").y - this.§'!I§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§1"-§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§'!I§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§==§ = _loc9_.bottom - this.§'!I§ - this.§^!x§;
         this.§6!q§ = _loc7_ - this.§[!-§;
         this.§3!#§ = _loc8_ - this.§^!x§;
         if(Math.abs(this.§6!q§) < 3)
         {
            this.§6!q§ = 0;
         }
         if(Math.abs(this.§3!#§) < 3)
         {
            this.§3!#§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§6!q§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§[!-§ - this.§[!-§) / this.§6!q§;
         }
         if(this.§3!#§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§^!x§ - this.§^!x§) / this.§3!#§;
         }
         this.§2R§ = Math.min(_loc10_,_loc11_);
         this.§6M§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§0! § = param1.@ScrollPerClick;
         }
         else
         {
            this.§0! § = this.§2R§;
         }
         this.§!"-§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§1"-§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§'!I§;
            this.mButtonMarginX2 = _loc19_ - this.§[!-§;
            this.mButtonMarginY2 = _loc20_ - this.§^!x§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§6M§)
            {
               this.§!"-§ = 1 + (mClip.getChildByName("Surface").height - this.§^!x§ - this.§^!x§) / this.mButtonMarginY2;
            }
            else
            {
               this.§!"-§ = 1 + (mClip.getChildByName("Surface").width - this.§[!-§ - this.§[!-§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§^!O§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§0B§ = this.§^!O§.x - mClip.getChildByName("Surface").x;
            this.§9!=§ = this.§^!O§.y - mClip.getChildByName("Surface").y;
            this.§3!g§ = this.§^!O§.x + this.§^!O§.width - (this.§^!O§.x + mClip.getChildByName("Surface").width);
            this.§=7§ = this.§^!O§.y + this.§^!O§.height - (this.§^!O§.y + mClip.getChildByName("Surface").height);
            this.§="2§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§6'§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§]!9§ = §!>§.§%!,§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§]!9§ = §!>§.§8G§;
            }
         }
         this.§+!V§();
      }
      
      public function §+!V§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§6<§ = null;
         var _loc8_:§!>§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§5g§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §5g§;
         }
         this.§@"+§ = new Vector.<§!>§>();
         this.§4&§();
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
            _loc7_ = new §6<§(_loc6_,this,null,_loc5_);
            §3H§.push(_loc7_);
            _loc8_ = new §!>§(this.§]!9§,_loc4_);
            this.§@"+§.push(_loc8_);
            _loc9_ = this.§[!-§;
            _loc10_ = this.§2R§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§7!T§ == §%B§)
            {
               _loc9_ = (this.§,c§ - (_loc10_ - 1) * this.§6!q§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§3H§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§3H§.push(new param2(_loc12_,_loc7_,new this.§5d§() as MovieClip));
               }
               _loc13_ = _loc7_.§3H§[_loc7_.§3H§.length - 1] as §5g§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§'U§(_loc14_,this.§%f§);
                  if(this.§7!h§ == §'!i§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§%f§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§!"-§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§6!q§;
                  _loc13_.y = this.§^!x§ + _loc11_ * this.§3!#§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§2R§ * this.§!"-§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§2R§ * this.§!"-§) / this.§2R§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§2R§ * this.§!"-§) % this.§2R§;
                  if(this.§6M§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§6!q§ + _loc16_ * this.§2R§ * this.§6!q§;
                     _loc13_.y = this.§^!x§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§^!x§ + _loc18_ * this.§3!#§ + _loc16_ * this.§2R§ * this.§3!#§;
                  }
               }
               _loc8_.§[`§(_loc13_);
               _loc11_++;
            }
            _loc8_.§3"$§("");
            _loc7_.§&"-§(this.§2R§,this.§1"-§,this.§'!I§,this.§0! § * this.§6!q§,this.§0! § * this.§3!#§,this.§!"-§,this.§0! §);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §&"0§() : int
      {
         return this.§2R§;
      }
      
      public function get §%d§() : int
      {
         if(this.§&"0§ == 0)
         {
            return 0;
         }
         return this.§"!8§(this.§#R§).§6t§.length / this.§&"0§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§'!R§, param4:Event = null) : void
      {
         var _loc6_:§!>§ = null;
         var _loc5_:§6<§ = getItemByName(this.§#R§) as §6<§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§"!h§(_loc5_.§;p§ - 1);
               this.§;y§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§"!h§(_loc5_.§;p§ + 1);
               this.§;y§();
            }
         }
         else if(param2.length > 0 && (param1 == §'!R§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'!R§.LISTENER_EVENT_MOUSE_UP) && param3 is §2!O§)
         {
            if((_loc6_ = this.§"!8§((param3 as §2!O§).mParentContainer.mName.toUpperCase())) && param3 is §5g§)
            {
               _loc6_.§3"$§((param3 as §2!O§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §9!%§(param1:String, param2:int) : void
      {
         var _loc3_:§6<§ = getItemByName(param1) as §6<§;
         if(_loc3_)
         {
            _loc3_.§"!h§(param2);
            this.§;y§();
         }
      }
      
      public function §"!8§(param1:String) : §!>§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@"+§.length)
         {
            if(param1.toUpperCase() == (this.§@"+§[_loc2_] as §!>§).mName.toUpperCase())
            {
               return this.§@"+§[_loc2_] as §!>§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8§(param1:String) : void
      {
         this.§#R§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §3H§.length)
         {
            if(§3H§[_loc2_] is §6<§)
            {
               if((§3H§[_loc2_] as §6<§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§3H§[_loc2_] as §6<§).setActiveStatus(true);
                  if(this.§="2§)
                  {
                     this.§^!O§.x = (§3H§[_loc2_] as §6<§).x + this.§0B§;
                     this.§^!O§.width = (§3H§[_loc2_] as §6<§).width + this.§3!g§;
                  }
                  if(this.§6'§)
                  {
                     this.§^!O§.y = (§3H§[_loc2_] as §6<§).y + this.§9!=§;
                     this.§^!O§.height = (§3H§[_loc2_] as §6<§).height + this.§=7§;
                  }
               }
               else
               {
                  (§3H§[_loc2_] as §6<§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§;y§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§!>§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§@"+§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §;y§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§6<§ = getItemByName(this.§#R§) as §6<§;
         if(_loc1_)
         {
            if(_loc1_.§;p§ > 0)
            {
               (getItemByName("Button_Scroll1") as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§;p§ < _loc1_.§;!#§ - 1)
            {
               (getItemByName("Button_Scroll2") as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §4&§() : void
      {
         var _loc2_:§6<§ = null;
         var _loc1_:int = §3H§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §3H§[_loc1_] as §6<§;
            if(_loc2_)
            {
               _loc2_.clear();
               §3H§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§8§("");
      }
      
      public function §0"§() : void
      {
         var _loc1_:§!>§ = null;
         for each(_loc1_ in this.§@"+§)
         {
            _loc1_.§0"§();
         }
      }
      
      public function §%[§() : Array
      {
         if(this.§"!8§(this.§#R§) == null)
         {
            §=!U§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§"!8§(this.§#R§).§]",§();
      }
      
      public function §#Z§(param1:Array) : void
      {
         this.§"!8§(this.§#R§).§#Z§(param1);
      }
      
      public function §#!%§(param1:Number) : void
      {
         this.§"!8§(this.§#R§).§#!%§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§5d§ = null;
         this.§@"+§ = null;
         this.§<S§ = null;
      }
   }
}
