package §'G§
{
   import §&N§.§@,§;
   import §-0§.§^a§;
   import §-M§.§3!6§;
   import §-V§.§,`§;
   import §-V§.§9d§;
   import §-V§.§@!$§;
   import §-V§.§@R§;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'!4§ extends §%!%§
   {
      
      public static const §"Z§:int = 0;
      
      public static const §%q§:int = 1;
      
      public static const §2!0§:int = 2;
       
      
      public var §<!C§:String;
      
      public var §%!9§:Class;
      
      public var §!!8§:String = null;
      
      public var §+s§:Array;
      
      public var §^w§:int;
      
      public var §&!2§:Number;
      
      public var §`!J§:Number;
      
      public var §[n§:Number;
      
      public var §#t§:Number;
      
      public var §'!2§:Number;
      
      public var §[!W§:Number;
      
      public var §@J§:Number;
      
      public var §`2§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §7Z§:int;
      
      public var § V§:Number;
      
      public var §;!K§:String = "";
      
      public var §0e§:int;
      
      public var §5!A§:int;
      
      public var §-t§:GlowFilter;
      
      public var §6?§:Boolean = true;
      
      public var §+!5§:int;
      
      public var §^!V§:int;
      
      public var §#!U§:Number = 0;
      
      public var §9l§:Number = 0;
      
      public var §%r§:Number = 0;
      
      public var §60§:Number = 0;
      
      public var §0!7§:Boolean = false;
      
      public var §<w§:Boolean = false;
      
      public var §6!0§:MovieClip = null;
      
      public function §'!4§(param1:XML, param2:§%!%§, param3:§3!6§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§<!C§ = param1.@button;
         if(this.§<!C§.length > 0)
         {
            this.§%!9§ = §^a§.§;x§(this.§<!C§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§!!8§ = _loc5_;
         }
         this.§0e§ = §"Z§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§0e§ = §%q§;
            }
         }
         this.§5!A§ = §2!0§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§5!A§ = §"Z§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§-t§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §%!&§[§%!&§.length] = new §false§(_loc17_,this);
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §%!&§[§%!&§.length] = new §false§(_loc18_,this);
         }
         this.§&!2§ = mClip.getChildByName("Surface").x;
         this.§`!J§ = mClip.getChildByName("Surface").y;
         this.§[n§ = mClip.getChildByName("Surface").width;
         this.§#t§ = mClip.getChildByName("Surface").height;
         this.§'!2§ = mClip.getChildByName("Button_Area1").x - this.§&!2§;
         this.§[!W§ = mClip.getChildByName("Button_Area1").y - this.§`!J§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§&!2§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§`!J§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§ V§ = _loc9_.bottom - this.§`!J§ - this.§[!W§;
         this.§@J§ = _loc7_ - this.§'!2§;
         this.§`2§ = _loc8_ - this.§[!W§;
         if(Math.abs(this.§@J§) < 3)
         {
            this.§@J§ = 0;
         }
         if(Math.abs(this.§`2§) < 3)
         {
            this.§`2§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§@J§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§'!2§ - this.§'!2§) / this.§@J§;
         }
         if(this.§`2§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§[!W§ - this.§[!W§) / this.§`2§;
         }
         this.§^w§ = Math.min(_loc10_,_loc11_);
         this.§6?§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§+!5§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§+!5§ = this.§^w§;
         }
         this.§7Z§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§&!2§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§`!J§;
            this.mButtonMarginX2 = _loc19_ - this.§'!2§;
            this.mButtonMarginY2 = _loc20_ - this.§[!W§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§6?§)
            {
               this.§7Z§ = 1 + (mClip.getChildByName("Surface").height - this.§[!W§ - this.§[!W§) / this.mButtonMarginY2;
            }
            else
            {
               this.§7Z§ = 1 + (mClip.getChildByName("Surface").width - this.§'!2§ - this.§'!2§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§6!0§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§%r§ = this.§6!0§.x - mClip.getChildByName("Surface").x;
            this.§60§ = this.§6!0§.y - mClip.getChildByName("Surface").y;
            this.§#!U§ = this.§6!0§.x + this.§6!0§.width - (this.§6!0§.x + mClip.getChildByName("Surface").width);
            this.§9l§ = this.§6!0§.y + this.§6!0§.height - (this.§6!0§.y + mClip.getChildByName("Surface").height);
            this.§0!7§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§<w§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§^!V§ = §,`§.§9S§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§^!V§ = §,`§.§1k§;
            }
         }
         this.§6!O§();
      }
      
      public function §6!O§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§for§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc12_:§#m§ = null;
         var _loc13_:MovieClip = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         if(param2 == null)
         {
            param2 = §#m§;
         }
         this.§+s§ = new Array();
         this.§%5§();
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
            §%!&§[§%!&§.length] = new §for§(_loc6_,this,null,_loc5_);
            _loc7_ = §%!&§[§%!&§.length - 1];
            this.§+s§[this.§+s§.length] = new §,`§(this.§^!V§,_loc4_);
            _loc8_ = this.§'!2§;
            _loc9_ = this.§^w§;
            if((param1[_loc3_] as Array).length < _loc9_)
            {
               _loc9_ = (param1[_loc3_] as Array).length;
            }
            if(this.§5!A§ == §"Z§)
            {
               _loc8_ = (this.§[n§ - (_loc9_ - 1) * this.§@J§) / 2;
            }
            _loc10_ = 0;
            while(_loc10_ < (param1[_loc3_] as Array).length)
            {
               _loc11_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[2])
               {
                  _loc7_.§%!&§[_loc7_.§%!&§.length] = new param2(_loc11_,_loc7_,((param1[_loc3_] as Array)[_loc10_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc7_.§%!&§[_loc7_.§%!&§.length] = new param2(_loc11_,_loc7_,new this.§%!9§() as MovieClip);
               }
               _loc12_ = _loc7_.§%!&§[_loc7_.§%!&§.length - 1];
               if(((param1[_loc3_] as Array)[_loc10_] as Array)[1] != null)
               {
                  _loc13_ = ((param1[_loc3_] as Array)[_loc10_] as Array)[1] as MovieClip;
                  _loc12_.§@u§(_loc13_,this.§!!8§);
                  if(this.§0e§ == §%q§)
                  {
                     _loc14_ = 2;
                     _loc13_.y -= _loc13_.height / 2;
                     if(this.§!!8§ == null)
                     {
                        _loc13_.y -= _loc14_;
                     }
                  }
               }
               if(this.§7Z§ == 1)
               {
                  _loc12_.x = _loc8_ + _loc10_ * this.§@J§;
                  _loc12_.y = this.§[!W§ + _loc10_ * this.§`2§;
               }
               else
               {
                  _loc15_ = _loc10_ / (this.§^w§ * this.§7Z§);
                  _loc16_ = (_loc10_ - _loc15_ * this.§^w§ * this.§7Z§) / this.§^w§;
                  _loc17_ = (_loc10_ - _loc15_ * this.§^w§ * this.§7Z§) % this.§^w§;
                  if(this.§6?§)
                  {
                     _loc12_.x = _loc8_ + _loc17_ * this.§@J§ + _loc15_ * this.§^w§ * this.§@J§;
                     _loc12_.y = this.§[!W§ + _loc16_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc12_.x = _loc8_ + _loc16_ * this.mButtonMarginX2;
                     _loc12_.y = this.§[!W§ + _loc17_ * this.§`2§ + _loc15_ * this.§^w§ * this.§`2§;
                  }
               }
               (this.§+s§[this.§+s§.length - 1] as §,`§).§>K§(_loc12_);
               _loc10_++;
            }
            (this.§+s§[this.§+s§.length - 1] as §,`§).§6!D§("");
            _loc7_.§,!"§(this.§^w§,this.§&!2§,this.§`!J§,this.§+!5§ * this.§@J§,this.§+!5§ * this.§`2§,this.§7Z§,this.§+!5§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §!!B§() : int
      {
         return this.§^w§;
      }
      
      public function get §[!"§() : int
      {
         if(this.§!!B§ == 0)
         {
            return 0;
         }
         return this.§>b§(this.§;!K§).§?n§.length / this.§!!B§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§@R§) : void
      {
         var _loc5_:§,`§ = null;
         var _loc4_:§for§ = getItemByName(this.§;!K§) as §for§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§8!N§(_loc4_.§&@§ - 1);
               this.§&-§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§8!N§(_loc4_.§&@§ + 1);
               this.§&-§();
            }
         }
         else if(param2.length > 0 && (param1 == §@R§.LISTENER_EVENT_MOUSE_DOWN || param1 == §@R§.LISTENER_EVENT_MOUSE_UP) && param3 is §@!$§)
         {
            if((_loc5_ = this.§>b§((param3 as §@!$§).mParentContainer.mName.toUpperCase())) && param3 is §#m§)
            {
               _loc5_.§6!D§((param3 as §@!$§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §6n§(param1:String, param2:int) : void
      {
         var _loc3_:§for§ = getItemByName(param1) as §for§;
         if(_loc3_)
         {
            _loc3_.§8!N§(param2);
            this.§&-§();
         }
      }
      
      public function §>b§(param1:String) : §,`§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+s§.length)
         {
            if(param1.toUpperCase() == (this.§+s§[_loc2_] as §,`§).mName.toUpperCase())
            {
               return this.§+s§[_loc2_] as §,`§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §=f§(param1:String) : void
      {
         this.§;!K§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §%!&§.length)
         {
            if(§%!&§[_loc2_] is §for§)
            {
               if((§%!&§[_loc2_] as §for§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§%!&§[_loc2_] as §for§).setActiveStatus(true);
                  if(this.§0!7§)
                  {
                     this.§6!0§.x = (§%!&§[_loc2_] as §for§).x + this.§%r§;
                     this.§6!0§.width = (§%!&§[_loc2_] as §for§).width + this.§#!U§;
                  }
                  if(this.§<w§)
                  {
                     this.§6!0§.y = (§%!&§[_loc2_] as §for§).y + this.§60§;
                     this.§6!0§.height = (§%!&§[_loc2_] as §for§).height + this.§9l§;
                  }
               }
               else
               {
                  (§%!&§[_loc2_] as §for§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§&-§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§,`§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§+s§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §&-§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§for§ = getItemByName(this.§;!K§) as §for§;
         if(_loc1_)
         {
            if(_loc1_.§&@§ > 0)
            {
               (getItemByName("Button_Scroll1") as §false§).setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §false§).setComponentState(§9d§.§^#§);
            }
            if(_loc1_.§&@§ < _loc1_.§<u§ - 1)
            {
               (getItemByName("Button_Scroll2") as §false§).setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §false§).setComponentState(§9d§.§^#§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §false§).setComponentState(§9d§.§^#§);
            (getItemByName("Button_Scroll2") as §false§).setComponentState(§9d§.§^#§);
         }
      }
      
      public function §%5§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §%!&§.length)
         {
            if(§%!&§[_loc1_] is §for§)
            {
               (§%!&§[_loc1_] as §for§).clear();
               §%!&§.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.§=f§("");
      }
      
      public function §^F§() : void
      {
         var _loc1_:§,`§ = null;
         for each(_loc1_ in this.§+s§)
         {
            _loc1_.§^F§();
         }
      }
      
      public function §&!+§() : Array
      {
         if(this.§>b§(this.§;!K§) == null)
         {
            §@,§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§>b§(this.§;!K§).§15§();
      }
      
      public function §]!<§(param1:Array) : void
      {
         this.§>b§(this.§;!K§).§]!<§(param1);
      }
      
      public function §4z§(param1:Number) : void
      {
         this.§>b§(this.§;!K§).§4z§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§%!9§ = null;
         this.§+s§ = null;
         this.§-t§ = null;
      }
   }
}
