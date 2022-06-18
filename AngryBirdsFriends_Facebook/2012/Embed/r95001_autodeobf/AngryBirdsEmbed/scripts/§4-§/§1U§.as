package §4-§
{
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §0u§.§3U§;
   import §0u§.§^S§;
   import §6!,§.§[H§;
   import §9H§.§@M§;
   import com.rovio.assets.§ 3§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §1U§ extends §'J§
   {
      
      public static const §1P§:int = 0;
      
      public static const §65§:int = 1;
      
      public static const §-h§:int = 2;
       
      
      public var §9=§:String;
      
      public var §6J§:Class;
      
      public var §01§:String = null;
      
      public var §9P§:Vector.<§3U§>;
      
      public var §'!+§:int;
      
      public var §'!<§:Number;
      
      public var §8!+§:Number;
      
      public var §`!1§:Number;
      
      public var §-s§:Number;
      
      public var §>!?§:Number;
      
      public var § !A§:Number;
      
      public var §]k§:Number;
      
      public var §&!1§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §@e§:int;
      
      public var §5Z§:Number;
      
      public var §@m§:String = "";
      
      public var §1x§:int;
      
      public var §5$§:int;
      
      public var §8!B§:GlowFilter;
      
      public var §>!A§:Boolean = true;
      
      public var §?<§:int;
      
      public var §,!<§:int;
      
      public var §3a§:Number = 0;
      
      public var §`R§:Number = 0;
      
      public var §[B§:Number = 0;
      
      public var § !D§:Number = 0;
      
      public var §5!3§:Boolean = false;
      
      public var §]j§:Boolean = false;
      
      public var §,!D§:MovieClip = null;
      
      public function §1U§(param1:XML, param2:§'J§, param3:§[H§, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.§9=§ = param1.@button;
         if(this.§9=§.length > 0)
         {
            this.§6J§ = § 3§.§+i§(this.§9=§);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.§01§ = _loc5_;
         }
         this.§1x§ = §1P§;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.§1x§ = §65§;
            }
         }
         this.§5$§ = §-h§;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.§5$§ = §1P§;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.§8!B§ = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            §2J§.push(new §%+§(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            §2J§.push(new §%+§(_loc18_,this));
         }
         this.§'!<§ = mClip.getChildByName("Surface").x;
         this.§8!+§ = mClip.getChildByName("Surface").y;
         this.§`!1§ = mClip.getChildByName("Surface").width;
         this.§-s§ = mClip.getChildByName("Surface").height;
         this.§>!?§ = mClip.getChildByName("Button_Area1").x - this.§'!<§;
         this.§ !A§ = mClip.getChildByName("Button_Area1").y - this.§8!+§;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.§'!<§;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.§8!+§;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.§5Z§ = _loc9_.bottom - this.§8!+§ - this.§ !A§;
         this.§]k§ = _loc7_ - this.§>!?§;
         this.§&!1§ = _loc8_ - this.§ !A§;
         if(Math.abs(this.§]k§) < 3)
         {
            this.§]k§ = 0;
         }
         if(Math.abs(this.§&!1§) < 3)
         {
            this.§&!1§ = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.§]k§ != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.§>!?§ - this.§>!?§) / this.§]k§;
         }
         if(this.§&!1§ != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.§ !A§ - this.§ !A§) / this.§&!1§;
         }
         this.§'!+§ = Math.min(_loc10_,_loc11_);
         this.§>!A§ = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.§?<§ = param1.@ScrollPerClick;
         }
         else
         {
            this.§?<§ = this.§'!+§;
         }
         this.§@e§ = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.§'!<§;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.§8!+§;
            this.mButtonMarginX2 = _loc19_ - this.§>!?§;
            this.mButtonMarginY2 = _loc20_ - this.§ !A§;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.§>!A§)
            {
               this.§@e§ = 1 + (mClip.getChildByName("Surface").height - this.§ !A§ - this.§ !A§) / this.mButtonMarginY2;
            }
            else
            {
               this.§@e§ = 1 + (mClip.getChildByName("Surface").width - this.§>!?§ - this.§>!?§) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.§,!D§ = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.§[B§ = this.§,!D§.x - mClip.getChildByName("Surface").x;
            this.§ !D§ = this.§,!D§.y - mClip.getChildByName("Surface").y;
            this.§3a§ = this.§,!D§.x + this.§,!D§.width - (this.§,!D§.x + mClip.getChildByName("Surface").width);
            this.§`R§ = this.§,!D§.y + this.§,!D§.height - (this.§,!D§.y + mClip.getChildByName("Surface").height);
            this.§5!3§ = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.§]j§ = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.§,!<§ = §3U§.§%=§;
                  break;
               case "EXCLUSIVE":
               default:
                  this.§,!<§ = §3U§.§!<§;
            }
         }
         this.§;^§();
      }
      
      public function §;^§(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§3!B§ = null;
         var _loc8_:§3U§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§@<§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = §@<§;
         }
         this.§9P§ = new Vector.<§3U§>();
         this.§catch§();
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
            _loc7_ = new §3!B§(_loc6_,this,null,_loc5_);
            §2J§.push(_loc7_);
            _loc8_ = new §3U§(this.§,!<§,_loc4_);
            this.§9P§.push(_loc8_);
            _loc9_ = this.§>!?§;
            _loc10_ = this.§'!+§;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.§5$§ == §1P§)
            {
               _loc9_ = (this.§`!1§ - (_loc10_ - 1) * this.§]k§) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.§2J§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.§2J§.push(new param2(_loc12_,_loc7_,new this.§6J§() as MovieClip));
               }
               _loc13_ = _loc7_.§2J§[_loc7_.§2J§.length - 1] as §@<§;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.§`S§(_loc14_,this.§01§);
                  if(this.§1x§ == §65§)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.§01§ == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.§@e§ == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.§]k§;
                  _loc13_.y = this.§ !A§ + _loc11_ * this.§&!1§;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.§'!+§ * this.§@e§);
                  _loc17_ = (_loc11_ - _loc16_ * this.§'!+§ * this.§@e§) / this.§'!+§;
                  _loc18_ = (_loc11_ - _loc16_ * this.§'!+§ * this.§@e§) % this.§'!+§;
                  if(this.§>!A§)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.§]k§ + _loc16_ * this.§'!+§ * this.§]k§;
                     _loc13_.y = this.§ !A§ + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.§ !A§ + _loc18_ * this.§&!1§ + _loc16_ * this.§'!+§ * this.§&!1§;
                  }
               }
               _loc8_.§%S§(_loc13_);
               _loc11_++;
            }
            _loc8_.§%c§("");
            _loc7_.§]!4§(this.§'!+§,this.§'!<§,this.§8!+§,this.§?<§ * this.§]k§,this.§?<§ * this.§&!1§,this.§@e§,this.§?<§);
            _loc3_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      public function get §4&§() : int
      {
         return this.§'!+§;
      }
      
      public function get §83§() : int
      {
         if(this.§4&§ == 0)
         {
            return 0;
         }
         return this.§2Z§(this.§@m§).§>!>§.length / this.§4&§ + 1;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§&]§) : void
      {
         var _loc5_:§3U§ = null;
         var _loc4_:§3!B§ = getItemByName(this.§@m§) as §3!B§;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.§ 5§(_loc4_.§4u§ - 1);
               this.§set §();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.§ 5§(_loc4_.§4u§ + 1);
               this.§set §();
            }
         }
         else if(param2.length > 0 && (param1 == §&]§.LISTENER_EVENT_MOUSE_DOWN || param1 == §&]§.LISTENER_EVENT_MOUSE_UP) && param3 is §^S§)
         {
            if((_loc5_ = this.§2Z§((param3 as §^S§).mParentContainer.mName.toUpperCase())) && param3 is §@<§)
            {
               _loc5_.§%c§((param3 as §^S§).mName.toUpperCase());
            }
         }
         super.containerEventOccured(param1,param2,param3);
      }
      
      public function §"J§(param1:String, param2:int) : void
      {
         var _loc3_:§3!B§ = getItemByName(param1) as §3!B§;
         if(_loc3_)
         {
            _loc3_.§ 5§(param2);
            this.§set §();
         }
      }
      
      public function §2Z§(param1:String) : §3U§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9P§.length)
         {
            if(param1.toUpperCase() == (this.§9P§[_loc2_] as §3U§).mName.toUpperCase())
            {
               return this.§9P§[_loc2_] as §3U§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §]v§(param1:String) : void
      {
         this.§@m§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < §2J§.length)
         {
            if(§2J§[_loc2_] is §3!B§)
            {
               if((§2J§[_loc2_] as §3!B§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (§2J§[_loc2_] as §3!B§).setActiveStatus(true);
                  if(this.§5!3§)
                  {
                     this.§,!D§.x = (§2J§[_loc2_] as §3!B§).x + this.§[B§;
                     this.§,!D§.width = (§2J§[_loc2_] as §3!B§).width + this.§3a§;
                  }
                  if(this.§]j§)
                  {
                     this.§,!D§.y = (§2J§[_loc2_] as §3!B§).y + this.§ !D§;
                     this.§,!D§.height = (§2J§[_loc2_] as §3!B§).height + this.§`R§;
                  }
               }
               else
               {
                  (§2J§[_loc2_] as §3!B§).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.§set §();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:§3U§ = null;
         super.setEnabled(param1);
         for each(_loc2_ in this.§9P§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §set §() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:§3!B§ = getItemByName(this.§@m§) as §3!B§;
         if(_loc1_)
         {
            if(_loc1_.§4u§ > 0)
            {
               (getItemByName("Button_Scroll1") as §%+§).setComponentState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as §%+§).setComponentState(§"`§.§&!$§);
            }
            if(_loc1_.§4u§ < _loc1_.§3B§ - 1)
            {
               (getItemByName("Button_Scroll2") as §%+§).setComponentState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as §%+§).setComponentState(§"`§.§&!$§);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as §%+§).setComponentState(§"`§.§&!$§);
            (getItemByName("Button_Scroll2") as §%+§).setComponentState(§"`§.§&!$§);
         }
      }
      
      public function §catch§() : void
      {
         var _loc2_:§3!B§ = null;
         var _loc1_:int = §2J§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §2J§[_loc1_] as §3!B§;
            if(_loc2_)
            {
               _loc2_.clear();
               §2J§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.§]v§("");
      }
      
      public function §!p§() : void
      {
         var _loc1_:§3U§ = null;
         for each(_loc1_ in this.§9P§)
         {
            _loc1_.§!p§();
         }
      }
      
      public function §@T§() : Array
      {
         if(this.§2Z§(this.§@m§) == null)
         {
            §@M§.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.§2Z§(this.§@m§).§'_§();
      }
      
      public function §>9§(param1:Array) : void
      {
         this.§2Z§(this.§@m§).§>9§(param1);
      }
      
      public function §+!B§(param1:Number) : void
      {
         this.§2Z§(this.§@m§).§+!B§(param1);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§6J§ = null;
         this.§9P§ = null;
         this.§8!B§ = null;
      }
   }
}
