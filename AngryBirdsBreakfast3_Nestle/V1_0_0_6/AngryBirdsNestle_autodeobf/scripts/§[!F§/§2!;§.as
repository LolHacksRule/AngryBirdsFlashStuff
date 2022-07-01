package §[!F§
{
   import §&<§.§"o§;
   import §&<§.§2!q§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §0!$§.§#!-§;
   import §^!`§.§-"5§;
   import com.rovio.assets.§<U§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §2!;§ extends §3j§
   {
      
      public static const §4!p§:int = 0;
      
      public static const §]!j§:int = 1;
      
      public static const §?d§:int = 2;
       
      
      public var §=H§:String;
      
      public var §'!Y§:Class;
      
      public var §5!'§:String = null;
      
      public var §^!<§:Vector.<§"o§>;
      
      public var §'!P§:int;
      
      public var §2!V§:Number;
      
      public var §"=§:Number;
      
      public var §+i§:Number;
      
      public var §#b§:Number;
      
      public var §5!N§:Number;
      
      public var §5!K§:Number;
      
      public var §<;§:Number;
      
      public var §"!_§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §?!E§:int;
      
      public var §6!K§:Number;
      
      public var §[b§:String = "";
      
      public var §,y§:int;
      
      public var §2!Y§:int;
      
      public var §``§:GlowFilter;
      
      public var §5!#§:Boolean = true;
      
      public var §1H§:int;
      
      public var §,S§:int;
      
      public var §%X§:Number = 0;
      
      public var §#!z§:Number = 0;
      
      public var §@!S§:Number = 0;
      
      public var §^!'§:Number = 0;
      
      public var §0!6§:Boolean = false;
      
      public var §6C§:Boolean = false;
      
      public var §=y§:MovieClip = null;
      
      public function §2!;§(param1:XML, param2:§3j§, param3:§-"5§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§=H§ = param1.@button;
         if(this.§=H§.length > 0)
         {
            this.§'!Y§ = §<U§.§5"0§(this.§=H§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§5!'§ = _loc5_;
         }
         this.§,y§ = §4!p§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§,y§ = §]!j§;
            }
         }
         this.§2!Y§ = §?d§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§2!Y§ = §4!p§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§``§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            § !C§.push(new §^!g§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            § !C§.push(new §^!g§(_loc18_,this));
         }
         this.§2!V§ = mClip.getChildByName("Surface").x;
         this.§"=§ = mClip.getChildByName("Surface").y;
         this.§+i§ = mClip.getChildByName("Surface").width;
         this.§#b§ = mClip.getChildByName("Surface").height;
         this.§5!N§ = mClip.getChildByName("Button_Area1").x - this.§2!V§;
         this.§5!K§ = mClip.getChildByName("Button_Area1").y - this.§"=§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§2!V§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§"=§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§6!K§ = _loc9_.bottom - this.§"=§ - this.§5!K§;
         this.§<;§ = _loc7_ - this.§5!N§;
         this.§"!_§ = _loc8_ - this.§5!K§;
         if(Math.abs(this.§<;§) < 3)
         {
            this.§<;§ = 0;
         }
         if(Math.abs(this.§"!_§) < 3)
         {
            this.§"!_§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§<;§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§5!N§ - this.§5!N§) / this.§<;§;
         }
         if(this.§"!_§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§5!K§ - this.§5!K§) / this.§"!_§;
         }
         this.§'!P§ = Math.min(_loc10_,_loc11_);
         this.§5!#§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§1H§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§1H§ = this.§'!P§;
         }
         this.§?!E§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§2!V§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§"=§;
            this.mButtonMarginX2 = _loc19_ - this.§5!N§;
            this.mButtonMarginY2 = _loc20_ - this.§5!K§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§5!#§)
            {
               this.§?!E§ = 1 + (mClip.getChildByName("Surface").height - this.§5!K§ - this.§5!K§) / this.mButtonMarginY2;
            }
            else
            {
               this.§?!E§ = 1 + (mClip.getChildByName("Surface").width - this.§5!N§ - this.§5!N§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§=y§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§@!S§ = this.§=y§.x - mClip.getChildByName("Surface").x;
            this.§^!'§ = this.§=y§.y - mClip.getChildByName("Surface").y;
            this.§%X§ = this.§=y§.x + this.§=y§.width - (this.§=y§.x + mClip.getChildByName("Surface").width);
            this.§#!z§ = this.§=y§.y + this.§=y§.height - (this.§=y§.y + mClip.getChildByName("Surface").height);
            this.§0!6§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§6C§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§,S§ = §"o§.§?@§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§,S§ = §"o§.§@c§;
            }
         }
         this.§'!w§();
      }
      
      public function §'!w§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§4!a§ = null;
         var _loc8_:§"o§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§#!F§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §#!F§;
         }
         this.§^!<§ = new Vector.<§"o§>();
         this.§`"!§();
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
            _loc7_ = new §4!a§(_loc6_,this,null,_loc5_);
            § !C§.push(_loc7_);
            _loc8_ = new §"o§(this.§,S§,_loc4_);
            this.§^!<§.push(_loc8_);
            _loc9_ = this.§5!N§;
            _loc10_ = this.§'!P§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§2!Y§ == §4!p§)
            {
               _loc9_ = (this.§+i§ - (_loc10_ - 1) * this.§<;§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§ !C§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§ !C§.push(new param2(_loc12_,_loc7_,new this.§'!Y§() as MovieClip));
               }
               _loc13_ = _loc7_.§ !C§[_loc7_.§ !C§.length - 1] as §#!F§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§,f§(_loc14_,this.§5!'§);
                  if(this.§,y§ == §]!j§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§5!'§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§?!E§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§<;§;
                  _loc13_.y = this.§5!K§ + _loc11_ * this.§"!_§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§'!P§ * this.§?!E§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§'!P§ * this.§?!E§) / this.§'!P§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§'!P§ * this.§?!E§) % this.§'!P§;
                  if(this.§5!#§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§<;§ + _loc16_ * this.§'!P§ * this.§<;§;
                     _loc13_.y = this.§5!K§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§5!K§ + _loc18_ * this.§"!_§ + _loc16_ * this.§'!P§ * this.§"!_§;
                  }
               }
               _loc8_.§9^§(_loc13_);
               _loc11_++;
            }
            _loc8_.§#!d§("");
            _loc7_.§?"'§(this.§'!P§,this.§2!V§,this.§"=§,this.§1H§ * this.§<;§,this.§1H§ * this.§"!_§,this.§?!E§,this.§1H§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get § i§() : int
      {
         return this.§'!P§;
      }
      
      public function get §0A§() : int
      {
         if(this.§ i§ == 0)
         {
            return 0;
         }
         return this.§ !B§(this.§[b§).§5!c§.length / this.§ i§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§^!#§, param4:Event = null) : void
      {
         var _loc6_:§"o§ = null;
         var _loc5_:§4!a§ = getItemByName(this.§[b§) as §4!a§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§%C§(_loc5_.§1!q§ - 1);
               this.§<`§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§%C§(_loc5_.§1!q§ + 1);
               this.§<`§();
            }
         }
         else if(param2.length > 0 && (param1 == §^!#§.LISTENER_EVENT_MOUSE_DOWN || param1 == §^!#§.LISTENER_EVENT_MOUSE_UP) && param3 is §2!q§)
         {
            if((_loc6_ = this.§ !B§((param3 as §2!q§).mParentContainer.mName.toUpperCase())) && param3 is §#!F§)
            {
               _loc6_.§#!d§((param3 as §2!q§).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §8§(param1:String, param2:int) : void
      {
         var _loc3_:§4!a§ = getItemByName(param1) as §4!a§;
         if(_loc3_)
         {
            _loc3_.§%C§(param2);
            this.§<`§();
         }
      }
      
      public function § !B§(param1:String) : §"o§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!<§.length)
         {
            if(param1.toUpperCase() == (this.§^!<§[_loc2_] as §"o§).mName.toUpperCase())
            {
               return this.§^!<§[_loc2_] as §"o§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;!k§(param1:String) : void
      {
         this.§[b§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < § !C§.length)
         {
            if(§ !C§[_loc2_] is §4!a§)
            {
               if((§ !C§[_loc2_] as §4!a§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§ !C§[_loc2_] as §4!a§).setActiveStatus(true);
                  if(this.§0!6§)
                  {
                     this.§=y§.x = (§ !C§[_loc2_] as §4!a§).x + this.§@!S§;
                     this.§=y§.width = (§ !C§[_loc2_] as §4!a§).width + this.§%X§;
                  }
                  if(this.§6C§)
                  {
                     this.§=y§.y = (§ !C§[_loc2_] as §4!a§).y + this.§^!'§;
                     this.§=y§.height = (§ !C§[_loc2_] as §4!a§).height + this.§#!z§;
                  }
               }
               else
               {
                  (§ !C§[_loc2_] as §4!a§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§<`§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§"o§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§^!<§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §<`§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§4!a§ = getItemByName(this.§[b§) as §4!a§;
         if(_loc1_)
         {
            if(_loc1_.§1!q§ > 0)
            {
               (getItemByName("Button_Scroll1") as §^!g§).setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §^!g§).setComponentState(§@j§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§1!q§ < _loc1_.§>z§ - 1)
            {
               (getItemByName("Button_Scroll2") as §^!g§).setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §^!g§).setComponentState(§@j§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §^!g§).setComponentState(§@j§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §^!g§).setComponentState(§@j§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §`"!§() : void
      {
         var _loc2_:§4!a§ = null;
         var _loc1_:int = § !C§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = § !C§[_loc1_] as §4!a§;
            if(_loc2_)
            {
               _loc2_.clear();
               § !C§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§;!k§("");
      }
      
      public function §"v§() : void
      {
         var _loc1_:§"o§ = null;
         for each(_loc1_ in this.§^!<§)
         {
            _loc1_.§"v§();
         }
      }
      
      public function §]O§() : Array
      {
         if(this.§ !B§(this.§[b§) == null)
         {
            §#!-§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§ !B§(this.§[b§).§<!a§();
      }
      
      public function §@!p§(param1:Array) : void
      {
         this.§ !B§(this.§[b§).§@!p§(param1);
      }
      
      public function §0]§(param1:Number) : void
      {
         this.§ !B§(this.§[b§).§0]§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§'!Y§ = null;
         this.§^!<§ = null;
         this.§``§ = null;
      }
   }
}
