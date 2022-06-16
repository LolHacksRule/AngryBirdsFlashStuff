package §-B§
{
   import §#M§.§^0§;
   import §;n§.§&G§;
   import §;n§.§^!5§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §[x§.§%3§;
   import com.rovio.assets.§>"5§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §<"$§ extends §?!j§
   {
      
      public static const §^`§:int = 0;
      
      public static const §7!2§:int = 1;
      
      public static const §+"0§:int = 2;
       
      
      public var §4!d§:String;
      
      public var §@!q§:Class;
      
      public var §^"=§:String = null;
      
      public var §#s§:Vector.<§^!5§>;
      
      public var §-"9§:int;
      
      public var §0>§:Number;
      
      public var §4y§:Number;
      
      public var §^!P§:Number;
      
      public var §@!G§:Number;
      
      public var §#!a§:Number;
      
      public var §8!m§:Number;
      
      public var §-!z§:Number;
      
      public var §5!>§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §[!t§:int;
      
      public var §#"K§:Number;
      
      public var §@D§:String = "";
      
      public var §#V§:int;
      
      public var §[!o§:int;
      
      public var §9Z§:GlowFilter;
      
      public var §""A§:Boolean = true;
      
      public var §+"3§:int;
      
      public var §>!T§:int;
      
      public var §0"E§:Number = 0;
      
      public var §'p§:Number = 0;
      
      public var §1!7§:Number = 0;
      
      public var §,T§:Number = 0;
      
      public var §false§:Boolean = false;
      
      public var §1!o§:Boolean = false;
      
      public var § "C§:MovieClip = null;
      
      public function §<"$§(param1:XML, param2:§?!j§, param3:§^0§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§4!d§ = param1.@button;
         if(this.§4!d§.length > 0)
         {
            this.§@!q§ = §>"5§.§6s§(this.§4!d§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§^"=§ = _loc5_;
         }
         this.§#V§ = §^`§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§#V§ = §7!2§;
            }
         }
         this.§[!o§ = §+"0§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§[!o§ = §^`§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§9Z§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §!!&§.push(new §]!<§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §!!&§.push(new §]!<§(_loc18_,this));
         }
         this.§0>§ = mClip.getChildByName("Surface").x;
         this.§4y§ = mClip.getChildByName("Surface").y;
         this.§^!P§ = mClip.getChildByName("Surface").width;
         this.§@!G§ = mClip.getChildByName("Surface").height;
         this.§#!a§ = mClip.getChildByName("Button_Area1").x - this.§0>§;
         this.§8!m§ = mClip.getChildByName("Button_Area1").y - this.§4y§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§0>§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§4y§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§#"K§ = _loc9_.bottom - this.§4y§ - this.§8!m§;
         this.§-!z§ = _loc7_ - this.§#!a§;
         this.§5!>§ = _loc8_ - this.§8!m§;
         if(Math.abs(this.§-!z§) < 3)
         {
            this.§-!z§ = 0;
         }
         if(Math.abs(this.§5!>§) < 3)
         {
            this.§5!>§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§-!z§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§#!a§ - this.§#!a§) / this.§-!z§;
         }
         if(this.§5!>§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§8!m§ - this.§8!m§) / this.§5!>§;
         }
         this.§-"9§ = Math.min(_loc10_,_loc11_);
         this.§""A§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§+"3§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§+"3§ = this.§-"9§;
         }
         this.§[!t§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§0>§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§4y§;
            this.mButtonMarginX2 = _loc19_ - this.§#!a§;
            this.mButtonMarginY2 = _loc20_ - this.§8!m§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§""A§)
            {
               this.§[!t§ = 1 + (mClip.getChildByName("Surface").height - this.§8!m§ - this.§8!m§) / this.mButtonMarginY2;
            }
            else
            {
               this.§[!t§ = 1 + (mClip.getChildByName("Surface").width - this.§#!a§ - this.§#!a§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§ "C§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§1!7§ = this.§ "C§.x - mClip.getChildByName("Surface").x;
            this.§,T§ = this.§ "C§.y - mClip.getChildByName("Surface").y;
            this.§0"E§ = this.§ "C§.x + this.§ "C§.width - (this.§ "C§.x + mClip.getChildByName("Surface").width);
            this.§'p§ = this.§ "C§.y + this.§ "C§.height - (this.§ "C§.y + mClip.getChildByName("Surface").height);
            this.§false§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§1!o§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§>!T§ = §^!5§.§0"2§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§>!T§ = §^!5§.§""5§;
            }
         }
         this.§^![§();
      }
      
      public function §^![§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§7x§ = null;
         var _loc8_:§^!5§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§8"B§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §8"B§;
         }
         this.§#s§ = new Vector.<§^!5§>();
         this.§6!#§();
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
            _loc7_ = new §7x§(_loc6_,this,null,_loc5_);
            §!!&§.push(_loc7_);
            _loc8_ = new §^!5§(this.§>!T§,_loc4_);
            this.§#s§.push(_loc8_);
            _loc9_ = this.§#!a§;
            _loc10_ = this.§-"9§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§[!o§ == §^`§)
            {
               _loc9_ = (this.§^!P§ - (_loc10_ - 1) * this.§-!z§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§!!&§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§!!&§.push(new param2(_loc12_,_loc7_,new this.§@!q§() as MovieClip));
               }
               _loc13_ = _loc7_.§!!&§[_loc7_.§!!&§.length - 1] as §8"B§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.§^"=§);
                  if(this.§#V§ == §7!2§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§^"=§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§[!t§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§-!z§;
                  _loc13_.y = this.§8!m§ + _loc11_ * this.§5!>§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§-"9§ * this.§[!t§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§-"9§ * this.§[!t§) / this.§-"9§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§-"9§ * this.§[!t§) % this.§-"9§;
                  if(this.§""A§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§-!z§ + _loc16_ * this.§-"9§ * this.§-!z§;
                     _loc13_.y = this.§8!m§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§8!m§ + _loc18_ * this.§5!>§ + _loc16_ * this.§-"9§ * this.§5!>§;
                  }
               }
               _loc8_.§9!V§(_loc13_);
               _loc11_++;
            }
            _loc8_.§%"5§("");
            _loc7_.§^!r§(this.§-"9§,this.§0>§,this.§4y§,this.§+"3§ * this.§-!z§,this.§+"3§ * this.§5!>§,this.§[!t§,this.§+"3§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §]w§() : int
      {
         return this.§-"9§;
      }
      
      public function get §8!R§() : int
      {
         if(this.§]w§ == 0)
         {
            return 0;
         }
         return this.§>%§(this.§@D§).§<"8§.length / this.§]w§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc5_:§^!5§ = null;
         var _loc4_:§7x§ = getItemByName(this.§@D§) as §7x§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§%!v§(_loc4_.§2!l§ - 1);
               this.§2!,§();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§%!v§(_loc4_.§2!l§ + 1);
               this.§2!,§();
            }
         }
         else if(param2.length > 0 && (param1 == §^!;§.LISTENER_EVENT_MOUSE_DOWN || param1 == §^!;§.LISTENER_EVENT_MOUSE_UP) && param3 is §&G§)
         {
            if((_loc5_ = this.§>%§((param3 as §&G§).mParentContainer.mName.toUpperCase())) && param3 is §8"B§)
            {
               _loc5_.§%"5§((param3 as §&G§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §+P§(param1:String, param2:int) : void
      {
         var _loc3_:§7x§ = getItemByName(param1) as §7x§;
         if(_loc3_)
         {
            _loc3_.§%!v§(param2);
            this.§2!,§();
         }
      }
      
      public function §>%§(param1:String) : §^!5§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§#s§.length)
         {
            if(param1.toUpperCase() == (this.§#s§[_loc2_] as §^!5§).mName.toUpperCase())
            {
               return this.§#s§[_loc2_] as §^!5§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,t§(param1:String) : void
      {
         this.§@D§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §!!&§.length)
         {
            if(§!!&§[_loc2_] is §7x§)
            {
               if((§!!&§[_loc2_] as §7x§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§!!&§[_loc2_] as §7x§).setActiveStatus(true);
                  if(this.§false§)
                  {
                     this.§ "C§.x = (§!!&§[_loc2_] as §7x§).x + this.§1!7§;
                     this.§ "C§.width = (§!!&§[_loc2_] as §7x§).width + this.§0"E§;
                  }
                  if(this.§1!o§)
                  {
                     this.§ "C§.y = (§!!&§[_loc2_] as §7x§).y + this.§,T§;
                     this.§ "C§.height = (§!!&§[_loc2_] as §7x§).height + this.§'p§;
                  }
               }
               else
               {
                  (§!!&§[_loc2_] as §7x§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§2!,§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§^!5§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§#s§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §2!,§() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§7x§ = getItemByName(this.§@D§) as §7x§;
         if(_loc1_)
         {
            if(_loc1_.§2!l§ > 0)
            {
               (getItemByName("Button_Scroll1") as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §]!<§).setComponentState(§^q§.§?!0§);
            }
            if(_loc1_.§2!l§ < _loc1_.§!!%§ - 1)
            {
               (getItemByName("Button_Scroll2") as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §]!<§).setComponentState(§^q§.§?!0§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §]!<§).setComponentState(§^q§.§?!0§);
            (getItemByName("Button_Scroll2") as §]!<§).setComponentState(§^q§.§?!0§);
         }
      }
      
      public function §6!#§() : void
      {
         var _loc2_:§7x§ = null;
         var _loc1_:int = §!!&§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!!&§[_loc1_] as §7x§;
            if(_loc2_)
            {
               _loc2_.clear();
               §!!&§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§,t§("");
      }
      
      public function static() : void
      {
         var _loc1_:§^!5§ = null;
         for each(_loc1_ in this.§#s§)
         {
            _loc1_.static();
         }
      }
      
      public function §;"I§() : Array
      {
         if(this.§>%§(this.§@D§) == null)
         {
            §%3§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§>%§(this.§@D§).§?A§();
      }
      
      public function §finally§(param1:Array) : void
      {
         this.§>%§(this.§@D§).§finally§(param1);
      }
      
      public function §1Z§(param1:Number) : void
      {
         this.§>%§(this.§@D§).§1Z§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§@!q§ = null;
         this.§#s§ = null;
         this.§9Z§ = null;
      }
   }
}
