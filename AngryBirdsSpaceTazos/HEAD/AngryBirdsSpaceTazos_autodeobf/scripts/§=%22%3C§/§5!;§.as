package §="<§
{
   import §,!M§.§ !;§;
   import §7!6§.§"!O§;
   import §7!6§.§-"4§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §`!w§.§^!$§;
   import com.rovio.assets.§1!h§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §5!;§ extends §,"$§
   {
      
      public static const §-j§:int = 0;
      
      public static const §5!r§:int = 1;
      
      public static const §@b§:int = 2;
       
      
      public var §^"A§:String;
      
      public var §]!U§:Class;
      
      public var §%9§:String = null;
      
      public var §2!]§:Vector.<§-"4§>;
      
      public var §0M§:int;
      
      public var § ]§:Number;
      
      public var §!"3§:Number;
      
      public var §?!I§:Number;
      
      public var §+R§:Number;
      
      public var §,!;§:Number;
      
      public var §&8§:Number;
      
      public var §@"0§:Number;
      
      public var §<"&§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §`0§:int;
      
      public var §-"#§:Number;
      
      public var §[t§:String = "";
      
      public var §@!6§:int;
      
      public var §9!l§:int;
      
      public var §'7§:GlowFilter;
      
      public var §<!2§:Boolean = true;
      
      public var §+G§:int;
      
      public var §%",§:int;
      
      public var §8F§:Number = 0;
      
      public var §1!T§:Number = 0;
      
      public var §'",§:Number = 0;
      
      public var §!!V§:Number = 0;
      
      public var §=c§:Boolean = false;
      
      public var §4!S§:Boolean = false;
      
      public var §2!S§:MovieClip = null;
      
      public function §5!;§(param1:XML, param2:§,"$§, param3:§ !;§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§^"A§ = param1.@button;
         if(this.§^"A§.length > 0)
         {
            this.§]!U§ = §1!h§.§4!D§(this.§^"A§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§%9§ = _loc5_;
         }
         this.§@!6§ = §-j§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§@!6§ = §5!r§;
            }
         }
         this.§9!l§ = §@b§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§9!l§ = §-j§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§'7§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §,[§.push(new §87§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §,[§.push(new §87§(_loc18_,this));
         }
         this.§ ]§ = mClip.getChildByName("Surface").x;
         this.§!"3§ = mClip.getChildByName("Surface").y;
         this.§?!I§ = mClip.getChildByName("Surface").width;
         this.§+R§ = mClip.getChildByName("Surface").height;
         this.§,!;§ = mClip.getChildByName("Button_Area1").x - this.§ ]§;
         this.§&8§ = mClip.getChildByName("Button_Area1").y - this.§!"3§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§ ]§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§!"3§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§-"#§ = _loc9_.bottom - this.§!"3§ - this.§&8§;
         this.§@"0§ = _loc7_ - this.§,!;§;
         this.§<"&§ = _loc8_ - this.§&8§;
         if(Math.abs(this.§@"0§) < 3)
         {
            this.§@"0§ = 0;
         }
         if(Math.abs(this.§<"&§) < 3)
         {
            this.§<"&§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§@"0§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§,!;§ - this.§,!;§) / this.§@"0§;
         }
         if(this.§<"&§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§&8§ - this.§&8§) / this.§<"&§;
         }
         this.§0M§ = Math.min(_loc10_,_loc11_);
         this.§<!2§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§+G§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§+G§ = this.§0M§;
         }
         this.§`0§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§ ]§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§!"3§;
            this.mButtonMarginX2 = _loc19_ - this.§,!;§;
            this.mButtonMarginY2 = _loc20_ - this.§&8§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§<!2§)
            {
               this.§`0§ = 1 + (mClip.getChildByName("Surface").height - this.§&8§ - this.§&8§) / this.mButtonMarginY2;
            }
            else
            {
               this.§`0§ = 1 + (mClip.getChildByName("Surface").width - this.§,!;§ - this.§,!;§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§2!S§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§'",§ = this.§2!S§.x - mClip.getChildByName("Surface").x;
            this.§!!V§ = this.§2!S§.y - mClip.getChildByName("Surface").y;
            this.§8F§ = this.§2!S§.x + this.§2!S§.width - (this.§2!S§.x + mClip.getChildByName("Surface").width);
            this.§1!T§ = this.§2!S§.y + this.§2!S§.height - (this.§2!S§.y + mClip.getChildByName("Surface").height);
            this.§=c§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§4!S§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§%",§ = §-"4§.§^"2§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§%",§ = §-"4§.§-!!§;
            }
         }
         this.§`"A§();
      }
      
      public function §`"A§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§&,§ = null;
         var _loc8_:§-"4§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§3p§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §3p§;
         }
         this.§2!]§ = new Vector.<§-"4§>();
         this.§]"8§();
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
            _loc7_ = new §&,§(_loc6_,this,null,_loc5_);
            §,[§.push(_loc7_);
            _loc8_ = new §-"4§(this.§%",§,_loc4_);
            this.§2!]§.push(_loc8_);
            _loc9_ = this.§,!;§;
            _loc10_ = this.§0M§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§9!l§ == §-j§)
            {
               _loc9_ = (this.§?!I§ - (_loc10_ - 1) * this.§@"0§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§,[§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§,[§.push(new param2(_loc12_,_loc7_,new this.§]!U§() as MovieClip));
               }
               _loc13_ = _loc7_.§,[§[_loc7_.§,[§.length - 1] as §3p§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§6![§(_loc14_,this.§%9§);
                  if(this.§@!6§ == §5!r§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§%9§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§`0§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§@"0§;
                  _loc13_.y = this.§&8§ + _loc11_ * this.§<"&§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§0M§ * this.§`0§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§0M§ * this.§`0§) / this.§0M§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§0M§ * this.§`0§) % this.§0M§;
                  if(this.§<!2§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§@"0§ + _loc16_ * this.§0M§ * this.§@"0§;
                     _loc13_.y = this.§&8§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§&8§ + _loc18_ * this.§<"&§ + _loc16_ * this.§0M§ * this.§<"&§;
                  }
               }
               _loc8_.§?5§(_loc13_);
               _loc11_++;
            }
            _loc8_.§=!$§("");
            _loc7_.§2!a§(this.§0M§,this.§ ]§,this.§!"3§,this.§+G§ * this.§@"0§,this.§+G§ * this.§<"&§,this.§`0§,this.§+G§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §"!P§() : int
      {
         return this.§0M§;
      }
      
      public function get §0;§() : int
      {
         if(this.§"!P§ == 0)
         {
            return 0;
         }
         return this.§'T§(this.§[t§).§;c§.length / this.§"!P§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§@Y§, param4:Event = null) : void
      {
         var _loc6_:§-"4§ = null;
         var _loc5_:§&,§ = getItemByName(this.§[t§) as §&,§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§1"'§(_loc5_.§=w§ - 1);
               this.§]"D§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§1"'§(_loc5_.§=w§ + 1);
               this.§]"D§();
            }
         }
         else if(param2.length > 0 && (param1 == §@Y§.LISTENER_EVENT_MOUSE_DOWN || param1 == §@Y§.LISTENER_EVENT_MOUSE_UP) && param3 is §"!O§)
         {
            if((_loc6_ = this.§'T§((param3 as §"!O§).mParentContainer.mName.toUpperCase())) && param3 is §3p§)
            {
               _loc6_.§=!$§((param3 as §"!O§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §?!Y§(param1:String, param2:int) : void
      {
         var _loc3_:§&,§ = getItemByName(param1) as §&,§;
         if(_loc3_)
         {
            _loc3_.§1"'§(param2);
            this.§]"D§();
         }
      }
      
      public function §'T§(param1:String) : §-"4§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!]§.length)
         {
            if(param1.toUpperCase() == (this.§2!]§[_loc2_] as §-"4§).mName.toUpperCase())
            {
               return this.§2!]§[_loc2_] as §-"4§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §]a§(param1:String) : void
      {
         this.§[t§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §,[§.length)
         {
            if(§,[§[_loc2_] is §&,§)
            {
               if((§,[§[_loc2_] as §&,§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§,[§[_loc2_] as §&,§).setActiveStatus(true);
                  if(this.§=c§)
                  {
                     this.§2!S§.x = (§,[§[_loc2_] as §&,§).x + this.§'",§;
                     this.§2!S§.width = (§,[§[_loc2_] as §&,§).width + this.§8F§;
                  }
                  if(this.§4!S§)
                  {
                     this.§2!S§.y = (§,[§[_loc2_] as §&,§).y + this.§!!V§;
                     this.§2!S§.height = (§,[§[_loc2_] as §&,§).height + this.§1!T§;
                  }
               }
               else
               {
                  (§,[§[_loc2_] as §&,§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§]"D§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§-"4§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§2!]§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §]"D§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§&,§ = getItemByName(this.§[t§) as §&,§;
         if(_loc1_)
         {
            if(_loc1_.§=w§ > 0)
            {
               (getItemByName("Button_Scroll1") as §87§).setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §87§).setComponentState(§^l§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§=w§ < _loc1_.§>"+§ - 1)
            {
               (getItemByName("Button_Scroll2") as §87§).setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §87§).setComponentState(§^l§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §87§).setComponentState(§^l§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §87§).setComponentState(§^l§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §]"8§() : void
      {
         var _loc2_:§&,§ = null;
         var _loc1_:int = §,[§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §,[§[_loc1_] as §&,§;
            if(_loc2_)
            {
               _loc2_.clear();
               §,[§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§]a§("");
      }
      
      public function §%!w§() : void
      {
         var _loc1_:§-"4§ = null;
         for each(_loc1_ in this.§2!]§)
         {
            _loc1_.§%!w§();
         }
      }
      
      public function §17§() : Array
      {
         if(this.§'T§(this.§[t§) == null)
         {
            §^!$§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§'T§(this.§[t§).§%!#§();
      }
      
      public function §%[§(param1:Array) : void
      {
         this.§'T§(this.§[t§).§%[§(param1);
      }
      
      public function §+p§(param1:Number) : void
      {
         this.§'T§(this.§[t§).§+p§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§]!U§ = null;
         this.§2!]§ = null;
         this.§'7§ = null;
      }
   }
}
