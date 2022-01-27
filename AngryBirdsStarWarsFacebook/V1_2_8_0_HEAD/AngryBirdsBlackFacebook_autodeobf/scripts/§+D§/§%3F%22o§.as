package §+D§
{
   import §5t§.Log;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §;"Y§.§]!i§;
   import §;"Y§.§]#X§;
   import com.rovio.assets.§5_§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?"o§ extends § #^§
   {
      
      public static const §'"$§:int = 0;
      
      public static const §%P§:int = 1;
      
      public static const §7"@§:int = 2;
       
      
      public var §7#;§:String;
      
      public var §2!+§:Class;
      
      public var §2"!§:String = null;
      
      public var §0#A§:Vector.<§]!i§>;
      
      public var §=n§:int;
      
      public var §1#J§:Number;
      
      public var §9&§:Number;
      
      public var §%2§:Number;
      
      public var §>$§:Number;
      
      public var §^!0§:Number;
      
      public var §!"0§:Number;
      
      public var §0#7§:Number;
      
      public var §6"o§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var § !<§:int;
      
      public var §2!E§:Number;
      
      public var §2",§:String = "";
      
      public var §?!Y§:int;
      
      public var §4#W§:int;
      
      public var §+""§:GlowFilter;
      
      public var §#,§:Boolean = true;
      
      public var §^!;§:int;
      
      public var §1"$§:int;
      
      public var §'!F§:Number = 0;
      
      public var §["F§:Number = 0;
      
      public var §""r§:Number = 0;
      
      public var §?"U§:Number = 0;
      
      public var §0#&§:Boolean = false;
      
      public var §?#[§:Boolean = false;
      
      public var §7?§:MovieClip = null;
      
      public function §?"o§(param1:XML, param2:§ #^§, param3:§]#[§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§7#;§ = param1.@button;
         if(this.§7#;§.length > 0)
         {
            this.§2!+§ = §5_§.§`"G§(this.§7#;§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§2"!§ = _loc5_;
         }
         this.§?!Y§ = §'"$§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§?!Y§ = §%P§;
            }
         }
         this.§4#W§ = §7"@§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§4#W§ = §'"$§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§+""§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §%"u§.push(new §^"m§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §%"u§.push(new §^"m§(_loc18_,this));
         }
         this.§1#J§ = mClip.getChildByName("Surface").x;
         this.§9&§ = mClip.getChildByName("Surface").y;
         this.§%2§ = mClip.getChildByName("Surface").width;
         this.§>$§ = mClip.getChildByName("Surface").height;
         this.§^!0§ = mClip.getChildByName("Button_Area1").x - this.§1#J§;
         this.§!"0§ = mClip.getChildByName("Button_Area1").y - this.§9&§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§1#J§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§9&§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§2!E§ = _loc9_.bottom - this.§9&§ - this.§!"0§;
         this.§0#7§ = _loc7_ - this.§^!0§;
         this.§6"o§ = _loc8_ - this.§!"0§;
         if(Math.abs(this.§0#7§) < 3)
         {
            this.§0#7§ = 0;
         }
         if(Math.abs(this.§6"o§) < 3)
         {
            this.§6"o§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§0#7§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§^!0§ - this.§^!0§) / this.§0#7§;
         }
         if(this.§6"o§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§!"0§ - this.§!"0§) / this.§6"o§;
         }
         this.§=n§ = Math.min(_loc10_,_loc11_);
         this.§#,§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§^!;§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§^!;§ = this.§=n§;
         }
         this.§ !<§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§1#J§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§9&§;
            this.mButtonMarginX2 = _loc19_ - this.§^!0§;
            this.mButtonMarginY2 = _loc20_ - this.§!"0§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§#,§)
            {
               this.§ !<§ = 1 + (mClip.getChildByName("Surface").height - this.§!"0§ - this.§!"0§) / this.mButtonMarginY2;
            }
            else
            {
               this.§ !<§ = 1 + (mClip.getChildByName("Surface").width - this.§^!0§ - this.§^!0§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§7?§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§""r§ = this.§7?§.x - mClip.getChildByName("Surface").x;
            this.§?"U§ = this.§7?§.y - mClip.getChildByName("Surface").y;
            this.§'!F§ = this.§7?§.x + this.§7?§.width - (this.§7?§.x + mClip.getChildByName("Surface").width);
            this.§["F§ = this.§7?§.y + this.§7?§.height - (this.§7?§.y + mClip.getChildByName("Surface").height);
            this.§0#&§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§?#[§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§1"$§ = §]!i§.§8#V§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§1"$§ = §]!i§.§7"J§;
            }
         }
         this.§2!_§();
      }
      
      public function §2!_§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§5"h§ = null;
         var _loc8_:§]!i§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§&E§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §&E§;
         }
         this.§0#A§ = new Vector.<§]!i§>();
         this.§7Q§();
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
            _loc7_ = new §5"h§(_loc6_,this,null,_loc5_);
            §%"u§.push(_loc7_);
            _loc8_ = new §]!i§(this.§1"$§,_loc4_);
            this.§0#A§.push(_loc8_);
            _loc9_ = this.§^!0§;
            _loc10_ = this.§=n§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§4#W§ == §'"$§)
            {
               _loc9_ = (this.§%2§ - (_loc10_ - 1) * this.§0#7§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§%"u§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§%"u§.push(new param2(_loc12_,_loc7_,new this.§2!+§() as MovieClip));
               }
               _loc13_ = _loc7_.§%"u§[_loc7_.§%"u§.length - 1] as §&E§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§4,§(_loc14_,this.§2"!§);
                  if(this.§?!Y§ == §%P§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§2"!§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§ !<§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§0#7§;
                  _loc13_.y = this.§!"0§ + _loc11_ * this.§6"o§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§=n§ * this.§ !<§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§=n§ * this.§ !<§) / this.§=n§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§=n§ * this.§ !<§) % this.§=n§;
                  if(this.§#,§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§0#7§ + _loc16_ * this.§=n§ * this.§0#7§;
                     _loc13_.y = this.§!"0§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§!"0§ + _loc18_ * this.§6"o§ + _loc16_ * this.§=n§ * this.§6"o§;
                  }
               }
               _loc8_.addButton(_loc13_);
               _loc11_++;
            }
            _loc8_.§]"K§("");
            _loc7_.§&!<§(this.§=n§,this.§1#J§,this.§9&§,this.§^!;§ * this.§0#7§,this.§^!;§ * this.§6"o§,this.§ !<§,this.§^!;§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §8;§() : int
      {
         return this.§=n§;
      }
      
      public function get §,!3§() : int
      {
         if(this.§8;§ == 0)
         {
            return 0;
         }
         return this.§>!m§(this.§2",§).§]-§.length / this.§8;§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§&#X§, param4:Event = null) : void
      {
         var _loc6_:§]!i§ = null;
         var _loc5_:§5"h§ = getItemByName(this.§2",§) as §5"h§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§+"a§(_loc5_.§#"x§ - 1);
               this.§=!e§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§+"a§(_loc5_.§#"x§ + 1);
               this.§=!e§();
            }
         }
         else if(param2.length > 0 && (param1 == §&#X§.LISTENER_EVENT_MOUSE_DOWN || param1 == §&#X§.LISTENER_EVENT_MOUSE_UP) && param3 is §]#X§)
         {
            if((_loc6_ = this.§>!m§((param3 as §]#X§).mParentContainer.mName.toUpperCase())) && param3 is §&E§)
            {
               _loc6_.§]"K§((param3 as §]#X§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §+J§(param1:String, param2:int) : void
      {
         var _loc3_:§5"h§ = getItemByName(param1) as §5"h§;
         if(_loc3_)
         {
            _loc3_.§+"a§(param2);
            this.§=!e§();
         }
      }
      
      public function §>!m§(param1:String) : §]!i§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0#A§.length)
         {
            if(param1.toUpperCase() == (this.§0#A§[_loc2_] as §]!i§).mName.toUpperCase())
            {
               return this.§0#A§[_loc2_] as §]!i§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-c§(param1:String) : void
      {
         this.§2",§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §%"u§.length)
         {
            if(§%"u§[_loc2_] is §5"h§)
            {
               if((§%"u§[_loc2_] as §5"h§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§%"u§[_loc2_] as §5"h§).setActiveStatus(true);
                  if(this.§0#&§)
                  {
                     this.§7?§.x = (§%"u§[_loc2_] as §5"h§).x + this.§""r§;
                     this.§7?§.width = (§%"u§[_loc2_] as §5"h§).width + this.§'!F§;
                  }
                  if(this.§?#[§)
                  {
                     this.§7?§.y = (§%"u§[_loc2_] as §5"h§).y + this.§?"U§;
                     this.§7?§.height = (§%"u§[_loc2_] as §5"h§).height + this.§["F§;
                  }
               }
               else
               {
                  (§%"u§[_loc2_] as §5"h§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§=!e§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§]!i§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§0#A§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §=!e§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§5"h§ = getItemByName(this.§2",§) as §5"h§;
         if(_loc1_)
         {
            if(_loc1_.§#"x§ > 0)
            {
               (getItemByName("Button_Scroll1") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§#"x§ < _loc1_.§>"4§ - 1)
            {
               (getItemByName("Button_Scroll2") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §^"m§).setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §7Q§() : void
      {
         var _loc2_:§5"h§ = null;
         var _loc1_:int = §%"u§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §%"u§[_loc1_] as §5"h§;
            if(_loc2_)
            {
               _loc2_.clear();
               §%"u§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§-c§("");
      }
      
      public function §1!@§() : void
      {
         var _loc1_:§]!i§ = null;
         for each(_loc1_ in this.§0#A§)
         {
            _loc1_.§1!@§();
         }
      }
      
      public function §`#L§() : Array
      {
         if(this.§>!m§(this.§2",§) == null)
         {
            Log.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§>!m§(this.§2",§).§+q§();
      }
      
      public function §8"w§(param1:Array) : void
      {
         this.§>!m§(this.§2",§).§8"w§(param1);
      }
      
      public function §["'§(param1:Number) : void
      {
         this.§>!m§(this.§2",§).§["'§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§2!+§ = null;
         this.§0#A§ = null;
         this.§+""§ = null;
      }
   }
}
