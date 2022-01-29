package §<h§
{
   import § %§.§0"8§;
   import §3#T§.§%"M§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §3#T§.§@"!§;
   import §]!6§.§6Y§;
   import com.rovio.assets.§!"f§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §=$4§ extends §[#K§
   {
      
      public static const §9"h§:int = 0;
      
      public static const §="O§:int = 1;
      
      public static const § #P§:int = 2;
       
      
      public var §'R§:String;
      
      public var §%#O§:Class;
      
      public var §<#t§:String = null;
      
      public var § $1§:Vector.<§%"M§>;
      
      public var §9"u§:int;
      
      public var §?"5§:Number;
      
      public var §=!2§:Number;
      
      public var §@!%§:Number;
      
      public var §9# §:Number;
      
      public var §1E§:Number;
      
      public var §]"I§:Number;
      
      public var §-"T§:Number;
      
      public var §0"4§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §8$+§:int;
      
      public var §!#?§:Number;
      
      public var §<`§:String = "";
      
      public var §!!g§:int;
      
      public var §%!p§:int;
      
      public var §^!j§:GlowFilter;
      
      public var §-#1§:Boolean = true;
      
      public var §1!%§:int;
      
      public var §6!p§:int;
      
      public var §3?§:Number = 0;
      
      public var §@"J§:Number = 0;
      
      public var §8"e§:Number = 0;
      
      public var §#!y§:Number = 0;
      
      public var §"#A§:Boolean = false;
      
      public var §+#N§:Boolean = false;
      
      public var §;"N§:MovieClip = null;
      
      public function §=$4§(param1:XML, param2:§[#K§, param3:§0"8§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§'R§ = param1.@button;
         if(this.§'R§.length > 0)
         {
            this.§%#O§ = §!"f§.§##?§(this.§'R§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§<#t§ = _loc5_;
         }
         this.§!!g§ = §9"h§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§!!g§ = §="O§;
            }
         }
         this.§%!p§ = § #P§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§%!p§ = §9"h§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§^!j§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §6$!§.push(new §>"0§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §6$!§.push(new §>"0§(_loc18_,this));
         }
         this.§?"5§ = mClip.getChildByName("Surface").x;
         this.§=!2§ = mClip.getChildByName("Surface").y;
         this.§@!%§ = mClip.getChildByName("Surface").width;
         this.§9# § = mClip.getChildByName("Surface").height;
         this.§1E§ = mClip.getChildByName("Button_Area1").x - this.§?"5§;
         this.§]"I§ = mClip.getChildByName("Button_Area1").y - this.§=!2§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§?"5§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§=!2§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§!#?§ = _loc9_.bottom - this.§=!2§ - this.§]"I§;
         this.§-"T§ = _loc7_ - this.§1E§;
         this.§0"4§ = _loc8_ - this.§]"I§;
         if(Math.abs(this.§-"T§) < 3)
         {
            this.§-"T§ = 0;
         }
         if(Math.abs(this.§0"4§) < 3)
         {
            this.§0"4§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§-"T§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§1E§ - this.§1E§) / this.§-"T§;
         }
         if(this.§0"4§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§]"I§ - this.§]"I§) / this.§0"4§;
         }
         this.§9"u§ = Math.min(_loc10_,_loc11_);
         this.§-#1§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§1!%§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§1!%§ = this.§9"u§;
         }
         this.§8$+§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§?"5§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§=!2§;
            this.mButtonMarginX2 = _loc19_ - this.§1E§;
            this.mButtonMarginY2 = _loc20_ - this.§]"I§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§-#1§)
            {
               this.§8$+§ = 1 + (mClip.getChildByName("Surface").height - this.§]"I§ - this.§]"I§) / this.mButtonMarginY2;
            }
            else
            {
               this.§8$+§ = 1 + (mClip.getChildByName("Surface").width - this.§1E§ - this.§1E§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§;"N§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§8"e§ = this.§;"N§.x - mClip.getChildByName("Surface").x;
            this.§#!y§ = this.§;"N§.y - mClip.getChildByName("Surface").y;
            this.§3?§ = this.§;"N§.x + this.§;"N§.width - (this.§;"N§.x + mClip.getChildByName("Surface").width);
            this.§@"J§ = this.§;"N§.y + this.§;"N§.height - (this.§;"N§.y + mClip.getChildByName("Surface").height);
            this.§"#A§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§+#N§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§6!p§ = §%"M§.§^"a§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§6!p§ = §%"M§.§@$1§;
            }
         }
         this.§19§();
      }
      
      public function §19§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§3!6§ = null;
         var _loc8_:§%"M§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§"!X§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §"!X§;
         }
         this.§ $1§ = new Vector.<§%"M§>();
         this.§@c§();
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
            _loc7_ = new §3!6§(_loc6_,this,null,_loc5_);
            §6$!§.push(_loc7_);
            _loc8_ = new §%"M§(this.§6!p§,_loc4_);
            this.§ $1§.push(_loc8_);
            _loc9_ = this.§1E§;
            _loc10_ = this.§9"u§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§%!p§ == §9"h§)
            {
               _loc9_ = (this.§@!%§ - (_loc10_ - 1) * this.§-"T§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§6$!§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§6$!§.push(new param2(_loc12_,_loc7_,new this.§%#O§() as MovieClip));
               }
               _loc13_ = _loc7_.§6$!§[_loc7_.§6$!§.length - 1] as §"!X§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§<#t§);
                  if(this.§!!g§ == §="O§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§<#t§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§8$+§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§-"T§;
                  _loc13_.y = this.§]"I§ + _loc11_ * this.§0"4§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§9"u§ * this.§8$+§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§9"u§ * this.§8$+§) / this.§9"u§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§9"u§ * this.§8$+§) % this.§9"u§;
                  if(this.§-#1§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§-"T§ + _loc16_ * this.§9"u§ * this.§-"T§;
                     _loc13_.y = this.§]"I§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§]"I§ + _loc18_ * this.§0"4§ + _loc16_ * this.§9"u§ * this.§0"4§;
                  }
               }
               _loc8_.§4!a§(_loc13_);
               _loc11_++;
            }
            _loc8_.§^$"§("");
            _loc7_.§3!K§(this.§9"u§,this.§?"5§,this.§=!2§,this.§1!%§ * this.§-"T§,this.§1!%§ * this.§0"4§,this.§8$+§,this.§1!%§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §>#8§() : int
      {
         return this.§9"u§;
      }
      
      public function get §%!2§() : int
      {
         if(this.§>#8§ == 0)
         {
            return 0;
         }
         return this.§1!4§(this.§<`§).§#!7§.length / this.§>#8§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§'#0§, param4:Event = null) : void
      {
         var _loc6_:§%"M§ = null;
         var _loc5_:§3!6§ = getItemByName(this.§<`§) as §3!6§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§3#k§(_loc5_.§"#+§ - 1);
               this.§+#=§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§3#k§(_loc5_.§"#+§ + 1);
               this.§+#=§();
            }
         }
         else if(param2.length > 0 && (param1 == §'#0§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'#0§.LISTENER_EVENT_MOUSE_UP) && param3 is §@"!§)
         {
            if((_loc6_ = this.§1!4§((param3 as §@"!§).mParentContainer.upperCaseName)) && param3 is §"!X§)
            {
               _loc6_.§^$"§((param3 as §@"!§).upperCaseName);
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §&m§(param1:String, param2:int) : void
      {
         var _loc3_:§3!6§ = getItemByName(param1) as §3!6§;
         if(_loc3_)
         {
            _loc3_.§3#k§(param2);
            this.§+#=§();
         }
      }
      
      public function §1!4§(param1:String) : §%"M§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ $1§.length)
         {
            if(param1.toUpperCase() == (this.§ $1§[_loc2_] as §%"M§).§=q§.toUpperCase())
            {
               return this.§ $1§[_loc2_] as §%"M§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;"v§(param1:String) : void
      {
         this.§<`§ = param1;
         param1 = param1.toUpperCase();
         var _loc2_:int = 0;
         while(_loc2_ < §6$!§.length)
         {
            if(§6$!§[_loc2_] is §3!6§)
            {
               if((§6$!§[_loc2_] as §3!6§).upperCaseName == param1)
               {
                  (§6$!§[_loc2_] as §3!6§).setActiveStatus(true);
                  if(this.§"#A§)
                  {
                     this.§;"N§.x = (§6$!§[_loc2_] as §3!6§).x + this.§8"e§;
                     this.§;"N§.width = (§6$!§[_loc2_] as §3!6§).width + this.§3?§;
                  }
                  if(this.§+#N§)
                  {
                     this.§;"N§.y = (§6$!§[_loc2_] as §3!6§).y + this.§#!y§;
                     this.§;"N§.height = (§6$!§[_loc2_] as §3!6§).height + this.§@"J§;
                  }
               }
               else
               {
                  (§6$!§[_loc2_] as §3!6§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§+#=§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§%"M§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§ $1§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §+#=§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§3!6§ = getItemByName(this.§<`§) as §3!6§;
         if(_loc1_)
         {
            if(_loc1_.§"#+§ > 0)
            {
               (getItemByName("Button_Scroll1") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§"#+§ < _loc1_.§'"8§ - 1)
            {
               (getItemByName("Button_Scroll2") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §@c§() : void
      {
         var _loc2_:§3!6§ = null;
         var _loc1_:int = §6$!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §6$!§[_loc1_] as §3!6§;
            if(_loc2_)
            {
               _loc2_.clear();
               §6$!§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§;"v§("");
      }
      
      public function §,#c§() : void
      {
         var _loc1_:§%"M§ = null;
         for each(_loc1_ in this.§ $1§)
         {
            _loc1_.§,#c§();
         }
      }
      
      public function §#P§() : Array
      {
         if(this.§1!4§(this.§<`§) == null)
         {
            §6Y§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§1!4§(this.§<`§).§%"m§();
      }
      
      public function §["H§(param1:Array) : void
      {
         this.§1!4§(this.§<`§).§["H§(param1);
      }
      
      public function §-!g§(param1:Number) : void
      {
         this.§1!4§(this.§<`§).§-!g§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§%#O§ = null;
         this.§ $1§ = null;
         this.§^!j§ = null;
      }
   }
}
