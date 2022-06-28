package §=^§
{
   import §0!<§.§#y§;
   import §1;§.§!!1§;
   import §@s§.§'!0§;
   import §@s§.§3!?§;
   import §@s§.§9$§;
   import §@s§.§[^§;
   import com.rovio.assets.§,u§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §"M§ extends §`f§
   {
      
      public static const §,!>§:int = 0;
      
      public static const §`!6§:int = 1;
      
      public static const §#T§:int = 2;
       
      
      public var §!?§:String;
      
      public var §7Q§:Class;
      
      public var §?!6§:String = null;
      
      public var §^!6§:Vector.<§[^§>;
      
      public var §+e§:int;
      
      public var §"E§:Number;
      
      public var §8N§:Number;
      
      public var §-!@§:Number;
      
      public var §[s§:Number;
      
      public var §3B§:Number;
      
      public var §!2§:Number;
      
      public var §<E§:Number;
      
      public var §5!H§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §5_§:int;
      
      public var §2[§:Number;
      
      public var §]u§:String = "";
      
      public var §&L§:int;
      
      public var §'n§:int;
      
      public var §>!D§:GlowFilter;
      
      public var §"W§:Boolean = true;
      
      public var §-z§:int;
      
      public var §%9§:int;
      
      public var § I§:Number = 0;
      
      public var §?!,§:Number = 0;
      
      public var §`!-§:Number = 0;
      
      public var §1!!§:Number = 0;
      
      public var §49§:Boolean = false;
      
      public var §8`§:Boolean = false;
      
      public var §`p§:MovieClip = null;
      
      public function §"M§(param1:XML, param2:§`f§, param3:§!!1§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§!?§ = param1.@button;
         if(this.§!?§.length > 0)
         {
            this.§7Q§ = §,u§.§'[§(this.§!?§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§?!6§ = _loc5_;
         }
         this.§&L§ = §,!>§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§&L§ = §`!6§;
            }
         }
         this.§'n§ = §#T§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§'n§ = §,!>§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§>!D§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §2x§.push(new §]P§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §2x§.push(new §]P§(_loc18_,this));
         }
         this.§"E§ = mClip.getChildByName("Surface").x;
         this.§8N§ = mClip.getChildByName("Surface").y;
         this.§-!@§ = mClip.getChildByName("Surface").width;
         this.§[s§ = mClip.getChildByName("Surface").height;
         this.§3B§ = mClip.getChildByName("Button_Area1").x - this.§"E§;
         this.§!2§ = mClip.getChildByName("Button_Area1").y - this.§8N§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§"E§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§8N§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§2[§ = _loc9_.bottom - this.§8N§ - this.§!2§;
         this.§<E§ = _loc7_ - this.§3B§;
         this.§5!H§ = _loc8_ - this.§!2§;
         if(Math.abs(this.§<E§) < 3)
         {
            this.§<E§ = 0;
         }
         if(Math.abs(this.§5!H§) < 3)
         {
            this.§5!H§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§<E§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§3B§ - this.§3B§) / this.§<E§;
         }
         if(this.§5!H§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§!2§ - this.§!2§) / this.§5!H§;
         }
         this.§+e§ = Math.min(_loc10_,_loc11_);
         this.§"W§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§-z§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§-z§ = this.§+e§;
         }
         this.§5_§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§"E§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§8N§;
            this.mButtonMarginX2 = _loc19_ - this.§3B§;
            this.mButtonMarginY2 = _loc20_ - this.§!2§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§"W§)
            {
               this.§5_§ = 1 + (mClip.getChildByName("Surface").height - this.§!2§ - this.§!2§) / this.mButtonMarginY2;
            }
            else
            {
               this.§5_§ = 1 + (mClip.getChildByName("Surface").width - this.§3B§ - this.§3B§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§`p§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§`!-§ = this.§`p§.x - mClip.getChildByName("Surface").x;
            this.§1!!§ = this.§`p§.y - mClip.getChildByName("Surface").y;
            this.§ I§ = this.§`p§.x + this.§`p§.width - (this.§`p§.x + mClip.getChildByName("Surface").width);
            this.§?!,§ = this.§`p§.y + this.§`p§.height - (this.§`p§.y + mClip.getChildByName("Surface").height);
            this.§49§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§8`§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§%9§ = §[^§.§-B§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§%9§ = §[^§.§0!;§;
            }
         }
         this.§"C§();
      }
      
      public function §"C§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§!#§ = null;
         var _loc8_:§[^§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§?o§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §?o§;
         }
         this.§^!6§ = new Vector.<§[^§>();
         this.§5>§();
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
            _loc7_ = new §!#§(_loc6_,this,null,_loc5_);
            §2x§.push(_loc7_);
            _loc8_ = new §[^§(this.§%9§,_loc4_);
            this.§^!6§.push(_loc8_);
            _loc9_ = this.§3B§;
            _loc10_ = this.§+e§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§'n§ == §,!>§)
            {
               _loc9_ = (this.§-!@§ - (_loc10_ - 1) * this.§<E§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§2x§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§2x§.push(new param2(_loc12_,_loc7_,new this.§7Q§() as MovieClip));
               }
               _loc13_ = _loc7_.§2x§[_loc7_.§2x§.length - 1] as §?o§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§'v§(_loc14_,this.§?!6§);
                  if(this.§&L§ == §`!6§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§?!6§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§5_§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§<E§;
                  _loc13_.y = this.§!2§ + _loc11_ * this.§5!H§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§+e§ * this.§5_§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§+e§ * this.§5_§) / this.§+e§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§+e§ * this.§5_§) % this.§+e§;
                  if(this.§"W§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§<E§ + _loc16_ * this.§+e§ * this.§<E§;
                     _loc13_.y = this.§!2§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§!2§ + _loc18_ * this.§5!H§ + _loc16_ * this.§+e§ * this.§5!H§;
                  }
               }
               _loc8_.§0_§(_loc13_);
               _loc11_++;
            }
            _loc8_.§]H§("");
            _loc7_.§6!=§(this.§+e§,this.§"E§,this.§8N§,this.§-z§ * this.§<E§,this.§-z§ * this.§5!H§,this.§5_§,this.§-z§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get § !E§() : int
      {
         return this.§+e§;
      }
      
      public function get §1H§() : int
      {
         if(this.§ !E§ == 0)
         {
            return 0;
         }
         return this.§#V§(this.§]u§).§0!$§.length / this.§ !E§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc5_:§[^§ = null;
         var _loc4_:§!#§ = getItemByName(this.§]u§) as §!#§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§5!,§(_loc4_.§ try§ - 1);
               this.§><§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§5!,§(_loc4_.§ try§ + 1);
               this.§><§();
            }
         }
         else if(param2.length > 0 && (param1 == §'!0§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'!0§.LISTENER_EVENT_MOUSE_UP) && param3 is §3!?§)
         {
            if((_loc5_ = this.§#V§((param3 as §3!?§).mParentContainer.mName.toUpperCase())) && param3 is §?o§)
            {
               _loc5_.§]H§((param3 as §3!?§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §>!H§(param1:String, param2:int) : void
      {
         var _loc3_:§!#§ = getItemByName(param1) as §!#§;
         if(_loc3_)
         {
            _loc3_.§5!,§(param2);
            this.§><§();
         }
      }
      
      public function §#V§(param1:String) : §[^§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!6§.length)
         {
            if(param1.toUpperCase() == (this.§^!6§[_loc2_] as §[^§).mName.toUpperCase())
            {
               return this.§^!6§[_loc2_] as §[^§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §]h§(param1:String) : void
      {
         this.§]u§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §2x§.length)
         {
            if(§2x§[_loc2_] is §!#§)
            {
               if((§2x§[_loc2_] as §!#§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§2x§[_loc2_] as §!#§).setActiveStatus(true);
                  if(this.§49§)
                  {
                     this.§`p§.x = (§2x§[_loc2_] as §!#§).x + this.§`!-§;
                     this.§`p§.width = (§2x§[_loc2_] as §!#§).width + this.§ I§;
                  }
                  if(this.§8`§)
                  {
                     this.§`p§.y = (§2x§[_loc2_] as §!#§).y + this.§1!!§;
                     this.§`p§.height = (§2x§[_loc2_] as §!#§).height + this.§?!,§;
                  }
               }
               else
               {
                  (§2x§[_loc2_] as §!#§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§><§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§[^§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§^!6§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §><§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§!#§ = getItemByName(this.§]u§) as §!#§;
         if(_loc1_)
         {
            if(_loc1_.§ try§ > 0)
            {
               (getItemByName("Button_Scroll1") as §]P§).setComponentState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §]P§).setComponentState(§9$§.§^8§);
            }
            if(_loc1_.§ try§ < _loc1_.§9=§ - 1)
            {
               (getItemByName("Button_Scroll2") as §]P§).setComponentState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §]P§).setComponentState(§9$§.§^8§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §]P§).setComponentState(§9$§.§^8§);
            (getItemByName("Button_Scroll2") as §]P§).setComponentState(§9$§.§^8§);
         }
      }
      
      public function §5>§() : void
      {
         var _loc2_:§!#§ = null;
         var _loc1_:int = §2x§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §2x§[_loc1_] as §!#§;
            if(_loc2_)
            {
               _loc2_.clear();
               §2x§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§]h§("");
      }
      
      public function §!y§() : void
      {
         var _loc1_:§[^§ = null;
         for each(_loc1_ in this.§^!6§)
         {
            _loc1_.§!y§();
         }
      }
      
      public function §6?§() : Array
      {
         if(this.§#V§(this.§]u§) == null)
         {
            §#y§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§#V§(this.§]u§).§`v§();
      }
      
      public function §1N§(param1:Array) : void
      {
         this.§#V§(this.§]u§).§1N§(param1);
      }
      
      public function §0O§(param1:Number) : void
      {
         this.§#V§(this.§]u§).§0O§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§7Q§ = null;
         this.§^!6§ = null;
         this.§>!D§ = null;
      }
   }
}
