package §,j§
{
   import § !G§.§ #§;
   import §0F§.§'j§;
   import §1!K§.§<!I§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §1§.§;d§;
   import §1§.§`!Y§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'G§ extends §1-§
   {
      
      public static const §"l§:int = 0;
      
      public static const §3!D§:int = 1;
      
      public static const §"!7§:int = 2;
       
      
      public var §]0§:String;
      
      public var §82§:Class;
      
      public var §5>§:String = null;
      
      public var §&-§:Vector.<§`!Y§>;
      
      public var §25§:int;
      
      public var §?k§:Number;
      
      public var §!`§:Number;
      
      public var §^!9§:Number;
      
      public var §5-§:Number;
      
      public var §?!6§:Number;
      
      public var §@p§:Number;
      
      public var §;!@§:Number;
      
      public var §]D§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §9&§:int;
      
      public var §#c§:Number;
      
      public var §2d§:String = "";
      
      public var §1!&§:int;
      
      public var §;!§:int;
      
      public var §'!D§:GlowFilter;
      
      public var §=!F§:Boolean = true;
      
      public var § M§:int;
      
      public var §0!<§:int;
      
      public var §8!L§:Number = 0;
      
      public var §?]§:Number = 0;
      
      public var §;r§:Number = 0;
      
      public var §^!]§:Number = 0;
      
      public var §8!,§:Boolean = false;
      
      public var §]+§:Boolean = false;
      
      public var §-F§:MovieClip = null;
      
      public function §'G§(param1:XML, param2:§1-§, param3:§'j§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§]0§ = param1.@button;
         if(this.§]0§.length > 0)
         {
            this.§82§ = §<!I§.§;!U§(this.§]0§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§5>§ = _loc5_;
         }
         this.§1!&§ = §"l§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§1!&§ = §3!D§;
            }
         }
         this.§;!§ = §"!7§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§;!§ = §"l§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§'!D§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §%o§.push(new §0!@§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §%o§.push(new §0!@§(_loc18_,this));
         }
         this.§?k§ = mClip.getChildByName("Surface").x;
         this.§!`§ = mClip.getChildByName("Surface").y;
         this.§^!9§ = mClip.getChildByName("Surface").width;
         this.§5-§ = mClip.getChildByName("Surface").height;
         this.§?!6§ = mClip.getChildByName("Button_Area1").x - this.§?k§;
         this.§@p§ = mClip.getChildByName("Button_Area1").y - this.§!`§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§?k§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§!`§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§#c§ = _loc9_.bottom - this.§!`§ - this.§@p§;
         this.§;!@§ = _loc7_ - this.§?!6§;
         this.§]D§ = _loc8_ - this.§@p§;
         if(Math.abs(this.§;!@§) < 3)
         {
            this.§;!@§ = 0;
         }
         if(Math.abs(this.§]D§) < 3)
         {
            this.§]D§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§;!@§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§?!6§ - this.§?!6§) / this.§;!@§;
         }
         if(this.§]D§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§@p§ - this.§@p§) / this.§]D§;
         }
         this.§25§ = Math.min(_loc10_,_loc11_);
         this.§=!F§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§ M§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§ M§ = this.§25§;
         }
         this.§9&§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§?k§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§!`§;
            this.mButtonMarginX2 = _loc19_ - this.§?!6§;
            this.mButtonMarginY2 = _loc20_ - this.§@p§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§=!F§)
            {
               this.§9&§ = 1 + (mClip.getChildByName("Surface").height - this.§@p§ - this.§@p§) / this.mButtonMarginY2;
            }
            else
            {
               this.§9&§ = 1 + (mClip.getChildByName("Surface").width - this.§?!6§ - this.§?!6§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§-F§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§;r§ = this.§-F§.x - mClip.getChildByName("Surface").x;
            this.§^!]§ = this.§-F§.y - mClip.getChildByName("Surface").y;
            this.§8!L§ = this.§-F§.x + this.§-F§.width - (this.§-F§.x + mClip.getChildByName("Surface").width);
            this.§?]§ = this.§-F§.y + this.§-F§.height - (this.§-F§.y + mClip.getChildByName("Surface").height);
            this.§8!,§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§]+§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§0!<§ = §`!Y§.§><§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§0!<§ = §`!Y§.§5A§;
            }
         }
         this.§=Y§();
      }
      
      public function §=Y§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§4d§ = null;
         var _loc8_:§`!Y§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§"!F§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §"!F§;
         }
         this.§&-§ = new Vector.<§`!Y§>();
         this.§>0§();
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
            _loc7_ = new §4d§(_loc6_,this,null,_loc5_);
            §%o§.push(_loc7_);
            _loc8_ = new §`!Y§(this.§0!<§,_loc4_);
            this.§&-§.push(_loc8_);
            _loc9_ = this.§?!6§;
            _loc10_ = this.§25§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§;!§ == §"l§)
            {
               _loc9_ = (this.§^!9§ - (_loc10_ - 1) * this.§;!@§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§%o§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§%o§.push(new param2(_loc12_,_loc7_,new this.§82§() as MovieClip));
               }
               _loc13_ = _loc7_.§%o§[_loc7_.§%o§.length - 1] as §"!F§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§3!V§(_loc14_,this.§5>§);
                  if(this.§1!&§ == §3!D§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§5>§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§9&§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§;!@§;
                  _loc13_.y = this.§@p§ + _loc11_ * this.§]D§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§25§ * this.§9&§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§25§ * this.§9&§) / this.§25§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§25§ * this.§9&§) % this.§25§;
                  if(this.§=!F§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§;!@§ + _loc16_ * this.§25§ * this.§;!@§;
                     _loc13_.y = this.§@p§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§@p§ + _loc18_ * this.§]D§ + _loc16_ * this.§25§ * this.§]D§;
                  }
               }
               _loc8_.§]n§(_loc13_);
               _loc11_++;
            }
            _loc8_.§[N§("");
            _loc7_.§#!0§(this.§25§,this.§?k§,this.§!`§,this.§ M§ * this.§;!@§,this.§ M§ * this.§]D§,this.§9&§,this.§ M§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §!!&§() : int
      {
         return this.§25§;
      }
      
      public function get §"&§() : int
      {
         if(this.§!!&§ == 0)
         {
            return 0;
         }
         return this.§%2§(this.§2d§).§^k§.length / this.§!!&§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc5_:§`!Y§ = null;
         var _loc4_:§4d§ = getItemByName(this.§2d§) as §4d§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§&i§(_loc4_.§[H§ - 1);
               this.§&'§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§&i§(_loc4_.§[H§ + 1);
               this.§&'§();
            }
         }
         else if(param2.length > 0 && (param1 == §'n§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'n§.LISTENER_EVENT_MOUSE_UP) && param3 is §;d§)
         {
            if((_loc5_ = this.§%2§((param3 as §;d§).mParentContainer.mName.toUpperCase())) && param3 is §"!F§)
            {
               _loc5_.§[N§((param3 as §;d§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §6I§(param1:String, param2:int) : void
      {
         var _loc3_:§4d§ = getItemByName(param1) as §4d§;
         if(_loc3_)
         {
            _loc3_.§&i§(param2);
            this.§&'§();
         }
      }
      
      public function §%2§(param1:String) : §`!Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&-§.length)
         {
            if(param1.toUpperCase() == (this.§&-§[_loc2_] as §`!Y§).mName.toUpperCase())
            {
               return this.§&-§[_loc2_] as §`!Y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §=s§(param1:String) : void
      {
         this.§2d§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §%o§.length)
         {
            if(§%o§[_loc2_] is §4d§)
            {
               if((§%o§[_loc2_] as §4d§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§%o§[_loc2_] as §4d§).setActiveStatus(true);
                  if(this.§8!,§)
                  {
                     this.§-F§.x = (§%o§[_loc2_] as §4d§).x + this.§;r§;
                     this.§-F§.width = (§%o§[_loc2_] as §4d§).width + this.§8!L§;
                  }
                  if(this.§]+§)
                  {
                     this.§-F§.y = (§%o§[_loc2_] as §4d§).y + this.§^!]§;
                     this.§-F§.height = (§%o§[_loc2_] as §4d§).height + this.§?]§;
                  }
               }
               else
               {
                  (§%o§[_loc2_] as §4d§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§&'§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§`!Y§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§&-§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §&'§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§4d§ = getItemByName(this.§2d§) as §4d§;
         if(_loc1_)
         {
            if(_loc1_.§[H§ > 0)
            {
               (getItemByName("Button_Scroll1") as §0!@§).setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §0!@§).setComponentState(§&!3§.§#!$§);
            }
            if(_loc1_.§[H§ < _loc1_.§3b§ - 1)
            {
               (getItemByName("Button_Scroll2") as §0!@§).setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §0!@§).setComponentState(§&!3§.§#!$§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §0!@§).setComponentState(§&!3§.§#!$§);
            (getItemByName("Button_Scroll2") as §0!@§).setComponentState(§&!3§.§#!$§);
         }
      }
      
      public function §>0§() : void
      {
         var _loc2_:§4d§ = null;
         var _loc1_:int = §%o§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §%o§[_loc1_] as §4d§;
            if(_loc2_)
            {
               _loc2_.clear();
               §%o§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§=s§("");
      }
      
      public function §<Z§() : void
      {
         var _loc1_:§`!Y§ = null;
         for each(_loc1_ in this.§&-§)
         {
            _loc1_.§<Z§();
         }
      }
      
      public function §4X§() : Array
      {
         if(this.§%2§(this.§2d§) == null)
         {
            § #§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§%2§(this.§2d§).§2R§();
      }
      
      public function § b§(param1:Array) : void
      {
         this.§%2§(this.§2d§).§ b§(param1);
      }
      
      public function §'!Q§(param1:Number) : void
      {
         this.§%2§(this.§2d§).§'!Q§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§82§ = null;
         this.§&-§ = null;
         this.§'!D§ = null;
      }
   }
}
