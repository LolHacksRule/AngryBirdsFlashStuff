package §;"+§
{
   import §5<§.§58§;
   import §;4§.§]!%§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import §>P§.§3!Z§;
   import §>P§.§>L§;
   import com.rovio.assets.§2"&§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'L§ extends §^!i§
   {
      
      public static const §5!3§:int = 0;
      
      public static const §9!V§:int = 1;
      
      public static const each:int = 2;
       
      
      public var §[t§:String;
      
      public var §5"3§:Class;
      
      public var §#!S§:String = null;
      
      public var §4I§:Vector.<§>L§>;
      
      public var §]]§:int;
      
      public var §@=§:Number;
      
      public var § !F§:Number;
      
      public var §'!'§:Number;
      
      public var §[!5§:Number;
      
      public var §'!$§:Number;
      
      public var §5c§:Number;
      
      public var §[!n§:Number;
      
      public var §+!N§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §@!z§:int;
      
      public var §[!o§:Number;
      
      public var §"!j§:String = "";
      
      public var §9v§:int;
      
      public var §^^§:int;
      
      public var §9!^§:GlowFilter;
      
      public var §"!Z§:Boolean = true;
      
      public var §=!+§:int;
      
      public var §%!#§:int;
      
      public var §9!X§:Number = 0;
      
      public var §#!t§:Number = 0;
      
      public var §?!1§:Number = 0;
      
      public var §,!i§:Number = 0;
      
      public var §[k§:Boolean = false;
      
      public var §[$§:Boolean = false;
      
      public var §>!Z§:MovieClip = null;
      
      public function §'L§(param1:XML, param2:§^!i§, param3:§58§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§[t§ = param1.@button;
         if(this.§[t§.length > 0)
         {
            this.§5"3§ = §2"&§.§<$§(this.§[t§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§#!S§ = _loc5_;
         }
         this.§9v§ = §5!3§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§9v§ = §9!V§;
            }
         }
         this.§^^§ = each;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§^^§ = §5!3§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§9!^§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §[3§.push(new §9!M§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §[3§.push(new §9!M§(_loc18_,this));
         }
         this.§@=§ = mClip.getChildByName("Surface").x;
         this.§ !F§ = mClip.getChildByName("Surface").y;
         this.§'!'§ = mClip.getChildByName("Surface").width;
         this.§[!5§ = mClip.getChildByName("Surface").height;
         this.§'!$§ = mClip.getChildByName("Button_Area1").x - this.§@=§;
         this.§5c§ = mClip.getChildByName("Button_Area1").y - this.§ !F§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§@=§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§ !F§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§[!o§ = _loc9_.bottom - this.§ !F§ - this.§5c§;
         this.§[!n§ = _loc7_ - this.§'!$§;
         this.§+!N§ = _loc8_ - this.§5c§;
         if(Math.abs(this.§[!n§) < 3)
         {
            this.§[!n§ = 0;
         }
         if(Math.abs(this.§+!N§) < 3)
         {
            this.§+!N§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§[!n§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§'!$§ - this.§'!$§) / this.§[!n§;
         }
         if(this.§+!N§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§5c§ - this.§5c§) / this.§+!N§;
         }
         this.§]]§ = Math.min(_loc10_,_loc11_);
         this.§"!Z§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§=!+§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§=!+§ = this.§]]§;
         }
         this.§@!z§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§@=§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§ !F§;
            this.mButtonMarginX2 = _loc19_ - this.§'!$§;
            this.mButtonMarginY2 = _loc20_ - this.§5c§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§"!Z§)
            {
               this.§@!z§ = 1 + (mClip.getChildByName("Surface").height - this.§5c§ - this.§5c§) / this.mButtonMarginY2;
            }
            else
            {
               this.§@!z§ = 1 + (mClip.getChildByName("Surface").width - this.§'!$§ - this.§'!$§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§>!Z§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§?!1§ = this.§>!Z§.x - mClip.getChildByName("Surface").x;
            this.§,!i§ = this.§>!Z§.y - mClip.getChildByName("Surface").y;
            this.§9!X§ = this.§>!Z§.x + this.§>!Z§.width - (this.§>!Z§.x + mClip.getChildByName("Surface").width);
            this.§#!t§ = this.§>!Z§.y + this.§>!Z§.height - (this.§>!Z§.y + mClip.getChildByName("Surface").height);
            this.§[k§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§[$§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§%!#§ = §>L§.§=!R§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§%!#§ = §>L§.§5!O§;
            }
         }
         this.§19§();
      }
      
      public function §19§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§#!_§ = null;
         var _loc8_:§>L§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§?!P§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §?!P§;
         }
         this.§4I§ = new Vector.<§>L§>();
         this.§#!o§();
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
            _loc7_ = new §#!_§(_loc6_,this,null,_loc5_);
            §[3§.push(_loc7_);
            _loc8_ = new §>L§(this.§%!#§,_loc4_);
            this.§4I§.push(_loc8_);
            _loc9_ = this.§'!$§;
            _loc10_ = this.§]]§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§^^§ == §5!3§)
            {
               _loc9_ = (this.§'!'§ - (_loc10_ - 1) * this.§[!n§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§[3§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§[3§.push(new param2(_loc12_,_loc7_,new this.§5"3§() as MovieClip));
               }
               _loc13_ = _loc7_.§[3§[_loc7_.§[3§.length - 1] as §?!P§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§=",§(_loc14_,this.§#!S§);
                  if(this.§9v§ == §9!V§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§#!S§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§@!z§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§[!n§;
                  _loc13_.y = this.§5c§ + _loc11_ * this.§+!N§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§]]§ * this.§@!z§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§]]§ * this.§@!z§) / this.§]]§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§]]§ * this.§@!z§) % this.§]]§;
                  if(this.§"!Z§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§[!n§ + _loc16_ * this.§]]§ * this.§[!n§;
                     _loc13_.y = this.§5c§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§5c§ + _loc18_ * this.§+!N§ + _loc16_ * this.§]]§ * this.§+!N§;
                  }
               }
               _loc8_.§6!h§(_loc13_);
               _loc11_++;
            }
            _loc8_.§4u§("");
            _loc7_.§;n§(this.§]]§,this.§@=§,this.§ !F§,this.§=!+§ * this.§[!n§,this.§=!+§ * this.§+!N§,this.§@!z§,this.§=!+§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §,"1§() : int
      {
         return this.§]]§;
      }
      
      public function get §,!u§() : int
      {
         if(this.§,"1§ == 0)
         {
            return 0;
         }
         return this.§[!g§(this.§"!j§).§>7§.length / this.§,"1§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§,3§, param4:Event = null) : void
      {
         var _loc6_:§>L§ = null;
         var _loc5_:§#!_§ = getItemByName(this.§"!j§) as §#!_§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§[!I§(_loc5_.§8P§ - 1);
               this.§;x§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§[!I§(_loc5_.§8P§ + 1);
               this.§;x§();
            }
         }
         else if(param2.length > 0 && (param1 == §,3§.LISTENER_EVENT_MOUSE_DOWN || param1 == §,3§.LISTENER_EVENT_MOUSE_UP) && param3 is §3!Z§)
         {
            if((_loc6_ = this.§[!g§((param3 as §3!Z§).mParentContainer.mName.toUpperCase())) && param3 is §?!P§)
            {
               _loc6_.§4u§((param3 as §3!Z§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §%$§(param1:String, param2:int) : void
      {
         var _loc3_:§#!_§ = getItemByName(param1) as §#!_§;
         if(_loc3_)
         {
            _loc3_.§[!I§(param2);
            this.§;x§();
         }
      }
      
      public function §[!g§(param1:String) : §>L§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4I§.length)
         {
            if(param1.toUpperCase() == (this.§4I§[_loc2_] as §>L§).mName.toUpperCase())
            {
               return this.§4I§[_loc2_] as §>L§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%!g§(param1:String) : void
      {
         this.§"!j§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §[3§.length)
         {
            if(§[3§[_loc2_] is §#!_§)
            {
               if((§[3§[_loc2_] as §#!_§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§[3§[_loc2_] as §#!_§).setActiveStatus(true);
                  if(this.§[k§)
                  {
                     this.§>!Z§.x = (§[3§[_loc2_] as §#!_§).x + this.§?!1§;
                     this.§>!Z§.width = (§[3§[_loc2_] as §#!_§).width + this.§9!X§;
                  }
                  if(this.§[$§)
                  {
                     this.§>!Z§.y = (§[3§[_loc2_] as §#!_§).y + this.§,!i§;
                     this.§>!Z§.height = (§[3§[_loc2_] as §#!_§).height + this.§#!t§;
                  }
               }
               else
               {
                  (§[3§[_loc2_] as §#!_§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§;x§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§>L§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§4I§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §;x§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§#!_§ = getItemByName(this.§"!j§) as §#!_§;
         if(_loc1_)
         {
            if(_loc1_.§8P§ > 0)
            {
               (getItemByName("Button_Scroll1") as §9!M§).setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §9!M§).setComponentState(§-U§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§8P§ < _loc1_.§ ",§ - 1)
            {
               (getItemByName("Button_Scroll2") as §9!M§).setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §9!M§).setComponentState(§-U§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §9!M§).setComponentState(§-U§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §9!M§).setComponentState(§-U§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §#!o§() : void
      {
         var _loc2_:§#!_§ = null;
         var _loc1_:int = §[3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §[3§[_loc1_] as §#!_§;
            if(_loc2_)
            {
               _loc2_.clear();
               §[3§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§%!g§("");
      }
      
      public function §^!$§() : void
      {
         var _loc1_:§>L§ = null;
         for each(_loc1_ in this.§4I§)
         {
            _loc1_.§^!$§();
         }
      }
      
      public function §^!0§() : Array
      {
         if(this.§[!g§(this.§"!j§) == null)
         {
            §]!%§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§[!g§(this.§"!j§).§3"!§();
      }
      
      public function §&<§(param1:Array) : void
      {
         this.§[!g§(this.§"!j§).§&<§(param1);
      }
      
      public function § !g§(param1:Number) : void
      {
         this.§[!g§(this.§"!j§).§ !g§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§5"3§ = null;
         this.§4I§ = null;
         this.§9!^§ = null;
      }
   }
}
