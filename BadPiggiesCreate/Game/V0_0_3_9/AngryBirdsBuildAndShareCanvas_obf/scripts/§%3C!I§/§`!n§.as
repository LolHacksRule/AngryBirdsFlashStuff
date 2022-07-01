package §<!I§
{
   import §&!&§.§&"1§;
   import §&!&§.§+!A§;
   import §&!&§.§4!M§;
   import §&!&§.§7!8§;
   import §<Z§.§7!!§;
   import §@!;§.§&F§;
   import com.rovio.assets.§8!q§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §`!n§ extends §>"-§
   {
      
      public static const §@"5§:int = 0;
      
      public static const §-?§:int = 1;
      
      public static const §54§:int = 2;
       
      
      public var §#!,§:String;
      
      public var §6!o§:Class;
      
      public var §#w§:String = null;
      
      public var §6k§:Vector.<§4!M§>;
      
      public var §0"0§:int;
      
      public var §="+§:Number;
      
      public var §`" §:Number;
      
      public var §1!f§:Number;
      
      public var §@!k§:Number;
      
      public var §4T§:Number;
      
      public var §+r§:Number;
      
      public var §4u§:Number;
      
      public var § d§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §4![§:int;
      
      public var §6!"§:Number;
      
      public var §&V§:String = "";
      
      public var §6!#§:int;
      
      public var §<b§:int;
      
      public var §1l§:GlowFilter;
      
      public var §5l§:Boolean = true;
      
      public var §"^§:int;
      
      public var §5!F§:int;
      
      public var §-!Z§:Number = 0;
      
      public var §;=§:Number = 0;
      
      public var §`!D§:Number = 0;
      
      public var §>!r§:Number = 0;
      
      public var §?F§:Boolean = false;
      
      public var §=!L§:Boolean = false;
      
      public var §^5§:MovieClip = null;
      
      public function §`!n§(param1:XML, param2:§>"-§, param3:§7!!§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§#!,§ = param1.@button;
         if(this.§#!,§.length > 0)
         {
            this.§6!o§ = §8!q§.§2^§(this.§#!,§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§#w§ = _loc5_;
         }
         this.§6!#§ = §@"5§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§6!#§ = §-?§;
            }
         }
         this.§<b§ = §54§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§<b§ = §@"5§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§1l§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §7!z§.push(new §="5§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §7!z§.push(new §="5§(_loc18_,this));
         }
         this.§="+§ = mClip.getChildByName("Surface").x;
         this.§`" § = mClip.getChildByName("Surface").y;
         this.§1!f§ = mClip.getChildByName("Surface").width;
         this.§@!k§ = mClip.getChildByName("Surface").height;
         this.§4T§ = mClip.getChildByName("Button_Area1").x - this.§="+§;
         this.§+r§ = mClip.getChildByName("Button_Area1").y - this.§`" §;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§="+§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§`" §;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§6!"§ = _loc9_.bottom - this.§`" § - this.§+r§;
         this.§4u§ = _loc7_ - this.§4T§;
         this.§ d§ = _loc8_ - this.§+r§;
         if(Math.abs(this.§4u§) < 3)
         {
            this.§4u§ = 0;
         }
         if(Math.abs(this.§ d§) < 3)
         {
            this.§ d§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§4u§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§4T§ - this.§4T§) / this.§4u§;
         }
         if(this.§ d§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§+r§ - this.§+r§) / this.§ d§;
         }
         this.§0"0§ = Math.min(_loc10_,_loc11_);
         this.§5l§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§"^§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§"^§ = this.§0"0§;
         }
         this.§4![§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§="+§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§`" §;
            this.mButtonMarginX2 = _loc19_ - this.§4T§;
            this.mButtonMarginY2 = _loc20_ - this.§+r§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§5l§)
            {
               this.§4![§ = 1 + (mClip.getChildByName("Surface").height - this.§+r§ - this.§+r§) / this.mButtonMarginY2;
            }
            else
            {
               this.§4![§ = 1 + (mClip.getChildByName("Surface").width - this.§4T§ - this.§4T§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§^5§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§`!D§ = this.§^5§.x - mClip.getChildByName("Surface").x;
            this.§>!r§ = this.§^5§.y - mClip.getChildByName("Surface").y;
            this.§-!Z§ = this.§^5§.x + this.§^5§.width - (this.§^5§.x + mClip.getChildByName("Surface").width);
            this.§;=§ = this.§^5§.y + this.§^5§.height - (this.§^5§.y + mClip.getChildByName("Surface").height);
            this.§?F§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§=!L§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§5!F§ = §4!M§.§!!s§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§5!F§ = §4!M§.§1"!§;
            }
         }
         this.§ !@§();
      }
      
      public function § !@§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§,!g§ = null;
         var _loc8_:§4!M§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§7G§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §7G§;
         }
         this.§6k§ = new Vector.<§4!M§>();
         this.§ k§();
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
            _loc7_ = new §,!g§(_loc6_,this,null,_loc5_);
            §7!z§.push(_loc7_);
            _loc8_ = new §4!M§(this.§5!F§,_loc4_);
            this.§6k§.push(_loc8_);
            _loc9_ = this.§4T§;
            _loc10_ = this.§0"0§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§<b§ == §@"5§)
            {
               _loc9_ = (this.§1!f§ - (_loc10_ - 1) * this.§4u§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§7!z§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§7!z§.push(new param2(_loc12_,_loc7_,new this.§6!o§() as MovieClip));
               }
               _loc13_ = _loc7_.§7!z§[_loc7_.§7!z§.length - 1] as §7G§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§#w§);
                  if(this.§6!#§ == §-?§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§#w§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§4![§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§4u§;
                  _loc13_.y = this.§+r§ + _loc11_ * this.§ d§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§0"0§ * this.§4![§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§0"0§ * this.§4![§) / this.§0"0§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§0"0§ * this.§4![§) % this.§0"0§;
                  if(this.§5l§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§4u§ + _loc16_ * this.§0"0§ * this.§4u§;
                     _loc13_.y = this.§+r§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§+r§ + _loc18_ * this.§ d§ + _loc16_ * this.§0"0§ * this.§ d§;
                  }
               }
               _loc8_.§6"8§(_loc13_);
               _loc11_++;
            }
            _loc8_.§ !Z§("");
            _loc7_.§]3§(this.§0"0§,this.§="+§,this.§`" §,this.§"^§ * this.§4u§,this.§"^§ * this.§ d§,this.§4![§,this.§"^§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §"!+§() : int
      {
         return this.§0"0§;
      }
      
      public function get §?'§() : int
      {
         if(this.§"!+§ == 0)
         {
            return 0;
         }
         return this.§`!u§(this.§&V§).§1D§.length / this.§"!+§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§7!8§) : void
      {
         var _loc5_:§4!M§ = null;
         var _loc4_:§,!g§ = getItemByName(this.§&V§) as §,!g§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§!!k§(_loc4_.§]!r§ - 1);
               this.§7!>§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§!!k§(_loc4_.§]!r§ + 1);
               this.§7!>§();
            }
         }
         else if(param2.length > 0 && (param1 == §7!8§.LISTENER_EVENT_MOUSE_DOWN || param1 == §7!8§.LISTENER_EVENT_MOUSE_UP) && param3 is §&"1§)
         {
            if((_loc5_ = this.§`!u§((param3 as §&"1§).mParentContainer.mName.toUpperCase())) && param3 is §7G§)
            {
               _loc5_.§ !Z§((param3 as §&"1§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §&!3§(param1:String, param2:int) : void
      {
         var _loc3_:§,!g§ = getItemByName(param1) as §,!g§;
         if(_loc3_)
         {
            _loc3_.§!!k§(param2);
            this.§7!>§();
         }
      }
      
      public function §`!u§(param1:String) : §4!M§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6k§.length)
         {
            if(param1.toUpperCase() == (this.§6k§[_loc2_] as §4!M§).mName.toUpperCase())
            {
               return this.§6k§[_loc2_] as §4!M§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §>H§(param1:String) : void
      {
         this.§&V§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §7!z§.length)
         {
            if(§7!z§[_loc2_] is §,!g§)
            {
               if((§7!z§[_loc2_] as §,!g§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§7!z§[_loc2_] as §,!g§).setActiveStatus(true);
                  if(this.§?F§)
                  {
                     this.§^5§.x = (§7!z§[_loc2_] as §,!g§).x + this.§`!D§;
                     this.§^5§.width = (§7!z§[_loc2_] as §,!g§).width + this.§-!Z§;
                  }
                  if(this.§=!L§)
                  {
                     this.§^5§.y = (§7!z§[_loc2_] as §,!g§).y + this.§>!r§;
                     this.§^5§.height = (§7!z§[_loc2_] as §,!g§).height + this.§;=§;
                  }
               }
               else
               {
                  (§7!z§[_loc2_] as §,!g§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§7!>§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§4!M§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§6k§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §7!>§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§,!g§ = getItemByName(this.§&V§) as §,!g§;
         if(_loc1_)
         {
            if(_loc1_.§]!r§ > 0)
            {
               (getItemByName("Button_Scroll1") as §="5§).setComponentState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §="5§).setComponentState(§+!A§.§@x§);
            }
            if(_loc1_.§]!r§ < _loc1_.§[!O§ - 1)
            {
               (getItemByName("Button_Scroll2") as §="5§).setComponentState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §="5§).setComponentState(§+!A§.§@x§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §="5§).setComponentState(§+!A§.§@x§);
            (getItemByName("Button_Scroll2") as §="5§).setComponentState(§+!A§.§@x§);
         }
      }
      
      public function § k§() : void
      {
         var _loc2_:§,!g§ = null;
         var _loc1_:int = §7!z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §7!z§[_loc1_] as §,!g§;
            if(_loc2_)
            {
               _loc2_.clear();
               §7!z§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§>H§("");
      }
      
      public function §+!H§() : void
      {
         var _loc1_:§4!M§ = null;
         for each(_loc1_ in this.§6k§)
         {
            _loc1_.§+!H§();
         }
      }
      
      public function §5_§() : Array
      {
         if(this.§`!u§(this.§&V§) == null)
         {
            §&F§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§`!u§(this.§&V§).§[!t§();
      }
      
      public function §@!A§(param1:Array) : void
      {
         this.§`!u§(this.§&V§).§@!A§(param1);
      }
      
      public function §[!i§(param1:Number) : void
      {
         this.§`!u§(this.§&V§).§[!i§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§6!o§ = null;
         this.§6k§ = null;
         this.§1l§ = null;
      }
   }
}
