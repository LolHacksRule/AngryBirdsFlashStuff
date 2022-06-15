package § "L§
{
   import §";§.§%"X§;
   import §6"p§.§^"t§;
   import §^"3§.§ #&§;
   import §^"3§.§6#M§;
   import §^"3§.§^"C§;
   import §^"3§.§`$4§;
   import com.rovio.assets.§[a§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §!U§ extends §23§
   {
      
      public static const §>#d§:int = 0;
      
      public static const §"s§:int = 1;
      
      public static const §!!f§:int = 2;
       
      
      public var §[!P§:String;
      
      public var §9$7§:Class;
      
      public var §["-§:String = null;
      
      public var §`!G§:Vector.<§6#M§>;
      
      public var §'u§:int;
      
      public var §2#o§:Number;
      
      public var §!"f§:Number;
      
      public var §3#+§:Number;
      
      public var §,!R§:Number;
      
      public var §2"0§:Number;
      
      public var §=!q§:Number;
      
      public var §[#8§:Number;
      
      public var §5#5§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §]"&§:int;
      
      public var §;#K§:Number;
      
      public var §@$@§:String = "";
      
      public var §4!"§:int;
      
      public var §4$>§:int;
      
      public var §6!8§:GlowFilter;
      
      public var §["Z§:Boolean = true;
      
      public var §!W§:int;
      
      public var §#W§:int;
      
      public var §&"b§:Number = 0;
      
      public var §9#r§:Number = 0;
      
      public var §,"6§:Number = 0;
      
      public var §"!u§:Number = 0;
      
      public var §6v§:Boolean = false;
      
      public var §%"Z§:Boolean = false;
      
      public var §,!4§:MovieClip = null;
      
      public function §!U§(param1:XML, param2:§23§, param3:§%"X§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§[!P§ = param1.@button;
         if(this.§[!P§.length > 0)
         {
            this.§9$7§ = §[a§.§8#k§(this.§[!P§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§["-§ = _loc5_;
         }
         this.§4!"§ = §>#d§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§4!"§ = §"s§;
            }
         }
         this.§4$>§ = §!!f§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§4$>§ = §>#d§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§6!8§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §2p§.push(new §1"r§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §2p§.push(new §1"r§(_loc18_,this));
         }
         this.§2#o§ = mClip.getChildByName("Surface").x;
         this.§!"f§ = mClip.getChildByName("Surface").y;
         this.§3#+§ = mClip.getChildByName("Surface").width;
         this.§,!R§ = mClip.getChildByName("Surface").height;
         this.§2"0§ = mClip.getChildByName("Button_Area1").x - this.§2#o§;
         this.§=!q§ = mClip.getChildByName("Button_Area1").y - this.§!"f§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§2#o§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§!"f§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§;#K§ = _loc9_.bottom - this.§!"f§ - this.§=!q§;
         this.§[#8§ = _loc7_ - this.§2"0§;
         this.§5#5§ = _loc8_ - this.§=!q§;
         if(Math.abs(this.§[#8§) < 3)
         {
            this.§[#8§ = 0;
         }
         if(Math.abs(this.§5#5§) < 3)
         {
            this.§5#5§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§[#8§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§2"0§ - this.§2"0§) / this.§[#8§;
         }
         if(this.§5#5§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§=!q§ - this.§=!q§) / this.§5#5§;
         }
         this.§'u§ = Math.min(_loc10_,_loc11_);
         this.§["Z§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§!W§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§!W§ = this.§'u§;
         }
         this.§]"&§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§2#o§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§!"f§;
            this.mButtonMarginX2 = _loc19_ - this.§2"0§;
            this.mButtonMarginY2 = _loc20_ - this.§=!q§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§["Z§)
            {
               this.§]"&§ = 1 + (mClip.getChildByName("Surface").height - this.§=!q§ - this.§=!q§) / this.mButtonMarginY2;
            }
            else
            {
               this.§]"&§ = 1 + (mClip.getChildByName("Surface").width - this.§2"0§ - this.§2"0§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§,!4§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§,"6§ = this.§,!4§.x - mClip.getChildByName("Surface").x;
            this.§"!u§ = this.§,!4§.y - mClip.getChildByName("Surface").y;
            this.§&"b§ = this.§,!4§.x + this.§,!4§.width - (this.§,!4§.x + mClip.getChildByName("Surface").width);
            this.§9#r§ = this.§,!4§.y + this.§,!4§.height - (this.§,!4§.y + mClip.getChildByName("Surface").height);
            this.§6v§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§%"Z§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§#W§ = §6#M§.§@!h§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§#W§ = §6#M§.§1"G§;
            }
         }
         this.§ #`§();
      }
      
      public function § #`§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§+!u§ = null;
         var _loc8_:§6#M§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§[" § = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §[" §;
         }
         this.§`!G§ = new Vector.<§6#M§>();
         this.§5!M§();
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
            _loc7_ = new §+!u§(_loc6_,this,null,_loc5_);
            §2p§.push(_loc7_);
            _loc8_ = new §6#M§(this.§#W§,_loc4_);
            this.§`!G§.push(_loc8_);
            _loc9_ = this.§2"0§;
            _loc10_ = this.§'u§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§4$>§ == §>#d§)
            {
               _loc9_ = (this.§3#+§ - (_loc10_ - 1) * this.§[#8§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§2p§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§2p§.push(new param2(_loc12_,_loc7_,new this.§9$7§() as MovieClip));
               }
               _loc13_ = _loc7_.§2p§[_loc7_.§2p§.length - 1] as §[" §;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§["-§);
                  if(this.§4!"§ == §"s§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§["-§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§]"&§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§[#8§;
                  _loc13_.y = this.§=!q§ + _loc11_ * this.§5#5§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§'u§ * this.§]"&§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§'u§ * this.§]"&§) / this.§'u§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§'u§ * this.§]"&§) % this.§'u§;
                  if(this.§["Z§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§[#8§ + _loc16_ * this.§'u§ * this.§[#8§;
                     _loc13_.y = this.§=!q§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§=!q§ + _loc18_ * this.§5#5§ + _loc16_ * this.§'u§ * this.§5#5§;
                  }
               }
               _loc8_.§1^§(_loc13_);
               _loc11_++;
            }
            _loc8_.§-"c§("");
            _loc7_.§`y§(this.§'u§,this.§2#o§,this.§!"f§,this.§!W§ * this.§[#8§,this.§!W§ * this.§5#5§,this.§]"&§,this.§!W§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §&#R§() : int
      {
         return this.§'u§;
      }
      
      public function get §>>§() : int
      {
         if(this.§&#R§ == 0)
         {
            return 0;
         }
         return this.§&"C§(this.§@$@§).§=#Q§.length / this.§&#R§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§`$4§, param4:Event = null) : void
      {
         var _loc6_:§6#M§ = null;
         var _loc5_:§+!u§ = getItemByName(this.§@$@§) as §+!u§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§7"E§(_loc5_.§1#!§ - 1);
               this.§+I§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§7"E§(_loc5_.§1#!§ + 1);
               this.§+I§();
            }
         }
         else if(param2.length > 0 && (param1 == §`$4§.LISTENER_EVENT_MOUSE_DOWN || param1 == §`$4§.LISTENER_EVENT_MOUSE_UP) && param3 is §^"C§)
         {
            if((_loc6_ = this.§&"C§((param3 as §^"C§).mParentContainer.upperCaseName)) && param3 is §[" §)
            {
               _loc6_.§-"c§((param3 as §^"C§).upperCaseName);
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §5!C§(param1:String, param2:int) : void
      {
         var _loc3_:§+!u§ = getItemByName(param1) as §+!u§;
         if(_loc3_)
         {
            _loc3_.§7"E§(param2);
            this.§+I§();
         }
      }
      
      public function §&"C§(param1:String) : §6#M§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!G§.length)
         {
            if(param1.toUpperCase() == (this.§`!G§[_loc2_] as §6#M§).§&$"§.toUpperCase())
            {
               return this.§`!G§[_loc2_] as §6#M§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §=!-§(param1:String) : void
      {
         this.§@$@§ = param1;
         param1 = param1.toUpperCase();
         var _loc2_:int = 0;
         while(_loc2_ < §2p§.length)
         {
            if(§2p§[_loc2_] is §+!u§)
            {
               if((§2p§[_loc2_] as §+!u§).upperCaseName == param1)
               {
                  (§2p§[_loc2_] as §+!u§).setActiveStatus(true);
                  if(this.§6v§)
                  {
                     this.§,!4§.x = (§2p§[_loc2_] as §+!u§).x + this.§,"6§;
                     this.§,!4§.width = (§2p§[_loc2_] as §+!u§).width + this.§&"b§;
                  }
                  if(this.§%"Z§)
                  {
                     this.§,!4§.y = (§2p§[_loc2_] as §+!u§).y + this.§"!u§;
                     this.§,!4§.height = (§2p§[_loc2_] as §+!u§).height + this.§9#r§;
                  }
               }
               else
               {
                  (§2p§[_loc2_] as §+!u§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§+I§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§6#M§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§`!G§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §+I§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§+!u§ = getItemByName(this.§@$@§) as §+!u§;
         if(_loc1_)
         {
            if(_loc1_.§1#!§ > 0)
            {
               (getItemByName("Button_Scroll1") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§1#!§ < _loc1_.§0#W§ - 1)
            {
               (getItemByName("Button_Scroll2") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §5!M§() : void
      {
         var _loc2_:§+!u§ = null;
         var _loc1_:int = §2p§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §2p§[_loc1_] as §+!u§;
            if(_loc2_)
            {
               _loc2_.clear();
               §2p§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§=!-§("");
      }
      
      public function §#$>§() : void
      {
         var _loc1_:§6#M§ = null;
         for each(_loc1_ in this.§`!G§)
         {
            _loc1_.§#$>§();
         }
      }
      
      public function §%v§() : Array
      {
         if(this.§&"C§(this.§@$@§) == null)
         {
            §^"t§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§&"C§(this.§@$@§).§7!y§();
      }
      
      public function §<"i§(param1:Array) : void
      {
         this.§&"C§(this.§@$@§).§<"i§(param1);
      }
      
      public function §;!+§(param1:Number) : void
      {
         this.§&"C§(this.§@$@§).§;!+§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§9$7§ = null;
         this.§`!G§ = null;
         this.§6!8§ = null;
      }
   }
}
