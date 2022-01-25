package §68§
{
   import § 9§.§=!a§;
   import §&V§.§!q§;
   import §&V§.§4o§;
   import §&V§.§7h§;
   import §&V§.§9t§;
   import §^6§.§;l§;
   import §^=§.§8!6§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §[!V§ extends §`?§
   {
      
      public static const §""§:int = 0;
      
      public static const §1m§:int = 1;
      
      public static const §!W§:int = 2;
       
      
      public var §&!5§:String;
      
      public var §[!E§:Class;
      
      public var §3Y§:String = null;
      
      public var §>H§:Vector.<§7h§>;
      
      public var §?T§:int;
      
      public var §3!2§:Number;
      
      public var §%%§:Number;
      
      public var §7_§:Number;
      
      public var §+$§:Number;
      
      public var §;T§:Number;
      
      public var §'#§:Number;
      
      public var §#'§:Number;
      
      public var §&U§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §4E§:int;
      
      public var §-§:Number;
      
      public var §3!C§:String = "";
      
      public var §<!4§:int;
      
      public var §'!1§:int;
      
      public var §,4§:GlowFilter;
      
      public var §`!-§:Boolean = true;
      
      public var §6T§:int;
      
      public var §<_§:int;
      
      public var §#!S§:Number = 0;
      
      public var §4!e§:Number = 0;
      
      public var §`A§:Number = 0;
      
      public var §5!0§:Number = 0;
      
      public var §%!R§:Boolean = false;
      
      public var § !>§:Boolean = false;
      
      public var §,!#§:MovieClip = null;
      
      public function §[!V§(param1:XML, param2:§`?§, param3:§;l§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§&!5§ = param1.@button;
         if(this.§&!5§.length > 0)
         {
            this.§[!E§ = §=!a§.§@o§(this.§&!5§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§3Y§ = _loc5_;
         }
         this.§<!4§ = §""§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§<!4§ = §1m§;
            }
         }
         this.§'!1§ = §!W§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§'!1§ = §""§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§,4§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §+z§.push(new §0_§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §+z§.push(new §0_§(_loc18_,this));
         }
         this.§3!2§ = mClip.getChildByName("Surface").x;
         this.§%%§ = mClip.getChildByName("Surface").y;
         this.§7_§ = mClip.getChildByName("Surface").width;
         this.§+$§ = mClip.getChildByName("Surface").height;
         this.§;T§ = mClip.getChildByName("Button_Area1").x - this.§3!2§;
         this.§'#§ = mClip.getChildByName("Button_Area1").y - this.§%%§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§3!2§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§%%§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§-§ = _loc9_.bottom - this.§%%§ - this.§'#§;
         this.§#'§ = _loc7_ - this.§;T§;
         this.§&U§ = _loc8_ - this.§'#§;
         if(Math.abs(this.§#'§) < 3)
         {
            this.§#'§ = 0;
         }
         if(Math.abs(this.§&U§) < 3)
         {
            this.§&U§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§#'§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§;T§ - this.§;T§) / this.§#'§;
         }
         if(this.§&U§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§'#§ - this.§'#§) / this.§&U§;
         }
         this.§?T§ = Math.min(_loc10_,_loc11_);
         this.§`!-§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§6T§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§6T§ = this.§?T§;
         }
         this.§4E§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§3!2§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§%%§;
            this.mButtonMarginX2 = _loc19_ - this.§;T§;
            this.mButtonMarginY2 = _loc20_ - this.§'#§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§`!-§)
            {
               this.§4E§ = 1 + (mClip.getChildByName("Surface").height - this.§'#§ - this.§'#§) / this.mButtonMarginY2;
            }
            else
            {
               this.§4E§ = 1 + (mClip.getChildByName("Surface").width - this.§;T§ - this.§;T§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§,!#§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§`A§ = this.§,!#§.x - mClip.getChildByName("Surface").x;
            this.§5!0§ = this.§,!#§.y - mClip.getChildByName("Surface").y;
            this.§#!S§ = this.§,!#§.x + this.§,!#§.width - (this.§,!#§.x + mClip.getChildByName("Surface").width);
            this.§4!e§ = this.§,!#§.y + this.§,!#§.height - (this.§,!#§.y + mClip.getChildByName("Surface").height);
            this.§%!R§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§ !>§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§<_§ = §7h§.§<!5§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§<_§ = §7h§.§'!]§;
            }
         }
         this.§6!@§();
      }
      
      public function §6!@§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§&k§ = null;
         var _loc8_:§7h§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§6!E§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §6!E§;
         }
         this.§>H§ = new Vector.<§7h§>();
         this.§>h§();
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
            _loc7_ = new §&k§(_loc6_,this,null,_loc5_);
            §+z§.push(_loc7_);
            _loc8_ = new §7h§(this.§<_§,_loc4_);
            this.§>H§.push(_loc8_);
            _loc9_ = this.§;T§;
            _loc10_ = this.§?T§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§'!1§ == §""§)
            {
               _loc9_ = (this.§7_§ - (_loc10_ - 1) * this.§#'§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§+z§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§+z§.push(new param2(_loc12_,_loc7_,new this.§[!E§() as MovieClip));
               }
               _loc13_ = _loc7_.§+z§[_loc7_.§+z§.length - 1] as §6!E§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§@Z§(_loc14_,this.§3Y§);
                  if(this.§<!4§ == §1m§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§3Y§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§4E§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§#'§;
                  _loc13_.y = this.§'#§ + _loc11_ * this.§&U§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§?T§ * this.§4E§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§?T§ * this.§4E§) / this.§?T§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§?T§ * this.§4E§) % this.§?T§;
                  if(this.§`!-§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§#'§ + _loc16_ * this.§?T§ * this.§#'§;
                     _loc13_.y = this.§'#§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§'#§ + _loc18_ * this.§&U§ + _loc16_ * this.§?T§ * this.§&U§;
                  }
               }
               _loc8_.§9!W§(_loc13_);
               _loc11_++;
            }
            _loc8_.§5X§("");
            _loc7_.§80§(this.§?T§,this.§3!2§,this.§%%§,this.§6T§ * this.§#'§,this.§6T§ * this.§&U§,this.§4E§,this.§6T§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §"+§() : int
      {
         return this.§?T§;
      }
      
      public function get §0!,§() : int
      {
         if(this.§"+§ == 0)
         {
            return 0;
         }
         return this.§&!+§(this.§3!C§).§0!1§.length / this.§"+§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§9t§) : void
      {
         var _loc5_:§7h§ = null;
         var _loc4_:§&k§ = getItemByName(this.§3!C§) as §&k§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§''§(_loc4_.§++§ - 1);
               this.§0X§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§''§(_loc4_.§++§ + 1);
               this.§0X§();
            }
         }
         else if(param2.length > 0 && (param1 == §9t§.LISTENER_EVENT_MOUSE_DOWN || param1 == §9t§.LISTENER_EVENT_MOUSE_UP) && param3 is §!q§)
         {
            if((_loc5_ = this.§&!+§((param3 as §!q§).mParentContainer.mName.toUpperCase())) && param3 is §6!E§)
            {
               _loc5_.§5X§((param3 as §!q§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §,m§(param1:String, param2:int) : void
      {
         var _loc3_:§&k§ = getItemByName(param1) as §&k§;
         if(_loc3_)
         {
            _loc3_.§''§(param2);
            this.§0X§();
         }
      }
      
      public function §&!+§(param1:String) : §7h§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>H§.length)
         {
            if(param1.toUpperCase() == (this.§>H§[_loc2_] as §7h§).mName.toUpperCase())
            {
               return this.§>H§[_loc2_] as §7h§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §6M§(param1:String) : void
      {
         this.§3!C§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §+z§.length)
         {
            if(§+z§[_loc2_] is §&k§)
            {
               if((§+z§[_loc2_] as §&k§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§+z§[_loc2_] as §&k§).setActiveStatus(true);
                  if(this.§%!R§)
                  {
                     this.§,!#§.x = (§+z§[_loc2_] as §&k§).x + this.§`A§;
                     this.§,!#§.width = (§+z§[_loc2_] as §&k§).width + this.§#!S§;
                  }
                  if(this.§ !>§)
                  {
                     this.§,!#§.y = (§+z§[_loc2_] as §&k§).y + this.§5!0§;
                     this.§,!#§.height = (§+z§[_loc2_] as §&k§).height + this.§4!e§;
                  }
               }
               else
               {
                  (§+z§[_loc2_] as §&k§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§0X§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§7h§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§>H§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §0X§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§&k§ = getItemByName(this.§3!C§) as §&k§;
         if(_loc1_)
         {
            if(_loc1_.§++§ > 0)
            {
               (getItemByName("Button_Scroll1") as §0_§).setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §0_§).setComponentState(§4o§.§0!;§);
            }
            if(_loc1_.§++§ < _loc1_.§-n§ - 1)
            {
               (getItemByName("Button_Scroll2") as §0_§).setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §0_§).setComponentState(§4o§.§0!;§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §0_§).setComponentState(§4o§.§0!;§);
            (getItemByName("Button_Scroll2") as §0_§).setComponentState(§4o§.§0!;§);
         }
      }
      
      public function §>h§() : void
      {
         var _loc2_:§&k§ = null;
         var _loc1_:int = §+z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+z§[_loc1_] as §&k§;
            if(_loc2_)
            {
               _loc2_.clear();
               §+z§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§6M§("");
      }
      
      public function §%J§() : void
      {
         var _loc1_:§7h§ = null;
         for each(_loc1_ in this.§>H§)
         {
            _loc1_.§%J§();
         }
      }
      
      public function §-b§() : Array
      {
         if(this.§&!+§(this.§3!C§) == null)
         {
            §8!6§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§&!+§(this.§3!C§).§?!#§();
      }
      
      public function §<x§(param1:Array) : void
      {
         this.§&!+§(this.§3!C§).§<x§(param1);
      }
      
      public function §!![§(param1:Number) : void
      {
         this.§&!+§(this.§3!C§).§!![§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§[!E§ = null;
         this.§>H§ = null;
         this.§,4§ = null;
      }
   }
}
