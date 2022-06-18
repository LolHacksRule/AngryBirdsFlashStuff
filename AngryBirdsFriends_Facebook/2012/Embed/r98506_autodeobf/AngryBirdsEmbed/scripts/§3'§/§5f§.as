package §3'§
{
   import §+n§.§&+§;
   import §+n§.§3P§;
   import §+n§.§6]§;
   import §+n§.§^!%§;
   import §-p§.§&2§;
   import §[R§.§5h§;
   import com.rovio.assets.§53§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §5f§ extends §8I§
   {
      
      public static const §,f§:int = 0;
      
      public static const §&]§:int = 1;
      
      public static const §4j§:int = 2;
       
      
      public var §+7§:String;
      
      public var §%l§:Class;
      
      public var § 9§:String = null;
      
      public var §`!G§:Vector.<§6]§>;
      
      public var §,g§:int;
      
      public var §4J§:Number;
      
      public var §,!I§:Number;
      
      public var §^;§:Number;
      
      public var §8`§:Number;
      
      public var §&o§:Number;
      
      public var §>o§:Number;
      
      public var §4=§:Number;
      
      public var §8?§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §`r§:int;
      
      public var §?C§:Number;
      
      public var §+A§:String = "";
      
      public var §6Z§:int;
      
      public var §?§:int;
      
      public var §[!A§:GlowFilter;
      
      public var §3_§:Boolean = true;
      
      public var §5!C§:int;
      
      public var §%'§:int;
      
      public var §!H§:Number = 0;
      
      public var §,1§:Number = 0;
      
      public var §9!A§:Number = 0;
      
      public var §`!7§:Number = 0;
      
      public var §;!G§:Boolean = false;
      
      public var §>S§:Boolean = false;
      
      public var §7?§:MovieClip = null;
      
      public function §5f§(param1:XML, param2:§8I§, param3:§5h§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§+7§ = param1.@button;
         if(this.§+7§.length > 0)
         {
            this.§%l§ = §53§.§[N§(this.§+7§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§ 9§ = _loc5_;
         }
         this.§6Z§ = §,f§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§6Z§ = §&]§;
            }
         }
         this.§?§ = §4j§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§?§ = §,f§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§[!A§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §&P§.push(new §5I§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §&P§.push(new §5I§(_loc18_,this));
         }
         this.§4J§ = mClip.getChildByName("Surface").x;
         this.§,!I§ = mClip.getChildByName("Surface").y;
         this.§^;§ = mClip.getChildByName("Surface").width;
         this.§8`§ = mClip.getChildByName("Surface").height;
         this.§&o§ = mClip.getChildByName("Button_Area1").x - this.§4J§;
         this.§>o§ = mClip.getChildByName("Button_Area1").y - this.§,!I§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§4J§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§,!I§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§?C§ = _loc9_.bottom - this.§,!I§ - this.§>o§;
         this.§4=§ = _loc7_ - this.§&o§;
         this.§8?§ = _loc8_ - this.§>o§;
         if(Math.abs(this.§4=§) < 3)
         {
            this.§4=§ = 0;
         }
         if(Math.abs(this.§8?§) < 3)
         {
            this.§8?§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§4=§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§&o§ - this.§&o§) / this.§4=§;
         }
         if(this.§8?§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§>o§ - this.§>o§) / this.§8?§;
         }
         this.§,g§ = Math.min(_loc10_,_loc11_);
         this.§3_§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§5!C§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§5!C§ = this.§,g§;
         }
         this.§`r§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§4J§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§,!I§;
            this.mButtonMarginX2 = _loc19_ - this.§&o§;
            this.mButtonMarginY2 = _loc20_ - this.§>o§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§3_§)
            {
               this.§`r§ = 1 + (mClip.getChildByName("Surface").height - this.§>o§ - this.§>o§) / this.mButtonMarginY2;
            }
            else
            {
               this.§`r§ = 1 + (mClip.getChildByName("Surface").width - this.§&o§ - this.§&o§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§7?§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§9!A§ = this.§7?§.x - mClip.getChildByName("Surface").x;
            this.§`!7§ = this.§7?§.y - mClip.getChildByName("Surface").y;
            this.§!H§ = this.§7?§.x + this.§7?§.width - (this.§7?§.x + mClip.getChildByName("Surface").width);
            this.§,1§ = this.§7?§.y + this.§7?§.height - (this.§7?§.y + mClip.getChildByName("Surface").height);
            this.§;!G§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§>S§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§%'§ = §6]§.§^l§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§%'§ = §6]§.§26§;
            }
         }
         this.§"]§();
      }
      
      public function §"]§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§'b§ = null;
         var _loc8_:§6]§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§#!$§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §#!$§;
         }
         this.§`!G§ = new Vector.<§6]§>();
         this.§>e§();
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
            _loc7_ = new §'b§(_loc6_,this,null,_loc5_);
            §&P§.push(_loc7_);
            _loc8_ = new §6]§(this.§%'§,_loc4_);
            this.§`!G§.push(_loc8_);
            _loc9_ = this.§&o§;
            _loc10_ = this.§,g§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§?§ == §,f§)
            {
               _loc9_ = (this.§^;§ - (_loc10_ - 1) * this.§4=§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§&P§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§&P§.push(new param2(_loc12_,_loc7_,new this.§%l§() as MovieClip));
               }
               _loc13_ = _loc7_.§&P§[_loc7_.§&P§.length - 1] as §#!$§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§9!9§(_loc14_,this.§ 9§);
                  if(this.§6Z§ == §&]§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§ 9§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§`r§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§4=§;
                  _loc13_.y = this.§>o§ + _loc11_ * this.§8?§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§,g§ * this.§`r§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§,g§ * this.§`r§) / this.§,g§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§,g§ * this.§`r§) % this.§,g§;
                  if(this.§3_§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§4=§ + _loc16_ * this.§,g§ * this.§4=§;
                     _loc13_.y = this.§>o§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§>o§ + _loc18_ * this.§8?§ + _loc16_ * this.§,g§ * this.§8?§;
                  }
               }
               _loc8_.§%D§(_loc13_);
               _loc11_++;
            }
            _loc8_.§`!>§("");
            _loc7_.§-P§(this.§,g§,this.§4J§,this.§,!I§,this.§5!C§ * this.§4=§,this.§5!C§ * this.§8?§,this.§`r§,this.§5!C§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §"K§() : int
      {
         return this.§,g§;
      }
      
      public function get §`<§() : int
      {
         if(this.§"K§ == 0)
         {
            return 0;
         }
         return this.§5-§(this.§+A§).§=?§.length / this.§"K§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§^!%§) : void
      {
         var _loc5_:§6]§ = null;
         var _loc4_:§'b§ = getItemByName(this.§+A§) as §'b§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§<5§(_loc4_.§+"§ - 1);
               this.§'!3§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§<5§(_loc4_.§+"§ + 1);
               this.§'!3§();
            }
         }
         else if(param2.length > 0 && (param1 == §^!%§.LISTENER_EVENT_MOUSE_DOWN || param1 == §^!%§.LISTENER_EVENT_MOUSE_UP) && param3 is §&+§)
         {
            if((_loc5_ = this.§5-§((param3 as §&+§).mParentContainer.mName.toUpperCase())) && param3 is §#!$§)
            {
               _loc5_.§`!>§((param3 as §&+§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §=!C§(param1:String, param2:int) : void
      {
         var _loc3_:§'b§ = getItemByName(param1) as §'b§;
         if(_loc3_)
         {
            _loc3_.§<5§(param2);
            this.§'!3§();
         }
      }
      
      public function §5-§(param1:String) : §6]§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!G§.length)
         {
            if(param1.toUpperCase() == (this.§`!G§[_loc2_] as §6]§).mName.toUpperCase())
            {
               return this.§`!G§[_loc2_] as §6]§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §@9§(param1:String) : void
      {
         this.§+A§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §&P§.length)
         {
            if(§&P§[_loc2_] is §'b§)
            {
               if((§&P§[_loc2_] as §'b§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§&P§[_loc2_] as §'b§).setActiveStatus(true);
                  if(this.§;!G§)
                  {
                     this.§7?§.x = (§&P§[_loc2_] as §'b§).x + this.§9!A§;
                     this.§7?§.width = (§&P§[_loc2_] as §'b§).width + this.§!H§;
                  }
                  if(this.§>S§)
                  {
                     this.§7?§.y = (§&P§[_loc2_] as §'b§).y + this.§`!7§;
                     this.§7?§.height = (§&P§[_loc2_] as §'b§).height + this.§,1§;
                  }
               }
               else
               {
                  (§&P§[_loc2_] as §'b§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§'!3§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§6]§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§`!G§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §'!3§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§'b§ = getItemByName(this.§+A§) as §'b§;
         if(_loc1_)
         {
            if(_loc1_.§+"§ > 0)
            {
               (getItemByName("Button_Scroll1") as §5I§).setComponentState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §5I§).setComponentState(§3P§.§;_§);
            }
            if(_loc1_.§+"§ < _loc1_.§;H§ - 1)
            {
               (getItemByName("Button_Scroll2") as §5I§).setComponentState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §5I§).setComponentState(§3P§.§;_§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §5I§).setComponentState(§3P§.§;_§);
            (getItemByName("Button_Scroll2") as §5I§).setComponentState(§3P§.§;_§);
         }
      }
      
      public function §>e§() : void
      {
         var _loc2_:§'b§ = null;
         var _loc1_:int = §&P§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §&P§[_loc1_] as §'b§;
            if(_loc2_)
            {
               _loc2_.clear();
               §&P§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§@9§("");
      }
      
      public function §,j§() : void
      {
         var _loc1_:§6]§ = null;
         for each(_loc1_ in this.§`!G§)
         {
            _loc1_.§,j§();
         }
      }
      
      public function §import§() : Array
      {
         if(this.§5-§(this.§+A§) == null)
         {
            §&2§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§5-§(this.§+A§).§`@§();
      }
      
      public function §7v§(param1:Array) : void
      {
         this.§5-§(this.§+A§).§7v§(param1);
      }
      
      public function § i§(param1:Number) : void
      {
         this.§5-§(this.§+A§).§ i§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§%l§ = null;
         this.§`!G§ = null;
         this.§[!A§ = null;
      }
   }
}
