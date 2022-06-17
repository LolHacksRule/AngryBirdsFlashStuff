package §2$;§
{
   import §#"3§.§4!h§;
   import §<8§.§"a§;
   import §<8§.§6!1§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §[#A§.§+#<§;
   import com.rovio.assets.§=@§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §=]§ extends §!"e§
   {
      
      public static const §3!`§:int = 0;
      
      public static const §9!m§:int = 1;
      
      public static const §6j§:int = 2;
       
      
      public var § #P§:String;
      
      public var §^"!§:Class;
      
      public var § !7§:String = null;
      
      public var §8!,§:Vector.<§"a§>;
      
      public var §^"s§:int;
      
      public var §6"N§:Number;
      
      public var §<^§:Number;
      
      public var §3!$§:Number;
      
      public var §<!+§:Number;
      
      public var §#"m§:Number;
      
      public var §1T§:Number;
      
      public var §=##§:Number;
      
      public var §?#+§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §1s§:int;
      
      public var §@!P§:Number;
      
      public var §+#j§:String = "";
      
      public var §<"m§:int;
      
      public var §4$=§:int;
      
      public var §@"9§:GlowFilter;
      
      public var §+"c§:Boolean = true;
      
      public var §?"0§:int;
      
      public var §&#j§:int;
      
      public var §;;§:Number = 0;
      
      public var §9#q§:Number = 0;
      
      public var §1#x§:Number = 0;
      
      public var §^R§:Number = 0;
      
      public var §>r§:Boolean = false;
      
      public var §>a§:Boolean = false;
      
      public var §<![§:MovieClip = null;
      
      public function §=]§(param1:XML, param2:§!"e§, param3:§+#<§, param4:MovieClip = null)
      {
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§ #P§ = param1.@button;
         if(this.§ #P§.length > 0)
         {
            this.§^"!§ = §=@§.§9!x§(this.§ #P§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§ !7§ = _loc5_;
         }
         this.§<"m§ = §3!`§;
         if(param1.@buttonAlign)
         {
            if(param1.@buttonAlign.toUpperCase() == "BOTTOM")
            {
               this.§<"m§ = §9!m§;
            }
         }
         this.§4$=§ = §6j§;
         if(param1.@surfaceAlign)
         {
            if(param1.@surfaceAlign.toUpperCase() == "CENTER")
            {
               this.§4$=§ = §3!`§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§@"9§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §#z§.push(new §;!b§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §#z§.push(new §;!b§(_loc18_,this));
         }
         this.§6"N§ = mClip.getChildByName("Surface").x;
         this.§<^§ = mClip.getChildByName("Surface").y;
         this.§3!$§ = mClip.getChildByName("Surface").width;
         this.§<!+§ = mClip.getChildByName("Surface").height;
         this.§#"m§ = mClip.getChildByName("Button_Area1").x - this.§6"N§;
         this.§1T§ = mClip.getChildByName("Button_Area1").y - this.§<^§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§6"N§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§<^§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§@!P§ = _loc9_.bottom - this.§<^§ - this.§1T§;
         this.§=##§ = _loc7_ - this.§#"m§;
         this.§?#+§ = _loc8_ - this.§1T§;
         if(Math.abs(this.§=##§) < 3)
         {
            this.§=##§ = 0;
         }
         if(Math.abs(this.§?#+§) < 3)
         {
            this.§?#+§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§=##§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§#"m§ - this.§#"m§) / this.§=##§;
         }
         if(this.§?#+§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§1T§ - this.§1T§) / this.§?#+§;
         }
         this.§^"s§ = Math.min(_loc10_,_loc11_);
         this.§+"c§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§?"0§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§?"0§ = this.§^"s§;
         }
         this.§1s§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§6"N§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§<^§;
            this.mButtonMarginX2 = _loc19_ - this.§#"m§;
            this.mButtonMarginY2 = _loc20_ - this.§1T§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§+"c§)
            {
               this.§1s§ = 1 + (mClip.getChildByName("Surface").height - this.§1T§ - this.§1T§) / this.mButtonMarginY2;
            }
            else
            {
               this.§1s§ = 1 + (mClip.getChildByName("Surface").width - this.§#"m§ - this.§#"m§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§<![§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§1#x§ = this.§<![§.x - mClip.getChildByName("Surface").x;
            this.§^R§ = this.§<![§.y - mClip.getChildByName("Surface").y;
            this.§;;§ = this.§<![§.x + this.§<![§.width - (this.§<![§.x + mClip.getChildByName("Surface").width);
            this.§9#q§ = this.§<![§.y + this.§<![§.height - (this.§<![§.y + mClip.getChildByName("Surface").height);
            this.§>r§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§>a§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§&#j§ = §"a§.§]#8§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§&#j§ = §"a§.§@"3§;
            }
         }
         this.§8!x§();
      }
      
      public function §8!x§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§`#t§ = null;
         var _loc8_:§"a§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§?$1§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §?$1§;
         }
         this.§8!,§ = new Vector.<§"a§>();
         this.§&#,§();
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = name + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §`#t§(_loc6_,this,null,_loc5_);
            §#z§.push(_loc7_);
            _loc8_ = new §"a§(this.§&#j§,_loc4_);
            this.§8!,§.push(_loc8_);
            _loc9_ = this.§#"m§;
            _loc10_ = this.§^"s§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§4$=§ == §3!`§)
            {
               _loc9_ = (this.§3!$§ - (_loc10_ - 1) * this.§=##§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§#z§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§#z§.push(new param2(_loc12_,_loc7_,new this.§^"!§() as MovieClip));
               }
               _loc13_ = _loc7_.§#z§[_loc7_.§#z§.length - 1] as §?$1§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§ !7§);
                  if(this.§<"m§ == §9!m§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§ !7§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§1s§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§=##§;
                  _loc13_.y = this.§1T§ + _loc11_ * this.§?#+§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§^"s§ * this.§1s§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§^"s§ * this.§1s§) / this.§^"s§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§^"s§ * this.§1s§) % this.§^"s§;
                  if(this.§+"c§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§=##§ + _loc16_ * this.§^"s§ * this.§=##§;
                     _loc13_.y = this.§1T§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§1T§ + _loc18_ * this.§?#+§ + _loc16_ * this.§^"s§ * this.§?#+§;
                  }
               }
               _loc8_.§4P§(_loc13_);
               _loc11_++;
            }
            _loc8_.§##&§("");
            _loc7_.§"!3§(this.§^"s§,this.§6"N§,this.§<^§,this.§?"0§ * this.§=##§,this.§?"0§ * this.§?#+§,this.§1s§,this.§?"0§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §^!6§() : int
      {
         return this.§^"s§;
      }
      
      public function get §7$!§() : int
      {
         if(this.§^!6§ == 0)
         {
            return 0;
         }
         return this.§6q§(this.§+#j§).§'![§.length / this.§^!6§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§8!g§, param4:Event = null) : void
      {
         var _loc6_:§"a§ = null;
         var _loc5_:§`#t§ = getItemByName(this.§+#j§) as §`#t§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§?#M§(_loc5_.§5F§ - 1);
               this.§##w§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§?#M§(_loc5_.§5F§ + 1);
               this.§##w§();
            }
         }
         else if(param2.length > 0 && (param1 == §8!g§.LISTENER_EVENT_MOUSE_DOWN || param1 == §8!g§.LISTENER_EVENT_MOUSE_UP) && param3 is §6!1§)
         {
            if((_loc6_ = this.§6q§((param3 as §6!1§).mParentContainer.upperCaseName)) && param3 is §?$1§)
            {
               _loc6_.§##&§((param3 as §6!1§).upperCaseName);
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §-d§(param1:String, param2:int) : void
      {
         var _loc3_:§`#t§ = getItemByName(param1) as §`#t§;
         if(_loc3_)
         {
            _loc3_.§?#M§(param2);
            this.§##w§();
         }
      }
      
      public function §6q§(param1:String) : §"a§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8!,§.length)
         {
            if(param1.toUpperCase() == (this.§8!,§[_loc2_] as §"a§).§-#3§.toUpperCase())
            {
               return this.§8!,§[_loc2_] as §"a§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §=t§(param1:String) : void
      {
         this.§+#j§ = param1;
         param1 = param1.toUpperCase();
         var _loc2_:int = 0;
         while(_loc2_ < §#z§.length)
         {
            if(§#z§[_loc2_] is §`#t§)
            {
               if((§#z§[_loc2_] as §`#t§).upperCaseName == param1)
               {
                  (§#z§[_loc2_] as §`#t§).setActiveStatus(true);
                  if(this.§>r§)
                  {
                     this.§<![§.x = (§#z§[_loc2_] as §`#t§).x + this.§1#x§;
                     this.§<![§.width = (§#z§[_loc2_] as §`#t§).width + this.§;;§;
                  }
                  if(this.§>a§)
                  {
                     this.§<![§.y = (§#z§[_loc2_] as §`#t§).y + this.§^R§;
                     this.§<![§.height = (§#z§[_loc2_] as §`#t§).height + this.§9#q§;
                  }
               }
               else
               {
                  (§#z§[_loc2_] as §`#t§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§##w§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§"a§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§8!,§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §##w§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§`#t§ = getItemByName(this.§+#j§) as §`#t§;
         if(_loc1_)
         {
            if(_loc1_.§5F§ > 0)
            {
               (getItemByName("Button_Scroll1") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§5F§ < _loc1_.§<"U§ - 1)
            {
               (getItemByName("Button_Scroll2") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §;!b§).setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §&#,§() : void
      {
         var _loc2_:§`#t§ = null;
         var _loc1_:int = §#z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §#z§[_loc1_] as §`#t§;
            if(_loc2_)
            {
               _loc2_.clear();
               §#z§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§=t§("");
      }
      
      public function §`!$§() : void
      {
         var _loc1_:§"a§ = null;
         for each(_loc1_ in this.§8!,§)
         {
            _loc1_.§`!$§();
         }
      }
      
      public function §#o§() : Array
      {
         if(this.§6q§(this.§+#j§) == null)
         {
            §4!h§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§6q§(this.§+#j§).§>"]§();
      }
      
      public function §^9§(param1:Array) : void
      {
         this.§6q§(this.§+#j§).§^9§(param1);
      }
      
      public function §7"c§(param1:Number) : void
      {
         this.§6q§(this.§+#j§).§7"c§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§^"!§ = null;
         this.§8!,§ = null;
         this.§@"9§ = null;
      }
   }
}
