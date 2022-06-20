package §"",§
{
   import §0!?§.§'!$§;
   import §1"2§.§ F§;
   import §1"2§.§#z§;
   import §1"2§.§,!]§;
   import §1"2§.§2!v§;
   import §]!F§.§"!j§;
   import com.rovio.assets.§#!J§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §"%§ extends §<+§
   {
      
      public static const §]t§:int = 0;
      
      public static const §[!I§:int = 1;
      
      public static const §8!t§:int = 2;
       
      
      public var §^Z§:String;
      
      public var §!y§:Class;
      
      public var §@s§:String = null;
      
      public var §[!a§:Vector.<§2!v§>;
      
      public var §,D§:int;
      
      public var §<^§:Number;
      
      public var §6!o§:Number;
      
      public var §@8§:Number;
      
      public var §#!U§:Number;
      
      public var §#!Q§:Number;
      
      public var § !z§:Number;
      
      public var §+i§:Number;
      
      public var §@>§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §-K§:int;
      
      public var §!Y§:Number;
      
      public var §9"&§:String = "";
      
      public var §'"2§:int;
      
      public var §[!p§:int;
      
      public var § o§:GlowFilter;
      
      public var §9"A§:Boolean = true;
      
      public var §5p§:int;
      
      public var §@;§:int;
      
      public var §;t§:Number = 0;
      
      public var §;0§:Number = 0;
      
      public var §?Y§:Number = 0;
      
      public var §7!w§:Number = 0;
      
      public var §="?§:Boolean = false;
      
      public var §5!&§:Boolean = false;
      
      public var §]!o§:MovieClip = null;
      
      public function §"%§(param1:XML, param2:§<+§, param3:§"!j§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§^Z§ = param1.@button;
         if(this.§^Z§.length > 0)
         {
            this.§!y§ = §#!J§.§1!Y§(this.§^Z§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§@s§ = _loc5_;
         }
         this.§'"2§ = §]t§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§'"2§ = §[!I§;
            }
         }
         this.§[!p§ = §8!t§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§[!p§ = §]t§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§ o§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §8%§.push(new §<?§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §8%§.push(new §<?§(_loc18_,this));
         }
         this.§<^§ = mClip.getChildByName("Surface").x;
         this.§6!o§ = mClip.getChildByName("Surface").y;
         this.§@8§ = mClip.getChildByName("Surface").width;
         this.§#!U§ = mClip.getChildByName("Surface").height;
         this.§#!Q§ = mClip.getChildByName("Button_Area1").x - this.§<^§;
         this.§ !z§ = mClip.getChildByName("Button_Area1").y - this.§6!o§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§<^§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§6!o§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§!Y§ = _loc9_.bottom - this.§6!o§ - this.§ !z§;
         this.§+i§ = _loc7_ - this.§#!Q§;
         this.§@>§ = _loc8_ - this.§ !z§;
         if(Math.abs(this.§+i§) < 3)
         {
            this.§+i§ = 0;
         }
         if(Math.abs(this.§@>§) < 3)
         {
            this.§@>§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§+i§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§#!Q§ - this.§#!Q§) / this.§+i§;
         }
         if(this.§@>§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§ !z§ - this.§ !z§) / this.§@>§;
         }
         this.§,D§ = Math.min(_loc10_,_loc11_);
         this.§9"A§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§5p§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§5p§ = this.§,D§;
         }
         this.§-K§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§<^§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§6!o§;
            this.mButtonMarginX2 = _loc19_ - this.§#!Q§;
            this.mButtonMarginY2 = _loc20_ - this.§ !z§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§9"A§)
            {
               this.§-K§ = 1 + (mClip.getChildByName("Surface").height - this.§ !z§ - this.§ !z§) / this.mButtonMarginY2;
            }
            else
            {
               this.§-K§ = 1 + (mClip.getChildByName("Surface").width - this.§#!Q§ - this.§#!Q§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§]!o§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§?Y§ = this.§]!o§.x - mClip.getChildByName("Surface").x;
            this.§7!w§ = this.§]!o§.y - mClip.getChildByName("Surface").y;
            this.§;t§ = this.§]!o§.x + this.§]!o§.width - (this.§]!o§.x + mClip.getChildByName("Surface").width);
            this.§;0§ = this.§]!o§.y + this.§]!o§.height - (this.§]!o§.y + mClip.getChildByName("Surface").height);
            this.§="?§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§5!&§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§@;§ = §2!v§.§<"5§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§@;§ = §2!v§.§,m§;
            }
         }
         this.§7!z§();
      }
      
      public function §7!z§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§;!3§ = null;
         var _loc8_:§2!v§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§2[§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §2[§;
         }
         this.§[!a§ = new Vector.<§2!v§>();
         this.§7"-§();
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
            _loc7_ = new §;!3§(_loc6_,this,null,_loc5_);
            §8%§.push(_loc7_);
            _loc8_ = new §2!v§(this.§@;§,_loc4_);
            this.§[!a§.push(_loc8_);
            _loc9_ = this.§#!Q§;
            _loc10_ = this.§,D§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§[!p§ == §]t§)
            {
               _loc9_ = (this.§@8§ - (_loc10_ - 1) * this.§+i§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§8%§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§8%§.push(new param2(_loc12_,_loc7_,new this.§!y§() as MovieClip));
               }
               _loc13_ = _loc7_.§8%§[_loc7_.§8%§.length - 1] as §2[§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§@s§);
                  if(this.§'"2§ == §[!I§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§@s§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§-K§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§+i§;
                  _loc13_.y = this.§ !z§ + _loc11_ * this.§@>§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§,D§ * this.§-K§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§,D§ * this.§-K§) / this.§,D§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§,D§ * this.§-K§) % this.§,D§;
                  if(this.§9"A§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§+i§ + _loc16_ * this.§,D§ * this.§+i§;
                     _loc13_.y = this.§ !z§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§ !z§ + _loc18_ * this.§@>§ + _loc16_ * this.§,D§ * this.§@>§;
                  }
               }
               _loc8_.§?!x§(_loc13_);
               _loc11_++;
            }
            _loc8_.§%!`§("");
            _loc7_.§-!S§(this.§,D§,this.§<^§,this.§6!o§,this.§5p§ * this.§+i§,this.§5p§ * this.§@>§,this.§-K§,this.§5p§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §7o§() : int
      {
         return this.§,D§;
      }
      
      public function get §=!$§() : int
      {
         if(this.§7o§ == 0)
         {
            return 0;
         }
         return this.§>!y§(this.§9"&§).§8,§.length / this.§7o§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc5_:§2!v§ = null;
         var _loc4_:§;!3§ = getItemByName(this.§9"&§) as §;!3§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§#y§(_loc4_.§3A§ - 1);
               this.§,q§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§#y§(_loc4_.§3A§ + 1);
               this.§,q§();
            }
         }
         else if(param2.length > 0 && (param1 == §,!]§.LISTENER_EVENT_MOUSE_DOWN || param1 == §,!]§.LISTENER_EVENT_MOUSE_UP) && param3 is §#z§)
         {
            if((_loc5_ = this.§>!y§((param3 as §#z§).mParentContainer.mName.toUpperCase())) && param3 is §2[§)
            {
               _loc5_.§%!`§((param3 as §#z§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §'!U§(param1:String, param2:int) : void
      {
         var _loc3_:§;!3§ = getItemByName(param1) as §;!3§;
         if(_loc3_)
         {
            _loc3_.§#y§(param2);
            this.§,q§();
         }
      }
      
      public function §>!y§(param1:String) : §2!v§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!a§.length)
         {
            if(param1.toUpperCase() == (this.§[!a§[_loc2_] as §2!v§).mName.toUpperCase())
            {
               return this.§[!a§[_loc2_] as §2!v§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §3!L§(param1:String) : void
      {
         this.§9"&§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §8%§.length)
         {
            if(§8%§[_loc2_] is §;!3§)
            {
               if((§8%§[_loc2_] as §;!3§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§8%§[_loc2_] as §;!3§).setActiveStatus(true);
                  if(this.§="?§)
                  {
                     this.§]!o§.x = (§8%§[_loc2_] as §;!3§).x + this.§?Y§;
                     this.§]!o§.width = (§8%§[_loc2_] as §;!3§).width + this.§;t§;
                  }
                  if(this.§5!&§)
                  {
                     this.§]!o§.y = (§8%§[_loc2_] as §;!3§).y + this.§7!w§;
                     this.§]!o§.height = (§8%§[_loc2_] as §;!3§).height + this.§;0§;
                  }
               }
               else
               {
                  (§8%§[_loc2_] as §;!3§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§,q§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§2!v§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§[!a§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §,q§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§;!3§ = getItemByName(this.§9"&§) as §;!3§;
         if(_loc1_)
         {
            if(_loc1_.§3A§ > 0)
            {
               (getItemByName("Button_Scroll1") as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §<?§).setComponentState(§ F§.§<!7§);
            }
            if(_loc1_.§3A§ < _loc1_.§3! § - 1)
            {
               (getItemByName("Button_Scroll2") as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §<?§).setComponentState(§ F§.§<!7§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §<?§).setComponentState(§ F§.§<!7§);
            (getItemByName("Button_Scroll2") as §<?§).setComponentState(§ F§.§<!7§);
         }
      }
      
      public function §7"-§() : void
      {
         var _loc2_:§;!3§ = null;
         var _loc1_:int = §8%§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §8%§[_loc1_] as §;!3§;
            if(_loc2_)
            {
               _loc2_.clear();
               §8%§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§3!L§("");
      }
      
      public function §'+§() : void
      {
         var _loc1_:§2!v§ = null;
         for each(_loc1_ in this.§[!a§)
         {
            _loc1_.§'+§();
         }
      }
      
      public function §8"!§() : Array
      {
         if(this.§>!y§(this.§9"&§) == null)
         {
            §'!$§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§>!y§(this.§9"&§).§2!8§();
      }
      
      public function §3!'§(param1:Array) : void
      {
         this.§>!y§(this.§9"&§).§3!'§(param1);
      }
      
      public function §!!H§(param1:Number) : void
      {
         this.§>!y§(this.§9"&§).§!!H§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§!y§ = null;
         this.§[!a§ = null;
         this.§ o§ = null;
      }
   }
}
