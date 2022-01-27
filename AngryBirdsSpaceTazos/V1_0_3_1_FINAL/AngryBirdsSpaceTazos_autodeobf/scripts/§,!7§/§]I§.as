package §,!7§
{
   import §+k§.§0"4§;
   import §6!C§.§6E§;
   import §6B§.§&9§;
   import §6B§.§5![§;
   import §6B§.§<"!§;
   import §6B§.§?"2§;
   import com.rovio.assets.§>!;§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]I§ extends §5!k§
   {
      
      public static const §^`§:int = 0;
      
      public static const §1"3§:int = 1;
      
      public static const §&!c§:int = 2;
       
      
      public var §&!@§:String;
      
      public var §?L§:Class;
      
      public var §8§:String = null;
      
      public var §=L§:Vector.<§<"!§>;
      
      public var §>1§:int;
      
      public var §-t§:Number;
      
      public var §+!-§:Number;
      
      public var §#"F§:Number;
      
      public var §4w§:Number;
      
      public var §=T§:Number;
      
      public var §3!R§:Number;
      
      public var §[!-§:Number;
      
      public var §@9§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §&`§:int;
      
      public var §1Y§:Number;
      
      public var §>! §:String = "";
      
      public var §1!Z§:int;
      
      public var §8w§:int;
      
      public var §3!2§:GlowFilter;
      
      public var §77§:Boolean = true;
      
      public var §!"G§:int;
      
      public var §?"7§:int;
      
      public var §+!O§:Number = 0;
      
      public var §+X§:Number = 0;
      
      public var §-!7§:Number = 0;
      
      public var §4!n§:Number = 0;
      
      public var §`!A§:Boolean = false;
      
      public var §;"8§:Boolean = false;
      
      public var §7f§:MovieClip = null;
      
      public function §]I§(param1:XML, param2:§5!k§, param3:§0"4§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§&!@§ = param1.@button;
         if(this.§&!@§.length > 0)
         {
            this.§?L§ = §>!;§.§+!u§(this.§&!@§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§8§ = _loc5_;
         }
         this.§1!Z§ = §^`§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§1!Z§ = §1"3§;
            }
         }
         this.§8w§ = §&!c§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§8w§ = §^`§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§3!2§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §<!d§.push(new §%!J§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §<!d§.push(new §%!J§(_loc18_,this));
         }
         this.§-t§ = mClip.getChildByName("Surface").x;
         this.§+!-§ = mClip.getChildByName("Surface").y;
         this.§#"F§ = mClip.getChildByName("Surface").width;
         this.§4w§ = mClip.getChildByName("Surface").height;
         this.§=T§ = mClip.getChildByName("Button_Area1").x - this.§-t§;
         this.§3!R§ = mClip.getChildByName("Button_Area1").y - this.§+!-§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§-t§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§+!-§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§1Y§ = _loc9_.bottom - this.§+!-§ - this.§3!R§;
         this.§[!-§ = _loc7_ - this.§=T§;
         this.§@9§ = _loc8_ - this.§3!R§;
         if(Math.abs(this.§[!-§) < 3)
         {
            this.§[!-§ = 0;
         }
         if(Math.abs(this.§@9§) < 3)
         {
            this.§@9§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§[!-§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§=T§ - this.§=T§) / this.§[!-§;
         }
         if(this.§@9§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§3!R§ - this.§3!R§) / this.§@9§;
         }
         this.§>1§ = Math.min(_loc10_,_loc11_);
         this.§77§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§!"G§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§!"G§ = this.§>1§;
         }
         this.§&`§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§-t§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§+!-§;
            this.mButtonMarginX2 = _loc19_ - this.§=T§;
            this.mButtonMarginY2 = _loc20_ - this.§3!R§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§77§)
            {
               this.§&`§ = 1 + (mClip.getChildByName("Surface").height - this.§3!R§ - this.§3!R§) / this.mButtonMarginY2;
            }
            else
            {
               this.§&`§ = 1 + (mClip.getChildByName("Surface").width - this.§=T§ - this.§=T§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§7f§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§-!7§ = this.§7f§.x - mClip.getChildByName("Surface").x;
            this.§4!n§ = this.§7f§.y - mClip.getChildByName("Surface").y;
            this.§+!O§ = this.§7f§.x + this.§7f§.width - (this.§7f§.x + mClip.getChildByName("Surface").width);
            this.§+X§ = this.§7f§.y + this.§7f§.height - (this.§7f§.y + mClip.getChildByName("Surface").height);
            this.§`!A§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§;"8§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§?"7§ = §<"!§.§=!f§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§?"7§ = §<"!§.§,G§;
            }
         }
         this.§5n§();
      }
      
      public function §5n§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§0!<§ = null;
         var _loc8_:§<"!§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§%]§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §%]§;
         }
         this.§=L§ = new Vector.<§<"!§>();
         this.§@`§();
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
            _loc7_ = new §0!<§(_loc6_,this,null,_loc5_);
            §<!d§.push(_loc7_);
            _loc8_ = new §<"!§(this.§?"7§,_loc4_);
            this.§=L§.push(_loc8_);
            _loc9_ = this.§=T§;
            _loc10_ = this.§>1§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§8w§ == §^`§)
            {
               _loc9_ = (this.§#"F§ - (_loc10_ - 1) * this.§[!-§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§<!d§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§<!d§.push(new param2(_loc12_,_loc7_,new this.§?L§() as MovieClip));
               }
               _loc13_ = _loc7_.§<!d§[_loc7_.§<!d§.length - 1] as §%]§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§break§(_loc14_,this.§8§);
                  if(this.§1!Z§ == §1"3§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§8§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§&`§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§[!-§;
                  _loc13_.y = this.§3!R§ + _loc11_ * this.§@9§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§>1§ * this.§&`§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§>1§ * this.§&`§) / this.§>1§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§>1§ * this.§&`§) % this.§>1§;
                  if(this.§77§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§[!-§ + _loc16_ * this.§>1§ * this.§[!-§;
                     _loc13_.y = this.§3!R§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§3!R§ + _loc18_ * this.§@9§ + _loc16_ * this.§>1§ * this.§@9§;
                  }
               }
               _loc8_.§7!M§(_loc13_);
               _loc11_++;
            }
            _loc8_.§?!X§("");
            _loc7_.§2!e§(this.§>1§,this.§-t§,this.§+!-§,this.§!"G§ * this.§[!-§,this.§!"G§ * this.§@9§,this.§&`§,this.§!"G§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get § !l§() : int
      {
         return this.§>1§;
      }
      
      public function get §,!F§() : int
      {
         if(this.§ !l§ == 0)
         {
            return 0;
         }
         return this.§[!§(this.§>! §).§;Z§.length / this.§ !l§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§?"2§, param4:Event = null) : void
      {
         var _loc6_:§<"!§ = null;
         var _loc5_:§0!<§ = getItemByName(this.§>! §) as §0!<§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§ null§(_loc5_.§2I§ - 1);
               this.§]!>§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§ null§(_loc5_.§2I§ + 1);
               this.§]!>§();
            }
         }
         else if(param2.length > 0 && (param1 == §?"2§.LISTENER_EVENT_MOUSE_DOWN || param1 == §?"2§.LISTENER_EVENT_MOUSE_UP) && param3 is §&9§)
         {
            if((_loc6_ = this.§[!§((param3 as §&9§).mParentContainer.mName.toUpperCase())) && param3 is §%]§)
            {
               _loc6_.§?!X§((param3 as §&9§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §1"-§(param1:String, param2:int) : void
      {
         var _loc3_:§0!<§ = getItemByName(param1) as §0!<§;
         if(_loc3_)
         {
            _loc3_.§ null§(param2);
            this.§]!>§();
         }
      }
      
      public function §[!§(param1:String) : §<"!§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=L§.length)
         {
            if(param1.toUpperCase() == (this.§=L§[_loc2_] as §<"!§).mName.toUpperCase())
            {
               return this.§=L§[_loc2_] as §<"!§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §#"B§(param1:String) : void
      {
         this.§>! § = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §<!d§.length)
         {
            if(§<!d§[_loc2_] is §0!<§)
            {
               if((§<!d§[_loc2_] as §0!<§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§<!d§[_loc2_] as §0!<§).setActiveStatus(true);
                  if(this.§`!A§)
                  {
                     this.§7f§.x = (§<!d§[_loc2_] as §0!<§).x + this.§-!7§;
                     this.§7f§.width = (§<!d§[_loc2_] as §0!<§).width + this.§+!O§;
                  }
                  if(this.§;"8§)
                  {
                     this.§7f§.y = (§<!d§[_loc2_] as §0!<§).y + this.§4!n§;
                     this.§7f§.height = (§<!d§[_loc2_] as §0!<§).height + this.§+X§;
                  }
               }
               else
               {
                  (§<!d§[_loc2_] as §0!<§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§]!>§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§<"!§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§=L§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §]!>§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§0!<§ = getItemByName(this.§>! §) as §0!<§;
         if(_loc1_)
         {
            if(_loc1_.§2I§ > 0)
            {
               (getItemByName("Button_Scroll1") as §%!J§).setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §%!J§).setComponentState(§5![§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§2I§ < _loc1_.§;3§ - 1)
            {
               (getItemByName("Button_Scroll2") as §%!J§).setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §%!J§).setComponentState(§5![§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §%!J§).setComponentState(§5![§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §%!J§).setComponentState(§5![§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §@`§() : void
      {
         var _loc2_:§0!<§ = null;
         var _loc1_:int = §<!d§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §<!d§[_loc1_] as §0!<§;
            if(_loc2_)
            {
               _loc2_.clear();
               §<!d§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§#"B§("");
      }
      
      public function § !z§() : void
      {
         var _loc1_:§<"!§ = null;
         for each(_loc1_ in this.§=L§)
         {
            _loc1_.§ !z§();
         }
      }
      
      public function §0!U§() : Array
      {
         if(this.§[!§(this.§>! §) == null)
         {
            §6E§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§[!§(this.§>! §).§while§();
      }
      
      public function §>a§(param1:Array) : void
      {
         this.§[!§(this.§>! §).§>a§(param1);
      }
      
      public function §`D§(param1:Number) : void
      {
         this.§[!§(this.§>! §).§`D§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§?L§ = null;
         this.§=L§ = null;
         this.§3!2§ = null;
      }
   }
}
