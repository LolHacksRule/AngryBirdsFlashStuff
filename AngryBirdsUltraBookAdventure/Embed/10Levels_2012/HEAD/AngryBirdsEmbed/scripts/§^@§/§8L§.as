package §^@§
{
   import §1;§.§!!1§;
   import §1h§.§ use§;
   import §1h§.§#H§;
   import §1h§.§;x§;
   import §1h§.§@s§;
   import §2§.§0!<§;
   import com.rovio.assets.§7!D§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §8L§ extends §2q§
   {
      
      public static const §`!6§:int = 0;
      
      public static const §%!"§:int = 1;
      
      public static const §"!C§:int = 2;
       
      
      public var §"M§:String;
      
      public var §!?§:Class;
      
      public var §7Q§:String = null;
      
      public var §?!6§:Vector.<§;x§>;
      
      public var §^!6§:int;
      
      public var §+e§:Number;
      
      public var §"E§:Number;
      
      public var §8N§:Number;
      
      public var §-!@§:Number;
      
      public var §[s§:Number;
      
      public var §3B§:Number;
      
      public var §!2§:Number;
      
      public var §<E§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §5!H§:int;
      
      public var §5_§:Number;
      
      public var §2[§:String = "";
      
      public var §]u§:int;
      
      public var §&L§:int;
      
      public var §'n§:GlowFilter;
      
      public var §>!D§:Boolean = true;
      
      public var §"W§:int;
      
      public var §-z§:int;
      
      public var §%9§:Number = 0;
      
      public var § I§:Number = 0;
      
      public var §?!,§:Number = 0;
      
      public var §`!-§:Number = 0;
      
      public var §1!!§:Boolean = false;
      
      public var §49§:Boolean = false;
      
      public var §8`§:MovieClip = null;
      
      public function §8L§(param1:XML, param2:§2q§, param3:§!!1§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§"M§ = param1.@button;
         if(this.§"M§.length > 0)
         {
            this.§!?§ = §7!D§.§?0§(this.§"M§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§7Q§ = _loc5_;
         }
         this.§]u§ = §`!6§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§]u§ = §%!"§;
            }
         }
         this.§&L§ = §"!C§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§&L§ = §`!6§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§'n§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §7!H§.push(new §=^§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §7!H§.push(new §=^§(_loc18_,this));
         }
         this.§+e§ = mClip.getChildByName("Surface").x;
         this.§"E§ = mClip.getChildByName("Surface").y;
         this.§8N§ = mClip.getChildByName("Surface").width;
         this.§-!@§ = mClip.getChildByName("Surface").height;
         this.§[s§ = mClip.getChildByName("Button_Area1").x - this.§+e§;
         this.§3B§ = mClip.getChildByName("Button_Area1").y - this.§"E§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§+e§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§"E§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§5_§ = _loc9_.bottom - this.§"E§ - this.§3B§;
         this.§!2§ = _loc7_ - this.§[s§;
         this.§<E§ = _loc8_ - this.§3B§;
         if(Math.abs(this.§!2§) < 3)
         {
            this.§!2§ = 0;
         }
         if(Math.abs(this.§<E§) < 3)
         {
            this.§<E§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§!2§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§[s§ - this.§[s§) / this.§!2§;
         }
         if(this.§<E§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§3B§ - this.§3B§) / this.§<E§;
         }
         this.§^!6§ = Math.min(_loc10_,_loc11_);
         this.§>!D§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§"W§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§"W§ = this.§^!6§;
         }
         this.§5!H§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§+e§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§"E§;
            this.mButtonMarginX2 = _loc19_ - this.§[s§;
            this.mButtonMarginY2 = _loc20_ - this.§3B§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§>!D§)
            {
               this.§5!H§ = 1 + (mClip.getChildByName("Surface").height - this.§3B§ - this.§3B§) / this.mButtonMarginY2;
            }
            else
            {
               this.§5!H§ = 1 + (mClip.getChildByName("Surface").width - this.§[s§ - this.§[s§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§8`§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§?!,§ = this.§8`§.x - mClip.getChildByName("Surface").x;
            this.§`!-§ = this.§8`§.y - mClip.getChildByName("Surface").y;
            this.§%9§ = this.§8`§.x + this.§8`§.width - (this.§8`§.x + mClip.getChildByName("Surface").width);
            this.§ I§ = this.§8`§.y + this.§8`§.height - (this.§8`§.y + mClip.getChildByName("Surface").height);
            this.§1!!§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§49§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§-z§ = §;x§.§0!;§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§-z§ = §;x§.§`v§;
            }
         }
         this.§`p§();
      }
      
      public function §`p§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§#-§ = null;
         var _loc8_:§;x§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§6?§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §6?§;
         }
         this.§?!6§ = new Vector.<§;x§>();
         this.§><§();
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
            _loc7_ = new §#-§(_loc6_,this,null,_loc5_);
            §7!H§.push(_loc7_);
            _loc8_ = new §;x§(this.§-z§,_loc4_);
            this.§?!6§.push(_loc8_);
            _loc9_ = this.§[s§;
            _loc10_ = this.§^!6§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§&L§ == §`!6§)
            {
               _loc9_ = (this.§8N§ - (_loc10_ - 1) * this.§!2§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§7!H§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§7!H§.push(new param2(_loc12_,_loc7_,new this.§!?§() as MovieClip));
               }
               _loc13_ = _loc7_.§7!H§[_loc7_.§7!H§.length - 1] as §6?§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§""§(_loc14_,this.§7Q§);
                  if(this.§]u§ == §%!"§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§7Q§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§5!H§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§!2§;
                  _loc13_.y = this.§3B§ + _loc11_ * this.§<E§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§^!6§ * this.§5!H§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§^!6§ * this.§5!H§) / this.§^!6§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§^!6§ * this.§5!H§) % this.§^!6§;
                  if(this.§>!D§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§!2§ + _loc16_ * this.§^!6§ * this.§!2§;
                     _loc13_.y = this.§3B§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§3B§ + _loc18_ * this.§<E§ + _loc16_ * this.§^!6§ * this.§<E§;
                  }
               }
               _loc8_.§]!"§(_loc13_);
               _loc11_++;
            }
            _loc8_.§0_§("");
            _loc7_.§7b§(this.§^!6§,this.§+e§,this.§"E§,this.§"W§ * this.§!2§,this.§"W§ * this.§<E§,this.§5!H§,this.§"W§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §"C§() : int
      {
         return this.§^!6§;
      }
      
      public function get § !E§() : int
      {
         if(this.§"C§ == 0)
         {
            return 0;
         }
         return this.§>!H§(this.§2[§).§[^§.length / this.§"C§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§@s§) : void
      {
         var _loc5_:§;x§ = null;
         var _loc4_:§#-§ = getItemByName(this.§2[§) as §#-§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§6!=§(_loc4_.§^y§ - 1);
               this.§]h§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§6!=§(_loc4_.§^y§ + 1);
               this.§]h§();
            }
         }
         else if(param2.length > 0 && (param1 == §@s§.LISTENER_EVENT_MOUSE_DOWN || param1 == §@s§.LISTENER_EVENT_MOUSE_UP) && param3 is §#H§)
         {
            if((_loc5_ = this.§>!H§((param3 as §#H§).mParentContainer.mName.toUpperCase())) && param3 is §6?§)
            {
               _loc5_.§0_§((param3 as §#H§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §1H§(param1:String, param2:int) : void
      {
         var _loc3_:§#-§ = getItemByName(param1) as §#-§;
         if(_loc3_)
         {
            _loc3_.§6!=§(param2);
            this.§]h§();
         }
      }
      
      public function §>!H§(param1:String) : §;x§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!6§.length)
         {
            if(param1.toUpperCase() == (this.§?!6§[_loc2_] as §;x§).mName.toUpperCase())
            {
               return this.§?!6§[_loc2_] as §;x§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §#V§(param1:String) : void
      {
         this.§2[§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §7!H§.length)
         {
            if(§7!H§[_loc2_] is §#-§)
            {
               if((§7!H§[_loc2_] as §#-§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§7!H§[_loc2_] as §#-§).setActiveStatus(true);
                  if(this.§1!!§)
                  {
                     this.§8`§.x = (§7!H§[_loc2_] as §#-§).x + this.§?!,§;
                     this.§8`§.width = (§7!H§[_loc2_] as §#-§).width + this.§%9§;
                  }
                  if(this.§49§)
                  {
                     this.§8`§.y = (§7!H§[_loc2_] as §#-§).y + this.§`!-§;
                     this.§8`§.height = (§7!H§[_loc2_] as §#-§).height + this.§ I§;
                  }
               }
               else
               {
                  (§7!H§[_loc2_] as §#-§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§]h§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§;x§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§?!6§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §]h§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§#-§ = getItemByName(this.§2[§) as §#-§;
         if(_loc1_)
         {
            if(_loc1_.§^y§ > 0)
            {
               (getItemByName("Button_Scroll1") as §=^§).setComponentState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §=^§).setComponentState(§ use§.§?J§);
            }
            if(_loc1_.§^y§ < _loc1_.§!#§ - 1)
            {
               (getItemByName("Button_Scroll2") as §=^§).setComponentState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §=^§).setComponentState(§ use§.§?J§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §=^§).setComponentState(§ use§.§?J§);
            (getItemByName("Button_Scroll2") as §=^§).setComponentState(§ use§.§?J§);
         }
      }
      
      public function §><§() : void
      {
         var _loc2_:§#-§ = null;
         var _loc1_:int = §7!H§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §7!H§[_loc1_] as §#-§;
            if(_loc2_)
            {
               _loc2_.clear();
               §7!H§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§#V§("");
      }
      
      public function §]H§() : void
      {
         var _loc1_:§;x§ = null;
         for each(_loc1_ in this.§?!6§)
         {
            _loc1_.§]H§();
         }
      }
      
      public function §5>§() : Array
      {
         if(this.§>!H§(this.§2[§) == null)
         {
            §0!<§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§>!H§(this.§2[§).§1N§();
      }
      
      public function §0O§(param1:Array) : void
      {
         this.§>!H§(this.§2[§).§0O§(param1);
      }
      
      public function §!y§(param1:Number) : void
      {
         this.§>!H§(this.§2[§).§!y§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§!?§ = null;
         this.§?!6§ = null;
         this.§'n§ = null;
      }
   }
}
