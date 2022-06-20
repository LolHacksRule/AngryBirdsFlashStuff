package §5!$§
{
   import §%#v§.§?!F§;
   import §4!n§.§#$>§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §4!n§.§>"s§;
   import §9#K§.§=#f§;
   import com.rovio.assets.§2"O§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §>;§ extends §<c§
   {
      
      public static const §8!<§:int = 0;
      
      public static const §7!b§:int = 1;
      
      public static const §2"C§:int = 2;
       
      
      public var §0!x§:String;
      
      public var §%E§:Class;
      
      public var §&"4§:String = null;
      
      public var §!!v§:Vector.<§>"s§>;
      
      public var §7!5§:int;
      
      public var §1^§:Number;
      
      public var §9!5§:Number;
      
      public var § !U§:Number;
      
      public var §+_§:Number;
      
      public var §&$C§:Number;
      
      public var §>$5§:Number;
      
      public var §<#9§:Number;
      
      public var §-#d§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §!#f§:int;
      
      public var §2#+§:Number;
      
      public var §&"'§:String = "";
      
      public var §6,§:int;
      
      public var §0"Y§:int;
      
      public var §=#V§:GlowFilter;
      
      public var §&#-§:Boolean = true;
      
      public var §0!r§:int;
      
      public var §;!`§:int;
      
      public var §`"G§:Number = 0;
      
      public var §<!W§:Number = 0;
      
      public var §&§:Number = 0;
      
      public var §^#m§:Number = 0;
      
      public var §]$-§:Boolean = false;
      
      public var §^!3§:Boolean = false;
      
      public var §43§:MovieClip = null;
      
      public function §>;§(param1:XML, param2:§<c§, param3:§?!F§, param4:MovieClip = null)
      {
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§0!x§ = param1.@button;
         if(this.§0!x§.length > 0)
         {
            this.§%E§ = §2"O§.§`>§(this.§0!x§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§&"4§ = _loc5_;
         }
         this.§6,§ = §8!<§;
         if(param1.@buttonAlign)
         {
            if(param1.@buttonAlign.toUpperCase() == "BOTTOM")
            {
               this.§6,§ = §7!b§;
            }
         }
         this.§0"Y§ = §2"C§;
         if(param1.@surfaceAlign)
         {
            if(param1.@surfaceAlign.toUpperCase() == "CENTER")
            {
               this.§0"Y§ = §8!<§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§=#V§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §,#i§.push(new §"S§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §,#i§.push(new §"S§(_loc18_,this));
         }
         this.§1^§ = mClip.getChildByName("Surface").x;
         this.§9!5§ = mClip.getChildByName("Surface").y;
         this.§ !U§ = mClip.getChildByName("Surface").width;
         this.§+_§ = mClip.getChildByName("Surface").height;
         this.§&$C§ = mClip.getChildByName("Button_Area1").x - this.§1^§;
         this.§>$5§ = mClip.getChildByName("Button_Area1").y - this.§9!5§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§1^§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§9!5§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§2#+§ = _loc9_.bottom - this.§9!5§ - this.§>$5§;
         this.§<#9§ = _loc7_ - this.§&$C§;
         this.§-#d§ = _loc8_ - this.§>$5§;
         if(Math.abs(this.§<#9§) < 3)
         {
            this.§<#9§ = 0;
         }
         if(Math.abs(this.§-#d§) < 3)
         {
            this.§-#d§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§<#9§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§&$C§ - this.§&$C§) / this.§<#9§;
         }
         if(this.§-#d§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§>$5§ - this.§>$5§) / this.§-#d§;
         }
         this.§7!5§ = Math.min(_loc10_,_loc11_);
         this.§&#-§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§0!r§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§0!r§ = this.§7!5§;
         }
         this.§!#f§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§1^§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§9!5§;
            this.mButtonMarginX2 = _loc19_ - this.§&$C§;
            this.mButtonMarginY2 = _loc20_ - this.§>$5§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§&#-§)
            {
               this.§!#f§ = 1 + (mClip.getChildByName("Surface").height - this.§>$5§ - this.§>$5§) / this.mButtonMarginY2;
            }
            else
            {
               this.§!#f§ = 1 + (mClip.getChildByName("Surface").width - this.§&$C§ - this.§&$C§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§43§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§&§ = this.§43§.x - mClip.getChildByName("Surface").x;
            this.§^#m§ = this.§43§.y - mClip.getChildByName("Surface").y;
            this.§`"G§ = this.§43§.x + this.§43§.width - (this.§43§.x + mClip.getChildByName("Surface").width);
            this.§<!W§ = this.§43§.y + this.§43§.height - (this.§43§.y + mClip.getChildByName("Surface").height);
            this.§]$-§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§^!3§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§;!`§ = §>"s§.§%!n§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§;!`§ = §>"s§.§#$'§;
            }
         }
         this.§""]§();
      }
      
      public function §""]§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§&!v§ = null;
         var _loc8_:§>"s§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§#$-§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §#$-§;
         }
         this.§!!v§ = new Vector.<§>"s§>();
         this.§;H§();
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
            _loc7_ = new §&!v§(_loc6_,this,null,_loc5_);
            §,#i§.push(_loc7_);
            _loc8_ = new §>"s§(this.§;!`§,_loc4_);
            this.§!!v§.push(_loc8_);
            _loc9_ = this.§&$C§;
            _loc10_ = this.§7!5§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§0"Y§ == §8!<§)
            {
               _loc9_ = (this.§ !U§ - (_loc10_ - 1) * this.§<#9§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§,#i§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§,#i§.push(new param2(_loc12_,_loc7_,new this.§%E§() as MovieClip));
               }
               _loc13_ = _loc7_.§,#i§[_loc7_.§,#i§.length - 1] as §#$-§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§&"4§);
                  if(this.§6,§ == §7!b§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§&"4§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§!#f§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§<#9§;
                  _loc13_.y = this.§>$5§ + _loc11_ * this.§-#d§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§7!5§ * this.§!#f§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§7!5§ * this.§!#f§) / this.§7!5§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§7!5§ * this.§!#f§) % this.§7!5§;
                  if(this.§&#-§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§<#9§ + _loc16_ * this.§7!5§ * this.§<#9§;
                     _loc13_.y = this.§>$5§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§>$5§ + _loc18_ * this.§-#d§ + _loc16_ * this.§7!5§ * this.§-#d§;
                  }
               }
               _loc8_.§0#9§(_loc13_);
               _loc11_++;
            }
            _loc8_.§'"g§("");
            _loc7_.§!"y§(this.§7!5§,this.§1^§,this.§9!5§,this.§0!r§ * this.§<#9§,this.§0!r§ * this.§-#d§,this.§!#f§,this.§0!r§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §^#5§() : int
      {
         return this.§7!5§;
      }
      
      public function get §6]§() : int
      {
         if(this.§^#5§ == 0)
         {
            return 0;
         }
         return this.§[e§(this.§&"'§).§1#M§.length / this.§^#5§ + 1;
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§'!,§, param4:Event = null) : void
      {
         var _loc6_:§>"s§ = null;
         var _loc5_:§&!v§ = getItemByName(this.§&"'§) as §&!v§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.§>!2§(_loc5_.§#"0§ - 1);
               this.§?!k§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.§>!2§(_loc5_.§#"0§ + 1);
               this.§?!k§();
            }
         }
         else if(param2.length > 0 && (param1 == §'!,§.LISTENER_EVENT_MOUSE_DOWN || param1 == §'!,§.LISTENER_EVENT_MOUSE_UP) && param3 is §#$>§)
         {
            if((_loc6_ = this.§[e§((param3 as §#$>§).mParentContainer.upperCaseName)) && param3 is §#$-§)
            {
               _loc6_.§'"g§((param3 as §#$>§).upperCaseName);
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function §?,§(param1:String, param2:int) : void
      {
         var _loc3_:§&!v§ = getItemByName(param1) as §&!v§;
         if(_loc3_)
         {
            _loc3_.§>!2§(param2);
            this.§?!k§();
         }
      }
      
      public function §[e§(param1:String) : §>"s§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!v§.length)
         {
            if(param1.toUpperCase() == (this.§!!v§[_loc2_] as §>"s§).§-!O§.toUpperCase())
            {
               return this.§!!v§[_loc2_] as §>"s§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §6!^§(param1:String) : void
      {
         this.§&"'§ = param1;
         param1 = param1.toUpperCase();
         var _loc2_:int = 0;
         while(_loc2_ < §,#i§.length)
         {
            if(§,#i§[_loc2_] is §&!v§)
            {
               if((§,#i§[_loc2_] as §&!v§).upperCaseName == param1)
               {
                  (§,#i§[_loc2_] as §&!v§).setActiveStatus(true);
                  if(this.§]$-§)
                  {
                     this.§43§.x = (§,#i§[_loc2_] as §&!v§).x + this.§&§;
                     this.§43§.width = (§,#i§[_loc2_] as §&!v§).width + this.§`"G§;
                  }
                  if(this.§^!3§)
                  {
                     this.§43§.y = (§,#i§[_loc2_] as §&!v§).y + this.§^#m§;
                     this.§43§.height = (§,#i§[_loc2_] as §&!v§).height + this.§<!W§;
                  }
               }
               else
               {
                  (§,#i§[_loc2_] as §&!v§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§?!k§();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:§>"s§ = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.§!!v§)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function §?!k§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§&!v§ = getItemByName(this.§&"'§) as §&!v§;
         if(_loc1_)
         {
            if(_loc1_.§#"0§ > 0)
            {
               (getItemByName("Button_Scroll1") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.§#"0§ < _loc1_.§%$8§ - 1)
            {
               (getItemByName("Button_Scroll2") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function §;H§() : void
      {
         var _loc2_:§&!v§ = null;
         var _loc1_:int = §,#i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §,#i§[_loc1_] as §&!v§;
            if(_loc2_)
            {
               _loc2_.clear();
               §,#i§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§6!^§("");
      }
      
      public function §8f§() : void
      {
         var _loc1_:§>"s§ = null;
         for each(_loc1_ in this.§!!v§)
         {
            _loc1_.§8f§();
         }
      }
      
      public function §5!M§() : Array
      {
         if(this.§[e§(this.§&"'§) == null)
         {
            §=#f§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§[e§(this.§&"'§).§^!#§();
      }
      
      public function §;"a§(param1:Array) : void
      {
         this.§[e§(this.§&"'§).§;"a§(param1);
      }
      
      public function §>!#§(param1:Number) : void
      {
         this.§[e§(this.§&"'§).§>!#§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§%E§ = null;
         this.§!!v§ = null;
         this.§=#V§ = null;
      }
   }
}
