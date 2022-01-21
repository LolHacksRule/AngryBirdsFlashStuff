package §2y§
{
   import § 1§.§=§;
   import §3!R§.§,=§;
   import §3!R§.§0!R§;
   import §3!R§.§1e§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §5K§.§[C§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?!H§ extends §]`§
   {
      
      public static const §9!o§:int = 0;
      
      public static const §6+§:int = 1;
      
      public static const §7p§:int = 2;
       
      
      public var §1o§:String;
      
      public var §^Q§:Class;
      
      public var §6!]§:String = null;
      
      public var §&!Y§:Vector.<§1e§>;
      
      public var §`]§:int;
      
      public var §+!>§:Number;
      
      public var §8!-§:Number;
      
      public var §#]§:Number;
      
      public var §3X§:Number;
      
      public var §%H§:Number;
      
      public var §-!V§:Number;
      
      public var §&p§:Number;
      
      public var §#r§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §80§:int;
      
      public var §0!-§:Number;
      
      public var §1!4§:String = "";
      
      public var §,!D§:int;
      
      public var §-!-§:int;
      
      public var §@]§:GlowFilter;
      
      public var §=!j§:Boolean = true;
      
      public var §]P§:int;
      
      public var §3!O§:int;
      
      public var §!!K§:Number = 0;
      
      public var §8!!§:Number = 0;
      
      public var §9o§:Number = 0;
      
      public var §'4§:Number = 0;
      
      public var §6!1§:Boolean = false;
      
      public var §=I§:Boolean = false;
      
      public var §#$§:MovieClip = null;
      
      public function §?!H§(param1:XML, param2:§]`§, param3:§"!n§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§1o§ = param1.@button;
         if(this.§1o§.length > 0)
         {
            this.§^Q§ = §=§.§>!f§(this.§1o§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§6!]§ = _loc5_;
         }
         this.§,!D§ = §9!o§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§,!D§ = §6+§;
            }
         }
         this.§-!-§ = §7p§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§-!-§ = §9!o§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§@]§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §,]§.push(new §@!a§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §,]§.push(new §@!a§(_loc18_,this));
         }
         this.§+!>§ = mClip.getChildByName("Surface").x;
         this.§8!-§ = mClip.getChildByName("Surface").y;
         this.§#]§ = mClip.getChildByName("Surface").width;
         this.§3X§ = mClip.getChildByName("Surface").height;
         this.§%H§ = mClip.getChildByName("Button_Area1").x - this.§+!>§;
         this.§-!V§ = mClip.getChildByName("Button_Area1").y - this.§8!-§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§+!>§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§8!-§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§0!-§ = _loc9_.bottom - this.§8!-§ - this.§-!V§;
         this.§&p§ = _loc7_ - this.§%H§;
         this.§#r§ = _loc8_ - this.§-!V§;
         if(Math.abs(this.§&p§) < 3)
         {
            this.§&p§ = 0;
         }
         if(Math.abs(this.§#r§) < 3)
         {
            this.§#r§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§&p§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§%H§ - this.§%H§) / this.§&p§;
         }
         if(this.§#r§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§-!V§ - this.§-!V§) / this.§#r§;
         }
         this.§`]§ = Math.min(_loc10_,_loc11_);
         this.§=!j§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§]P§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§]P§ = this.§`]§;
         }
         this.§80§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§+!>§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§8!-§;
            this.mButtonMarginX2 = _loc19_ - this.§%H§;
            this.mButtonMarginY2 = _loc20_ - this.§-!V§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§=!j§)
            {
               this.§80§ = 1 + (mClip.getChildByName("Surface").height - this.§-!V§ - this.§-!V§) / this.mButtonMarginY2;
            }
            else
            {
               this.§80§ = 1 + (mClip.getChildByName("Surface").width - this.§%H§ - this.§%H§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§#$§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§9o§ = this.§#$§.x - mClip.getChildByName("Surface").x;
            this.§'4§ = this.§#$§.y - mClip.getChildByName("Surface").y;
            this.§!!K§ = this.§#$§.x + this.§#$§.width - (this.§#$§.x + mClip.getChildByName("Surface").width);
            this.§8!!§ = this.§#$§.y + this.§#$§.height - (this.§#$§.y + mClip.getChildByName("Surface").height);
            this.§6!1§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§=I§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§3!O§ = §1e§.§6n§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§3!O§ = §1e§.§+!"§;
            }
         }
         this.§97§();
      }
      
      public function §97§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§^!;§ = null;
         var _loc8_:§1e§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§2!"§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §2!"§;
         }
         this.§&!Y§ = new Vector.<§1e§>();
         this.§^!?§();
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
            _loc7_ = new §^!;§(_loc6_,this,null,_loc5_);
            §,]§.push(_loc7_);
            _loc8_ = new §1e§(this.§3!O§,_loc4_);
            this.§&!Y§.push(_loc8_);
            _loc9_ = this.§%H§;
            _loc10_ = this.§`]§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§-!-§ == §9!o§)
            {
               _loc9_ = (this.§#]§ - (_loc10_ - 1) * this.§&p§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§,]§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§,]§.push(new param2(_loc12_,_loc7_,new this.§^Q§() as MovieClip));
               }
               _loc13_ = _loc7_.§,]§[_loc7_.§,]§.length - 1] as §2!"§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§%K§(_loc14_,this.§6!]§);
                  if(this.§,!D§ == §6+§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§6!]§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§80§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§&p§;
                  _loc13_.y = this.§-!V§ + _loc11_ * this.§#r§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§`]§ * this.§80§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§`]§ * this.§80§) / this.§`]§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§`]§ * this.§80§) % this.§`]§;
                  if(this.§=!j§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§&p§ + _loc16_ * this.§`]§ * this.§&p§;
                     _loc13_.y = this.§-!V§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§-!V§ + _loc18_ * this.§#r§ + _loc16_ * this.§`]§ * this.§#r§;
                  }
               }
               _loc8_.§<!V§(_loc13_);
               _loc11_++;
            }
            _loc8_.§&!N§("");
            _loc7_.§8!V§(this.§`]§,this.§+!>§,this.§8!-§,this.§]P§ * this.§&p§,this.§]P§ * this.§#r§,this.§80§,this.§]P§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §4e§() : int
      {
         return this.§`]§;
      }
      
      public function get §>!a§() : int
      {
         if(this.§4e§ == 0)
         {
            return 0;
         }
         return this.§5h§(this.§1!4§).§1k§.length / this.§4e§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§81§) : void
      {
         var _loc5_:§1e§ = null;
         var _loc4_:§^!;§ = getItemByName(this.§1!4§) as §^!;§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§#!Q§(_loc4_.§1!=§ - 1);
               this.§]i§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§#!Q§(_loc4_.§1!=§ + 1);
               this.§]i§();
            }
         }
         else if(param2.length > 0 && (param1 == §81§.LISTENER_EVENT_MOUSE_DOWN || param1 == §81§.LISTENER_EVENT_MOUSE_UP) && param3 is §0!R§)
         {
            if((_loc5_ = this.§5h§((param3 as §0!R§).mParentContainer.mName.toUpperCase())) && param3 is §2!"§)
            {
               _loc5_.§&!N§((param3 as §0!R§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §7Z§(param1:String, param2:int) : void
      {
         var _loc3_:§^!;§ = getItemByName(param1) as §^!;§;
         if(_loc3_)
         {
            _loc3_.§#!Q§(param2);
            this.§]i§();
         }
      }
      
      public function §5h§(param1:String) : §1e§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!Y§.length)
         {
            if(param1.toUpperCase() == (this.§&!Y§[_loc2_] as §1e§).mName.toUpperCase())
            {
               return this.§&!Y§[_loc2_] as §1e§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7!j§(param1:String) : void
      {
         this.§1!4§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §,]§.length)
         {
            if(§,]§[_loc2_] is §^!;§)
            {
               if((§,]§[_loc2_] as §^!;§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§,]§[_loc2_] as §^!;§).setActiveStatus(true);
                  if(this.§6!1§)
                  {
                     this.§#$§.x = (§,]§[_loc2_] as §^!;§).x + this.§9o§;
                     this.§#$§.width = (§,]§[_loc2_] as §^!;§).width + this.§!!K§;
                  }
                  if(this.§=I§)
                  {
                     this.§#$§.y = (§,]§[_loc2_] as §^!;§).y + this.§'4§;
                     this.§#$§.height = (§,]§[_loc2_] as §^!;§).height + this.§8!!§;
                  }
               }
               else
               {
                  (§,]§[_loc2_] as §^!;§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§]i§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§1e§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§&!Y§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §]i§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§^!;§ = getItemByName(this.§1!4§) as §^!;§;
         if(_loc1_)
         {
            if(_loc1_.§1!=§ > 0)
            {
               (getItemByName("Button_Scroll1") as §@!a§).setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §@!a§).setComponentState(§,=§.§%,§);
            }
            if(_loc1_.§1!=§ < _loc1_.§7@§ - 1)
            {
               (getItemByName("Button_Scroll2") as §@!a§).setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §@!a§).setComponentState(§,=§.§%,§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §@!a§).setComponentState(§,=§.§%,§);
            (getItemByName("Button_Scroll2") as §@!a§).setComponentState(§,=§.§%,§);
         }
      }
      
      public function §^!?§() : void
      {
         var _loc2_:§^!;§ = null;
         var _loc1_:int = §,]§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §,]§[_loc1_] as §^!;§;
            if(_loc2_)
            {
               _loc2_.clear();
               §,]§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§7!j§("");
      }
      
      public function §8P§() : void
      {
         var _loc1_:§1e§ = null;
         for each(_loc1_ in this.§&!Y§)
         {
            _loc1_.§8P§();
         }
      }
      
      public function §[u§() : Array
      {
         if(this.§5h§(this.§1!4§) == null)
         {
            §[C§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§5h§(this.§1!4§).§!%§();
      }
      
      public function §5!§(param1:Array) : void
      {
         this.§5h§(this.§1!4§).§5!§(param1);
      }
      
      public function §"w§(param1:Number) : void
      {
         this.§5h§(this.§1!4§).§"w§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§^Q§ = null;
         this.§&!Y§ = null;
         this.§@]§ = null;
      }
   }
}
