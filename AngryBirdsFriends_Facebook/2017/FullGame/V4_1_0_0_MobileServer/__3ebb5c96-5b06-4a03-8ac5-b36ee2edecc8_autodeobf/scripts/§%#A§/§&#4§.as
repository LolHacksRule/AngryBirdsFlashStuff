package §%#A§
{
   import §8#D§.§#E§;
   import §<"1§.§'"S§;
   import §<"1§.§5#-§;
   import §<"1§.§@!N§;
   import §<"1§.§[!K§;
   import §<"p§.§?!T§;
   import com.rovio.assets.§+$#§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §&#4§ extends §]!_§
   {
      
      public static const § var§:int = 0;
      
      public static const §^!P§:int = 1;
      
      public static const §@!'§:int = 2;
       
      
      public var §5!^§:String;
      
      public var §1"i§:Class;
      
      public var §;#x§:String = null;
      
      public var §>"a§:Vector.<§5#-§>;
      
      public var §5"+§:int;
      
      public var §,"A§:Number;
      
      public var §0"R§:Number;
      
      public var §4!D§:Number;
      
      public var §5#T§:Number;
      
      public var §`I§:Number;
      
      public var §;"l§:Number;
      
      public var §,P§:Number;
      
      public var §5!B§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §2"@§:int;
      
      public var §>!V§:Number;
      
      public var §="M§:String = "";
      
      public var §-!9§:int;
      
      public var §<#B§:int;
      
      public var §-"R§:GlowFilter;
      
      public var §9$$§:Boolean = true;
      
      public var §"!?§:int;
      
      public var §2;§:int;
      
      public var §@"w§:Number = 0;
      
      public var §+"#§:Number = 0;
      
      public var §>#4§:Number = 0;
      
      public var §0>§:Number = 0;
      
      public var §#"e§:Boolean = false;
      
      public var §2!d§:Boolean = false;
      
      public var §1"b§:MovieClip = null;
      
      public function §&#4§(param1:XML, param2:§]!_§, param3:§#E§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§5!^§ = param1.@button;
         if(this.§5!^§.length > 0)
         {
            this.§1"i§ = §+$#§.§["`§(this.§5!^§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§;#x§ = _loc5_;
         }
         this.§-!9§ = § var§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§-!9§ = §^!P§;
            }
         }
         this.§<#B§ = §@!'§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§<#B§ = § var§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§-"R§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §+G§.push(new §,#w§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §+G§.push(new §,#w§(_loc18_,this));
         }
         this.§,"A§ = mClip.getChildByName("Surface").x;
         this.§0"R§ = mClip.getChildByName("Surface").y;
         this.§4!D§ = mClip.getChildByName("Surface").width;
         this.§5#T§ = mClip.getChildByName("Surface").height;
         this.§`I§ = mClip.getChildByName("Button_Area1").x - this.§,"A§;
         this.§;"l§ = mClip.getChildByName("Button_Area1").y - this.§0"R§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§,"A§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§0"R§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§>!V§ = _loc9_.bottom - this.§0"R§ - this.§;"l§;
         this.§,P§ = _loc7_ - this.§`I§;
         this.§5!B§ = _loc8_ - this.§;"l§;
         if(Math.abs(this.§,P§) < 3)
         {
            this.§,P§ = 0;
         }
         if(Math.abs(this.§5!B§) < 3)
         {
            this.§5!B§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§,P§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§`I§ - this.§`I§) / this.§,P§;
         }
         if(this.§5!B§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§;"l§ - this.§;"l§) / this.§5!B§;
         }
         this.§5"+§ = Math.min(_loc10_,_loc11_);
         this.§9$$§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§"!?§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§"!?§ = this.§5"+§;
         }
         this.§2"@§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§,"A§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§0"R§;
            this.mButtonMarginX2 = _loc19_ - this.§`I§;
            this.mButtonMarginY2 = _loc20_ - this.§;"l§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§9$$§)
            {
               this.§2"@§ = 1 + (mClip.getChildByName("Surface").height - this.§;"l§ - this.§;"l§) / this.mButtonMarginY2;
            }
            else
            {
               this.§2"@§ = 1 + (mClip.getChildByName("Surface").width - this.§`I§ - this.§`I§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§1"b§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§>#4§ = this.§1"b§.x - mClip.getChildByName("Surface").x;
            this.§0>§ = this.§1"b§.y - mClip.getChildByName("Surface").y;
            this.§@"w§ = this.§1"b§.x + this.§1"b§.width - (this.§1"b§.x + mClip.getChildByName("Surface").width);
            this.§+"#§ = this.§1"b§.y + this.§1"b§.height - (this.§1"b§.y + mClip.getChildByName("Surface").height);
            this.§#"e§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§2!d§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§2;§ = §5#-§.§1#>§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§2;§ = §5#-§.§;I§;
            }
         }
         this.§6"`§();
      }
      
      public function §6"`§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§3s§ = null;
         var _loc8_:§5#-§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§=!k§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §=!k§;
         }
         this.§>"a§ = new Vector.<§5#-§>();
         this.§>#Y§();
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
            _loc7_ = new §3s§(_loc6_,this,null,_loc5_);
            §+G§.push(_loc7_);
            _loc8_ = new §5#-§(this.§2;§,_loc4_);
            this.§>"a§.push(_loc8_);
            _loc9_ = this.§`I§;
            _loc10_ = this.§5"+§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§<#B§ == § var§)
            {
               _loc9_ = (this.§4!D§ - (_loc10_ - 1) * this.§,P§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§+G§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§+G§.push(new param2(_loc12_,_loc7_,new this.§1"i§() as MovieClip));
               }
               _loc13_ = _loc7_.§+G§[_loc7_.§+G§.length - 1] as §=!k§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§;#x§);
                  if(this.§-!9§ == §^!P§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§;#x§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§2"@§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§,P§;
                  _loc13_.y = this.§;"l§ + _loc11_ * this.§5!B§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§5"+§ * this.§2"@§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§5"+§ * this.§2"@§) / this.§5"+§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§5"+§ * this.§2"@§) % this.§5"+§;
                  if(this.§9$$§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§,P§ + _loc16_ * this.§5"+§ * this.§,P§;
                     _loc13_.y = this.§;"l§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§;"l§ + _loc18_ * this.§5!B§ + _loc16_ * this.§5"+§ * this.§5!B§;
                  }
               }
               _loc8_.§#"4§(_loc13_);
               _loc11_++;
            }
            _loc8_.§'R§("");
            _loc7_.§0-§(this.§5"+§,this.§,"A§,this.§0"R§,this.§"!?§ * this.§,P§,this.§"!?§ * this.§5!B§,this.§2"@§,this.§"!?§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §=#6§() : int
      {
         return this.§5"+§;
      }
      
      public function get §+#5§() : int
      {
         if(this.§=#6§ == 0)
         {
            return 0;
         }
         return this.§>#v§(this.§="M§).§3"f§.length / this.§=#6§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§'"S§, param4:Event = null) : void
      {
         var _loc6_:§5#-§ = null;
         var _loc5_:§3s§ = getItemByName(this.§="M§) as §3s§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§##h§(_loc5_.§%#e§ - 1);
               this.§7!f§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§##h§(_loc5_.§%#e§ + 1);
               this.§7!f§();
            }
         }
         else if(param2.length > 0 && (param1 == §'"S§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'"S§.LISTENER_EVENT_MOUSE_UP) && param3 is §[!K§)
         {
            if((_loc6_ = this.§>#v§((param3 as §[!K§).mParentContainer.upperCaseName)) && param3 is §=!k§)
            {
               _loc6_.§'R§((param3 as §[!K§).upperCaseName);
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §%!y§(param1:String, param2:int) : void
      {
         var _loc3_:§3s§ = getItemByName(param1) as §3s§;
         if(_loc3_)
         {
            _loc3_.§##h§(param2);
            this.§7!f§();
         }
      }
      
      public function §>#v§(param1:String) : §5#-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>"a§.length)
         {
            if(param1.toUpperCase() == (this.§>"a§[_loc2_] as §5#-§).§;!p§.toUpperCase())
            {
               return this.§>"a§[_loc2_] as §5#-§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%F§(param1:String) : void
      {
         this.§="M§ = param1;
         param1 = param1.toUpperCase();
         var _loc2_:int = 0;
         while(_loc2_ < §+G§.length)
         {
            if(§+G§[_loc2_] is §3s§)
            {
               if((§+G§[_loc2_] as §3s§).upperCaseName == param1)
               {
                  (§+G§[_loc2_] as §3s§).setActiveStatus(true);
                  if(this.§#"e§)
                  {
                     this.§1"b§.x = (§+G§[_loc2_] as §3s§).x + this.§>#4§;
                     this.§1"b§.width = (§+G§[_loc2_] as §3s§).width + this.§@"w§;
                  }
                  if(this.§2!d§)
                  {
                     this.§1"b§.y = (§+G§[_loc2_] as §3s§).y + this.§0>§;
                     this.§1"b§.height = (§+G§[_loc2_] as §3s§).height + this.§+"#§;
                  }
               }
               else
               {
                  (§+G§[_loc2_] as §3s§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§7!f§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§5#-§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§>"a§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §7!f§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§3s§ = getItemByName(this.§="M§) as §3s§;
         if(_loc1_)
         {
            if(_loc1_.§%#e§ > 0)
            {
               (getItemByName("Button_Scroll1") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§%#e§ < _loc1_.§-!d§ - 1)
            {
               (getItemByName("Button_Scroll2") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §,#w§).setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §>#Y§() : void
      {
         var _loc2_:§3s§ = null;
         var _loc1_:int = §+G§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+G§[_loc1_] as §3s§;
            if(_loc2_)
            {
               _loc2_.clear();
               §+G§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§%F§("");
      }
      
      public function §5#=§() : void
      {
         var _loc1_:§5#-§ = null;
         for each(_loc1_ in this.§>"a§)
         {
            _loc1_.§5#=§();
         }
      }
      
      public function §4#0§() : Array
      {
         if(this.§>#v§(this.§="M§) == null)
         {
            §?!T§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§>#v§(this.§="M§).§8",§();
      }
      
      public function §'!C§(param1:Array) : void
      {
         this.§>#v§(this.§="M§).§'!C§(param1);
      }
      
      public function §6q§(param1:Number) : void
      {
         this.§>#v§(this.§="M§).§6q§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§1"i§ = null;
         this.§>"a§ = null;
         this.§-"R§ = null;
      }
   }
}
