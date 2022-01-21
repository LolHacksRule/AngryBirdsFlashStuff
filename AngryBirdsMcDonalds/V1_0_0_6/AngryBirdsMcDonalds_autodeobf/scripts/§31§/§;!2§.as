package §31§
{
   import §0;§.§3=§;
   import §6@§.§'!F§;
   import §6@§.§7I§;
   import §6@§.§>n§;
   import §6@§.§[! §;
   import §7!k§.§%!_§;
   import §8<§.§<!7§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §;!2§ extends § !A§
   {
      
      public static const §1!S§:int = 0;
      
      public static const §5p§:int = 1;
      
      public static const §;!<§:int = 2;
       
      
      public var §6!R§:String;
      
      public var §>!§:Class;
      
      public var §7!N§:String = null;
      
      public var §`3§:Vector.<§7I§>;
      
      public var §1M§:int;
      
      public var §>U§:Number;
      
      public var §-!l§:Number;
      
      public var §%!Q§:Number;
      
      public var §8!g§:Number;
      
      public var §[!^§:Number;
      
      public var §6b§:Number;
      
      public var §#K§:Number;
      
      public var §9!!§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §,A§:int;
      
      public var § n§:Number;
      
      public var §?z§:String = "";
      
      public var §!I§:int;
      
      public var §>J§:int;
      
      public var § !W§:GlowFilter;
      
      public var § b§:Boolean = true;
      
      public var §5>§:int;
      
      public var §^&§:int;
      
      public var §8!7§:Number = 0;
      
      public var §^!<§:Number = 0;
      
      public var §?!^§:Number = 0;
      
      public var §4§:Number = 0;
      
      public var §?!a§:Boolean = false;
      
      public var §0!E§:Boolean = false;
      
      public var §4!"§:MovieClip = null;
      
      public function §;!2§(param1:XML, param2:§ !A§, param3:§3=§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§6!R§ = param1.@button;
         if(this.§6!R§.length > 0)
         {
            this.§>!§ = §%!_§.§1$§(this.§6!R§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§7!N§ = _loc5_;
         }
         this.§!I§ = §1!S§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§!I§ = §5p§;
            }
         }
         this.§>J§ = §;!<§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§>J§ = §1!S§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§ !W§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §"!<§.push(new §#!d§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §"!<§.push(new §#!d§(_loc18_,this));
         }
         this.§>U§ = mClip.getChildByName("Surface").x;
         this.§-!l§ = mClip.getChildByName("Surface").y;
         this.§%!Q§ = mClip.getChildByName("Surface").width;
         this.§8!g§ = mClip.getChildByName("Surface").height;
         this.§[!^§ = mClip.getChildByName("Button_Area1").x - this.§>U§;
         this.§6b§ = mClip.getChildByName("Button_Area1").y - this.§-!l§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§>U§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§-!l§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§ n§ = _loc9_.bottom - this.§-!l§ - this.§6b§;
         this.§#K§ = _loc7_ - this.§[!^§;
         this.§9!!§ = _loc8_ - this.§6b§;
         if(Math.abs(this.§#K§) < 3)
         {
            this.§#K§ = 0;
         }
         if(Math.abs(this.§9!!§) < 3)
         {
            this.§9!!§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§#K§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§[!^§ - this.§[!^§) / this.§#K§;
         }
         if(this.§9!!§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§6b§ - this.§6b§) / this.§9!!§;
         }
         this.§1M§ = Math.min(_loc10_,_loc11_);
         this.§ b§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§5>§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§5>§ = this.§1M§;
         }
         this.§,A§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§>U§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§-!l§;
            this.mButtonMarginX2 = _loc19_ - this.§[!^§;
            this.mButtonMarginY2 = _loc20_ - this.§6b§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§ b§)
            {
               this.§,A§ = 1 + (mClip.getChildByName("Surface").height - this.§6b§ - this.§6b§) / this.mButtonMarginY2;
            }
            else
            {
               this.§,A§ = 1 + (mClip.getChildByName("Surface").width - this.§[!^§ - this.§[!^§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§4!"§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§?!^§ = this.§4!"§.x - mClip.getChildByName("Surface").x;
            this.§4§ = this.§4!"§.y - mClip.getChildByName("Surface").y;
            this.§8!7§ = this.§4!"§.x + this.§4!"§.width - (this.§4!"§.x + mClip.getChildByName("Surface").width);
            this.§^!<§ = this.§4!"§.y + this.§4!"§.height - (this.§4!"§.y + mClip.getChildByName("Surface").height);
            this.§?!a§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§0!E§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§^&§ = §7I§.§'Q§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§^&§ = §7I§.§,!5§;
            }
         }
         this.§%!C§();
      }
      
      public function §%!C§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§<h§ = null;
         var _loc8_:§7I§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§,!;§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §,!;§;
         }
         this.§`3§ = new Vector.<§7I§>();
         this.§`N§();
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
            _loc7_ = new §<h§(_loc6_,this,null,_loc5_);
            §"!<§.push(_loc7_);
            _loc8_ = new §7I§(this.§^&§,_loc4_);
            this.§`3§.push(_loc8_);
            _loc9_ = this.§[!^§;
            _loc10_ = this.§1M§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§>J§ == §1!S§)
            {
               _loc9_ = (this.§%!Q§ - (_loc10_ - 1) * this.§#K§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§"!<§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§"!<§.push(new param2(_loc12_,_loc7_,new this.§>!§() as MovieClip));
               }
               _loc13_ = _loc7_.§"!<§[_loc7_.§"!<§.length - 1] as §,!;§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§5!7§(_loc14_,this.§7!N§);
                  if(this.§!I§ == §5p§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§7!N§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§,A§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§#K§;
                  _loc13_.y = this.§6b§ + _loc11_ * this.§9!!§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§1M§ * this.§,A§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§1M§ * this.§,A§) / this.§1M§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§1M§ * this.§,A§) % this.§1M§;
                  if(this.§ b§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§#K§ + _loc16_ * this.§1M§ * this.§#K§;
                     _loc13_.y = this.§6b§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§6b§ + _loc18_ * this.§9!!§ + _loc16_ * this.§1M§ * this.§9!!§;
                  }
               }
               _loc8_.§+<§(_loc13_);
               _loc11_++;
            }
            _loc8_.§>!#§("");
            _loc7_.§9!f§(this.§1M§,this.§>U§,this.§-!l§,this.§5>§ * this.§#K§,this.§5>§ * this.§9!!§,this.§,A§,this.§5>§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §!j§() : int
      {
         return this.§1M§;
      }
      
      public function get §<!?§() : int
      {
         if(this.§!j§ == 0)
         {
            return 0;
         }
         return this.§-#§(this.§?z§).§?h§.length / this.§!j§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§[! §) : void
      {
         var _loc5_:§7I§ = null;
         var _loc4_:§<h§ = getItemByName(this.§?z§) as §<h§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§=0§(_loc4_.§7D§ - 1);
               this.§[!F§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§=0§(_loc4_.§7D§ + 1);
               this.§[!F§();
            }
         }
         else if(param2.length > 0 && (param1 == §[! §.LISTENER_EVENT_MOUSE_DOWN || param1 == §[! §.LISTENER_EVENT_MOUSE_UP) && param3 is §'!F§)
         {
            if((_loc5_ = this.§-#§((param3 as §'!F§).mParentContainer.mName.toUpperCase())) && param3 is §,!;§)
            {
               _loc5_.§>!#§((param3 as §'!F§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §=e§(param1:String, param2:int) : void
      {
         var _loc3_:§<h§ = getItemByName(param1) as §<h§;
         if(_loc3_)
         {
            _loc3_.§=0§(param2);
            this.§[!F§();
         }
      }
      
      public function §-#§(param1:String) : §7I§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`3§.length)
         {
            if(param1.toUpperCase() == (this.§`3§[_loc2_] as §7I§).mName.toUpperCase())
            {
               return this.§`3§[_loc2_] as §7I§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;!W§(param1:String) : void
      {
         this.§?z§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §"!<§.length)
         {
            if(§"!<§[_loc2_] is §<h§)
            {
               if((§"!<§[_loc2_] as §<h§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§"!<§[_loc2_] as §<h§).setActiveStatus(true);
                  if(this.§?!a§)
                  {
                     this.§4!"§.x = (§"!<§[_loc2_] as §<h§).x + this.§?!^§;
                     this.§4!"§.width = (§"!<§[_loc2_] as §<h§).width + this.§8!7§;
                  }
                  if(this.§0!E§)
                  {
                     this.§4!"§.y = (§"!<§[_loc2_] as §<h§).y + this.§4§;
                     this.§4!"§.height = (§"!<§[_loc2_] as §<h§).height + this.§^!<§;
                  }
               }
               else
               {
                  (§"!<§[_loc2_] as §<h§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§[!F§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§7I§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§`3§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §[!F§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§<h§ = getItemByName(this.§?z§) as §<h§;
         if(_loc1_)
         {
            if(_loc1_.§7D§ > 0)
            {
               (getItemByName("Button_Scroll1") as §#!d§).setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §#!d§).setComponentState(§>n§.§0A§);
            }
            if(_loc1_.§7D§ < _loc1_.§^b§ - 1)
            {
               (getItemByName("Button_Scroll2") as §#!d§).setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §#!d§).setComponentState(§>n§.§0A§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §#!d§).setComponentState(§>n§.§0A§);
            (getItemByName("Button_Scroll2") as §#!d§).setComponentState(§>n§.§0A§);
         }
      }
      
      public function §`N§() : void
      {
         var _loc2_:§<h§ = null;
         var _loc1_:int = §"!<§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §"!<§[_loc1_] as §<h§;
            if(_loc2_)
            {
               _loc2_.clear();
               §"!<§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§;!W§("");
      }
      
      public function §[!c§() : void
      {
         var _loc1_:§7I§ = null;
         for each(_loc1_ in this.§`3§)
         {
            _loc1_.§[!c§();
         }
      }
      
      public function §3!3§() : Array
      {
         if(this.§-#§(this.§?z§) == null)
         {
            §<!7§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§-#§(this.§?z§).§3b§();
      }
      
      public function §!A§(param1:Array) : void
      {
         this.§-#§(this.§?z§).§!A§(param1);
      }
      
      public function §;!g§(param1:Number) : void
      {
         this.§-#§(this.§?z§).§;!g§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§>!§ = null;
         this.§`3§ = null;
         this.§ !W§ = null;
      }
   }
}
