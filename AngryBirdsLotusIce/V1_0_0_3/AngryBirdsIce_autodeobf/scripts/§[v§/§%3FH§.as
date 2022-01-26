package §[v§
{
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import §`W§.§]g§;
   import §`W§.§`H§;
   import com.rovio.assets.§>D§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?H§ extends §&F§
   {
      
      public static const §?[§:int = 0;
      
      public static const § !+§:int = 1;
      
      public static const §[!'§:int = 2;
       
      
      public var §99§:String;
      
      public var §=!+§:Class;
      
      public var § !$§:String = null;
      
      public var §]l§:Vector.<§]g§>;
      
      public var §],§:int;
      
      public var §2u§:Number;
      
      public var §4!9§:Number;
      
      public var §?K§:Number;
      
      public var §3L§:Number;
      
      public var §;k§:Number;
      
      public var §3K§:Number;
      
      public var §+o§:Number;
      
      public var §;!!§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §%-§:int;
      
      public var §%!9§:Number;
      
      public var §&5§:String = "";
      
      public var §+r§:int;
      
      public var §1L§:int;
      
      public var §<o§:GlowFilter;
      
      public var §7!-§:Boolean = true;
      
      public var §@n§:int;
      
      public var §<2§:int;
      
      public var §4^§:Number = 0;
      
      public var §[;§:Number = 0;
      
      public var §0H§:Number = 0;
      
      public var §%!7§:Number = 0;
      
      public var §,!9§:Boolean = false;
      
      public var §^B§:Boolean = false;
      
      public var §>!4§:MovieClip = null;
      
      public function §?H§(param1:XML, param2:§&F§, param3:§#H§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§99§ = param1.@button;
         if(this.§99§.length > 0)
         {
            this.§=!+§ = §>D§.§`C§(this.§99§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§ !$§ = _loc5_;
         }
         this.§+r§ = §?[§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§+r§ = § !+§;
            }
         }
         this.§1L§ = §[!'§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§1L§ = §?[§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§<o§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §1I§.push(new §^P§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §1I§.push(new §^P§(_loc18_,this));
         }
         this.§2u§ = mClip.getChildByName("Surface").x;
         this.§4!9§ = mClip.getChildByName("Surface").y;
         this.§?K§ = mClip.getChildByName("Surface").width;
         this.§3L§ = mClip.getChildByName("Surface").height;
         this.§;k§ = mClip.getChildByName("Button_Area1").x - this.§2u§;
         this.§3K§ = mClip.getChildByName("Button_Area1").y - this.§4!9§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§2u§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§4!9§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§%!9§ = _loc9_.bottom - this.§4!9§ - this.§3K§;
         this.§+o§ = _loc7_ - this.§;k§;
         this.§;!!§ = _loc8_ - this.§3K§;
         if(Math.abs(this.§+o§) < 3)
         {
            this.§+o§ = 0;
         }
         if(Math.abs(this.§;!!§) < 3)
         {
            this.§;!!§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§+o§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§;k§ - this.§;k§) / this.§+o§;
         }
         if(this.§;!!§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§3K§ - this.§3K§) / this.§;!!§;
         }
         this.§],§ = Math.min(_loc10_,_loc11_);
         this.§7!-§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§@n§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§@n§ = this.§],§;
         }
         this.§%-§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§2u§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§4!9§;
            this.mButtonMarginX2 = _loc19_ - this.§;k§;
            this.mButtonMarginY2 = _loc20_ - this.§3K§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§7!-§)
            {
               this.§%-§ = 1 + (mClip.getChildByName("Surface").height - this.§3K§ - this.§3K§) / this.mButtonMarginY2;
            }
            else
            {
               this.§%-§ = 1 + (mClip.getChildByName("Surface").width - this.§;k§ - this.§;k§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§>!4§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§0H§ = this.§>!4§.x - mClip.getChildByName("Surface").x;
            this.§%!7§ = this.§>!4§.y - mClip.getChildByName("Surface").y;
            this.§4^§ = this.§>!4§.x + this.§>!4§.width - (this.§>!4§.x + mClip.getChildByName("Surface").width);
            this.§[;§ = this.§>!4§.y + this.§>!4§.height - (this.§>!4§.y + mClip.getChildByName("Surface").height);
            this.§,!9§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§^B§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§<2§ = §]g§.§0!E§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§<2§ = §]g§.§7!>§;
            }
         }
         this.§+!+§();
      }
      
      public function §+!+§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§4H§ = null;
         var _loc8_:§]g§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§[!#§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §[!#§;
         }
         this.§]l§ = new Vector.<§]g§>();
         this.§#`§();
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
            _loc7_ = new §4H§(_loc6_,this,null,_loc5_);
            §1I§.push(_loc7_);
            _loc8_ = new §]g§(this.§<2§,_loc4_);
            this.§]l§.push(_loc8_);
            _loc9_ = this.§;k§;
            _loc10_ = this.§],§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§1L§ == §?[§)
            {
               _loc9_ = (this.§?K§ - (_loc10_ - 1) * this.§+o§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§1I§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§1I§.push(new param2(_loc12_,_loc7_,new this.§=!+§() as MovieClip));
               }
               _loc13_ = _loc7_.§1I§[_loc7_.§1I§.length - 1] as §[!#§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§;f§(_loc14_,this.§ !$§);
                  if(this.§+r§ == § !+§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§ !$§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§%-§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§+o§;
                  _loc13_.y = this.§3K§ + _loc11_ * this.§;!!§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§],§ * this.§%-§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§],§ * this.§%-§) / this.§],§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§],§ * this.§%-§) % this.§],§;
                  if(this.§7!-§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§+o§ + _loc16_ * this.§],§ * this.§+o§;
                     _loc13_.y = this.§3K§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§3K§ + _loc18_ * this.§;!!§ + _loc16_ * this.§],§ * this.§;!!§;
                  }
               }
               _loc8_.§&Y§(_loc13_);
               _loc11_++;
            }
            _loc8_.§9?§("");
            _loc7_.§+!5§(this.§],§,this.§2u§,this.§4!9§,this.§@n§ * this.§+o§,this.§@n§ * this.§;!!§,this.§%-§,this.§@n§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §#!"§() : int
      {
         return this.§],§;
      }
      
      public function get §8!%§() : int
      {
         if(this.§#!"§ == 0)
         {
            return 0;
         }
         return this.§'R§(this.§&5§).§;t§.length / this.§#!"§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:§]g§ = null;
         var _loc4_:§4H§ = getItemByName(this.§&5§) as §4H§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§ T§(_loc4_.§!O§ - 1);
               this.§ o§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§ T§(_loc4_.§!O§ + 1);
               this.§ o§();
            }
         }
         else if(param2.length > 0 && (param1 == §-[§.LISTENER_EVENT_MOUSE_DOWN || param1 == §-[§.LISTENER_EVENT_MOUSE_UP) && param3 is §`H§)
         {
            if((_loc5_ = this.§'R§((param3 as §`H§).mParentContainer.mName.toUpperCase())) && param3 is §[!#§)
            {
               _loc5_.§9?§((param3 as §`H§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §18§(param1:String, param2:int) : void
      {
         var _loc3_:§4H§ = getItemByName(param1) as §4H§;
         if(_loc3_)
         {
            _loc3_.§ T§(param2);
            this.§ o§();
         }
      }
      
      public function §'R§(param1:String) : §]g§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]l§.length)
         {
            if(param1.toUpperCase() == (this.§]l§[_loc2_] as §]g§).mName.toUpperCase())
            {
               return this.§]l§[_loc2_] as §]g§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!! §(param1:String) : void
      {
         this.§&5§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §1I§.length)
         {
            if(§1I§[_loc2_] is §4H§)
            {
               if((§1I§[_loc2_] as §4H§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§1I§[_loc2_] as §4H§).setActiveStatus(true);
                  if(this.§,!9§)
                  {
                     this.§>!4§.x = (§1I§[_loc2_] as §4H§).x + this.§0H§;
                     this.§>!4§.width = (§1I§[_loc2_] as §4H§).width + this.§4^§;
                  }
                  if(this.§^B§)
                  {
                     this.§>!4§.y = (§1I§[_loc2_] as §4H§).y + this.§%!7§;
                     this.§>!4§.height = (§1I§[_loc2_] as §4H§).height + this.§[;§;
                  }
               }
               else
               {
                  (§1I§[_loc2_] as §4H§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§ o§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§]g§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§]l§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function § o§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§4H§ = getItemByName(this.§&5§) as §4H§;
         if(_loc1_)
         {
            if(_loc1_.§!O§ > 0)
            {
               (getItemByName("Button_Scroll1") as §^P§).setComponentState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §^P§).setComponentState(§<r§.§?!B§);
            }
            if(_loc1_.§!O§ < _loc1_.§>§ - 1)
            {
               (getItemByName("Button_Scroll2") as §^P§).setComponentState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §^P§).setComponentState(§<r§.§?!B§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §^P§).setComponentState(§<r§.§?!B§);
            (getItemByName("Button_Scroll2") as §^P§).setComponentState(§<r§.§?!B§);
         }
      }
      
      public function §#`§() : void
      {
         var _loc2_:§4H§ = null;
         var _loc1_:int = §1I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §1I§[_loc1_] as §4H§;
            if(_loc2_)
            {
               _loc2_.clear();
               §1I§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§!! §("");
      }
      
      public function §7n§() : void
      {
         var _loc1_:§]g§ = null;
         for each(_loc1_ in this.§]l§)
         {
            _loc1_.§7n§();
         }
      }
      
      public function §;2§() : Array
      {
         if(this.§'R§(this.§&5§) == null)
         {
            §3f§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§'R§(this.§&5§).§=%§();
      }
      
      public function §;X§(param1:Array) : void
      {
         this.§'R§(this.§&5§).§;X§(param1);
      }
      
      public function §`!1§(param1:Number) : void
      {
         this.§'R§(this.§&5§).§`!1§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§=!+§ = null;
         this.§]l§ = null;
         this.§<o§ = null;
      }
   }
}
