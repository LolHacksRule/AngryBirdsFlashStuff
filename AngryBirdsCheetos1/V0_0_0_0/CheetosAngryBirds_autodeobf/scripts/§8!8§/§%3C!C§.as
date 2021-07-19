package §8!8§
{
   import §+?§.§,!N§;
   import §0v§.§-'§;
   import §@,§.§4h§;
   import §@R§.§']§;
   import §@R§.§<d§;
   import §@R§.§?n§;
   import §@R§.§]^§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §<!C§ extends §4!C§
   {
      
      public static const §@!E§:int = 0;
      
      public static const §"Z§:int = 1;
      
      public static const §2J§:int = 2;
       
      
      public var §%!9§:String;
      
      public var §!!8§:Class;
      
      public var §+s§:String = null;
      
      public var §^w§:Array;
      
      public var §&!2§:int;
      
      public var §`!J§:Number;
      
      public var §[n§:Number;
      
      public var §#t§:Number;
      
      public var §'!2§:Number;
      
      public var §[!W§:Number;
      
      public var §@J§:Number;
      
      public var §`2§:Number;
      
      public var §7Z§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var § V§:int;
      
      public var §;!K§:Number;
      
      public var §0e§:String = "";
      
      public var §5!A§:int;
      
      public var §-t§:int;
      
      public var §6?§:GlowFilter;
      
      public var §+!5§:Boolean = true;
      
      public var §^!V§:int;
      
      public var §#!U§:int;
      
      public var §9l§:Number = 0;
      
      public var §%r§:Number = 0;
      
      public var §60§:Number = 0;
      
      public var §0!7§:Number = 0;
      
      public var §<w§:Boolean = false;
      
      public var §6!0§:Boolean = false;
      
      public var §6!O§:MovieClip = null;
      
      public function §<!C§(param1:XML, param2:§4!C§, param3:§,!N§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§%!9§ = param1.@button;
         if(this.§%!9§.length > 0)
         {
            this.§!!8§ = §-'§.§]`§(this.§%!9§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§+s§ = _loc5_;
         }
         this.§5!A§ = §@!E§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§5!A§ = §"Z§;
            }
         }
         this.§-t§ = §2J§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§-t§ = §@!E§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§6?§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §@k§[§@k§.length] = new §+!M§(_loc17_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §@k§[§@k§.length] = new §+!M§(_loc18_,this);
         }
         this.§`!J§ = mClip.getChildByName("Surface").x;
         this.§[n§ = mClip.getChildByName("Surface").y;
         this.§#t§ = mClip.getChildByName("Surface").width;
         this.§'!2§ = mClip.getChildByName("Surface").height;
         this.§[!W§ = mClip.getChildByName("Button_Area1").x - this.§`!J§;
         this.§@J§ = mClip.getChildByName("Button_Area1").y - this.§[n§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§`!J§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§[n§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§;!K§ = _loc9_.bottom - this.§[n§ - this.§@J§;
         this.§`2§ = _loc7_ - this.§[!W§;
         this.§7Z§ = _loc8_ - this.§@J§;
         if(Math.abs(this.§`2§) < 3)
         {
            this.§`2§ = 0;
         }
         if(Math.abs(this.§7Z§) < 3)
         {
            this.§7Z§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§`2§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§[!W§ - this.§[!W§) / this.§`2§;
         }
         if(this.§7Z§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§@J§ - this.§@J§) / this.§7Z§;
         }
         this.§&!2§ = Math.min(_loc10_,_loc11_);
         this.§+!5§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§^!V§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§^!V§ = this.§&!2§;
         }
         this.§ V§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§`!J§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§[n§;
            this.mButtonMarginX2 = _loc19_ - this.§[!W§;
            this.mButtonMarginY2 = _loc20_ - this.§@J§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§+!5§)
            {
               this.§ V§ = 1 + (mClip.getChildByName("Surface").height - this.§@J§ - this.§@J§) / this.mButtonMarginY2;
            }
            else
            {
               this.§ V§ = 1 + (mClip.getChildByName("Surface").width - this.§[!W§ - this.§[!W§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§6!O§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§60§ = this.§6!O§.x - mClip.getChildByName("Surface").x;
            this.§0!7§ = this.§6!O§.y - mClip.getChildByName("Surface").y;
            this.§9l§ = this.§6!O§.x + this.§6!O§.width - (this.§6!O§.x + mClip.getChildByName("Surface").width);
            this.§%r§ = this.§6!O§.y + this.§6!O§.height - (this.§6!O§.y + mClip.getChildByName("Surface").height);
            this.§<w§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§6!0§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§#!U§ = §?n§.§>!V§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§#!U§ = §?n§.§9S§;
            }
         }
         this.§!!B§();
      }
      
      public function §!!B§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§<u§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:§?6§ = null;
         var _loc13_:MovieClip = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         if(param2 == null)
         {
            param2 = §?6§;
         }
         this.§^w§ = new Array();
         this.§&!+§();
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
            §@k§[§@k§.length] = new §<u§(_loc6_,this,null,_loc5_);
            _loc7_ = §@k§[§@k§.length - 1];
            this.§^w§[this.§^w§.length] = new §?n§(this.§#!U§,_loc4_);
            _loc8_ = this.§[!W§;
            _loc9_ = this.§&!2§;
            if((param1[_loc3_] as Array).length < _loc9_)
            {
               _loc9_ = (param1[_loc3_] as Array).length;
            }
            if(this.§-t§ == §@!E§)
            {
               _loc8_ = (this.§#t§ - (_loc9_ - 1) * this.§`2§) / 2;
            }
            _loc10_ = 0;
            while(_loc10_ < (param1[_loc3_] as Array).length)
            {
               _loc11_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[2])
               {
                  _loc7_.§@k§[_loc7_.§@k§.length] = new param2(_loc11_,_loc7_,((param1[_loc3_] as Array)[_loc10_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc7_.§@k§[_loc7_.§@k§.length] = new param2(_loc11_,_loc7_,new this.§!!8§() as MovieClip);
               }
               _loc12_ = _loc7_.§@k§[_loc7_.§@k§.length - 1];
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[1] != null)
               {
                  _loc13_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[1] as MovieClip;
                  _loc12_.§'!4§(_loc13_,this.§+s§);
                  if(this.§5!A§ == §"Z§)
                  {
                     _loc14_ = 2;
                     _loc13_.y -= _loc13_.height / 2;
                     if(this.§+s§ == null)
                     {
                        _loc13_.y -= _loc14_;
                     }
                  }
               }
               if(this.§ V§ == 1)
               {
                  _loc12_.x = _loc8_ + _loc10_ * this.§`2§;
                  _loc12_.y = this.§@J§ + _loc10_ * this.§7Z§;
               }
               else
               {
                  _loc15_ = _loc10_ / (this.§&!2§ * this.§ V§);
                  _loc16_ = (_loc10_ - _loc15_ * this.§&!2§ * this.§ V§) / this.§&!2§;
                  _loc17_ = (_loc10_ - _loc15_ * this.§&!2§ * this.§ V§) % this.§&!2§;
                  if(this.§+!5§)
                  {
                     _loc12_.x = _loc8_ + _loc17_ * this.§`2§ + _loc15_ * this.§&!2§ * this.§`2§;
                     _loc12_.y = this.§@J§ + _loc16_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc12_.x = _loc8_ + _loc16_ * this.mButtonMarginX2;
                     _loc12_.y = this.§@J§ + _loc17_ * this.§7Z§ + _loc15_ * this.§&!2§ * this.§7Z§;
                  }
               }
               (this.§^w§[this.§^w§.length - 1] as §?n§).§6!D§(_loc12_);
               _loc10_++;
            }
            (this.§^w§[this.§^w§.length - 1] as §?n§).§^F§("");
            _loc7_.§8!N§(this.§&!2§,this.§`!J§,this.§[n§,this.§^!V§ * this.§`2§,this.§^!V§ * this.§7Z§,this.§ V§,this.§^!V§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §[!"§() : int
      {
         return this.§&!2§;
      }
      
      public function get §6n§() : int
      {
         if(this.§[!"§ == 0)
         {
            return 0;
         }
         return this.§=f§(this.§0e§).§3a§.length / this.§[!"§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc5_:§?n§ = null;
         var _loc4_:§<u§ = getItemByName(this.§0e§) as §<u§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§2!N§(_loc4_.§7!3§ - 1);
               this.§%5§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§2!N§(_loc4_.§7!3§ + 1);
               this.§%5§();
            }
         }
         else if(param2.length > 0 && (param1 == §]^§.LISTENER_EVENT_MOUSE_DOWN || param1 == §]^§.LISTENER_EVENT_MOUSE_UP) && param3 is §']§)
         {
            if((_loc5_ = this.§=f§((param3 as §']§).mParentContainer.mName.toUpperCase())) && param3 is §?6§)
            {
               _loc5_.§^F§((param3 as §']§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §>b§(param1:String, param2:int) : void
      {
         var _loc3_:§<u§ = getItemByName(param1) as §<u§;
         if(_loc3_)
         {
            _loc3_.§2!N§(param2);
            this.§%5§();
         }
      }
      
      public function §=f§(param1:String) : §?n§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^w§.length)
         {
            if(param1.toUpperCase() == (this.§^w§[_loc2_] as §?n§).mName.toUpperCase())
            {
               return this.§^w§[_loc2_] as §?n§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&-§(param1:String) : void
      {
         this.§0e§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §@k§.length)
         {
            if(§@k§[_loc2_] is §<u§)
            {
               if((§@k§[_loc2_] as §<u§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§@k§[_loc2_] as §<u§).setActiveStatus(true);
                  if(this.§<w§)
                  {
                     this.§6!O§.x = (§@k§[_loc2_] as §<u§).x + this.§60§;
                     this.§6!O§.width = (§@k§[_loc2_] as §<u§).width + this.§9l§;
                  }
                  if(this.§6!0§)
                  {
                     this.§6!O§.y = (§@k§[_loc2_] as §<u§).y + this.§0!7§;
                     this.§6!O§.height = (§@k§[_loc2_] as §<u§).height + this.§%r§;
                  }
               }
               else
               {
                  (§@k§[_loc2_] as §<u§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§%5§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§?n§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§^w§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §%5§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§<u§ = getItemByName(this.§0e§) as §<u§;
         if(_loc1_)
         {
            if(_loc1_.§7!3§ > 0)
            {
               (getItemByName("Button_Scroll1") as §+!M§).setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §+!M§).setComponentState(§<d§.§%^§);
            }
            if(_loc1_.§7!3§ < _loc1_.§?!V§ - 1)
            {
               (getItemByName("Button_Scroll2") as §+!M§).setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §+!M§).setComponentState(§<d§.§%^§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §+!M§).setComponentState(§<d§.§%^§);
            (getItemByName("Button_Scroll2") as §+!M§).setComponentState(§<d§.§%^§);
         }
      }
      
      public function §&!+§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §@k§.length)
         {
            if(§@k§[_loc1_] is §<u§)
            {
               (§@k§[_loc1_] as §<u§).clear();
               §@k§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§&-§("");
      }
      
      public function §4z§() : void
      {
         var _loc1_:§?n§ = null;
         for each(_loc1_ in this.§^w§)
         {
            _loc1_.§4z§();
         }
      }
      
      public function §6%§() : Array
      {
         if(this.§=f§(this.§0e§) == null)
         {
            §4h§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§=f§(this.§0e§).§1k§();
      }
      
      public function §15§(param1:Array) : void
      {
         this.§=f§(this.§0e§).§15§(param1);
      }
      
      public function §]!<§(param1:Number) : void
      {
         this.§=f§(this.§0e§).§]!<§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§!!8§ = null;
         this.§^w§ = null;
         this.§6?§ = null;
      }
   }
}
