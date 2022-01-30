package § true§
{
   import §&W§.§7L§;
   import §0!C§.§=!]§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §4!j§.§9!#§;
   import §4!j§.§[!f§;
   import com.rovio.assets.§=#§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §0!g§ extends §1H§
   {
      
      public static const §true §:int = 0;
      
      public static const §,'§:int = 1;
      
      public static const §7R§:int = 2;
       
      
      public var §7]§:String;
      
      public var §6'§:Class;
      
      public var §0@§:String = null;
      
      public var §!!Z§:Vector.<§9!#§>;
      
      public var §[";§:int;
      
      public var §3!-§:Number;
      
      public var §"!`§:Number;
      
      public var §"J§:Number;
      
      public var §;!]§:Number;
      
      public var §-" §:Number;
      
      public var §`@§:Number;
      
      public var §7!U§:Number;
      
      public var §=f§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §6!%§:int;
      
      public var §2S§:Number;
      
      public var §[!D§:String = "";
      
      public var § each§:int;
      
      public var §"!H§:int;
      
      public var § n§:GlowFilter;
      
      public var §+!4§:Boolean = true;
      
      public var §+r§:int;
      
      public var §?"5§:int;
      
      public var §4! §:Number = 0;
      
      public var §="4§:Number = 0;
      
      public var §<!P§:Number = 0;
      
      public var §0i§:Number = 0;
      
      public var §9!N§:Boolean = false;
      
      public var §1!V§:Boolean = false;
      
      public var §>!z§:MovieClip = null;
      
      public function §0!g§(param1:XML, param2:§1H§, param3:§=!]§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§7]§ = param1.@button;
         if(this.§7]§.length > 0)
         {
            this.§6'§ = §=#§.§1v§(this.§7]§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§0@§ = _loc5_;
         }
         this.§ each§ = §true §;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§ each§ = §,'§;
            }
         }
         this.§"!H§ = §7R§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§"!H§ = §true §;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§ n§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §[!P§.push(new §8K§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §[!P§.push(new §8K§(_loc18_,this));
         }
         this.§3!-§ = mClip.getChildByName("Surface").x;
         this.§"!`§ = mClip.getChildByName("Surface").y;
         this.§"J§ = mClip.getChildByName("Surface").width;
         this.§;!]§ = mClip.getChildByName("Surface").height;
         this.§-" § = mClip.getChildByName("Button_Area1").x - this.§3!-§;
         this.§`@§ = mClip.getChildByName("Button_Area1").y - this.§"!`§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§3!-§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§"!`§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§2S§ = _loc9_.bottom - this.§"!`§ - this.§`@§;
         this.§7!U§ = _loc7_ - this.§-" §;
         this.§=f§ = _loc8_ - this.§`@§;
         if(Math.abs(this.§7!U§) < 3)
         {
            this.§7!U§ = 0;
         }
         if(Math.abs(this.§=f§) < 3)
         {
            this.§=f§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§7!U§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§-" § - this.§-" §) / this.§7!U§;
         }
         if(this.§=f§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§`@§ - this.§`@§) / this.§=f§;
         }
         this.§[";§ = Math.min(_loc10_,_loc11_);
         this.§+!4§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§+r§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§+r§ = this.§[";§;
         }
         this.§6!%§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§3!-§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§"!`§;
            this.mButtonMarginX2 = _loc19_ - this.§-" §;
            this.mButtonMarginY2 = _loc20_ - this.§`@§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§+!4§)
            {
               this.§6!%§ = 1 + (mClip.getChildByName("Surface").height - this.§`@§ - this.§`@§) / this.mButtonMarginY2;
            }
            else
            {
               this.§6!%§ = 1 + (mClip.getChildByName("Surface").width - this.§-" § - this.§-" §) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§>!z§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§<!P§ = this.§>!z§.x - mClip.getChildByName("Surface").x;
            this.§0i§ = this.§>!z§.y - mClip.getChildByName("Surface").y;
            this.§4! § = this.§>!z§.x + this.§>!z§.width - (this.§>!z§.x + mClip.getChildByName("Surface").width);
            this.§="4§ = this.§>!z§.y + this.§>!z§.height - (this.§>!z§.y + mClip.getChildByName("Surface").height);
            this.§9!N§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§1!V§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§?"5§ = §9!#§.§[!d§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§?"5§ = §9!#§.§7!G§;
            }
         }
         this.§?!@§();
      }
      
      public function §?!@§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§%!Z§ = null;
         var _loc8_:§9!#§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§?W§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §?W§;
         }
         this.§!!Z§ = new Vector.<§9!#§>();
         this.§-X§();
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
            _loc7_ = new §%!Z§(_loc6_,this,null,_loc5_);
            §[!P§.push(_loc7_);
            _loc8_ = new §9!#§(this.§?"5§,_loc4_);
            this.§!!Z§.push(_loc8_);
            _loc9_ = this.§-" §;
            _loc10_ = this.§[";§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§"!H§ == §true §)
            {
               _loc9_ = (this.§"J§ - (_loc10_ - 1) * this.§7!U§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§[!P§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§[!P§.push(new param2(_loc12_,_loc7_,new this.§6'§() as MovieClip));
               }
               _loc13_ = _loc7_.§[!P§[_loc7_.§[!P§.length - 1] as §?W§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§0@§);
                  if(this.§ each§ == §,'§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§0@§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§6!%§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§7!U§;
                  _loc13_.y = this.§`@§ + _loc11_ * this.§=f§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§[";§ * this.§6!%§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§[";§ * this.§6!%§) / this.§[";§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§[";§ * this.§6!%§) % this.§[";§;
                  if(this.§+!4§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§7!U§ + _loc16_ * this.§[";§ * this.§7!U§;
                     _loc13_.y = this.§`@§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§`@§ + _loc18_ * this.§=f§ + _loc16_ * this.§[";§ * this.§=f§;
                  }
               }
               _loc8_.§;!,§(_loc13_);
               _loc11_++;
            }
            _loc8_.§2n§("");
            _loc7_.§9"3§(this.§[";§,this.§3!-§,this.§"!`§,this.§+r§ * this.§7!U§,this.§+r§ * this.§=f§,this.§6!%§,this.§+r§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §-Q§() : int
      {
         return this.§[";§;
      }
      
      public function get §>!c§() : int
      {
         if(this.§-Q§ == 0)
         {
            return 0;
         }
         return this.§ !6§(this.§[!D§).§6y§.length / this.§-Q§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§0p§) : void
      {
         var _loc5_:§9!#§ = null;
         var _loc4_:§%!Z§ = getItemByName(this.§[!D§) as §%!Z§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§%R§(_loc4_.§4"4§ - 1);
               this.§7_§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§%R§(_loc4_.§4"4§ + 1);
               this.§7_§();
            }
         }
         else if(param2.length > 0 && (param1 == §0p§.LISTENER_EVENT_MOUSE_DOWN || param1 == §0p§.LISTENER_EVENT_MOUSE_UP) && param3 is §[!f§)
         {
            if((_loc5_ = this.§ !6§((param3 as §[!f§).mParentContainer.mName.toUpperCase())) && param3 is §?W§)
            {
               _loc5_.§2n§((param3 as §[!f§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §!!1§(param1:String, param2:int) : void
      {
         var _loc3_:§%!Z§ = getItemByName(param1) as §%!Z§;
         if(_loc3_)
         {
            _loc3_.§%R§(param2);
            this.§7_§();
         }
      }
      
      public function § !6§(param1:String) : §9!#§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!Z§.length)
         {
            if(param1.toUpperCase() == (this.§!!Z§[_loc2_] as §9!#§).mName.toUpperCase())
            {
               return this.§!!Z§[_loc2_] as §9!#§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,K§(param1:String) : void
      {
         this.§[!D§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §[!P§.length)
         {
            if(§[!P§[_loc2_] is §%!Z§)
            {
               if((§[!P§[_loc2_] as §%!Z§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§[!P§[_loc2_] as §%!Z§).setActiveStatus(true);
                  if(this.§9!N§)
                  {
                     this.§>!z§.x = (§[!P§[_loc2_] as §%!Z§).x + this.§<!P§;
                     this.§>!z§.width = (§[!P§[_loc2_] as §%!Z§).width + this.§4! §;
                  }
                  if(this.§1!V§)
                  {
                     this.§>!z§.y = (§[!P§[_loc2_] as §%!Z§).y + this.§0i§;
                     this.§>!z§.height = (§[!P§[_loc2_] as §%!Z§).height + this.§="4§;
                  }
               }
               else
               {
                  (§[!P§[_loc2_] as §%!Z§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§7_§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§9!#§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§!!Z§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §7_§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§%!Z§ = getItemByName(this.§[!D§) as §%!Z§;
         if(_loc1_)
         {
            if(_loc1_.§4"4§ > 0)
            {
               (getItemByName("Button_Scroll1") as §8K§).setComponentState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §8K§).setComponentState(§""3§.override);
            }
            if(_loc1_.§4"4§ < _loc1_.§8!$§ - 1)
            {
               (getItemByName("Button_Scroll2") as §8K§).setComponentState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §8K§).setComponentState(§""3§.override);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §8K§).setComponentState(§""3§.override);
            (getItemByName("Button_Scroll2") as §8K§).setComponentState(§""3§.override);
         }
      }
      
      public function §-X§() : void
      {
         var _loc2_:§%!Z§ = null;
         var _loc1_:int = §[!P§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §[!P§[_loc1_] as §%!Z§;
            if(_loc2_)
            {
               _loc2_.clear();
               §[!P§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§,K§("");
      }
      
      public function §%!n§() : void
      {
         var _loc1_:§9!#§ = null;
         for each(_loc1_ in this.§!!Z§)
         {
            _loc1_.§%!n§();
         }
      }
      
      public function §9!3§() : Array
      {
         if(this.§ !6§(this.§[!D§) == null)
         {
            §7L§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§ !6§(this.§[!D§).§%!2§();
      }
      
      public function §!>§(param1:Array) : void
      {
         this.§ !6§(this.§[!D§).§!>§(param1);
      }
      
      public function §?">§(param1:Number) : void
      {
         this.§ !6§(this.§[!D§).§?">§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§6'§ = null;
         this.§!!Z§ = null;
         this.§ n§ = null;
      }
   }
}
