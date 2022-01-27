package §=8§
{
   import §'!N§.§"f§;
   import §'!N§.§%!E§;
   import §'!N§.§'B§;
   import §'!N§.§>p§;
   import §-!5§.§5s§;
   import §]!O§.§+[§;
   import com.rovio.assets.§4D§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §%y§ extends §'^§
   {
      
      public static const §89§:int = 0;
      
      public static const §7O§:int = 1;
      
      public static const §`A§:int = 2;
       
      
      public var §5!5§:String;
      
      public var §2c§:Class;
      
      public var §?!%§:String = null;
      
      public var §79§:Vector.<§'B§>;
      
      public var §-z§:int;
      
      public var §-L§:Number;
      
      public var §2Y§:Number;
      
      public var §8?§:Number;
      
      public var §;!<§:Number;
      
      public var §9c§:Number;
      
      public var §]d§:Number;
      
      public var §1!>§:Number;
      
      public var §,v§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §6!<§:int;
      
      public var §]+§:Number;
      
      public var §2;§:String = "";
      
      public var §?!O§:int;
      
      public var §!e§:int;
      
      public var §>a§:GlowFilter;
      
      public var §,!2§:Boolean = true;
      
      public var §>0§:int;
      
      public var §=!%§:int;
      
      public var §<!2§:Number = 0;
      
      public var §+!=§:Number = 0;
      
      public var §#!=§:Number = 0;
      
      public var §#!$§:Number = 0;
      
      public var §&!A§:Boolean = false;
      
      public var §;f§:Boolean = false;
      
      public var §[+§:MovieClip = null;
      
      public function §%y§(param1:XML, param2:§'^§, param3:§+[§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§5!5§ = param1.@button;
         if(this.§5!5§.length > 0)
         {
            this.§2c§ = §4D§.§,!O§(this.§5!5§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§?!%§ = _loc5_;
         }
         this.§?!O§ = §89§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§?!O§ = §7O§;
            }
         }
         this.§!e§ = §`A§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§!e§ = §89§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§>a§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §4C§.push(new dynamic(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §4C§.push(new dynamic(_loc18_,this));
         }
         this.§-L§ = mClip.getChildByName("Surface").x;
         this.§2Y§ = mClip.getChildByName("Surface").y;
         this.§8?§ = mClip.getChildByName("Surface").width;
         this.§;!<§ = mClip.getChildByName("Surface").height;
         this.§9c§ = mClip.getChildByName("Button_Area1").x - this.§-L§;
         this.§]d§ = mClip.getChildByName("Button_Area1").y - this.§2Y§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§-L§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§2Y§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§]+§ = _loc9_.bottom - this.§2Y§ - this.§]d§;
         this.§1!>§ = _loc7_ - this.§9c§;
         this.§,v§ = _loc8_ - this.§]d§;
         if(Math.abs(this.§1!>§) < 3)
         {
            this.§1!>§ = 0;
         }
         if(Math.abs(this.§,v§) < 3)
         {
            this.§,v§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§1!>§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§9c§ - this.§9c§) / this.§1!>§;
         }
         if(this.§,v§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§]d§ - this.§]d§) / this.§,v§;
         }
         this.§-z§ = Math.min(_loc10_,_loc11_);
         this.§,!2§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§>0§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§>0§ = this.§-z§;
         }
         this.§6!<§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§-L§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§2Y§;
            this.mButtonMarginX2 = _loc19_ - this.§9c§;
            this.mButtonMarginY2 = _loc20_ - this.§]d§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§,!2§)
            {
               this.§6!<§ = 1 + (mClip.getChildByName("Surface").height - this.§]d§ - this.§]d§) / this.mButtonMarginY2;
            }
            else
            {
               this.§6!<§ = 1 + (mClip.getChildByName("Surface").width - this.§9c§ - this.§9c§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§[+§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§#!=§ = this.§[+§.x - mClip.getChildByName("Surface").x;
            this.§#!$§ = this.§[+§.y - mClip.getChildByName("Surface").y;
            this.§<!2§ = this.§[+§.x + this.§[+§.width - (this.§[+§.x + mClip.getChildByName("Surface").width);
            this.§+!=§ = this.§[+§.y + this.§[+§.height - (this.§[+§.y + mClip.getChildByName("Surface").height);
            this.§&!A§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§;f§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§=!%§ = §'B§.§5u§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§=!%§ = §'B§.§6z§;
            }
         }
         this.§0i§();
      }
      
      public function §0i§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§-!I§ = null;
         var _loc8_:§'B§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§8g§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §8g§;
         }
         this.§79§ = new Vector.<§'B§>();
         this.§41§();
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
            _loc7_ = new §-!I§(_loc6_,this,null,_loc5_);
            §4C§.push(_loc7_);
            _loc8_ = new §'B§(this.§=!%§,_loc4_);
            this.§79§.push(_loc8_);
            _loc9_ = this.§9c§;
            _loc10_ = this.§-z§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§!e§ == §89§)
            {
               _loc9_ = (this.§8?§ - (_loc10_ - 1) * this.§1!>§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§4C§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§4C§.push(new param2(_loc12_,_loc7_,new this.§2c§() as MovieClip));
               }
               _loc13_ = _loc7_.§4C§[_loc7_.§4C§.length - 1] as §8g§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§[S§(_loc14_,this.§?!%§);
                  if(this.§?!O§ == §7O§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§?!%§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§6!<§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§1!>§;
                  _loc13_.y = this.§]d§ + _loc11_ * this.§,v§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§-z§ * this.§6!<§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§-z§ * this.§6!<§) / this.§-z§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§-z§ * this.§6!<§) % this.§-z§;
                  if(this.§,!2§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§1!>§ + _loc16_ * this.§-z§ * this.§1!>§;
                     _loc13_.y = this.§]d§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§]d§ + _loc18_ * this.§,v§ + _loc16_ * this.§-z§ * this.§,v§;
                  }
               }
               _loc8_.§6!$§(_loc13_);
               _loc11_++;
            }
            _loc8_.§8D§("");
            _loc7_.§]Q§(this.§-z§,this.§-L§,this.§2Y§,this.§>0§ * this.§1!>§,this.§>0§ * this.§,v§,this.§6!<§,this.§>0§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §]4§() : int
      {
         return this.§-z§;
      }
      
      public function get §3T§() : int
      {
         if(this.§]4§ == 0)
         {
            return 0;
         }
         return this.§9K§(this.§2;§).§@!O§.length / this.§]4§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§%!E§) : void
      {
         var _loc5_:§'B§ = null;
         var _loc4_:§-!I§ = getItemByName(this.§2;§) as §-!I§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§;!D§(_loc4_.§@p§ - 1);
               this.§0!2§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§;!D§(_loc4_.§@p§ + 1);
               this.§0!2§();
            }
         }
         else if(param2.length > 0 && (param1 == §%!E§.LISTENER_EVENT_MOUSE_DOWN || param1 == §%!E§.LISTENER_EVENT_MOUSE_UP) && param3 is §"f§)
         {
            if((_loc5_ = this.§9K§((param3 as §"f§).mParentContainer.mName.toUpperCase())) && param3 is §8g§)
            {
               _loc5_.§8D§((param3 as §"f§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §!!@§(param1:String, param2:int) : void
      {
         var _loc3_:§-!I§ = getItemByName(param1) as §-!I§;
         if(_loc3_)
         {
            _loc3_.§;!D§(param2);
            this.§0!2§();
         }
      }
      
      public function §9K§(param1:String) : §'B§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§79§.length)
         {
            if(param1.toUpperCase() == (this.§79§[_loc2_] as §'B§).mName.toUpperCase())
            {
               return this.§79§[_loc2_] as §'B§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5B§(param1:String) : void
      {
         this.§2;§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §4C§.length)
         {
            if(§4C§[_loc2_] is §-!I§)
            {
               if((§4C§[_loc2_] as §-!I§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§4C§[_loc2_] as §-!I§).setActiveStatus(true);
                  if(this.§&!A§)
                  {
                     this.§[+§.x = (§4C§[_loc2_] as §-!I§).x + this.§#!=§;
                     this.§[+§.width = (§4C§[_loc2_] as §-!I§).width + this.§<!2§;
                  }
                  if(this.§;f§)
                  {
                     this.§[+§.y = (§4C§[_loc2_] as §-!I§).y + this.§#!$§;
                     this.§[+§.height = (§4C§[_loc2_] as §-!I§).height + this.§+!=§;
                  }
               }
               else
               {
                  (§4C§[_loc2_] as §-!I§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§0!2§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§'B§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§79§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §0!2§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§-!I§ = getItemByName(this.§2;§) as §-!I§;
         if(_loc1_)
         {
            if(_loc1_.§@p§ > 0)
            {
               (getItemByName("Button_Scroll1") as dynamic).setComponentState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as dynamic).setComponentState(§>p§.§3!-§);
            }
            if(_loc1_.§@p§ < _loc1_.§%!4§ - 1)
            {
               (getItemByName("Button_Scroll2") as dynamic).setComponentState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as dynamic).setComponentState(§>p§.§3!-§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as dynamic).setComponentState(§>p§.§3!-§);
            (getItemByName("Button_Scroll2") as dynamic).setComponentState(§>p§.§3!-§);
         }
      }
      
      public function §41§() : void
      {
         var _loc2_:§-!I§ = null;
         var _loc1_:int = §4C§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §4C§[_loc1_] as §-!I§;
            if(_loc2_)
            {
               _loc2_.clear();
               §4C§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§5B§("");
      }
      
      public function §;o§() : void
      {
         var _loc1_:§'B§ = null;
         for each(_loc1_ in this.§79§)
         {
            _loc1_.§;o§();
         }
      }
      
      public function §,!G§() : Array
      {
         if(this.§9K§(this.§2;§) == null)
         {
            §5s§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§9K§(this.§2;§).§%!B§();
      }
      
      public function §<x§(param1:Array) : void
      {
         this.§9K§(this.§2;§).§<x§(param1);
      }
      
      public function §#!A§(param1:Number) : void
      {
         this.§9K§(this.§2;§).§#!A§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§2c§ = null;
         this.§79§ = null;
         this.§>a§ = null;
      }
   }
}
