package §4!e§
{
   import §#^§.§7!A§;
   import §2!i§.§'M§;
   import §2!i§.§0-§;
   import §2!i§.§7'§;
   import §2!i§.§=!&§;
   import §6o§.§+!k§;
   import com.rovio.assets.§8B§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §5!a§ extends §08§
   {
      
      public static const §"$§:int = 0;
      
      public static const §3!0§:int = 1;
      
      public static const §0Z§:int = 2;
       
      
      public var §%"§:String;
      
      public var §#!>§:Class;
      
      public var §1!f§:String = null;
      
      public var §,9§:Vector.<§0-§>;
      
      public var §&!B§:int;
      
      public var §;r§:Number;
      
      public var §=!R§:Number;
      
      public var §7P§:Number;
      
      public var §>I§:Number;
      
      public var §<"%§:Number;
      
      public var §^q§:Number;
      
      public var §;`§:Number;
      
      public var §"^§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §'^§:int;
      
      public var §!<§:Number;
      
      public var §,"1§:String = "";
      
      public var § !w§:int;
      
      public var §"v§:int;
      
      public var §[y§:GlowFilter;
      
      public var §4+§:Boolean = true;
      
      public var §;!U§:int;
      
      public var §[T§:int;
      
      public var §5F§:Number = 0;
      
      public var §3!F§:Number = 0;
      
      public var §,!#§:Number = 0;
      
      public var §2>§:Number = 0;
      
      public var §5!T§:Boolean = false;
      
      public var §#!n§:Boolean = false;
      
      public var §]!,§:MovieClip = null;
      
      public function §5!a§(param1:XML, param2:§08§, param3:§7!A§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§%"§ = param1.@button;
         if(this.§%"§.length > 0)
         {
            this.§#!>§ = §8B§.§6"C§(this.§%"§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§1!f§ = _loc5_;
         }
         this.§ !w§ = §"$§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§ !w§ = §3!0§;
            }
         }
         this.§"v§ = §0Z§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§"v§ = §"$§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§[y§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §&!Z§.push(new §^!D§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §&!Z§.push(new §^!D§(_loc18_,this));
         }
         this.§;r§ = mClip.getChildByName("Surface").x;
         this.§=!R§ = mClip.getChildByName("Surface").y;
         this.§7P§ = mClip.getChildByName("Surface").width;
         this.§>I§ = mClip.getChildByName("Surface").height;
         this.§<"%§ = mClip.getChildByName("Button_Area1").x - this.§;r§;
         this.§^q§ = mClip.getChildByName("Button_Area1").y - this.§=!R§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§;r§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§=!R§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§!<§ = _loc9_.bottom - this.§=!R§ - this.§^q§;
         this.§;`§ = _loc7_ - this.§<"%§;
         this.§"^§ = _loc8_ - this.§^q§;
         if(Math.abs(this.§;`§) < 3)
         {
            this.§;`§ = 0;
         }
         if(Math.abs(this.§"^§) < 3)
         {
            this.§"^§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§;`§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§<"%§ - this.§<"%§) / this.§;`§;
         }
         if(this.§"^§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§^q§ - this.§^q§) / this.§"^§;
         }
         this.§&!B§ = Math.min(_loc10_,_loc11_);
         this.§4+§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§;!U§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§;!U§ = this.§&!B§;
         }
         this.§'^§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§;r§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§=!R§;
            this.mButtonMarginX2 = _loc19_ - this.§<"%§;
            this.mButtonMarginY2 = _loc20_ - this.§^q§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§4+§)
            {
               this.§'^§ = 1 + (mClip.getChildByName("Surface").height - this.§^q§ - this.§^q§) / this.mButtonMarginY2;
            }
            else
            {
               this.§'^§ = 1 + (mClip.getChildByName("Surface").width - this.§<"%§ - this.§<"%§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§]!,§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§,!#§ = this.§]!,§.x - mClip.getChildByName("Surface").x;
            this.§2>§ = this.§]!,§.y - mClip.getChildByName("Surface").y;
            this.§5F§ = this.§]!,§.x + this.§]!,§.width - (this.§]!,§.x + mClip.getChildByName("Surface").width);
            this.§3!F§ = this.§]!,§.y + this.§]!,§.height - (this.§]!,§.y + mClip.getChildByName("Surface").height);
            this.§5!T§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§#!n§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§[T§ = §0-§.§1<§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§[T§ = §0-§.§[!R§;
            }
         }
         this.§^,§();
      }
      
      public function §^,§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§=" § = null;
         var _loc8_:§0-§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§+w§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §+w§;
         }
         this.§,9§ = new Vector.<§0-§>();
         this.§@!r§();
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
            _loc7_ = new §=" §(_loc6_,this,null,_loc5_);
            §&!Z§.push(_loc7_);
            _loc8_ = new §0-§(this.§[T§,_loc4_);
            this.§,9§.push(_loc8_);
            _loc9_ = this.§<"%§;
            _loc10_ = this.§&!B§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§"v§ == §"$§)
            {
               _loc9_ = (this.§7P§ - (_loc10_ - 1) * this.§;`§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§&!Z§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§&!Z§.push(new param2(_loc12_,_loc7_,new this.§#!>§() as MovieClip));
               }
               _loc13_ = _loc7_.§&!Z§[_loc7_.§&!Z§.length - 1] as §+w§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§1!f§);
                  if(this.§ !w§ == §3!0§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§1!f§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§'^§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§;`§;
                  _loc13_.y = this.§^q§ + _loc11_ * this.§"^§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§&!B§ * this.§'^§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§&!B§ * this.§'^§) / this.§&!B§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§&!B§ * this.§'^§) % this.§&!B§;
                  if(this.§4+§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§;`§ + _loc16_ * this.§&!B§ * this.§;`§;
                     _loc13_.y = this.§^q§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§^q§ + _loc18_ * this.§"^§ + _loc16_ * this.§&!B§ * this.§"^§;
                  }
               }
               _loc8_.§6f§(_loc13_);
               _loc11_++;
            }
            _loc8_.§;!v§("");
            _loc7_.§4!v§(this.§&!B§,this.§;r§,this.§=!R§,this.§;!U§ * this.§;`§,this.§;!U§ * this.§"^§,this.§'^§,this.§;!U§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §"!y§() : int
      {
         return this.§&!B§;
      }
      
      public function get §?0§() : int
      {
         if(this.§"!y§ == 0)
         {
            return 0;
         }
         return this.§@"-§(this.§,"1§).§]!x§.length / this.§"!y§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:§0-§ = null;
         var _loc4_:§=" § = getItemByName(this.§,"1§) as §=" §;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§0A§(_loc4_.§`&§ - 1);
               this.§83§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§0A§(_loc4_.§`&§ + 1);
               this.§83§();
            }
         }
         else if(param2.length > 0 && (param1 == §'M§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'M§.LISTENER_EVENT_MOUSE_UP) && param3 is §7'§)
         {
            if((_loc5_ = this.§@"-§((param3 as §7'§).mParentContainer.mName.toUpperCase())) && param3 is §+w§)
            {
               _loc5_.§;!v§((param3 as §7'§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §>!6§(param1:String, param2:int) : void
      {
         var _loc3_:§=" § = getItemByName(param1) as §=" §;
         if(_loc3_)
         {
            _loc3_.§0A§(param2);
            this.§83§();
         }
      }
      
      public function §@"-§(param1:String) : §0-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,9§.length)
         {
            if(param1.toUpperCase() == (this.§,9§[_loc2_] as §0-§).mName.toUpperCase())
            {
               return this.§,9§[_loc2_] as §0-§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5"?§(param1:String) : void
      {
         this.§,"1§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §&!Z§.length)
         {
            if(§&!Z§[_loc2_] is §=" §)
            {
               if((§&!Z§[_loc2_] as §=" §).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§&!Z§[_loc2_] as §=" §).setActiveStatus(true);
                  if(this.§5!T§)
                  {
                     this.§]!,§.x = (§&!Z§[_loc2_] as §=" §).x + this.§,!#§;
                     this.§]!,§.width = (§&!Z§[_loc2_] as §=" §).width + this.§5F§;
                  }
                  if(this.§#!n§)
                  {
                     this.§]!,§.y = (§&!Z§[_loc2_] as §=" §).y + this.§2>§;
                     this.§]!,§.height = (§&!Z§[_loc2_] as §=" §).height + this.§3!F§;
                  }
               }
               else
               {
                  (§&!Z§[_loc2_] as §=" §).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§83§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§0-§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§,9§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §83§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§=" § = getItemByName(this.§,"1§) as §=" §;
         if(_loc1_)
         {
            if(_loc1_.§`&§ > 0)
            {
               (getItemByName("Button_Scroll1") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §^!D§).setComponentState(§=!&§.§-N§);
            }
            if(_loc1_.§`&§ < _loc1_.§`!7§ - 1)
            {
               (getItemByName("Button_Scroll2") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §^!D§).setComponentState(§=!&§.§-N§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §^!D§).setComponentState(§=!&§.§-N§);
            (getItemByName("Button_Scroll2") as §^!D§).setComponentState(§=!&§.§-N§);
         }
      }
      
      public function §@!r§() : void
      {
         var _loc2_:§=" § = null;
         var _loc1_:int = §&!Z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §&!Z§[_loc1_] as §=" §;
            if(_loc2_)
            {
               _loc2_.clear();
               §&!Z§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§5"?§("");
      }
      
      public function §""E§() : void
      {
         var _loc1_:§0-§ = null;
         for each(_loc1_ in this.§,9§)
         {
            _loc1_.§""E§();
         }
      }
      
      public function §1v§() : Array
      {
         if(this.§@"-§(this.§,"1§) == null)
         {
            §+!k§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§@"-§(this.§,"1§).§^0§();
      }
      
      public function §4"§(param1:Array) : void
      {
         this.§@"-§(this.§,"1§).§4"§(param1);
      }
      
      public function §1!N§(param1:Number) : void
      {
         this.§@"-§(this.§,"1§).§1!N§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§#!>§ = null;
         this.§,9§ = null;
         this.§[y§ = null;
      }
   }
}
