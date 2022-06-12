package §%i§
{
   import §+!c§.§;!=§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §1!t§.§=",§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §7!t§ extends §0!Y§
   {
      
      public static const §;";§:int = 0;
      
      public static const §@![§:int = 1;
      
      public static const §2"W§:int = 2;
       
      
      public var §@!m§:String;
      
      public var §&i§:Class;
      
      public var §6!d§:String = null;
      
      public var §7"9§:Vector.<§=",§>;
      
      public var § !`§:int;
      
      public var §6!-§:Number;
      
      public var §4"F§:Number;
      
      public var §,s§:Number;
      
      public var §6,§:Number;
      
      public var §9!K§:Number;
      
      public var §?!x§:Number;
      
      public var § "#§:Number;
      
      public var §7"O§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §2!k§:int;
      
      public var §>"0§:Number;
      
      public var §9!?§:String = "";
      
      public var §2!O§:int;
      
      public var §+!G§:int;
      
      public var §`!D§:GlowFilter;
      
      public var §-N§:Boolean = true;
      
      public var §+!B§:int;
      
      public var §5`§:int;
      
      public var §"e§:Number = 0;
      
      public var §&!?§:Number = 0;
      
      public var §`!h§:Number = 0;
      
      public var §[!s§:Number = 0;
      
      public var §@!h§:Boolean = false;
      
      public var §<"L§:Boolean = false;
      
      public var §`!&§:MovieClip = null;
      
      public function §7!t§(param1:XML, param2:§0!Y§, param3:§`_§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§@!m§ = param1.@button;
         if(this.§@!m§.length > 0)
         {
            this.§&i§ = §?q§.§ q§(this.§@!m§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§6!d§ = _loc5_;
         }
         this.§2!O§ = §;";§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§2!O§ = §@![§;
            }
         }
         this.§+!G§ = §2"W§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§+!G§ = §;";§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§`!D§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §+?§.push(new §7"0§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §+?§.push(new §7"0§(_loc18_,this));
         }
         this.§6!-§ = mClip.getChildByName("Surface").x;
         this.§4"F§ = mClip.getChildByName("Surface").y;
         this.§,s§ = mClip.getChildByName("Surface").width;
         this.§6,§ = mClip.getChildByName("Surface").height;
         this.§9!K§ = mClip.getChildByName("Button_Area1").x - this.§6!-§;
         this.§?!x§ = mClip.getChildByName("Button_Area1").y - this.§4"F§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§6!-§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§4"F§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§>"0§ = _loc9_.bottom - this.§4"F§ - this.§?!x§;
         this.§ "#§ = _loc7_ - this.§9!K§;
         this.§7"O§ = _loc8_ - this.§?!x§;
         if(Math.abs(this.§ "#§) < 3)
         {
            this.§ "#§ = 0;
         }
         if(Math.abs(this.§7"O§) < 3)
         {
            this.§7"O§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§ "#§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§9!K§ - this.§9!K§) / this.§ "#§;
         }
         if(this.§7"O§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§?!x§ - this.§?!x§) / this.§7"O§;
         }
         this.§ !`§ = Math.min(_loc10_,_loc11_);
         this.§-N§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§+!B§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§+!B§ = this.§ !`§;
         }
         this.§2!k§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§6!-§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§4"F§;
            this.mButtonMarginX2 = _loc19_ - this.§9!K§;
            this.mButtonMarginY2 = _loc20_ - this.§?!x§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§-N§)
            {
               this.§2!k§ = 1 + (mClip.getChildByName("Surface").height - this.§?!x§ - this.§?!x§) / this.mButtonMarginY2;
            }
            else
            {
               this.§2!k§ = 1 + (mClip.getChildByName("Surface").width - this.§9!K§ - this.§9!K§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§`!&§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§`!h§ = this.§`!&§.x - mClip.getChildByName("Surface").x;
            this.§[!s§ = this.§`!&§.y - mClip.getChildByName("Surface").y;
            this.§"e§ = this.§`!&§.x + this.§`!&§.width - (this.§`!&§.x + mClip.getChildByName("Surface").width);
            this.§&!?§ = this.§`!&§.y + this.§`!&§.height - (this.§`!&§.y + mClip.getChildByName("Surface").height);
            this.§@!h§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§<"L§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§5`§ = §=",§.§"I§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§5`§ = §=",§.§>I§;
            }
         }
         this.§%%§();
      }
      
      public function §%%§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§+"6§ = null;
         var _loc8_:§=",§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§4!w§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §4!w§;
         }
         this.§7"9§ = new Vector.<§=",§>();
         this.§=!o§();
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
            _loc7_ = new §+"6§(_loc6_,this,null,_loc5_);
            §+?§.push(_loc7_);
            _loc8_ = new §=",§(this.§5`§,_loc4_);
            this.§7"9§.push(_loc8_);
            _loc9_ = this.§9!K§;
            _loc10_ = this.§ !`§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§+!G§ == §;";§)
            {
               _loc9_ = (this.§,s§ - (_loc10_ - 1) * this.§ "#§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§+?§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§+?§.push(new param2(_loc12_,_loc7_,new this.§&i§() as MovieClip));
               }
               _loc13_ = _loc7_.§+?§[_loc7_.§+?§.length - 1] as §4!w§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§6!d§);
                  if(this.§2!O§ == §@![§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§6!d§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§2!k§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§ "#§;
                  _loc13_.y = this.§?!x§ + _loc11_ * this.§7"O§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§ !`§ * this.§2!k§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§ !`§ * this.§2!k§) / this.§ !`§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§ !`§ * this.§2!k§) % this.§ !`§;
                  if(this.§-N§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§ "#§ + _loc16_ * this.§ !`§ * this.§ "#§;
                     _loc13_.y = this.§?!x§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§?!x§ + _loc18_ * this.§7"O§ + _loc16_ * this.§ !`§ * this.§7"O§;
                  }
               }
               _loc8_.§4!"§(_loc13_);
               _loc11_++;
            }
            _loc8_.§1!a§("");
            _loc7_.§2"[§(this.§ !`§,this.§6!-§,this.§4"F§,this.§+!B§ * this.§ "#§,this.§+!B§ * this.§7"O§,this.§2!k§,this.§+!B§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §+"C§() : int
      {
         return this.§ !`§;
      }
      
      public function get §'!h§() : int
      {
         if(this.§+"C§ == 0)
         {
            return 0;
         }
         return this.§0j§(this.§9!?§).§'!-§.length / this.§+"C§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:§=",§ = null;
         var _loc4_:§+"6§ = getItemByName(this.§9!?§) as §+"6§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§;!i§(_loc4_.§6"B§ - 1);
               this.§[3§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§;!i§(_loc4_.§6"B§ + 1);
               this.§[3§();
            }
         }
         else if(param2.length > 0 && (param1 == §""B§.LISTENER_EVENT_MOUSE_DOWN || param1 == §""B§.LISTENER_EVENT_MOUSE_UP) && param3 is §!>§)
         {
            if((_loc5_ = this.§0j§((param3 as §!>§).mParentContainer.mName.toUpperCase())) && param3 is §4!w§)
            {
               _loc5_.§1!a§((param3 as §!>§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §&1§(param1:String, param2:int) : void
      {
         var _loc3_:§+"6§ = getItemByName(param1) as §+"6§;
         if(_loc3_)
         {
            _loc3_.§;!i§(param2);
            this.§[3§();
         }
      }
      
      public function §0j§(param1:String) : §=",§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7"9§.length)
         {
            if(param1.toUpperCase() == (this.§7"9§[_loc2_] as §=",§).mName.toUpperCase())
            {
               return this.§7"9§[_loc2_] as §=",§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §@"W§(param1:String) : void
      {
         this.§9!?§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §+?§.length)
         {
            if(§+?§[_loc2_] is §+"6§)
            {
               if((§+?§[_loc2_] as §+"6§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§+?§[_loc2_] as §+"6§).setActiveStatus(true);
                  if(this.§@!h§)
                  {
                     this.§`!&§.x = (§+?§[_loc2_] as §+"6§).x + this.§`!h§;
                     this.§`!&§.width = (§+?§[_loc2_] as §+"6§).width + this.§"e§;
                  }
                  if(this.§<"L§)
                  {
                     this.§`!&§.y = (§+?§[_loc2_] as §+"6§).y + this.§[!s§;
                     this.§`!&§.height = (§+?§[_loc2_] as §+"6§).height + this.§&!?§;
                  }
               }
               else
               {
                  (§+?§[_loc2_] as §+"6§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§[3§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§=",§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§7"9§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §[3§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§+"6§ = getItemByName(this.§9!?§) as §+"6§;
         if(_loc1_)
         {
            if(_loc1_.§6"B§ > 0)
            {
               (getItemByName("Button_Scroll1") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §7"0§).setComponentState(§!!G§.§[E§);
            }
            if(_loc1_.§6"B§ < _loc1_.§<'§ - 1)
            {
               (getItemByName("Button_Scroll2") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §7"0§).setComponentState(§!!G§.§[E§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §7"0§).setComponentState(§!!G§.§[E§);
            (getItemByName("Button_Scroll2") as §7"0§).setComponentState(§!!G§.§[E§);
         }
      }
      
      public function §=!o§() : void
      {
         var _loc2_:§+"6§ = null;
         var _loc1_:int = §+?§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+?§[_loc1_] as §+"6§;
            if(_loc2_)
            {
               _loc2_.clear();
               §+?§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§@"W§("");
      }
      
      public function §8;§() : void
      {
         var _loc1_:§=",§ = null;
         for each(_loc1_ in this.§7"9§)
         {
            _loc1_.§8;§();
         }
      }
      
      public function §`!;§() : Array
      {
         if(this.§0j§(this.§9!?§) == null)
         {
            §;!=§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§0j§(this.§9!?§).§2"+§();
      }
      
      public function § !>§(param1:Array) : void
      {
         this.§0j§(this.§9!?§).§ !>§(param1);
      }
      
      public function §=!+§(param1:Number) : void
      {
         this.§0j§(this.§9!?§).§=!+§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§&i§ = null;
         this.§7"9§ = null;
         this.§`!D§ = null;
      }
   }
}
