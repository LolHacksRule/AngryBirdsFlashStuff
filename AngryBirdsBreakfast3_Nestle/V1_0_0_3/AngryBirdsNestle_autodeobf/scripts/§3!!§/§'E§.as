package §3!!§
{
   import §=!7§.§1!7§;
   import §@f§.§&!"§;
   import §@f§.§4L§;
   import §@f§.§4d§;
   import §@f§.§7h§;
   import §[" §.§1"1§;
   import com.rovio.assets.§^1§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'E§ extends §5" §
   {
      
      public static const §<!H§:int = 0;
      
      public static const §`Y§:int = 1;
      
      public static const §^L§:int = 2;
       
      
      public var §>!=§:String;
      
      public var §<!w§:Class;
      
      public var § !I§:String = null;
      
      public var §1X§:Vector.<§4L§>;
      
      public var §48§:int;
      
      public var §%"2§:Number;
      
      public var §3"4§:Number;
      
      public var §"b§:Number;
      
      public var §!!G§:Number;
      
      public var §"!r§:Number;
      
      public var §6"%§:Number;
      
      public var §[,§:Number;
      
      public var §9!v§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §!!1§:int;
      
      public var §'!@§:Number;
      
      public var §^!x§:String = "";
      
      public var §>F§:int;
      
      public var §^!<§:int;
      
      public var §!!R§:GlowFilter;
      
      public var §>x§:Boolean = true;
      
      public var §!!#§:int;
      
      public var §<" §:int;
      
      public var §[!R§:Number = 0;
      
      public var §8g§:Number = 0;
      
      public var §[A§:Number = 0;
      
      public var §4! §:Number = 0;
      
      public var §<Z§:Boolean = false;
      
      public var §7!U§:Boolean = false;
      
      public var §4;§:MovieClip = null;
      
      public function §'E§(param1:XML, param2:§5" §, param3:§1"1§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§>!=§ = param1.@button;
         if(this.§>!=§.length > 0)
         {
            this.§<!w§ = §^1§.§+!I§(this.§>!=§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§ !I§ = _loc5_;
         }
         this.§>F§ = §<!H§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§>F§ = §`Y§;
            }
         }
         this.§^!<§ = §^L§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§^!<§ = §<!H§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§!!R§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            § q§.push(new §?v§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            § q§.push(new §?v§(_loc18_,this));
         }
         this.§%"2§ = mClip.getChildByName("Surface").x;
         this.§3"4§ = mClip.getChildByName("Surface").y;
         this.§"b§ = mClip.getChildByName("Surface").width;
         this.§!!G§ = mClip.getChildByName("Surface").height;
         this.§"!r§ = mClip.getChildByName("Button_Area1").x - this.§%"2§;
         this.§6"%§ = mClip.getChildByName("Button_Area1").y - this.§3"4§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§%"2§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§3"4§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§'!@§ = _loc9_.bottom - this.§3"4§ - this.§6"%§;
         this.§[,§ = _loc7_ - this.§"!r§;
         this.§9!v§ = _loc8_ - this.§6"%§;
         if(Math.abs(this.§[,§) < 3)
         {
            this.§[,§ = 0;
         }
         if(Math.abs(this.§9!v§) < 3)
         {
            this.§9!v§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§[,§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§"!r§ - this.§"!r§) / this.§[,§;
         }
         if(this.§9!v§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§6"%§ - this.§6"%§) / this.§9!v§;
         }
         this.§48§ = Math.min(_loc10_,_loc11_);
         this.§>x§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§!!#§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§!!#§ = this.§48§;
         }
         this.§!!1§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§%"2§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§3"4§;
            this.mButtonMarginX2 = _loc19_ - this.§"!r§;
            this.mButtonMarginY2 = _loc20_ - this.§6"%§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§>x§)
            {
               this.§!!1§ = 1 + (mClip.getChildByName("Surface").height - this.§6"%§ - this.§6"%§) / this.mButtonMarginY2;
            }
            else
            {
               this.§!!1§ = 1 + (mClip.getChildByName("Surface").width - this.§"!r§ - this.§"!r§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§4;§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§[A§ = this.§4;§.x - mClip.getChildByName("Surface").x;
            this.§4! § = this.§4;§.y - mClip.getChildByName("Surface").y;
            this.§[!R§ = this.§4;§.x + this.§4;§.width - (this.§4;§.x + mClip.getChildByName("Surface").width);
            this.§8g§ = this.§4;§.y + this.§4;§.height - (this.§4;§.y + mClip.getChildByName("Surface").height);
            this.§<Z§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§7!U§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§<" § = §4L§.§'O§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§<" § = §4L§.§;!y§;
            }
         }
         this.§7H§();
      }
      
      public function §7H§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§%J§ = null;
         var _loc8_:§4L§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§]5§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §]5§;
         }
         this.§1X§ = new Vector.<§4L§>();
         this.§6!Q§();
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
            _loc7_ = new §%J§(_loc6_,this,null,_loc5_);
            § q§.push(_loc7_);
            _loc8_ = new §4L§(this.§<" §,_loc4_);
            this.§1X§.push(_loc8_);
            _loc9_ = this.§"!r§;
            _loc10_ = this.§48§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§^!<§ == §<!H§)
            {
               _loc9_ = (this.§"b§ - (_loc10_ - 1) * this.§[,§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§ q§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§ q§.push(new param2(_loc12_,_loc7_,new this.§<!w§() as MovieClip));
               }
               _loc13_ = _loc7_.§ q§[_loc7_.§ q§.length - 1] as §]5§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§5!o§(_loc14_,this.§ !I§);
                  if(this.§>F§ == §`Y§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§ !I§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§!!1§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§[,§;
                  _loc13_.y = this.§6"%§ + _loc11_ * this.§9!v§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§48§ * this.§!!1§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§48§ * this.§!!1§) / this.§48§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§48§ * this.§!!1§) % this.§48§;
                  if(this.§>x§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§[,§ + _loc16_ * this.§48§ * this.§[,§;
                     _loc13_.y = this.§6"%§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§6"%§ + _loc18_ * this.§9!v§ + _loc16_ * this.§48§ * this.§9!v§;
                  }
               }
               _loc8_.§3u§(_loc13_);
               _loc11_++;
            }
            _loc8_.§,+§("");
            _loc7_.§?`§(this.§48§,this.§%"2§,this.§3"4§,this.§!!#§ * this.§[,§,this.§!!#§ * this.§9!v§,this.§!!1§,this.§!!#§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §;!u§() : int
      {
         return this.§48§;
      }
      
      public function get §>!s§() : int
      {
         if(this.§;!u§ == 0)
         {
            return 0;
         }
         return this.§;e§(this.§^!x§).§"!%§.length / this.§;!u§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§&!"§, param4:Event = null) : void
      {
         var _loc6_:§4L§ = null;
         var _loc5_:§%J§ = getItemByName(this.§^!x§) as §%J§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§`"-§(_loc5_.§#C§ - 1);
               this.§&!>§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§`"-§(_loc5_.§#C§ + 1);
               this.§&!>§();
            }
         }
         else if(param2.length > 0 && (param1 == §&!"§.LISTENER_EVENT_MOUSE_DOWN || param1 == §&!"§.LISTENER_EVENT_MOUSE_UP) && param3 is §7h§)
         {
            if((_loc6_ = this.§;e§((param3 as §7h§).mParentContainer.mName.toUpperCase())) && param3 is §]5§)
            {
               _loc6_.§,+§((param3 as §7h§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §?!N§(param1:String, param2:int) : void
      {
         var _loc3_:§%J§ = getItemByName(param1) as §%J§;
         if(_loc3_)
         {
            _loc3_.§`"-§(param2);
            this.§&!>§();
         }
      }
      
      public function §;e§(param1:String) : §4L§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1X§.length)
         {
            if(param1.toUpperCase() == (this.§1X§[_loc2_] as §4L§).mName.toUpperCase())
            {
               return this.§1X§[_loc2_] as §4L§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0#§(param1:String) : void
      {
         this.§^!x§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < § q§.length)
         {
            if(§ q§[_loc2_] is §%J§)
            {
               if((§ q§[_loc2_] as §%J§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§ q§[_loc2_] as §%J§).setActiveStatus(true);
                  if(this.§<Z§)
                  {
                     this.§4;§.x = (§ q§[_loc2_] as §%J§).x + this.§[A§;
                     this.§4;§.width = (§ q§[_loc2_] as §%J§).width + this.§[!R§;
                  }
                  if(this.§7!U§)
                  {
                     this.§4;§.y = (§ q§[_loc2_] as §%J§).y + this.§4! §;
                     this.§4;§.height = (§ q§[_loc2_] as §%J§).height + this.§8g§;
                  }
               }
               else
               {
                  (§ q§[_loc2_] as §%J§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§&!>§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§4L§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§1X§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §&!>§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§%J§ = getItemByName(this.§^!x§) as §%J§;
         if(_loc1_)
         {
            if(_loc1_.§#C§ > 0)
            {
               (getItemByName("Button_Scroll1") as §?v§).setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §?v§).setComponentState(§4d§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§#C§ < _loc1_.§1!<§ - 1)
            {
               (getItemByName("Button_Scroll2") as §?v§).setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §?v§).setComponentState(§4d§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §?v§).setComponentState(§4d§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §?v§).setComponentState(§4d§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §6!Q§() : void
      {
         var _loc2_:§%J§ = null;
         var _loc1_:int = § q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § q§[_loc1_] as §%J§;
            if(_loc2_)
            {
               _loc2_.clear();
               § q§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§0#§("");
      }
      
      public function §1!w§() : void
      {
         var _loc1_:§4L§ = null;
         for each(_loc1_ in this.§1X§)
         {
            _loc1_.§1!w§();
         }
      }
      
      public function § -§() : Array
      {
         if(this.§;e§(this.§^!x§) == null)
         {
            §1!7§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§;e§(this.§^!x§).§ k§();
      }
      
      public function §!!+§(param1:Array) : void
      {
         this.§;e§(this.§^!x§).§!!+§(param1);
      }
      
      public function § !L§(param1:Number) : void
      {
         this.§;e§(this.§^!x§).§ !L§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§<!w§ = null;
         this.§1X§ = null;
         this.§!!R§ = null;
      }
   }
}
